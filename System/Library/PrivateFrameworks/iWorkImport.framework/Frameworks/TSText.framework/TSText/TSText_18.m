unsigned __int8 *TSWPSOS::ListStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::ListStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 128);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
  *a2 = 26;
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

  a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v13, v15, a3);
  if ((v5 & 0x4000) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_51:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 129);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_54:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 5);
  *a2 = 42;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = TSWPSOS::SpecListStyleFloatArrayArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 0x8000) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_67;
  }

LABEL_64:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 130);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_77;
  }

LABEL_67:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 6);
  *a2 = 58;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::_InternalSerialize(v27, v29, a3);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_80;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 131);
  *a2 = 64;
  a2[1] = v33;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_90;
  }

LABEL_80:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 7);
  *a2 = 74;
  v35 = *(v34 + 5);
  if (v35 > 0x7F)
  {
    a2[1] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = a2 + 3;
      do
      {
        *(v36 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++v36;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(v36 - 1) = v38;
    }

    else
    {
      a2[2] = v37;
      v36 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v35;
    v36 = a2 + 2;
  }

  a2 = TSWPSOS::SpecListStyleImageDataArrayArchive::_InternalSerialize(v34, v36, a3);
  if ((v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_93;
  }

LABEL_90:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(this + 132);
  *a2 = 80;
  a2[1] = v40;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_103;
  }

LABEL_93:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v41 = *(this + 8);
  *a2 = 90;
  v42 = *(v41 + 5);
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = a2 + 3;
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      a2[2] = v44;
      v43 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v42;
    v43 = a2 + 2;
  }

  a2 = TSWPSOS::SpecListStyleFloatArrayArchive::_InternalSerialize(v41, v43, a3);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_106;
  }

LABEL_103:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v47 = *(this + 133);
  *a2 = 96;
  a2[1] = v47;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_116;
  }

LABEL_106:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(this + 9);
  *a2 = 106;
  v49 = *(v48 + 5);
  if (v49 > 0x7F)
  {
    a2[1] = v49 | 0x80;
    v51 = v49 >> 7;
    if (v49 >> 14)
    {
      v50 = a2 + 3;
      do
      {
        *(v50 - 1) = v51 | 0x80;
        v52 = v51 >> 7;
        ++v50;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
      *(v50 - 1) = v52;
    }

    else
    {
      a2[2] = v51;
      v50 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v49;
    v50 = a2 + 2;
  }

  a2 = TSWPSOS::SpecListStyleListNumberTypeArrayArchive::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x80000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_119;
  }

LABEL_116:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v54 = *(this + 134);
  *a2 = 112;
  a2[1] = v54;
  a2 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_129;
  }

LABEL_119:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v55 = *(this + 10);
  *a2 = 122;
  v56 = *(v55 + 5);
  if (v56 > 0x7F)
  {
    a2[1] = v56 | 0x80;
    v58 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = a2 + 3;
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
      a2[2] = v58;
      v57 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v56;
    v57 = a2 + 2;
  }

  a2 = TSWPSOS::SpecListStyleBoolArrayArchive::_InternalSerialize(v55, v57, a3);
  if ((v5 & 0x100000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_132;
  }

LABEL_129:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v61 = *(this + 135);
  *a2 = 384;
  a2[2] = v61;
  a2 += 3;
  if ((v5 & 0x100) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_142;
  }

LABEL_132:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v62 = *(this + 11);
  *a2 = 394;
  v63 = *(v62 + 5);
  if (v63 > 0x7F)
  {
    a2[2] = v63 | 0x80;
    v65 = v63 >> 7;
    if (v63 >> 14)
    {
      v64 = a2 + 4;
      do
      {
        *(v64 - 1) = v65 | 0x80;
        v66 = v65 >> 7;
        ++v64;
        v67 = v65 >> 14;
        v65 >>= 7;
      }

      while (v67);
      *(v64 - 1) = v66;
    }

    else
    {
      a2[3] = v65;
      v64 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v63;
    v64 = a2 + 3;
  }

  a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v62, v64, a3);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_145;
  }

LABEL_142:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v68 = *(this + 136);
  *a2 = 400;
  a2[2] = v68;
  a2 += 3;
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_155;
  }

LABEL_145:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v69 = *(this + 12);
  *a2 = 410;
  v70 = *(v69 + 5);
  if (v70 > 0x7F)
  {
    a2[2] = v70 | 0x80;
    v72 = v70 >> 7;
    if (v70 >> 14)
    {
      v71 = a2 + 4;
      do
      {
        *(v71 - 1) = v72 | 0x80;
        v73 = v72 >> 7;
        ++v71;
        v74 = v72 >> 14;
        v72 >>= 7;
      }

      while (v74);
      *(v71 - 1) = v73;
    }

    else
    {
      a2[3] = v72;
      v71 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v70;
    v71 = a2 + 3;
  }

  a2 = TSWPSOS::SpecListStyleStringArrayArchive::_InternalSerialize(v69, v71, a3);
  if ((v5 & 0x400000) == 0)
  {
LABEL_21:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_158;
  }

LABEL_155:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v75 = *(this + 137);
  *a2 = 416;
  a2[2] = v75;
  a2 += 3;
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_168;
  }

LABEL_158:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v76 = *(this + 13);
  *a2 = 426;
  v77 = *(v76 + 5);
  if (v77 > 0x7F)
  {
    a2[2] = v77 | 0x80;
    v79 = v77 >> 7;
    if (v77 >> 14)
    {
      v78 = a2 + 4;
      do
      {
        *(v78 - 1) = v79 | 0x80;
        v80 = v79 >> 7;
        ++v78;
        v81 = v79 >> 14;
        v79 >>= 7;
      }

      while (v81);
      *(v78 - 1) = v80;
    }

    else
    {
      a2[3] = v79;
      v78 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v77;
    v78 = a2 + 3;
  }

  a2 = TSWPSOS::SpecListStyleFloatArrayArchive::_InternalSerialize(v76, v78, a3);
  if ((v5 & 0x800000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_171;
  }

LABEL_168:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v82 = *(this + 138);
  *a2 = 432;
  a2[2] = v82;
  a2 += 3;
  if ((v5 & 0x800) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_181;
  }

LABEL_171:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v83 = *(this + 14);
  *a2 = 442;
  v84 = *(v83 + 5);
  if (v84 > 0x7F)
  {
    a2[2] = v84 | 0x80;
    v86 = v84 >> 7;
    if (v84 >> 14)
    {
      v85 = a2 + 4;
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
      a2[3] = v86;
      v85 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v84;
    v85 = a2 + 3;
  }

  a2 = TSWPSOS::SpecListStyleListLabelTypeArrayArchive::_InternalSerialize(v83, v85, a3);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_184;
  }

LABEL_181:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v89 = *(this + 139);
  *a2 = 448;
  a2[2] = v89;
  a2 += 3;
  if ((v5 & 0x1000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_194;
  }

LABEL_184:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v90 = *(this + 15);
  *a2 = 458;
  v91 = *(v90 + 5);
  if (v91 > 0x7F)
  {
    a2[2] = v91 | 0x80;
    v93 = v91 >> 7;
    if (v91 >> 14)
    {
      v92 = a2 + 4;
      do
      {
        *(v92 - 1) = v93 | 0x80;
        v94 = v93 >> 7;
        ++v92;
        v95 = v93 >> 14;
        v93 >>= 7;
      }

      while (v95);
      *(v92 - 1) = v94;
    }

    else
    {
      a2[3] = v93;
      v92 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v91;
    v92 = a2 + 3;
  }

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v90, v92, a3);
  if ((v5 & 0x2000000) != 0)
  {
LABEL_194:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v96 = *(this + 140);
    *a2 = 464;
    a2[2] = v96;
    a2 += 3;
  }

LABEL_197:
  v97 = *(this + 1);
  if ((v97 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v97 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::ListStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::ListStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSSSOS::SpecColorArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v5 = TSSSOS::SpecStringArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v13 = TSWPSOS::SpecListStyleFloatArrayArchive::ByteSizeLong(*(this + 5));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v14 = TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::ByteSizeLong(*(this + 6));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v15 = TSWPSOS::SpecListStyleImageDataArrayArchive::ByteSizeLong(*(this + 7));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v16 = TSWPSOS::SpecListStyleFloatArrayArchive::ByteSizeLong(*(this + 8));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_46:
  v17 = TSWPSOS::SpecListStyleListNumberTypeArrayArchive::ByteSizeLong(*(this + 9));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSWPSOS::SpecListStyleBoolArrayArchive::ByteSizeLong(*(this + 10));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(this + 11));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_50;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v19 = TSWPSOS::SpecListStyleStringArrayArchive::ByteSizeLong(*(this + 12));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

LABEL_51:
    v21 = TSWPSOS::SpecListStyleListLabelTypeArrayArchive::ByteSizeLong(*(this + 14));
    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_50:
  v20 = TSWPSOS::SpecListStyleFloatArrayArchive::ByteSizeLong(*(this + 13));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_51;
  }

LABEL_20:
  if ((v2 & 0x1000) != 0)
  {
LABEL_21:
    v7 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 15));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_22:
  v3 += ((v2 >> 13) & 2) + ((v2 >> 12) & 2) + ((v2 >> 14) & 2);
LABEL_23:
  if ((v2 & 0xFF0000) != 0)
  {
    v8.i64[0] = 0x200000002;
    v8.i64[1] = 0x200000002;
    v9 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276FA35D0), v8));
    if ((v2 & 0x100000) != 0)
    {
      v9 += 3;
    }

    if ((v2 & 0x200000) != 0)
    {
      v9 += 3;
    }

    if ((v2 & 0x400000) != 0)
    {
      v9 += 3;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v9 + 3;
    }

    else
    {
      v3 = v9;
    }
  }

  v10 = v3 + 3;
  if ((v2 & 0x1000000) == 0)
  {
    v10 = v3;
  }

  if ((v2 & 0x2000000) != 0)
  {
    v10 += 3;
  }

  if ((v2 & 0x3000000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v3;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v11, this + 20);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

uint64_t TSWPSOS::ListStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::ListStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::ListStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::ListStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSWPSOS::ListStylePropertyChangeSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_77;
  }

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

      v6 = MEMORY[0x277CA3310](v7);
      *(v3 + 24) = v6;
    }

    if (*(a2 + 3))
    {
      v8 = *(a2 + 3);
    }

    else
    {
      v8 = MEMORY[0x277D80C00];
    }

    this = TSSSOS::SpecColorArchive::MergeFrom(v6, v8);
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

      v9 = MEMORY[0x277CA3330](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80C10];
    }

    this = TSSSOS::SpecStringArchive::MergeFrom(v9, v11);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleFloatArrayArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSWPSOS::_SpecListStyleFloatArrayArchive_default_instance_;
    }

    this = TSWPSOS::SpecListStyleFloatArrayArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_24:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_24;
  }

  *(v3 + 16) |= 8u;
  v15 = *(v3 + 48);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleListLabelGeometryArrayArchive>(v16);
    *(v3 + 48) = v15;
  }

  if (*(a2 + 6))
  {
    v17 = *(a2 + 6);
  }

  else
  {
    v17 = &TSWPSOS::_SpecListStyleListLabelGeometryArrayArchive_default_instance_;
  }

  this = TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::MergeFrom(v15, v17);
  if ((v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v21 = *(v3 + 64);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleFloatArrayArchive>(v22);
      *(v3 + 64) = v21;
    }

    if (*(a2 + 8))
    {
      v23 = *(a2 + 8);
    }

    else
    {
      v23 = &TSWPSOS::_SpecListStyleFloatArrayArchive_default_instance_;
    }

    this = TSWPSOS::SpecListStyleFloatArrayArchive::MergeFrom(v21, v23);
    if ((v5 & 0x40) == 0)
    {
LABEL_27:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 56);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleImageDataArrayArchive>(v19);
    *(v3 + 56) = v18;
  }

  if (*(a2 + 7))
  {
    v20 = *(a2 + 7);
  }

  else
  {
    v20 = &TSWPSOS::_SpecListStyleImageDataArrayArchive_default_instance_;
  }

  this = TSWPSOS::SpecListStyleImageDataArrayArchive::MergeFrom(v18, v20);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_26:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 72);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleListNumberTypeArrayArchive>(v25);
    *(v3 + 72) = v24;
  }

  if (*(a2 + 9))
  {
    v26 = *(a2 + 9);
  }

  else
  {
    v26 = &TSWPSOS::_SpecListStyleListNumberTypeArrayArchive_default_instance_;
  }

  this = TSWPSOS::SpecListStyleListNumberTypeArrayArchive::MergeFrom(v24, v26);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 80);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleBoolArrayArchive>(v28);
      *(v3 + 80) = v27;
    }

    if (*(a2 + 10))
    {
      v29 = *(a2 + 10);
    }

    else
    {
      v29 = &TSWPSOS::_SpecListStyleBoolArrayArchive_default_instance_;
    }

    this = TSWPSOS::SpecListStyleBoolArrayArchive::MergeFrom(v27, v29);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v30 = *(v3 + 88);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277CA32D0](v31);
      *(v3 + 88) = v30;
    }

    if (*(a2 + 11))
    {
      v32 = *(a2 + 11);
    }

    else
    {
      v32 = MEMORY[0x277D80538];
    }

    this = TSDSOS::SpecShadowArchive::MergeFrom(v30, v32);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_122;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v33 = *(v3 + 96);
  if (!v33)
  {
    v34 = *(v3 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleStringArrayArchive>(v34);
    *(v3 + 96) = v33;
  }

  if (*(a2 + 12))
  {
    v35 = *(a2 + 12);
  }

  else
  {
    v35 = &TSWPSOS::_SpecListStyleStringArrayArchive_default_instance_;
  }

  this = TSWPSOS::SpecListStyleStringArrayArchive::MergeFrom(v33, v35);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_130;
  }

LABEL_122:
  *(v3 + 16) |= 0x400u;
  v36 = *(v3 + 104);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleFloatArrayArchive>(v37);
    *(v3 + 104) = v36;
  }

  if (*(a2 + 13))
  {
    v38 = *(a2 + 13);
  }

  else
  {
    v38 = &TSWPSOS::_SpecListStyleFloatArrayArchive_default_instance_;
  }

  this = TSWPSOS::SpecListStyleFloatArrayArchive::MergeFrom(v36, v38);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_138;
  }

LABEL_130:
  *(v3 + 16) |= 0x800u;
  v39 = *(v3 + 112);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleListLabelTypeArrayArchive>(v40);
    *(v3 + 112) = v39;
  }

  if (*(a2 + 14))
  {
    v41 = *(a2 + 14);
  }

  else
  {
    v41 = &TSWPSOS::_SpecListStyleListLabelTypeArrayArchive_default_instance_;
  }

  this = TSWPSOS::SpecListStyleListLabelTypeArrayArchive::MergeFrom(v39, v41);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_146;
  }

LABEL_138:
  *(v3 + 16) |= 0x1000u;
  v42 = *(v3 + 120);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277CA3340](v43);
    *(v3 + 120) = v42;
  }

  if (*(a2 + 15))
  {
    v44 = *(a2 + 15);
  }

  else
  {
    v44 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v42, v44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_147:
    *(v3 + 129) = *(a2 + 129);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_146:
  *(v3 + 128) = *(a2 + 128);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_147;
  }

LABEL_85:
  if ((v5 & 0x8000) != 0)
  {
LABEL_86:
    *(v3 + 130) = *(a2 + 130);
  }

LABEL_87:
  *(v3 + 16) |= v5;
LABEL_88:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_99;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 131) = *(a2 + 131);
    if ((v5 & 0x20000) == 0)
    {
LABEL_91:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_151;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_91;
  }

  *(v3 + 132) = *(a2 + 132);
  if ((v5 & 0x40000) == 0)
  {
LABEL_92:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(v3 + 133) = *(a2 + 133);
  if ((v5 & 0x80000) == 0)
  {
LABEL_93:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(v3 + 134) = *(a2 + 134);
  if ((v5 & 0x100000) == 0)
  {
LABEL_94:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(v3 + 135) = *(a2 + 135);
  if ((v5 & 0x200000) == 0)
  {
LABEL_95:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_96;
    }

LABEL_155:
    *(v3 + 137) = *(a2 + 137);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_154:
  *(v3 + 136) = *(a2 + 136);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_155;
  }

LABEL_96:
  if ((v5 & 0x800000) != 0)
  {
LABEL_97:
    *(v3 + 138) = *(a2 + 138);
  }

LABEL_98:
  *(v3 + 16) |= v5;
LABEL_99:
  if ((v5 & 0x3000000) != 0)
  {
    if ((v5 & 0x1000000) != 0)
    {
      *(v3 + 139) = *(a2 + 139);
    }

    if ((v5 & 0x2000000) != 0)
    {
      *(v3 + 140) = *(a2 + 140);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::ListStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::ListStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::ListStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::ListStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSWPSOS::ListStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::ListStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::ListStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::ListStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::ListStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(this + 5);
    if ((*(v4 + 16) & 1) != 0 && (*(*(v4 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 8) != 0)
  {
    v5 = *(this + 6);
    if ((*(v5 + 16) & 1) != 0 && (*(*(v5 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x10) != 0)
  {
    v6 = *(this + 7);
    if (*(v6 + 16))
    {
      result = TSWPSOS::SpecSetListStyleImageDataArrayArchive::IsInitialized(*(v6 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(this + 4);
    }
  }

  if ((v2 & 0x20) != 0)
  {
    v7 = *(this + 8);
    if ((*(v7 + 16) & 1) != 0 && (*(*(v7 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x40) != 0)
  {
    v8 = *(this + 9);
    if ((*(v8 + 16) & 1) != 0 && (*(*(v8 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x80) != 0)
  {
    v9 = *(this + 10);
    if ((*(v9 + 16) & 1) != 0 && (*(*(v9 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200) != 0)
  {
    v10 = *(this + 12);
    if ((*(v10 + 16) & 1) != 0 && (*(*(v10 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x400) != 0)
  {
    v11 = *(this + 13);
    if ((*(v11 + 16) & 1) != 0 && (*(*(v11 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x800) != 0)
  {
    v12 = *(this + 14);
    if ((*(v12 + 16) & 1) != 0 && (*(*(v12 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x1000) == 0)
  {
    return 1;
  }

  result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 15));
  if (result)
  {
    return 1;
  }

  return result;
}

double TSWPSOS::ListStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::ListStylePropertyChangeSetArchive *this, TSWPSOS::ListStylePropertyChangeSetArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;

  *&result = sub_276EA5734(this + 7, a2 + 56).n128_u64[0];
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_alignment(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSSSOS::SpecStringArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_decimal_tab(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSSSOS::SpecStringArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_default_tab_stops(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSSSOS::SpecColorArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_paragraph_fill(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSSSOS::SpecColorArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_first_line_indent(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_hyphenate(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_keep_lines_together(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_keep_with_next(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_left_indent(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_outline_level(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_outline_style_type(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_page_break_before(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_border_positions(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_rounded_corners(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_paragraph_rule_width(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_right_indent(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_space_after(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x100000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_space_before(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x200000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_paragraph_stroke(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x400000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_widow_control(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 28);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x1000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_show_in_bookmarks_list(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 29);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::clear_show_in_t_o_c_navigator(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 30);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x4000000u;
  return result;
}

TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::ParagraphSpecificStylePropertyChangeSetArchive(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288606210;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_ParagraphSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 271) = 0;
  return this;
}

{
  *this = &unk_288606210;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_ParagraphSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 271) = 0;
  return this;
}

TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::ParagraphSpecificStylePropertyChangeSetArchive(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this, const TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288606210;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v6 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v6 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v6 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v6 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v6 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v6 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  if ((v6 & 0x2000000) != 0)
  {
    operator new();
  }

  *(this + 29) = 0;
  if ((v6 & 0x4000000) != 0)
  {
    operator new();
  }

  *(this + 30) = 0;
  v7 = *(a2 + 248);
  *(this + 259) = *(a2 + 259);
  *(this + 248) = v7;
  return this;
}

void TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::~ParagraphSpecificStylePropertyChangeSetArchive(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  sub_276ED0F38(this);
  sub_276E4E808(this + 1);
}

{
  TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::~ParagraphSpecificStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276ED0F38(uint64_t *result)
{
  if (result != &TSWPSOS::_ParagraphSpecificStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    if (result[4])
    {
      v2 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40D4912B22);
    }

    if (v1[5])
    {
      v3 = MEMORY[0x277CA3060]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v4 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v4, 0x10A1C40D4912B22);
    }

    if (v1[7])
    {
      v5 = MEMORY[0x277CA2FC0]();
      MEMORY[0x277CA3D00](v5, 0x10A1C40D4912B22);
    }

    if (v1[8])
    {
      v6 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v6, 0x10A1C40D4912B22);
    }

    v7 = v1[9];
    if (v7)
    {
      TSWPSOS::SpecParagraphStyleArchive::~SpecParagraphStyleArchive(v7);
      MEMORY[0x277CA3D00]();
    }

    if (v1[10])
    {
      v8 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v8, 0x10A1C40D4912B22);
    }

    v9 = v1[11];
    if (v9)
    {
      TSWPSOS::SpecListStyleArchive::~SpecListStyleArchive(v9);
      MEMORY[0x277CA3D00]();
    }

    if (v1[12])
    {
      v10 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v10, 0x10A1C40D4912B22);
    }

    if (v1[13])
    {
      v11 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v11, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v12 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v12, 0x10A1C40D4912B22);
    }

    v13 = v1[15];
    if (v13)
    {
      TSWPSOS::SpecLineSpacingArchive::~SpecLineSpacingArchive(v13);
      MEMORY[0x277CA3D00]();
    }

    if (v1[16])
    {
      v14 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v14, 0x10A1C40D4912B22);
    }

    if (v1[17])
    {
      v15 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v15, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v16 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v16, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v17 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v17, 0x10A1C40D4912B22);
    }

    v18 = v1[20];
    if (v18)
    {
      TSWPSOS::SpecRuleOffsetArchive::~SpecRuleOffsetArchive(v18);
      MEMORY[0x277CA3D00]();
    }

    if (v1[21])
    {
      v19 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v19, 0x10A1C40D4912B22);
    }

    if (v1[22])
    {
      v20 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v20, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v21 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v21, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v22 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v22, 0x10A1C40D4912B22);
    }

    if (v1[25])
    {
      v23 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v23, 0x10A1C40D4912B22);
    }

    if (v1[26])
    {
      v24 = MEMORY[0x277CA2ED0]();
      MEMORY[0x277CA3D00](v24, 0x10A1C4030AC051BLL);
    }

    v25 = v1[27];
    if (v25)
    {
      TSWPSOS::SpecTabsArchive::~SpecTabsArchive(v25);
      MEMORY[0x277CA3D00]();
    }

    if (v1[28])
    {
      v26 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v26, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v27 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v27, 0x10A1C40D4912B22);
    }

    result = v1[30];
    if (result)
    {
      MEMORY[0x277CA2F70]();

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::default_instance(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_ParagraphSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_ParagraphSpecificStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSSSOS::SpecIntegerArchive::Clear(this[4]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_50;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSSSOS::SpecStringArchive::Clear(*(v1 + 40));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 48));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = TSSSOS::SpecColorArchive::Clear(*(v1 + 56));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_53:
    this = TSWPSOS::SpecParagraphStyleArchive::Clear(*(v1 + 72));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_52:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 64));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_54:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 80));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSWPSOS::SpecListStyleArchive::Clear(*(v1 + 88));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 96));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_58;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 104));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 112));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = TSWPSOS::SpecLineSpacingArchive::Clear(*(v1 + 120));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 128));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 136));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_62:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 144));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 152));
  }

LABEL_21:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 0x10000) != 0)
  {
    this = TSWPSOS::SpecRuleOffsetArchive::Clear(*(v1 + 160));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_66;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 168));
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 176));
  if ((v2 & 0x80000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 184));
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 192));
  if ((v2 & 0x200000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 200));
  if ((v2 & 0x400000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_70:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 208));
  if ((v2 & 0x800000) != 0)
  {
LABEL_30:
    this = TSWPSOS::SpecTabsArchive::Clear(*(v1 + 216));
  }

LABEL_31:
  if ((v2 & 0x7000000) == 0)
  {
    goto LABEL_36;
  }

  if ((v2 & 0x1000000) != 0)
  {
    this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 224));
    if ((v2 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 232));
  if ((v2 & 0x4000000) != 0)
  {
LABEL_35:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 240));
  }

LABEL_36:
  if (v2 >> 27)
  {
    *(v1 + 252) = 0;
    *(v1 + 248) = 0;
  }

  v3 = *(v1 + 20);
  if (v3)
  {
    *(v1 + 253) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(v1 + 261) = 0;
  }

  if ((v3 & 0x3F0000) != 0)
  {
    *(v1 + 273) = 0;
    *(v1 + 269) = 0;
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  v4[1] = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v206 = a2;
  if ((sub_276EA4A1C(a3, &v206) & 1) == 0)
  {
    while (1)
    {
      v6 = (v206 + 1);
      LODWORD(v7) = *v206;
      if (*v206 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v206, v7);
          v206 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v206 + 2);
      }

      v206 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 32);
          if (v8)
          {
            goto LABEL_275;
          }

          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277CA3340](v9);
          LODWORD(v8) = v10;
          *(a1 + 32) = v10;
          goto LABEL_274;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x8000000u;
          v84 = (v6 + 1);
          v83 = *v6;
          if ((v83 & 0x8000000000000000) == 0)
          {
            goto LABEL_152;
          }

          v85 = *v84;
          v83 = (v85 << 7) + v83 - 128;
          if (v85 < 0)
          {
            v180 = google::protobuf::internal::VarintParseSlow64(v6, v83);
            v206 = v180;
            *(a1 + 248) = v181 != 0;
            if (!v180)
            {
              return 0;
            }
          }

          else
          {
            v84 = (v6 + 2);
LABEL_152:
            v206 = v84;
            *(a1 + 248) = v83 != 0;
          }

          goto LABEL_284;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 2u;
          v71 = *(a1 + 40);
          if (!v71)
          {
            v72 = *(a1 + 8);
            if (v72)
            {
              v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
            }

            v73 = MEMORY[0x277CA3330](v72);
            LODWORD(v71) = v73;
            *(a1 + 40) = v73;
            v6 = v206;
          }

          v43 = sub_276F56258(a3, v71, v6);
          goto LABEL_283;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x10000000u;
          v78 = (v6 + 1);
          v77 = *v6;
          if ((v77 & 0x8000000000000000) == 0)
          {
            goto LABEL_142;
          }

          v79 = *v78;
          v77 = (v79 << 7) + v77 - 128;
          if (v79 < 0)
          {
            v176 = google::protobuf::internal::VarintParseSlow64(v6, v77);
            v206 = v176;
            *(a1 + 249) = v177 != 0;
            if (!v176)
            {
              return 0;
            }
          }

          else
          {
            v78 = (v6 + 2);
LABEL_142:
            v206 = v78;
            *(a1 + 249) = v77 != 0;
          }

          goto LABEL_284;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 4u;
          v30 = *(a1 + 48);
          if (v30)
          {
            goto LABEL_268;
          }

          v57 = *(a1 + 8);
          if (v57)
          {
            v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
          }

          v58 = MEMORY[0x277CA3320](v57);
          LODWORD(v30) = v58;
          *(a1 + 48) = v58;
          goto LABEL_267;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x20000000u;
          v98 = (v6 + 1);
          v97 = *v6;
          if ((v97 & 0x8000000000000000) == 0)
          {
            goto LABEL_177;
          }

          v99 = *v98;
          v97 = (v99 << 7) + v97 - 128;
          if (v99 < 0)
          {
            v188 = google::protobuf::internal::VarintParseSlow64(v6, v97);
            v206 = v188;
            *(a1 + 250) = v189 != 0;
            if (!v188)
            {
              return 0;
            }
          }

          else
          {
            v98 = (v6 + 2);
LABEL_177:
            v206 = v98;
            *(a1 + 250) = v97 != 0;
          }

          goto LABEL_284;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 8u;
          v106 = *(a1 + 56);
          if (!v106)
          {
            v107 = *(a1 + 8);
            if (v107)
            {
              v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
            }

            v108 = MEMORY[0x277CA3310](v107);
            LODWORD(v106) = v108;
            *(a1 + 56) = v108;
            v6 = v206;
          }

          v43 = sub_276F56598(a3, v106, v6);
          goto LABEL_283;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x40000000u;
          v81 = (v6 + 1);
          v80 = *v6;
          if ((v80 & 0x8000000000000000) == 0)
          {
            goto LABEL_147;
          }

          v82 = *v81;
          v80 = (v82 << 7) + v80 - 128;
          if (v82 < 0)
          {
            v178 = google::protobuf::internal::VarintParseSlow64(v6, v80);
            v206 = v178;
            *(a1 + 251) = v179 != 0;
            if (!v178)
            {
              return 0;
            }
          }

          else
          {
            v81 = (v6 + 2);
LABEL_147:
            v206 = v81;
            *(a1 + 251) = v80 != 0;
          }

          goto LABEL_284;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x10u;
          v30 = *(a1 + 64);
          if (v30)
          {
            goto LABEL_268;
          }

          v113 = *(a1 + 8);
          if (v113)
          {
            v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
          }

          v114 = MEMORY[0x277CA3320](v113);
          LODWORD(v30) = v114;
          *(a1 + 64) = v114;
          goto LABEL_267;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x80000000;
          v64 = (v6 + 1);
          v63 = *v6;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_116;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v170 = google::protobuf::internal::VarintParseSlow64(v6, v63);
            v206 = v170;
            *(a1 + 252) = v171 != 0;
            if (!v170)
            {
              return 0;
            }
          }

          else
          {
            v64 = (v6 + 2);
LABEL_116:
            v206 = v64;
            *(a1 + 252) = v63 != 0;
          }

          goto LABEL_284;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x20u;
          v111 = *(a1 + 72);
          if (!v111)
          {
            v112 = *(a1 + 8);
            if (v112)
            {
              v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
            }

            v111 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecParagraphStyleArchive>(v112);
            *(a1 + 72) = v111;
            v6 = v206;
          }

          v43 = sub_276F570F8(a3, v111, v6);
          goto LABEL_283;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 1u;
          v52 = (v6 + 1);
          v51 = *v6;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_91;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v166 = google::protobuf::internal::VarintParseSlow64(v6, v51);
            v206 = v166;
            *(a1 + 253) = v167 != 0;
            if (!v166)
            {
              return 0;
            }
          }

          else
          {
            v52 = (v6 + 2);
LABEL_91:
            v206 = v52;
            *(a1 + 253) = v51 != 0;
          }

          goto LABEL_284;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x40u;
          v12 = *(a1 + 80);
          if (v12)
          {
            goto LABEL_282;
          }

          v61 = *(a1 + 8);
          if (v61)
          {
            v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
          }

          v62 = MEMORY[0x277CA3300](v61);
          LODWORD(v12) = v62;
          *(a1 + 80) = v62;
          goto LABEL_281;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 2u;
          v104 = (v6 + 1);
          v103 = *v6;
          if ((v103 & 0x8000000000000000) == 0)
          {
            goto LABEL_187;
          }

          v105 = *v104;
          v103 = (v105 << 7) + v103 - 128;
          if (v105 < 0)
          {
            v192 = google::protobuf::internal::VarintParseSlow64(v6, v103);
            v206 = v192;
            *(a1 + 254) = v193 != 0;
            if (!v192)
            {
              return 0;
            }
          }

          else
          {
            v104 = (v6 + 2);
LABEL_187:
            v206 = v104;
            *(a1 + 254) = v103 != 0;
          }

          goto LABEL_284;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x80u;
          v44 = *(a1 + 88);
          if (!v44)
          {
            v45 = *(a1 + 8);
            if (v45)
            {
              v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
            }

            v44 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleArchive>(v45);
            *(a1 + 88) = v44;
            v6 = v206;
          }

          v43 = sub_276F571C8(a3, v44, v6);
          goto LABEL_283;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 4u;
          v75 = (v6 + 1);
          v74 = *v6;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_137;
          }

          v76 = *v75;
          v74 = (v76 << 7) + v74 - 128;
          if (v76 < 0)
          {
            v174 = google::protobuf::internal::VarintParseSlow64(v6, v74);
            v206 = v174;
            *(a1 + 255) = v175 != 0;
            if (!v174)
            {
              return 0;
            }
          }

          else
          {
            v75 = (v6 + 2);
LABEL_137:
            v206 = v75;
            *(a1 + 255) = v74 != 0;
          }

          goto LABEL_284;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x100u;
          v12 = *(a1 + 96);
          if (v12)
          {
            goto LABEL_282;
          }

          v38 = *(a1 + 8);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          v39 = MEMORY[0x277CA3300](v38);
          LODWORD(v12) = v39;
          *(a1 + 96) = v39;
          goto LABEL_281;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 8u;
          v90 = (v6 + 1);
          v89 = *v6;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_162;
          }

          v91 = *v90;
          v89 = (v91 << 7) + v89 - 128;
          if (v91 < 0)
          {
            v184 = google::protobuf::internal::VarintParseSlow64(v6, v89);
            v206 = v184;
            *(a1 + 256) = v185 != 0;
            if (!v184)
            {
              return 0;
            }
          }

          else
          {
            v90 = (v6 + 2);
LABEL_162:
            v206 = v90;
            *(a1 + 256) = v89 != 0;
          }

          goto LABEL_284;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x200u;
          v12 = *(a1 + 104);
          if (v12)
          {
            goto LABEL_282;
          }

          v109 = *(a1 + 8);
          if (v109)
          {
            v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
          }

          v110 = MEMORY[0x277CA3300](v109);
          LODWORD(v12) = v110;
          *(a1 + 104) = v110;
          goto LABEL_281;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x10u;
          v128 = (v6 + 1);
          v127 = *v6;
          if ((v127 & 0x8000000000000000) == 0)
          {
            goto LABEL_241;
          }

          v129 = *v128;
          v127 = (v129 << 7) + v127 - 128;
          if (v129 < 0)
          {
            v198 = google::protobuf::internal::VarintParseSlow64(v6, v127);
            v206 = v198;
            *(a1 + 257) = v199 != 0;
            if (!v198)
            {
              return 0;
            }
          }

          else
          {
            v128 = (v6 + 2);
LABEL_241:
            v206 = v128;
            *(a1 + 257) = v127 != 0;
          }

          goto LABEL_284;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x400u;
          v30 = *(a1 + 112);
          if (v30)
          {
            goto LABEL_268;
          }

          v95 = *(a1 + 8);
          if (v95)
          {
            v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
          }

          v96 = MEMORY[0x277CA3320](v95);
          LODWORD(v30) = v96;
          *(a1 + 112) = v96;
          goto LABEL_267;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x20u;
          v101 = (v6 + 1);
          v100 = *v6;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_182;
          }

          v102 = *v101;
          v100 = (v102 << 7) + v100 - 128;
          if (v102 < 0)
          {
            v190 = google::protobuf::internal::VarintParseSlow64(v6, v100);
            v206 = v190;
            *(a1 + 258) = v191 != 0;
            if (!v190)
            {
              return 0;
            }
          }

          else
          {
            v101 = (v6 + 2);
LABEL_182:
            v206 = v101;
            *(a1 + 258) = v100 != 0;
          }

          goto LABEL_284;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x800u;
          v122 = *(a1 + 120);
          if (!v122)
          {
            v123 = *(a1 + 8);
            if (v123)
            {
              v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
            }

            v122 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecLineSpacingArchive>(v123);
            *(a1 + 120) = v122;
            v6 = v206;
          }

          v43 = sub_276F57298(a3, v122, v6);
          goto LABEL_283;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x40u;
          v133 = (v6 + 1);
          v132 = *v6;
          if ((v132 & 0x8000000000000000) == 0)
          {
            goto LABEL_251;
          }

          v134 = *v133;
          v132 = (v134 << 7) + v132 - 128;
          if (v134 < 0)
          {
            v200 = google::protobuf::internal::VarintParseSlow64(v6, v132);
            v206 = v200;
            *(a1 + 259) = v201 != 0;
            if (!v200)
            {
              return 0;
            }
          }

          else
          {
            v133 = (v6 + 2);
LABEL_251:
            v206 = v133;
            *(a1 + 259) = v132 != 0;
          }

          goto LABEL_284;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x1000u;
          v8 = *(a1 + 128);
          if (v8)
          {
            goto LABEL_275;
          }

          v69 = *(a1 + 8);
          if (v69)
          {
            v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
          }

          v70 = MEMORY[0x277CA3340](v69);
          LODWORD(v8) = v70;
          *(a1 + 128) = v70;
          goto LABEL_274;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x80u;
          v67 = (v6 + 1);
          v66 = *v6;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_121;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v172 = google::protobuf::internal::VarintParseSlow64(v6, v66);
            v206 = v172;
            *(a1 + 260) = v173 != 0;
            if (!v172)
            {
              return 0;
            }
          }

          else
          {
            v67 = (v6 + 2);
LABEL_121:
            v206 = v67;
            *(a1 + 260) = v66 != 0;
          }

          goto LABEL_284;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x2000u;
          v8 = *(a1 + 136);
          if (v8)
          {
            goto LABEL_275;
          }

          v142 = *(a1 + 8);
          if (v142)
          {
            v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
          }

          v143 = MEMORY[0x277CA3340](v142);
          LODWORD(v8) = v143;
          *(a1 + 136) = v143;
          goto LABEL_274;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x100u;
          v34 = (v6 + 1);
          v33 = *v6;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v162 = google::protobuf::internal::VarintParseSlow64(v6, v33);
            v206 = v162;
            *(a1 + 261) = v163 != 0;
            if (!v162)
            {
              return 0;
            }
          }

          else
          {
            v34 = (v6 + 2);
LABEL_54:
            v206 = v34;
            *(a1 + 261) = v33 != 0;
          }

          goto LABEL_284;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x4000u;
          v12 = *(a1 + 144);
          if (v12)
          {
            goto LABEL_282;
          }

          v135 = *(a1 + 8);
          if (v135)
          {
            v135 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
          }

          v136 = MEMORY[0x277CA3300](v135);
          LODWORD(v12) = v136;
          *(a1 + 144) = v136;
          goto LABEL_281;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x200u;
          v138 = (v6 + 1);
          v137 = *v6;
          if ((v137 & 0x8000000000000000) == 0)
          {
            goto LABEL_261;
          }

          v139 = *v138;
          v137 = (v139 << 7) + v137 - 128;
          if (v139 < 0)
          {
            v202 = google::protobuf::internal::VarintParseSlow64(v6, v137);
            v206 = v202;
            *(a1 + 262) = v203 != 0;
            if (!v202)
            {
              return 0;
            }
          }

          else
          {
            v138 = (v6 + 2);
LABEL_261:
            v206 = v138;
            *(a1 + 262) = v137 != 0;
          }

          goto LABEL_284;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x8000u;
          v8 = *(a1 + 152);
          if (v8)
          {
            goto LABEL_275;
          }

          v115 = *(a1 + 8);
          if (v115)
          {
            v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
          }

          v116 = MEMORY[0x277CA3340](v115);
          LODWORD(v8) = v116;
          *(a1 + 152) = v116;
          goto LABEL_274;
        case 0x20u:
          if (v7)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x400u;
          v87 = (v6 + 1);
          v86 = *v6;
          if ((v86 & 0x8000000000000000) == 0)
          {
            goto LABEL_157;
          }

          v88 = *v87;
          v86 = (v88 << 7) + v86 - 128;
          if (v88 < 0)
          {
            v182 = google::protobuf::internal::VarintParseSlow64(v6, v86);
            v206 = v182;
            *(a1 + 263) = v183 != 0;
            if (!v182)
            {
              return 0;
            }
          }

          else
          {
            v87 = (v6 + 2);
LABEL_157:
            v206 = v87;
            *(a1 + 263) = v86 != 0;
          }

          goto LABEL_284;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x10000u;
          v117 = *(a1 + 160);
          if (!v117)
          {
            v118 = *(a1 + 8);
            if (v118)
            {
              v118 = *(v118 & 0xFFFFFFFFFFFFFFFELL);
            }

            v117 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecRuleOffsetArchive>(v118);
            *(a1 + 160) = v117;
            v6 = v206;
          }

          v43 = sub_276F57368(a3, v117, v6);
          goto LABEL_283;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x800u;
          v47 = (v6 + 1);
          v46 = *v6;
          if ((v46 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v48 = *v47;
          v46 = (v48 << 7) + v46 - 128;
          if (v48 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v6, v46);
            v206 = v164;
            *(a1 + 264) = v165 != 0;
            if (!v164)
            {
              return 0;
            }
          }

          else
          {
            v47 = (v6 + 2);
LABEL_81:
            v206 = v47;
            *(a1 + 264) = v46 != 0;
          }

          goto LABEL_284;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x20000u;
          v12 = *(a1 + 168);
          if (v12)
          {
            goto LABEL_282;
          }

          v36 = *(a1 + 8);
          if (v36)
          {
            v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
          }

          v37 = MEMORY[0x277CA3300](v36);
          LODWORD(v12) = v37;
          *(a1 + 168) = v37;
          goto LABEL_281;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x1000u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v160 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v206 = v160;
            *(a1 + 265) = v161 != 0;
            if (!v160)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_44:
            v206 = v28;
            *(a1 + 265) = v27 != 0;
          }

          goto LABEL_284;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x40000u;
          v30 = *(a1 + 176);
          if (v30)
          {
            goto LABEL_268;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x277CA3320](v31);
          LODWORD(v30) = v32;
          *(a1 + 176) = v32;
          goto LABEL_267;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x2000u;
          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v154 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            v206 = v154;
            *(a1 + 266) = v155 != 0;
            if (!v154)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_29:
            v206 = v19;
            *(a1 + 266) = v18 != 0;
          }

          goto LABEL_284;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x80000u;
          v30 = *(a1 + 184);
          if (v30)
          {
            goto LABEL_268;
          }

          v140 = *(a1 + 8);
          if (v140)
          {
            v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
          }

          v141 = MEMORY[0x277CA3320](v140);
          LODWORD(v30) = v141;
          *(a1 + 184) = v141;
          goto LABEL_267;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x4000u;
          v125 = (v6 + 1);
          v124 = *v6;
          if ((v124 & 0x8000000000000000) == 0)
          {
            goto LABEL_236;
          }

          v126 = *v125;
          v124 = (v126 << 7) + v124 - 128;
          if (v126 < 0)
          {
            v196 = google::protobuf::internal::VarintParseSlow64(v6, v124);
            v206 = v196;
            *(a1 + 267) = v197 != 0;
            if (!v196)
            {
              return 0;
            }
          }

          else
          {
            v125 = (v6 + 2);
LABEL_236:
            v206 = v125;
            *(a1 + 267) = v124 != 0;
          }

          goto LABEL_284;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x100000u;
          v30 = *(a1 + 192);
          if (v30)
          {
            goto LABEL_268;
          }

          v59 = *(a1 + 8);
          if (v59)
          {
            v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x277CA3320](v59);
          LODWORD(v30) = v60;
          *(a1 + 192) = v60;
          goto LABEL_267;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x8000u;
          v93 = (v6 + 1);
          v92 = *v6;
          if ((v92 & 0x8000000000000000) == 0)
          {
            goto LABEL_167;
          }

          v94 = *v93;
          v92 = (v94 << 7) + v92 - 128;
          if (v94 < 0)
          {
            v186 = google::protobuf::internal::VarintParseSlow64(v6, v92);
            v206 = v186;
            *(a1 + 268) = v187 != 0;
            if (!v186)
            {
              return 0;
            }
          }

          else
          {
            v93 = (v6 + 2);
LABEL_167:
            v206 = v93;
            *(a1 + 268) = v92 != 0;
          }

          goto LABEL_284;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x200000u;
          v30 = *(a1 + 200);
          if (v30)
          {
            goto LABEL_268;
          }

          v130 = *(a1 + 8);
          if (v130)
          {
            v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
          }

          v131 = MEMORY[0x277CA3320](v130);
          LODWORD(v30) = v131;
          *(a1 + 200) = v131;
LABEL_267:
          v6 = v206;
LABEL_268:
          v43 = sub_276F560B8(a3, v30, v6);
          goto LABEL_283;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x10000u;
          v16 = (v6 + 1);
          v15 = *v6;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v152 = google::protobuf::internal::VarintParseSlow64(v6, v15);
            v206 = v152;
            *(a1 + 269) = v153 != 0;
            if (!v152)
            {
              return 0;
            }
          }

          else
          {
            v16 = (v6 + 2);
LABEL_24:
            v206 = v16;
            *(a1 + 269) = v15 != 0;
          }

          goto LABEL_284;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x400000u;
          v40 = *(a1 + 208);
          if (!v40)
          {
            v41 = *(a1 + 8);
            if (v41)
            {
              v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
            }

            v42 = MEMORY[0x277CA32E0](v41);
            LODWORD(v40) = v42;
            *(a1 + 208) = v42;
            v6 = v206;
          }

          v43 = sub_276F56668(a3, v40, v6);
          goto LABEL_283;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x20000u;
          v120 = (v6 + 1);
          v119 = *v6;
          if ((v119 & 0x8000000000000000) == 0)
          {
            goto LABEL_225;
          }

          v121 = *v120;
          v119 = (v121 << 7) + v119 - 128;
          if (v121 < 0)
          {
            v194 = google::protobuf::internal::VarintParseSlow64(v6, v119);
            v206 = v194;
            *(a1 + 270) = v195 != 0;
            if (!v194)
            {
              return 0;
            }
          }

          else
          {
            v120 = (v6 + 2);
LABEL_225:
            v206 = v120;
            *(a1 + 270) = v119 != 0;
          }

          goto LABEL_284;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x800000u;
          v146 = *(a1 + 216);
          if (!v146)
          {
            v147 = *(a1 + 8);
            if (v147)
            {
              v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
            }

            v146 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecTabsArchive>(v147);
            *(a1 + 216) = v146;
            v6 = v206;
          }

          v43 = sub_276F57438(a3, v146, v6);
          goto LABEL_283;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x40000u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v158 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v206 = v158;
            *(a1 + 271) = v159 != 0;
            if (!v158)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v206 = v25;
            *(a1 + 271) = v24 != 0;
          }

          goto LABEL_284;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x1000000u;
          v8 = *(a1 + 224);
          if (v8)
          {
            goto LABEL_275;
          }

          v49 = *(a1 + 8);
          if (v49)
          {
            v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = MEMORY[0x277CA3340](v49);
          LODWORD(v8) = v50;
          *(a1 + 224) = v50;
LABEL_274:
          v6 = v206;
LABEL_275:
          v43 = sub_276F56188(a3, v8, v6);
          goto LABEL_283;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x80000u;
          v55 = (v6 + 1);
          v54 = *v6;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_96;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v168 = google::protobuf::internal::VarintParseSlow64(v6, v54);
            v206 = v168;
            *(a1 + 272) = v169 != 0;
            if (!v168)
            {
              return 0;
            }
          }

          else
          {
            v55 = (v6 + 2);
LABEL_96:
            v206 = v55;
            *(a1 + 272) = v54 != 0;
          }

          goto LABEL_284;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x2000000u;
          v12 = *(a1 + 232);
          if (v12)
          {
            goto LABEL_282;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277CA3300](v13);
          LODWORD(v12) = v14;
          *(a1 + 232) = v14;
          goto LABEL_281;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x100000u;
          v149 = (v6 + 1);
          v148 = *v6;
          if ((v148 & 0x8000000000000000) == 0)
          {
            goto LABEL_296;
          }

          v150 = *v149;
          v148 = (v150 << 7) + v148 - 128;
          if (v150 < 0)
          {
            v204 = google::protobuf::internal::VarintParseSlow64(v6, v148);
            v206 = v204;
            *(a1 + 273) = v205 != 0;
            if (!v204)
            {
              return 0;
            }
          }

          else
          {
            v149 = (v6 + 2);
LABEL_296:
            v206 = v149;
            *(a1 + 273) = v148 != 0;
          }

          goto LABEL_284;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_297;
          }

          *(a1 + 16) |= 0x4000000u;
          v12 = *(a1 + 240);
          if (v12)
          {
            goto LABEL_282;
          }

          v144 = *(a1 + 8);
          if (v144)
          {
            v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
          }

          v145 = MEMORY[0x277CA3300](v144);
          LODWORD(v12) = v145;
          *(a1 + 240) = v145;
LABEL_281:
          v6 = v206;
LABEL_282:
          v43 = sub_276F56328(a3, v12, v6);
          goto LABEL_283;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_297;
          }

          *(a1 + 20) |= 0x200000u;
          v22 = (v6 + 1);
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v156 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v206 = v156;
            *(a1 + 274) = v157 != 0;
            if (!v156)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_34:
            v206 = v22;
            *(a1 + 274) = v21 != 0;
          }

          goto LABEL_284;
        default:
LABEL_297:
          if (v7)
          {
            v151 = (v7 & 7) == 4;
          }

          else
          {
            v151 = 1;
          }

          if (v151)
          {
            *(a3 + 80) = v7 - 1;
            return v206;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v43 = google::protobuf::internal::UnknownFieldParse();
LABEL_283:
          v206 = v43;
          if (!v43)
          {
            return 0;
          }

LABEL_284:
          if (sub_276EA4A1C(a3, &v206))
          {
            return v206;
          }

          break;
      }
    }
  }

  return v206;
}

unsigned __int8 *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 4);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x8000000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 248);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 5);
  *a2 = 26;
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

  a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v13, v15, a3);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 249);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 6);
  *a2 = 42;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 250);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 7);
  *a2 = 58;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v27, v29, a3);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 251);
  *a2 = 64;
  a2[1] = v33;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_75;
  }

LABEL_65:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 8);
  *a2 = 74;
  v35 = *(v34 + 5);
  if (v35 > 0x7F)
  {
    a2[1] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = a2 + 3;
      do
      {
        *(v36 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++v36;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(v36 - 1) = v38;
    }

    else
    {
      a2[2] = v37;
      v36 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v35;
    v36 = a2 + 2;
  }

  a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v34, v36, a3);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_78;
  }

LABEL_75:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(this + 252);
  *a2 = 80;
  a2[1] = v40;
  a2 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_78:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v41 = *(this + 9);
    *a2 = 90;
    v42 = *(v41 + 5);
    if (v42 > 0x7F)
    {
      a2[1] = v42 | 0x80;
      v44 = v42 >> 7;
      if (v42 >> 14)
      {
        v43 = a2 + 3;
        do
        {
          *(v43 - 1) = v44 | 0x80;
          v45 = v44 >> 7;
          ++v43;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
        *(v43 - 1) = v45;
      }

      else
      {
        a2[2] = v44;
        v43 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v42;
      v43 = a2 + 2;
    }

    a2 = TSWPSOS::SpecParagraphStyleArchive::_InternalSerialize(v41, v43, a3);
  }

LABEL_88:
  if (*(this + 20))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v47 = *(this + 253);
    *a2 = 96;
    a2[1] = v47;
    a2 += 2;
  }

  if ((*(this + 16) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v48 = *(this + 10);
    *a2 = 106;
    v49 = *(v48 + 5);
    if (v49 > 0x7F)
    {
      a2[1] = v49 | 0x80;
      v51 = v49 >> 7;
      if (v49 >> 14)
      {
        v50 = a2 + 3;
        do
        {
          *(v50 - 1) = v51 | 0x80;
          v52 = v51 >> 7;
          ++v50;
          v53 = v51 >> 14;
          v51 >>= 7;
        }

        while (v53);
        *(v50 - 1) = v52;
      }

      else
      {
        a2[2] = v51;
        v50 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v49;
      v50 = a2 + 2;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v48, v50, a3);
  }

  if ((*(this + 20) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v54 = *(this + 254);
    *a2 = 112;
    a2[1] = v54;
    a2 += 2;
  }

  if ((*(this + 16) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v55 = *(this + 11);
    *a2 = 122;
    v56 = *(v55 + 5);
    if (v56 > 0x7F)
    {
      a2[1] = v56 | 0x80;
      v58 = v56 >> 7;
      if (v56 >> 14)
      {
        v57 = a2 + 3;
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
        a2[2] = v58;
        v57 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v56;
      v57 = a2 + 2;
    }

    a2 = TSWPSOS::SpecListStyleArchive::_InternalSerialize(v55, v57, a3);
  }

  if ((*(this + 20) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v61 = *(this + 255);
    *a2 = 384;
    a2[2] = v61;
    a2 += 3;
  }

  if (*(this + 17))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v62 = *(this + 12);
    *a2 = 394;
    v63 = *(v62 + 5);
    if (v63 > 0x7F)
    {
      a2[2] = v63 | 0x80;
      v65 = v63 >> 7;
      if (v63 >> 14)
      {
        v64 = a2 + 4;
        do
        {
          *(v64 - 1) = v65 | 0x80;
          v66 = v65 >> 7;
          ++v64;
          v67 = v65 >> 14;
          v65 >>= 7;
        }

        while (v67);
        *(v64 - 1) = v66;
      }

      else
      {
        a2[3] = v65;
        v64 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v63;
      v64 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v62, v64, a3);
  }

  if ((*(this + 20) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v68 = *(this + 256);
    *a2 = 400;
    a2[2] = v68;
    a2 += 3;
  }

  if ((*(this + 17) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v69 = *(this + 13);
    *a2 = 410;
    v70 = *(v69 + 5);
    if (v70 > 0x7F)
    {
      a2[2] = v70 | 0x80;
      v72 = v70 >> 7;
      if (v70 >> 14)
      {
        v71 = a2 + 4;
        do
        {
          *(v71 - 1) = v72 | 0x80;
          v73 = v72 >> 7;
          ++v71;
          v74 = v72 >> 14;
          v72 >>= 7;
        }

        while (v74);
        *(v71 - 1) = v73;
      }

      else
      {
        a2[3] = v72;
        v71 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v70;
      v71 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v69, v71, a3);
  }

  if ((*(this + 20) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v75 = *(this + 257);
    *a2 = 416;
    a2[2] = v75;
    a2 += 3;
  }

  if ((*(this + 17) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v76 = *(this + 14);
    *a2 = 426;
    v77 = *(v76 + 5);
    if (v77 > 0x7F)
    {
      a2[2] = v77 | 0x80;
      v79 = v77 >> 7;
      if (v77 >> 14)
      {
        v78 = a2 + 4;
        do
        {
          *(v78 - 1) = v79 | 0x80;
          v80 = v79 >> 7;
          ++v78;
          v81 = v79 >> 14;
          v79 >>= 7;
        }

        while (v81);
        *(v78 - 1) = v80;
      }

      else
      {
        a2[3] = v79;
        v78 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v77;
      v78 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v76, v78, a3);
  }

  if ((*(this + 20) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v82 = *(this + 258);
    *a2 = 432;
    a2[2] = v82;
    a2 += 3;
  }

  if ((*(this + 17) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v83 = *(this + 15);
    *a2 = 442;
    v84 = *(v83 + 5);
    if (v84 > 0x7F)
    {
      a2[2] = v84 | 0x80;
      v86 = v84 >> 7;
      if (v84 >> 14)
      {
        v85 = a2 + 4;
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
        a2[3] = v86;
        v85 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v84;
      v85 = a2 + 3;
    }

    a2 = TSWPSOS::SpecLineSpacingArchive::_InternalSerialize(v83, v85, a3);
  }

  if ((*(this + 20) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v89 = *(this + 259);
    *a2 = 448;
    a2[2] = v89;
    a2 += 3;
  }

  if ((*(this + 17) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v90 = *(this + 16);
    *a2 = 458;
    v91 = *(v90 + 5);
    if (v91 > 0x7F)
    {
      a2[2] = v91 | 0x80;
      v93 = v91 >> 7;
      if (v91 >> 14)
      {
        v92 = a2 + 4;
        do
        {
          *(v92 - 1) = v93 | 0x80;
          v94 = v93 >> 7;
          ++v92;
          v95 = v93 >> 14;
          v93 >>= 7;
        }

        while (v95);
        *(v92 - 1) = v94;
      }

      else
      {
        a2[3] = v93;
        v92 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v91;
      v92 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v90, v92, a3);
  }

  if ((*(this + 20) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v96 = *(this + 260);
    *a2 = 464;
    a2[2] = v96;
    a2 += 3;
  }

  if ((*(this + 17) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v97 = *(this + 17);
    *a2 = 474;
    v98 = *(v97 + 5);
    if (v98 > 0x7F)
    {
      a2[2] = v98 | 0x80;
      v100 = v98 >> 7;
      if (v98 >> 14)
      {
        v99 = a2 + 4;
        do
        {
          *(v99 - 1) = v100 | 0x80;
          v101 = v100 >> 7;
          ++v99;
          v102 = v100 >> 14;
          v100 >>= 7;
        }

        while (v102);
        *(v99 - 1) = v101;
      }

      else
      {
        a2[3] = v100;
        v99 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v98;
      v99 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v97, v99, a3);
  }

  if (*(this + 21))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v103 = *(this + 261);
    *a2 = 480;
    a2[2] = v103;
    a2 += 3;
  }

  if ((*(this + 17) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v104 = *(this + 18);
    *a2 = 490;
    v105 = *(v104 + 5);
    if (v105 > 0x7F)
    {
      a2[2] = v105 | 0x80;
      v107 = v105 >> 7;
      if (v105 >> 14)
      {
        v106 = a2 + 4;
        do
        {
          *(v106 - 1) = v107 | 0x80;
          v108 = v107 >> 7;
          ++v106;
          v109 = v107 >> 14;
          v107 >>= 7;
        }

        while (v109);
        *(v106 - 1) = v108;
      }

      else
      {
        a2[3] = v107;
        v106 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v105;
      v106 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v104, v106, a3);
  }

  if ((*(this + 21) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v110 = *(this + 262);
    *a2 = 496;
    a2[2] = v110;
    a2 += 3;
  }

  if ((*(this + 17) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v111 = *(this + 19);
    *a2 = 506;
    v112 = *(v111 + 5);
    if (v112 > 0x7F)
    {
      a2[2] = v112 | 0x80;
      v114 = v112 >> 7;
      if (v112 >> 14)
      {
        v113 = a2 + 4;
        do
        {
          *(v113 - 1) = v114 | 0x80;
          v115 = v114 >> 7;
          ++v113;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
        *(v113 - 1) = v115;
      }

      else
      {
        a2[3] = v114;
        v113 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v112;
      v113 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v111, v113, a3);
  }

  if ((*(this + 21) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v117 = *(this + 263);
    *a2 = 640;
    a2[2] = v117;
    a2 += 3;
  }

  if (*(this + 18))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v118 = *(this + 20);
    *a2 = 650;
    v119 = *(v118 + 5);
    if (v119 > 0x7F)
    {
      a2[2] = v119 | 0x80;
      v121 = v119 >> 7;
      if (v119 >> 14)
      {
        v120 = a2 + 4;
        do
        {
          *(v120 - 1) = v121 | 0x80;
          v122 = v121 >> 7;
          ++v120;
          v123 = v121 >> 14;
          v121 >>= 7;
        }

        while (v123);
        *(v120 - 1) = v122;
      }

      else
      {
        a2[3] = v121;
        v120 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v119;
      v120 = a2 + 3;
    }

    a2 = TSWPSOS::SpecRuleOffsetArchive::_InternalSerialize(v118, v120, a3);
  }

  if ((*(this + 21) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v124 = *(this + 264);
    *a2 = 656;
    a2[2] = v124;
    a2 += 3;
  }

  if ((*(this + 18) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v125 = *(this + 21);
    *a2 = 666;
    v126 = *(v125 + 5);
    if (v126 > 0x7F)
    {
      a2[2] = v126 | 0x80;
      v128 = v126 >> 7;
      if (v126 >> 14)
      {
        v127 = a2 + 4;
        do
        {
          *(v127 - 1) = v128 | 0x80;
          v129 = v128 >> 7;
          ++v127;
          v130 = v128 >> 14;
          v128 >>= 7;
        }

        while (v130);
        *(v127 - 1) = v129;
      }

      else
      {
        a2[3] = v128;
        v127 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v126;
      v127 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v125, v127, a3);
  }

  if ((*(this + 21) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v131 = *(this + 265);
    *a2 = 672;
    a2[2] = v131;
    a2 += 3;
  }

  if ((*(this + 18) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v132 = *(this + 22);
    *a2 = 682;
    v133 = *(v132 + 5);
    if (v133 > 0x7F)
    {
      a2[2] = v133 | 0x80;
      v135 = v133 >> 7;
      if (v133 >> 14)
      {
        v134 = a2 + 4;
        do
        {
          *(v134 - 1) = v135 | 0x80;
          v136 = v135 >> 7;
          ++v134;
          v137 = v135 >> 14;
          v135 >>= 7;
        }

        while (v137);
        *(v134 - 1) = v136;
      }

      else
      {
        a2[3] = v135;
        v134 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v133;
      v134 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v132, v134, a3);
  }

  if ((*(this + 21) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v138 = *(this + 266);
    *a2 = 688;
    a2[2] = v138;
    a2 += 3;
  }

  if ((*(this + 18) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v139 = *(this + 23);
    *a2 = 698;
    v140 = *(v139 + 5);
    if (v140 > 0x7F)
    {
      a2[2] = v140 | 0x80;
      v142 = v140 >> 7;
      if (v140 >> 14)
      {
        v141 = a2 + 4;
        do
        {
          *(v141 - 1) = v142 | 0x80;
          v143 = v142 >> 7;
          ++v141;
          v144 = v142 >> 14;
          v142 >>= 7;
        }

        while (v144);
        *(v141 - 1) = v143;
      }

      else
      {
        a2[3] = v142;
        v141 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v140;
      v141 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v139, v141, a3);
  }

  if ((*(this + 21) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v145 = *(this + 267);
    *a2 = 704;
    a2[2] = v145;
    a2 += 3;
  }

  if ((*(this + 18) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v146 = *(this + 24);
    *a2 = 714;
    v147 = *(v146 + 5);
    if (v147 > 0x7F)
    {
      a2[2] = v147 | 0x80;
      v149 = v147 >> 7;
      if (v147 >> 14)
      {
        v148 = a2 + 4;
        do
        {
          *(v148 - 1) = v149 | 0x80;
          v150 = v149 >> 7;
          ++v148;
          v151 = v149 >> 14;
          v149 >>= 7;
        }

        while (v151);
        *(v148 - 1) = v150;
      }

      else
      {
        a2[3] = v149;
        v148 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v147;
      v148 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v146, v148, a3);
  }

  if ((*(this + 21) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v152 = *(this + 268);
    *a2 = 720;
    a2[2] = v152;
    a2 += 3;
  }

  if ((*(this + 18) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v153 = *(this + 25);
    *a2 = 730;
    v154 = *(v153 + 5);
    if (v154 > 0x7F)
    {
      a2[2] = v154 | 0x80;
      v156 = v154 >> 7;
      if (v154 >> 14)
      {
        v155 = a2 + 4;
        do
        {
          *(v155 - 1) = v156 | 0x80;
          v157 = v156 >> 7;
          ++v155;
          v158 = v156 >> 14;
          v156 >>= 7;
        }

        while (v158);
        *(v155 - 1) = v157;
      }

      else
      {
        a2[3] = v156;
        v155 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v154;
      v155 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v153, v155, a3);
  }

  if (*(this + 22))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v159 = *(this + 269);
    *a2 = 736;
    a2[2] = v159;
    a2 += 3;
  }

  if ((*(this + 18) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v160 = *(this + 26);
    *a2 = 746;
    v161 = *(v160 + 5);
    if (v161 > 0x7F)
    {
      a2[2] = v161 | 0x80;
      v163 = v161 >> 7;
      if (v161 >> 14)
      {
        v162 = a2 + 4;
        do
        {
          *(v162 - 1) = v163 | 0x80;
          v164 = v163 >> 7;
          ++v162;
          v165 = v163 >> 14;
          v163 >>= 7;
        }

        while (v165);
        *(v162 - 1) = v164;
      }

      else
      {
        a2[3] = v163;
        v162 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v161;
      v162 = a2 + 3;
    }

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v160, v162, a3);
  }

  if ((*(this + 22) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v166 = *(this + 270);
    *a2 = 752;
    a2[2] = v166;
    a2 += 3;
  }

  if ((*(this + 18) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v167 = *(this + 27);
    *a2 = 762;
    v168 = *(v167 + 5);
    if (v168 > 0x7F)
    {
      a2[2] = v168 | 0x80;
      v170 = v168 >> 7;
      if (v168 >> 14)
      {
        v169 = a2 + 4;
        do
        {
          *(v169 - 1) = v170 | 0x80;
          v171 = v170 >> 7;
          ++v169;
          v172 = v170 >> 14;
          v170 >>= 7;
        }

        while (v172);
        *(v169 - 1) = v171;
      }

      else
      {
        a2[3] = v170;
        v169 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v168;
      v169 = a2 + 3;
    }

    a2 = TSWPSOS::SpecTabsArchive::_InternalSerialize(v167, v169, a3);
  }

  if ((*(this + 22) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v173 = *(this + 271);
    *a2 = 896;
    a2[2] = v173;
    a2 += 3;
  }

  if (*(this + 19))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v174 = *(this + 28);
    *a2 = 906;
    v175 = *(v174 + 5);
    if (v175 > 0x7F)
    {
      a2[2] = v175 | 0x80;
      v177 = v175 >> 7;
      if (v175 >> 14)
      {
        v176 = a2 + 4;
        do
        {
          *(v176 - 1) = v177 | 0x80;
          v178 = v177 >> 7;
          ++v176;
          v179 = v177 >> 14;
          v177 >>= 7;
        }

        while (v179);
        *(v176 - 1) = v178;
      }

      else
      {
        a2[3] = v177;
        v176 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v175;
      v176 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v174, v176, a3);
  }

  if ((*(this + 22) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v180 = *(this + 272);
    *a2 = 912;
    a2[2] = v180;
    a2 += 3;
  }

  if ((*(this + 19) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v181 = *(this + 29);
    *a2 = 922;
    v182 = *(v181 + 5);
    if (v182 > 0x7F)
    {
      a2[2] = v182 | 0x80;
      v184 = v182 >> 7;
      if (v182 >> 14)
      {
        v183 = a2 + 4;
        do
        {
          *(v183 - 1) = v184 | 0x80;
          v185 = v184 >> 7;
          ++v183;
          v186 = v184 >> 14;
          v184 >>= 7;
        }

        while (v186);
        *(v183 - 1) = v185;
      }

      else
      {
        a2[3] = v184;
        v183 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v182;
      v183 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v181, v183, a3);
  }

  if ((*(this + 22) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v187 = *(this + 273);
    *a2 = 928;
    a2[2] = v187;
    a2 += 3;
  }

  if ((*(this + 19) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v188 = *(this + 30);
    *a2 = 938;
    v189 = *(v188 + 5);
    if (v189 > 0x7F)
    {
      a2[2] = v189 | 0x80;
      v191 = v189 >> 7;
      if (v189 >> 14)
      {
        v190 = a2 + 4;
        do
        {
          *(v190 - 1) = v191 | 0x80;
          v192 = v191 >> 7;
          ++v190;
          v193 = v191 >> 14;
          v191 >>= 7;
        }

        while (v193);
        *(v190 - 1) = v192;
      }

      else
      {
        a2[3] = v191;
        v190 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v189;
      v190 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v188, v190, a3);
  }

  if ((*(this + 22) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v194 = *(this + 274);
    *a2 = 944;
    a2[2] = v194;
    a2 += 3;
  }

  v195 = *(this + 1);
  if ((v195 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v195 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 4));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v5 = TSSSOS::SpecStringArchive::ByteSizeLong(*(this + 5));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v16 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 6));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_93;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v17 = TSSSOS::SpecColorArchive::ByteSizeLong(*(this + 7));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_94;
  }

LABEL_93:
  v18 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 8));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_95;
  }

LABEL_94:
  v19 = TSWPSOS::SpecParagraphStyleArchive::ByteSizeLong(*(this + 9));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_95:
  v20 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 10));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSWPSOS::SpecListStyleArchive::ByteSizeLong(*(this + 11));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v21 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 12));
    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_99;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v22 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 13));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_100;
  }

LABEL_99:
  v23 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 14));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_101;
  }

LABEL_100:
  v24 = TSWPSOS::SpecLineSpacingArchive::ByteSizeLong(*(this + 15));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_102;
  }

LABEL_101:
  v25 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 16));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_103;
  }

LABEL_102:
  v26 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 17));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_103:
  v27 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 18));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 19));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v28 = TSWPSOS::SpecRuleOffsetArchive::ByteSizeLong(*(this + 20));
    v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_107;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v29 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 21));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_108;
  }

LABEL_107:
  v30 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 22));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_109;
  }

LABEL_108:
  v31 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 23));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_110;
  }

LABEL_109:
  v32 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 24));
  v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_111;
  }

LABEL_110:
  v33 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 25));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_111:
  v34 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 26));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = TSWPSOS::SpecTabsArchive::ByteSizeLong(*(this + 27));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v2))
  {
    goto LABEL_43;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v35 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 28));
    v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v36 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 29));
  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) != 0)
  {
LABEL_39:
    v9 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 30));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_40:
  v10 = vaddvq_s32((*&vshlq_u32(vdupq_n_s32(v2), xmmword_276FA35E0) & __PAIR128__(0xFFFFFFC2FFFFFFC2, 0xFFFFFFC2FFFFFFC2)));
  if (v2 >= 0)
  {
    v3 += v10;
  }

  else
  {
    v3 += v10 + 2;
  }

LABEL_43:
  v11 = *(this + 5);
  if (v11)
  {
    v12 = v3 + (v11 & 2) + 2 * (v11 & 1);
    if ((v11 & 4) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 8) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 0x10) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 0x20) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 0x40) != 0)
    {
      v12 += 3;
    }

    if ((v11 & 0x80) != 0)
    {
      v3 = v12 + 3;
    }

    else
    {
      v3 = v12;
    }
  }

  if ((v11 & 0xFF00) != 0)
  {
    v13 = v3 + 3;
    if ((v11 & 0x100) == 0)
    {
      v13 = v3;
    }

    if ((v11 & 0x200) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x400) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x800) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x1000) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x2000) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x4000) != 0)
    {
      v13 += 3;
    }

    if ((v11 & 0x8000) != 0)
    {
      v3 = v13 + 3;
    }

    else
    {
      v3 = v13;
    }
  }

  if ((v11 & 0x3F0000) != 0)
  {
    v14 = v3 + 3;
    if ((v11 & 0x10000) == 0)
    {
      v14 = v3;
    }

    if ((v11 & 0x20000) != 0)
    {
      v14 += 3;
    }

    if ((v11 & 0x40000) != 0)
    {
      v14 += 3;
    }

    if ((v11 & 0x80000) != 0)
    {
      v14 += 3;
    }

    if ((v11 & 0x100000) != 0)
    {
      v14 += 3;
    }

    if ((v11 & 0x200000) != 0)
    {
      v3 = v14 + 3;
    }

    else
    {
      v3 = v14;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 24);
  }

  else
  {
    *(this + 6) = v3;
    return v3;
  }
}

uint64_t TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_77;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277CA3340](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80C18];
    }

    this = TSSSOS::SpecIntegerArchive::MergeFrom(v6, v8);
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA3330](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 5))
    {
      v11 = *(a2 + 5);
    }

    else
    {
      v11 = MEMORY[0x277D80C10];
    }

    this = TSSSOS::SpecStringArchive::MergeFrom(v9, v11);
  }

  v12 = MEMORY[0x277D80C08];
  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 48);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277CA3320](v14);
      *(v3 + 48) = v13;
    }

    if (*(a2 + 6))
    {
      v15 = *(a2 + 6);
    }

    else
    {
      v15 = v12;
    }

    this = TSSSOS::SpecDoubleArchive::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_24:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_24;
  }

  *(v3 + 16) |= 8u;
  v16 = *(v3 + 56);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x277CA3310](v17);
    *(v3 + 56) = v16;
  }

  if (*(a2 + 7))
  {
    v18 = *(a2 + 7);
  }

  else
  {
    v18 = MEMORY[0x277D80C00];
  }

  this = TSSSOS::SpecColorArchive::MergeFrom(v16, v18);
  if ((v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v22 = *(v3 + 72);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecParagraphStyleArchive>(v23);
      *(v3 + 72) = v22;
    }

    if (*(a2 + 9))
    {
      v24 = *(a2 + 9);
    }

    else
    {
      v24 = &TSWPSOS::_SpecParagraphStyleArchive_default_instance_;
    }

    this = TSWPSOS::SpecParagraphStyleArchive::MergeFrom(v22, v24);
    if ((v5 & 0x40) == 0)
    {
LABEL_27:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(v3 + 16) |= 0x10u;
  v19 = *(v3 + 64);
  if (!v19)
  {
    v20 = *(v3 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277CA3320](v20);
    *(v3 + 64) = v19;
  }

  if (*(a2 + 8))
  {
    v21 = *(a2 + 8);
  }

  else
  {
    v21 = v12;
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v19, v21);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_26:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v25 = *(v3 + 80);
  if (!v25)
  {
    v26 = *(v3 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x277CA3300](v26);
    *(v3 + 80) = v25;
  }

  if (*(a2 + 10))
  {
    v27 = *(a2 + 10);
  }

  else
  {
    v27 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v25, v27);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v28 = *(v3 + 88);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleArchive>(v29);
      *(v3 + 88) = v28;
    }

    if (*(a2 + 11))
    {
      v30 = *(a2 + 11);
    }

    else
    {
      v30 = &TSWPSOS::_SpecListStyleArchive_default_instance_;
    }

    this = TSWPSOS::SpecListStyleArchive::MergeFrom(v28, v30);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 96);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277CA3300](v32);
      *(v3 + 96) = v31;
    }

    if (*(a2 + 12))
    {
      v33 = *(a2 + 12);
    }

    else
    {
      v33 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v31, v33);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_103;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v34 = *(v3 + 104);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x277CA3300](v35);
    *(v3 + 104) = v34;
  }

  if (*(a2 + 13))
  {
    v36 = *(a2 + 13);
  }

  else
  {
    v36 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v34, v36);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_111;
  }

LABEL_103:
  *(v3 + 16) |= 0x400u;
  v37 = *(v3 + 112);
  if (!v37)
  {
    v38 = *(v3 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x277CA3320](v38);
    *(v3 + 112) = v37;
  }

  if (*(a2 + 14))
  {
    v39 = *(a2 + 14);
  }

  else
  {
    v39 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v37, v39);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(v3 + 16) |= 0x800u;
  v40 = *(v3 + 120);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecLineSpacingArchive>(v41);
    *(v3 + 120) = v40;
  }

  if (*(a2 + 15))
  {
    v42 = *(a2 + 15);
  }

  else
  {
    v42 = &TSWPSOS::_SpecLineSpacingArchive_default_instance_;
  }

  this = TSWPSOS::SpecLineSpacingArchive::MergeFrom(v40, v42);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(v3 + 16) |= 0x1000u;
  v43 = *(v3 + 128);
  if (!v43)
  {
    v44 = *(v3 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x277CA3340](v44);
    *(v3 + 128) = v43;
  }

  if (*(a2 + 16))
  {
    v45 = *(a2 + 16);
  }

  else
  {
    v45 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v43, v45);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(v3 + 16) |= 0x2000u;
  v46 = *(v3 + 136);
  if (!v46)
  {
    v47 = *(v3 + 8);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x277CA3340](v47);
    *(v3 + 136) = v46;
  }

  if (*(a2 + 17))
  {
    v48 = *(a2 + 17);
  }

  else
  {
    v48 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v46, v48);
  if ((v5 & 0x4000) == 0)
  {
LABEL_85:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(v3 + 16) |= 0x4000u;
  v49 = *(v3 + 144);
  if (!v49)
  {
    v50 = *(v3 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x277CA3300](v50);
    *(v3 + 144) = v49;
  }

  if (*(a2 + 18))
  {
    v51 = *(a2 + 18);
  }

  else
  {
    v51 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v49, v51);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v52 = *(v3 + 152);
    if (!v52)
    {
      v53 = *(v3 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x277CA3340](v53);
      *(v3 + 152) = v52;
    }

    if (*(a2 + 19))
    {
      v54 = *(a2 + 19);
    }

    else
    {
      v54 = MEMORY[0x277D80C18];
    }

    this = TSSSOS::SpecIntegerArchive::MergeFrom(v52, v54);
  }

LABEL_151:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_225;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v55 = *(v3 + 160);
    if (!v55)
    {
      v56 = *(v3 + 8);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecRuleOffsetArchive>(v56);
      *(v3 + 160) = v55;
    }

    if (*(a2 + 20))
    {
      v57 = *(a2 + 20);
    }

    else
    {
      v57 = &TSWPSOS::_SpecRuleOffsetArchive_default_instance_;
    }

    this = TSWPSOS::SpecRuleOffsetArchive::MergeFrom(v55, v57);
    if ((v5 & 0x20000) == 0)
    {
LABEL_154:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_177;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_154;
  }

  *(v3 + 16) |= 0x20000u;
  v58 = *(v3 + 168);
  if (!v58)
  {
    v59 = *(v3 + 8);
    if (v59)
    {
      v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = MEMORY[0x277CA3300](v59);
    *(v3 + 168) = v58;
  }

  if (*(a2 + 21))
  {
    v60 = *(a2 + 21);
  }

  else
  {
    v60 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v58, v60);
  if ((v5 & 0x40000) == 0)
  {
LABEL_155:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_185;
  }

LABEL_177:
  *(v3 + 16) |= 0x40000u;
  v61 = *(v3 + 176);
  if (!v61)
  {
    v62 = *(v3 + 8);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = MEMORY[0x277CA3320](v62);
    *(v3 + 176) = v61;
  }

  if (*(a2 + 22))
  {
    v63 = *(a2 + 22);
  }

  else
  {
    v63 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v61, v63);
  if ((v5 & 0x80000) == 0)
  {
LABEL_156:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_193;
  }

LABEL_185:
  *(v3 + 16) |= 0x80000u;
  v64 = *(v3 + 184);
  if (!v64)
  {
    v65 = *(v3 + 8);
    if (v65)
    {
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
    }

    v64 = MEMORY[0x277CA3320](v65);
    *(v3 + 184) = v64;
  }

  if (*(a2 + 23))
  {
    v66 = *(a2 + 23);
  }

  else
  {
    v66 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v64, v66);
  if ((v5 & 0x100000) == 0)
  {
LABEL_157:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_201;
  }

LABEL_193:
  *(v3 + 16) |= 0x100000u;
  v67 = *(v3 + 192);
  if (!v67)
  {
    v68 = *(v3 + 8);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x277CA3320](v68);
    *(v3 + 192) = v67;
  }

  if (*(a2 + 24))
  {
    v69 = *(a2 + 24);
  }

  else
  {
    v69 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v67, v69);
  if ((v5 & 0x200000) == 0)
  {
LABEL_158:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_209;
  }

LABEL_201:
  *(v3 + 16) |= 0x200000u;
  v70 = *(v3 + 200);
  if (!v70)
  {
    v71 = *(v3 + 8);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = MEMORY[0x277CA3320](v71);
    *(v3 + 200) = v70;
  }

  if (*(a2 + 25))
  {
    v72 = *(a2 + 25);
  }

  else
  {
    v72 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v70, v72);
  if ((v5 & 0x400000) == 0)
  {
LABEL_159:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_217;
  }

LABEL_209:
  *(v3 + 16) |= 0x400000u;
  v73 = *(v3 + 208);
  if (!v73)
  {
    v74 = *(v3 + 8);
    if (v74)
    {
      v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
    }

    v73 = MEMORY[0x277CA32E0](v74);
    *(v3 + 208) = v73;
  }

  if (*(a2 + 26))
  {
    v75 = *(a2 + 26);
  }

  else
  {
    v75 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v73, v75);
  if ((v5 & 0x800000) != 0)
  {
LABEL_217:
    *(v3 + 16) |= 0x800000u;
    v76 = *(v3 + 216);
    if (!v76)
    {
      v77 = *(v3 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecTabsArchive>(v77);
      *(v3 + 216) = v76;
    }

    if (*(a2 + 27))
    {
      v78 = *(a2 + 27);
    }

    else
    {
      v78 = &TSWPSOS::_SpecTabsArchive_default_instance_;
    }

    this = TSWPSOS::SpecTabsArchive::MergeFrom(v76, v78);
  }

LABEL_225:
  if (!HIBYTE(v5))
  {
    goto LABEL_235;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v80 = *(v3 + 224);
    if (!v80)
    {
      v81 = *(v3 + 8);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = MEMORY[0x277CA3340](v81);
      *(v3 + 224) = v80;
    }

    if (*(a2 + 28))
    {
      v82 = *(a2 + 28);
    }

    else
    {
      v82 = MEMORY[0x277D80C18];
    }

    this = TSSSOS::SpecIntegerArchive::MergeFrom(v80, v82);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_228:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_305;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_228;
  }

  *(v3 + 16) |= 0x2000000u;
  v83 = *(v3 + 232);
  if (!v83)
  {
    v84 = *(v3 + 8);
    if (v84)
    {
      v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
    }

    v83 = MEMORY[0x277CA3300](v84);
    *(v3 + 232) = v83;
  }

  if (*(a2 + 29))
  {
    v85 = *(a2 + 29);
  }

  else
  {
    v85 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v83, v85);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_229:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_313;
  }

LABEL_305:
  *(v3 + 16) |= 0x4000000u;
  v86 = *(v3 + 240);
  if (!v86)
  {
    v87 = *(v3 + 8);
    if (v87)
    {
      v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
    }

    v86 = MEMORY[0x277CA3300](v87);
    *(v3 + 240) = v86;
  }

  if (*(a2 + 30))
  {
    v88 = *(a2 + 30);
  }

  else
  {
    v88 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v86, v88);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_314;
  }

LABEL_313:
  *(v3 + 248) = *(a2 + 248);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_315;
  }

LABEL_314:
  *(v3 + 249) = *(a2 + 249);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_233;
    }

LABEL_316:
    *(v3 + 251) = *(a2 + 251);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_234;
    }

LABEL_317:
    *(v3 + 252) = *(a2 + 252);
    goto LABEL_234;
  }

LABEL_315:
  *(v3 + 250) = *(a2 + 250);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_316;
  }

LABEL_233:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_317;
  }

LABEL_234:
  *(v3 + 16) |= v5;
LABEL_235:
  v79 = *(a2 + 5);
  if (!v79)
  {
    goto LABEL_246;
  }

  if (v79)
  {
    *(v3 + 253) = *(a2 + 253);
    if ((v79 & 2) == 0)
    {
LABEL_238:
      if ((v79 & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_269;
    }
  }

  else if ((v79 & 2) == 0)
  {
    goto LABEL_238;
  }

  *(v3 + 254) = *(a2 + 254);
  if ((v79 & 4) == 0)
  {
LABEL_239:
    if ((v79 & 8) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_270;
  }

LABEL_269:
  *(v3 + 255) = *(a2 + 255);
  if ((v79 & 8) == 0)
  {
LABEL_240:
    if ((v79 & 0x10) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_271;
  }

LABEL_270:
  *(v3 + 256) = *(a2 + 256);
  if ((v79 & 0x10) == 0)
  {
LABEL_241:
    if ((v79 & 0x20) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_272;
  }

LABEL_271:
  *(v3 + 257) = *(a2 + 257);
  if ((v79 & 0x20) == 0)
  {
LABEL_242:
    if ((v79 & 0x40) == 0)
    {
      goto LABEL_243;
    }

LABEL_273:
    *(v3 + 259) = *(a2 + 259);
    if ((v79 & 0x80) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_244;
  }

LABEL_272:
  *(v3 + 258) = *(a2 + 258);
  if ((v79 & 0x40) != 0)
  {
    goto LABEL_273;
  }

LABEL_243:
  if ((v79 & 0x80) != 0)
  {
LABEL_244:
    *(v3 + 260) = *(a2 + 260);
  }

LABEL_245:
  *(v3 + 20) |= v79;
LABEL_246:
  if ((v79 & 0xFF00) == 0)
  {
    goto LABEL_257;
  }

  if ((v79 & 0x100) != 0)
  {
    *(v3 + 261) = *(a2 + 261);
    if ((v79 & 0x200) == 0)
    {
LABEL_249:
      if ((v79 & 0x400) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_277;
    }
  }

  else if ((v79 & 0x200) == 0)
  {
    goto LABEL_249;
  }

  *(v3 + 262) = *(a2 + 262);
  if ((v79 & 0x400) == 0)
  {
LABEL_250:
    if ((v79 & 0x800) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_278;
  }

LABEL_277:
  *(v3 + 263) = *(a2 + 263);
  if ((v79 & 0x800) == 0)
  {
LABEL_251:
    if ((v79 & 0x1000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_279;
  }

LABEL_278:
  *(v3 + 264) = *(a2 + 264);
  if ((v79 & 0x1000) == 0)
  {
LABEL_252:
    if ((v79 & 0x2000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_280;
  }

LABEL_279:
  *(v3 + 265) = *(a2 + 265);
  if ((v79 & 0x2000) == 0)
  {
LABEL_253:
    if ((v79 & 0x4000) == 0)
    {
      goto LABEL_254;
    }

LABEL_281:
    *(v3 + 267) = *(a2 + 267);
    if ((v79 & 0x8000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

LABEL_280:
  *(v3 + 266) = *(a2 + 266);
  if ((v79 & 0x4000) != 0)
  {
    goto LABEL_281;
  }

LABEL_254:
  if ((v79 & 0x8000) != 0)
  {
LABEL_255:
    *(v3 + 268) = *(a2 + 268);
  }

LABEL_256:
  *(v3 + 20) |= v79;
LABEL_257:
  if ((v79 & 0x3F0000) == 0)
  {
    return this;
  }

  if ((v79 & 0x10000) != 0)
  {
    *(v3 + 269) = *(a2 + 269);
    if ((v79 & 0x20000) == 0)
    {
LABEL_260:
      if ((v79 & 0x40000) == 0)
      {
        goto LABEL_261;
      }

      goto LABEL_285;
    }
  }

  else if ((v79 & 0x20000) == 0)
  {
    goto LABEL_260;
  }

  *(v3 + 270) = *(a2 + 270);
  if ((v79 & 0x40000) == 0)
  {
LABEL_261:
    if ((v79 & 0x80000) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_286;
  }

LABEL_285:
  *(v3 + 271) = *(a2 + 271);
  if ((v79 & 0x80000) == 0)
  {
LABEL_262:
    if ((v79 & 0x100000) == 0)
    {
      goto LABEL_263;
    }

LABEL_287:
    *(v3 + 273) = *(a2 + 273);
    if ((v79 & 0x200000) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_264;
  }

LABEL_286:
  *(v3 + 272) = *(a2 + 272);
  if ((v79 & 0x100000) != 0)
  {
    goto LABEL_287;
  }

LABEL_263:
  if ((v79 & 0x200000) != 0)
  {
LABEL_264:
    *(v3 + 274) = *(a2 + 274);
  }

LABEL_265:
  *(v3 + 20) |= v79;
  return this;
}

uint64_t *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSWPSOS::SpecParagraphStyleArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSWPSOS::SpecListStyleArchive::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x800) != 0)
  {
    v4 = *(this + 15);
    if ((*(v4 + 16) & 1) != 0 && (*(*(v4 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 19));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSWPSOS::SpecRuleOffsetArchive::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 21));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 22));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 23));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 25));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 26));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x800000) != 0)
  {
    v5 = *(this + 27);
    if ((*(v5 + 16) & 1) != 0 && (*(*(v5 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 28));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 29));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x4000000) == 0)
  {
    return 1;
  }

  result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 30));
  if (result)
  {
    return 1;
  }

  return result;
}

double TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *this, TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;

  return sub_276ED570C(this + 4, a2 + 32);
}

double sub_276ED570C(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  return sub_276EE0F10(a1 + 10, a2 + 80);
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_alignment(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSSSOS::SpecStringArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_decimal_tab(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSSSOS::SpecStringArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_default_tab_stops(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSSSOS::SpecColorArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_paragraph_fill(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSSSOS::SpecColorArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_first_line_indent(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_hyphenate(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_keep_lines_together(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_keep_with_next(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_left_indent(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_outline_level(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_outline_style_type(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_page_break_before(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_border_positions(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_rounded_corners(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_paragraph_rule_width(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_right_indent(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x100000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_space_after(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x200000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_space_before(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x400000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_paragraph_stroke(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x800000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_widow_control(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 29);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_show_in_bookmarks_list(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 30);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x4000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::clear_show_in_t_o_c_navigator(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  result = *(this + 31);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x8000000u;
  return result;
}

TSWPSOS::ParagraphStylePropertyChangeSetArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::ParagraphStylePropertyChangeSetArchive(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886062C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_ParagraphStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 267) = 0u;
  return this;
}

{
  *this = &unk_2886062C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_ParagraphStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 267) = 0u;
  return this;
}

TSWPSOS::ParagraphStylePropertyChangeSetArchive *TSWPSOS::ParagraphStylePropertyChangeSetArchive::ParagraphStylePropertyChangeSetArchive(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this, const TSWPSOS::ParagraphStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886062C0;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v6 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v6 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v6 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v6 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v6 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v6 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  if ((v6 & 0x2000000) != 0)
  {
    operator new();
  }

  *(this + 29) = 0;
  if ((v6 & 0x4000000) != 0)
  {
    operator new();
  }

  *(this + 30) = 0;
  if ((v6 & 0x8000000) != 0)
  {
    operator new();
  }

  *(this + 31) = 0;
  v7 = *(a2 + 16);
  *(this + 267) = *(a2 + 267);
  *(this + 16) = v7;
  return this;
}

void TSWPSOS::ParagraphStylePropertyChangeSetArchive::~ParagraphStylePropertyChangeSetArchive(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  sub_276ED64D4(this);
  sub_276E4E808(this + 1);
}

{
  TSWPSOS::ParagraphStylePropertyChangeSetArchive::~ParagraphStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276ED64D4(uint64_t *result)
{
  if (result != &TSWPSOS::_ParagraphStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    v2 = result[4];
    if (v2)
    {
      TSWPSOS::CharacterStylePropertyChangeSetArchive::~CharacterStylePropertyChangeSetArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    if (v1[5])
    {
      v3 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v4 = MEMORY[0x277CA3060]();
      MEMORY[0x277CA3D00](v4, 0x10A1C40D4912B22);
    }

    if (v1[7])
    {
      v5 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v5, 0x10A1C40D4912B22);
    }

    if (v1[8])
    {
      v6 = MEMORY[0x277CA2FC0]();
      MEMORY[0x277CA3D00](v6, 0x10A1C40D4912B22);
    }

    if (v1[9])
    {
      v7 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v7, 0x10A1C40D4912B22);
    }

    v8 = v1[10];
    if (v8)
    {
      TSWPSOS::SpecParagraphStyleArchive::~SpecParagraphStyleArchive(v8);
      MEMORY[0x277CA3D00]();
    }

    if (v1[11])
    {
      v9 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v9, 0x10A1C40D4912B22);
    }

    v10 = v1[12];
    if (v10)
    {
      TSWPSOS::SpecListStyleArchive::~SpecListStyleArchive(v10);
      MEMORY[0x277CA3D00]();
    }

    if (v1[13])
    {
      v11 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v11, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v12 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v12, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v13 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v13, 0x10A1C40D4912B22);
    }

    v14 = v1[16];
    if (v14)
    {
      TSWPSOS::SpecLineSpacingArchive::~SpecLineSpacingArchive(v14);
      MEMORY[0x277CA3D00]();
    }

    if (v1[17])
    {
      v15 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v15, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v16 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v16, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v17 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v17, 0x10A1C40D4912B22);
    }

    if (v1[20])
    {
      v18 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v18, 0x10A1C40D4912B22);
    }

    v19 = v1[21];
    if (v19)
    {
      TSWPSOS::SpecRuleOffsetArchive::~SpecRuleOffsetArchive(v19);
      MEMORY[0x277CA3D00]();
    }

    if (v1[22])
    {
      v20 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v20, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v21 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v21, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v22 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v22, 0x10A1C40D4912B22);
    }

    if (v1[25])
    {
      v23 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v23, 0x10A1C40D4912B22);
    }

    if (v1[26])
    {
      v24 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v24, 0x10A1C40D4912B22);
    }

    if (v1[27])
    {
      v25 = MEMORY[0x277CA2ED0]();
      MEMORY[0x277CA3D00](v25, 0x10A1C4030AC051BLL);
    }

    v26 = v1[28];
    if (v26)
    {
      TSWPSOS::SpecTabsArchive::~SpecTabsArchive(v26);
      MEMORY[0x277CA3D00]();
    }

    if (v1[29])
    {
      v27 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v27, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v28 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v28, 0x10A1C40D4912B22);
    }

    result = v1[31];
    if (result)
    {
      MEMORY[0x277CA2F70]();

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWPSOS::ParagraphStylePropertyChangeSetArchive::default_instance(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_ParagraphStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_ParagraphStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::ParagraphStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSWPSOS::CharacterStylePropertyChangeSetArchive::Clear(this[4]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_51;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 40));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = TSSSOS::SpecStringArchive::Clear(*(v1 + 48));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 56));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_54:
    this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 72));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = TSSSOS::SpecColorArchive::Clear(*(v1 + 64));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_55:
  this = TSWPSOS::SpecParagraphStyleArchive::Clear(*(v1 + 80));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 88));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSWPSOS::SpecListStyleArchive::Clear(*(v1 + 96));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_59;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 104));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 112));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 120));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = TSWPSOS::SpecLineSpacingArchive::Clear(*(v1 + 128));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 136));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_63:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 144));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 152));
  }

LABEL_21:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 0x10000) != 0)
  {
    this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 160));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_67;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TSWPSOS::SpecRuleOffsetArchive::Clear(*(v1 + 168));
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 176));
  if ((v2 & 0x80000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 184));
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 192));
  if ((v2 & 0x200000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 200));
  if ((v2 & 0x400000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_71:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 208));
  if ((v2 & 0x800000) != 0)
  {
LABEL_30:
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 216));
  }

LABEL_31:
  if ((v2 & 0xF000000) == 0)
  {
    goto LABEL_37;
  }

  if ((v2 & 0x1000000) != 0)
  {
    this = TSWPSOS::SpecTabsArchive::Clear(*(v1 + 224));
    if ((v2 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_75;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 232));
  if ((v2 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_75:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 240));
  if ((v2 & 0x8000000) != 0)
  {
LABEL_36:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 248));
  }

LABEL_37:
  if (v2 >> 28)
  {
    *(v1 + 256) = 0;
  }

  v3 = *(v1 + 20);
  if (v3)
  {
    *(v1 + 260) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(v1 + 268) = 0;
  }

  if ((v3 & 0x7F0000) != 0)
  {
    *(v1 + 276) = 0;
    *(v1 + 279) = 0;
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  v4[1] = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::ParagraphStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v208 = a2;
  if ((sub_276EA4A1C(a3, &v208) & 1) == 0)
  {
    while (1)
    {
      v6 = (v208 + 1);
      LODWORD(v7) = *v208;
      if (*v208 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v208, v7);
          v208 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v208 + 2);
      }

      v208 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 32);
          if (!v8)
          {
            v9 = *(a1 + 8);
            if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
            }

            v8 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::CharacterStylePropertyChangeSetArchive>(v9);
            *(a1 + 32) = v8;
            v6 = v208;
          }

          v10 = sub_276F56A78(a3, v8, v6);
          goto LABEL_300;
        case 2u:
          if (v7 != 18)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 2u;
          v30 = *(a1 + 40);
          if (v30)
          {
            goto LABEL_163;
          }

          v81 = *(a1 + 8);
          if (v81)
          {
            v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
          }

          v82 = MEMORY[0x277CA3340](v81);
          LODWORD(v30) = v82;
          *(a1 + 40) = v82;
          goto LABEL_162;
        case 3u:
          if (v7 != 24)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x10000000u;
          v71 = (v6 + 1);
          v70 = *v6;
          if ((v70 & 0x8000000000000000) == 0)
          {
            goto LABEL_133;
          }

          v72 = *v71;
          v70 = (v72 << 7) + v70 - 128;
          if (v72 < 0)
          {
            v176 = google::protobuf::internal::VarintParseSlow64(v6, v70);
            v208 = v176;
            *(a1 + 256) = v177 != 0;
            if (!v176)
            {
              return 0;
            }
          }

          else
          {
            v71 = (v6 + 2);
LABEL_133:
            v208 = v71;
            *(a1 + 256) = v70 != 0;
          }

          goto LABEL_301;
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 4u;
          v75 = *(a1 + 48);
          if (!v75)
          {
            v76 = *(a1 + 8);
            if (v76)
            {
              v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
            }

            v77 = MEMORY[0x277CA3330](v76);
            LODWORD(v75) = v77;
            *(a1 + 48) = v77;
            v6 = v208;
          }

          v10 = sub_276F56258(a3, v75, v6);
          goto LABEL_300;
        case 5u:
          if (v7 != 40)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x20000000u;
          v55 = (v6 + 1);
          v54 = *v6;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_103;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v168 = google::protobuf::internal::VarintParseSlow64(v6, v54);
            v208 = v168;
            *(a1 + 257) = v169 != 0;
            if (!v168)
            {
              return 0;
            }
          }

          else
          {
            v55 = (v6 + 2);
LABEL_103:
            v208 = v55;
            *(a1 + 257) = v54 != 0;
          }

          goto LABEL_301;
        case 6u:
          if (v7 != 50)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 8u;
          v15 = *(a1 + 56);
          if (v15)
          {
            goto LABEL_241;
          }

          v92 = *(a1 + 8);
          if (v92)
          {
            v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
          }

          v93 = MEMORY[0x277CA3320](v92);
          LODWORD(v15) = v93;
          *(a1 + 56) = v93;
          goto LABEL_240;
        case 7u:
          if (v7 != 56)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x40000000u;
          v99 = (v6 + 1);
          v98 = *v6;
          if ((v98 & 0x8000000000000000) == 0)
          {
            goto LABEL_198;
          }

          v100 = *v99;
          v98 = (v100 << 7) + v98 - 128;
          if (v100 < 0)
          {
            v180 = google::protobuf::internal::VarintParseSlow64(v6, v98);
            v208 = v180;
            *(a1 + 258) = v181 != 0;
            if (!v180)
            {
              return 0;
            }
          }

          else
          {
            v99 = (v6 + 2);
LABEL_198:
            v208 = v99;
            *(a1 + 258) = v98 != 0;
          }

          goto LABEL_301;
        case 8u:
          if (v7 != 66)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x10u;
          v78 = *(a1 + 64);
          if (!v78)
          {
            v79 = *(a1 + 8);
            if (v79)
            {
              v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
            }

            v80 = MEMORY[0x277CA3310](v79);
            LODWORD(v78) = v80;
            *(a1 + 64) = v80;
            v6 = v208;
          }

          v10 = sub_276F56598(a3, v78, v6);
          goto LABEL_300;
        case 9u:
          if (v7 != 72)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x80000000;
          v108 = (v6 + 1);
          v107 = *v6;
          if ((v107 & 0x8000000000000000) == 0)
          {
            goto LABEL_213;
          }

          v109 = *v108;
          v107 = (v109 << 7) + v107 - 128;
          if (v109 < 0)
          {
            v186 = google::protobuf::internal::VarintParseSlow64(v6, v107);
            v208 = v186;
            *(a1 + 259) = v187 != 0;
            if (!v186)
            {
              return 0;
            }
          }

          else
          {
            v108 = (v6 + 2);
LABEL_213:
            v208 = v108;
            *(a1 + 259) = v107 != 0;
          }

          goto LABEL_301;
        case 0xAu:
          if (v7 != 82)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x20u;
          v15 = *(a1 + 72);
          if (v15)
          {
            goto LABEL_241;
          }

          v63 = *(a1 + 8);
          if (v63)
          {
            v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
          }

          v64 = MEMORY[0x277CA3320](v63);
          LODWORD(v15) = v64;
          *(a1 + 72) = v64;
          goto LABEL_240;
        case 0xBu:
          if (v7 != 88)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 1u;
          v105 = (v6 + 1);
          v104 = *v6;
          if ((v104 & 0x8000000000000000) == 0)
          {
            goto LABEL_208;
          }

          v106 = *v105;
          v104 = (v106 << 7) + v104 - 128;
          if (v106 < 0)
          {
            v184 = google::protobuf::internal::VarintParseSlow64(v6, v104);
            v208 = v184;
            *(a1 + 260) = v185 != 0;
            if (!v184)
            {
              return 0;
            }
          }

          else
          {
            v105 = (v6 + 2);
LABEL_208:
            v208 = v105;
            *(a1 + 260) = v104 != 0;
          }

          goto LABEL_301;
        case 0xCu:
          if (v7 != 98)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x40u;
          v50 = *(a1 + 80);
          if (!v50)
          {
            v51 = *(a1 + 8);
            if (v51)
            {
              v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
            }

            v50 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecParagraphStyleArchive>(v51);
            *(a1 + 80) = v50;
            v6 = v208;
          }

          v10 = sub_276F570F8(a3, v50, v6);
          goto LABEL_300;
        case 0xDu:
          if (v7 != 104)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 2u;
          v61 = (v6 + 1);
          v60 = *v6;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_113;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v172 = google::protobuf::internal::VarintParseSlow64(v6, v60);
            v208 = v172;
            *(a1 + 261) = v173 != 0;
            if (!v172)
            {
              return 0;
            }
          }

          else
          {
            v61 = (v6 + 2);
LABEL_113:
            v208 = v61;
            *(a1 + 261) = v60 != 0;
          }

          goto LABEL_301;
        case 0xEu:
          if (v7 != 114)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x80u;
          v20 = *(a1 + 88);
          if (v20)
          {
            goto LABEL_299;
          }

          v96 = *(a1 + 8);
          if (v96)
          {
            v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
          }

          v97 = MEMORY[0x277CA3300](v96);
          LODWORD(v20) = v97;
          *(a1 + 88) = v97;
          goto LABEL_298;
        case 0xFu:
          if (v7 != 120)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 4u;
          v43 = (v6 + 1);
          v42 = *v6;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_76;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v6, v42);
            v208 = v164;
            *(a1 + 262) = v165 != 0;
            if (!v164)
            {
              return 0;
            }
          }

          else
          {
            v43 = (v6 + 2);
LABEL_76:
            v208 = v43;
            *(a1 + 262) = v42 != 0;
          }

          goto LABEL_301;
        case 0x10u:
          if (v7 != 130)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x100u;
          v73 = *(a1 + 96);
          if (!v73)
          {
            v74 = *(a1 + 8);
            if (v74)
            {
              v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
            }

            v73 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleArchive>(v74);
            *(a1 + 96) = v73;
            v6 = v208;
          }

          v10 = sub_276F571C8(a3, v73, v6);
          goto LABEL_300;
        case 0x11u:
          if (v7 != 136)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 8u;
          v37 = (v6 + 1);
          v36 = *v6;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_66;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v160 = google::protobuf::internal::VarintParseSlow64(v6, v36);
            v208 = v160;
            *(a1 + 263) = v161 != 0;
            if (!v160)
            {
              return 0;
            }
          }

          else
          {
            v37 = (v6 + 2);
LABEL_66:
            v208 = v37;
            *(a1 + 263) = v36 != 0;
          }

          goto LABEL_301;
        case 0x12u:
          if (v7 != 146)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x200u;
          v20 = *(a1 + 104);
          if (v20)
          {
            goto LABEL_299;
          }

          v85 = *(a1 + 8);
          if (v85)
          {
            v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
          }

          v86 = MEMORY[0x277CA3300](v85);
          LODWORD(v20) = v86;
          *(a1 + 104) = v86;
          goto LABEL_298;
        case 0x13u:
          if (v7 != 152)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x10u;
          v102 = (v6 + 1);
          v101 = *v6;
          if ((v101 & 0x8000000000000000) == 0)
          {
            goto LABEL_203;
          }

          v103 = *v102;
          v101 = (v103 << 7) + v101 - 128;
          if (v103 < 0)
          {
            v182 = google::protobuf::internal::VarintParseSlow64(v6, v101);
            v208 = v182;
            *(a1 + 264) = v183 != 0;
            if (!v182)
            {
              return 0;
            }
          }

          else
          {
            v102 = (v6 + 2);
LABEL_203:
            v208 = v102;
            *(a1 + 264) = v101 != 0;
          }

          goto LABEL_301;
        case 0x14u:
          if (v7 != 162)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x400u;
          v20 = *(a1 + 112);
          if (v20)
          {
            goto LABEL_299;
          }

          v124 = *(a1 + 8);
          if (v124)
          {
            v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
          }

          v125 = MEMORY[0x277CA3300](v124);
          LODWORD(v20) = v125;
          *(a1 + 112) = v125;
          goto LABEL_298;
        case 0x15u:
          if (v7 != 168)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x20u;
          v90 = (v6 + 1);
          v89 = *v6;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_178;
          }

          v91 = *v90;
          v89 = (v91 << 7) + v89 - 128;
          if (v91 < 0)
          {
            v178 = google::protobuf::internal::VarintParseSlow64(v6, v89);
            v208 = v178;
            *(a1 + 265) = v179 != 0;
            if (!v178)
            {
              return 0;
            }
          }

          else
          {
            v90 = (v6 + 2);
LABEL_178:
            v208 = v90;
            *(a1 + 265) = v89 != 0;
          }

          goto LABEL_301;
        case 0x16u:
          if (v7 != 178)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x800u;
          v15 = *(a1 + 120);
          if (v15)
          {
            goto LABEL_241;
          }

          v94 = *(a1 + 8);
          if (v94)
          {
            v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
          }

          v95 = MEMORY[0x277CA3320](v94);
          LODWORD(v15) = v95;
          *(a1 + 120) = v95;
          goto LABEL_240;
        case 0x17u:
          if (v7 != 184)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x40u;
          v120 = (v6 + 1);
          v119 = *v6;
          if ((v119 & 0x8000000000000000) == 0)
          {
            goto LABEL_234;
          }

          v121 = *v120;
          v119 = (v121 << 7) + v119 - 128;
          if (v121 < 0)
          {
            v192 = google::protobuf::internal::VarintParseSlow64(v6, v119);
            v208 = v192;
            *(a1 + 266) = v193 != 0;
            if (!v192)
            {
              return 0;
            }
          }

          else
          {
            v120 = (v6 + 2);
LABEL_234:
            v208 = v120;
            *(a1 + 266) = v119 != 0;
          }

          goto LABEL_301;
        case 0x18u:
          if (v7 != 194)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x1000u;
          v129 = *(a1 + 128);
          if (!v129)
          {
            v130 = *(a1 + 8);
            if (v130)
            {
              v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
            }

            v129 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecLineSpacingArchive>(v130);
            *(a1 + 128) = v129;
            v6 = v208;
          }

          v10 = sub_276F57298(a3, v129, v6);
          goto LABEL_300;
        case 0x19u:
          if (v7 != 200)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x80u;
          v68 = (v6 + 1);
          v67 = *v6;
          if ((v67 & 0x8000000000000000) == 0)
          {
            goto LABEL_128;
          }

          v69 = *v68;
          v67 = (v69 << 7) + v67 - 128;
          if (v69 < 0)
          {
            v174 = google::protobuf::internal::VarintParseSlow64(v6, v67);
            v208 = v174;
            *(a1 + 267) = v175 != 0;
            if (!v174)
            {
              return 0;
            }
          }

          else
          {
            v68 = (v6 + 2);
LABEL_128:
            v208 = v68;
            *(a1 + 267) = v67 != 0;
          }

          goto LABEL_301;
        case 0x1Au:
          if (v7 != 210)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x2000u;
          v30 = *(a1 + 136);
          if (v30)
          {
            goto LABEL_163;
          }

          v65 = *(a1 + 8);
          if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
          }

          v66 = MEMORY[0x277CA3340](v65);
          LODWORD(v30) = v66;
          *(a1 + 136) = v66;
          goto LABEL_162;
        case 0x1Bu:
          if (v7 != 216)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x100u;
          v140 = (v6 + 1);
          v139 = *v6;
          if ((v139 & 0x8000000000000000) == 0)
          {
            goto LABEL_277;
          }

          v141 = *v140;
          v139 = (v141 << 7) + v139 - 128;
          if (v141 < 0)
          {
            v200 = google::protobuf::internal::VarintParseSlow64(v6, v139);
            v208 = v200;
            *(a1 + 268) = v201 != 0;
            if (!v200)
            {
              return 0;
            }
          }

          else
          {
            v140 = (v6 + 2);
LABEL_277:
            v208 = v140;
            *(a1 + 268) = v139 != 0;
          }

          goto LABEL_301;
        case 0x1Cu:
          if (v7 != 226)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x4000u;
          v30 = *(a1 + 144);
          if (v30)
          {
            goto LABEL_163;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x277CA3340](v31);
          LODWORD(v30) = v32;
          *(a1 + 144) = v32;
          goto LABEL_162;
        case 0x1Du:
          if (v7 != 232)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x200u;
          v132 = (v6 + 1);
          v131 = *v6;
          if ((v131 & 0x8000000000000000) == 0)
          {
            goto LABEL_262;
          }

          v133 = *v132;
          v131 = (v133 << 7) + v131 - 128;
          if (v133 < 0)
          {
            v196 = google::protobuf::internal::VarintParseSlow64(v6, v131);
            v208 = v196;
            *(a1 + 269) = v197 != 0;
            if (!v196)
            {
              return 0;
            }
          }

          else
          {
            v132 = (v6 + 2);
LABEL_262:
            v208 = v132;
            *(a1 + 269) = v131 != 0;
          }

          goto LABEL_301;
        case 0x1Eu:
          if (v7 != 242)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x8000u;
          v20 = *(a1 + 152);
          if (v20)
          {
            goto LABEL_299;
          }

          v134 = *(a1 + 8);
          if (v134)
          {
            v134 = *(v134 & 0xFFFFFFFFFFFFFFFELL);
          }

          v135 = MEMORY[0x277CA3300](v134);
          LODWORD(v20) = v135;
          *(a1 + 152) = v135;
          goto LABEL_298;
        case 0x1Fu:
          if (v7 != 248)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x400u;
          v111 = (v6 + 1);
          v110 = *v6;
          if ((v110 & 0x8000000000000000) == 0)
          {
            goto LABEL_218;
          }

          v112 = *v111;
          v110 = (v112 << 7) + v110 - 128;
          if (v112 < 0)
          {
            v188 = google::protobuf::internal::VarintParseSlow64(v6, v110);
            v208 = v188;
            *(a1 + 270) = v189 != 0;
            if (!v188)
            {
              return 0;
            }
          }

          else
          {
            v111 = (v6 + 2);
LABEL_218:
            v208 = v111;
            *(a1 + 270) = v110 != 0;
          }

          goto LABEL_301;
        case 0x20u:
          if (v7 != 2)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x10000u;
          v30 = *(a1 + 160);
          if (v30)
          {
            goto LABEL_163;
          }

          v83 = *(a1 + 8);
          if (v83)
          {
            v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
          }

          v84 = MEMORY[0x277CA3340](v83);
          LODWORD(v30) = v84;
          *(a1 + 160) = v84;
          goto LABEL_162;
        case 0x21u:
          if (v7 != 8)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x800u;
          v114 = (v6 + 1);
          v113 = *v6;
          if ((v113 & 0x8000000000000000) == 0)
          {
            goto LABEL_223;
          }

          v115 = *v114;
          v113 = (v115 << 7) + v113 - 128;
          if (v115 < 0)
          {
            v190 = google::protobuf::internal::VarintParseSlow64(v6, v113);
            v208 = v190;
            *(a1 + 271) = v191 != 0;
            if (!v190)
            {
              return 0;
            }
          }

          else
          {
            v114 = (v6 + 2);
LABEL_223:
            v208 = v114;
            *(a1 + 271) = v113 != 0;
          }

          goto LABEL_301;
        case 0x22u:
          if (v7 != 18)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x20000u;
          v45 = *(a1 + 168);
          if (!v45)
          {
            v46 = *(a1 + 8);
            if (v46)
            {
              v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
            }

            v45 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecRuleOffsetArchive>(v46);
            *(a1 + 168) = v45;
            v6 = v208;
          }

          v10 = sub_276F57368(a3, v45, v6);
          goto LABEL_300;
        case 0x23u:
          if (v7 != 24)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x1000u;
          v34 = (v6 + 1);
          v33 = *v6;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v158 = google::protobuf::internal::VarintParseSlow64(v6, v33);
            v208 = v158;
            *(a1 + 272) = v159 != 0;
            if (!v158)
            {
              return 0;
            }
          }

          else
          {
            v34 = (v6 + 2);
LABEL_61:
            v208 = v34;
            *(a1 + 272) = v33 != 0;
          }

          goto LABEL_301;
        case 0x24u:
          if (v7 != 34)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x40000u;
          v20 = *(a1 + 176);
          if (v20)
          {
            goto LABEL_299;
          }

          v25 = *(a1 + 8);
          if (v25)
          {
            v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = MEMORY[0x277CA3300](v25);
          LODWORD(v20) = v26;
          *(a1 + 176) = v26;
          goto LABEL_298;
        case 0x25u:
          if (v7 != 40)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x2000u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v156 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v208 = v156;
            *(a1 + 273) = v157 != 0;
            if (!v156)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_51:
            v208 = v28;
            *(a1 + 273) = v27 != 0;
          }

          goto LABEL_301;
        case 0x26u:
          if (v7 != 50)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x80000u;
          v15 = *(a1 + 184);
          if (v15)
          {
            goto LABEL_241;
          }

          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277CA3320](v18);
          LODWORD(v15) = v19;
          *(a1 + 184) = v19;
          goto LABEL_240;
        case 0x27u:
          if (v7 != 56)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x4000u;
          v137 = (v6 + 1);
          v136 = *v6;
          if ((v136 & 0x8000000000000000) == 0)
          {
            goto LABEL_272;
          }

          v138 = *v137;
          v136 = (v138 << 7) + v136 - 128;
          if (v138 < 0)
          {
            v198 = google::protobuf::internal::VarintParseSlow64(v6, v136);
            v208 = v198;
            *(a1 + 274) = v199 != 0;
            if (!v198)
            {
              return 0;
            }
          }

          else
          {
            v137 = (v6 + 2);
LABEL_272:
            v208 = v137;
            *(a1 + 274) = v136 != 0;
          }

          goto LABEL_301;
        case 0x28u:
          if (v7 != 66)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x100000u;
          v15 = *(a1 + 192);
          if (v15)
          {
            goto LABEL_241;
          }

          v122 = *(a1 + 8);
          if (v122)
          {
            v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
          }

          v123 = MEMORY[0x277CA3320](v122);
          LODWORD(v15) = v123;
          *(a1 + 192) = v123;
          goto LABEL_240;
        case 0x29u:
          if (v7 != 72)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x8000u;
          v58 = (v6 + 1);
          v57 = *v6;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_108;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v170 = google::protobuf::internal::VarintParseSlow64(v6, v57);
            v208 = v170;
            *(a1 + 275) = v171 != 0;
            if (!v170)
            {
              return 0;
            }
          }

          else
          {
            v58 = (v6 + 2);
LABEL_108:
            v208 = v58;
            *(a1 + 275) = v57 != 0;
          }

          goto LABEL_301;
        case 0x2Au:
          if (v7 != 82)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x200000u;
          v15 = *(a1 + 200);
          if (v15)
          {
            goto LABEL_241;
          }

          v87 = *(a1 + 8);
          if (v87)
          {
            v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
          }

          v88 = MEMORY[0x277CA3320](v87);
          LODWORD(v15) = v88;
          *(a1 + 200) = v88;
          goto LABEL_240;
        case 0x2Bu:
          if (v7 != 88)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x10000u;
          v127 = (v6 + 1);
          v126 = *v6;
          if ((v126 & 0x8000000000000000) == 0)
          {
            goto LABEL_251;
          }

          v128 = *v127;
          v126 = (v128 << 7) + v126 - 128;
          if (v128 < 0)
          {
            v194 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v208 = v194;
            *(a1 + 276) = v195 != 0;
            if (!v194)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_251:
            v208 = v127;
            *(a1 + 276) = v126 != 0;
          }

          goto LABEL_301;
        case 0x2Cu:
          if (v7 != 98)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x400000u;
          v15 = *(a1 + 208);
          if (v15)
          {
            goto LABEL_241;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277CA3320](v16);
          LODWORD(v15) = v17;
          *(a1 + 208) = v17;
LABEL_240:
          v6 = v208;
LABEL_241:
          v10 = sub_276F560B8(a3, v15, v6);
          goto LABEL_300;
        case 0x2Du:
          if (v7 != 104)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x20000u;
          v40 = (v6 + 1);
          v39 = *v6;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_71;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v162 = google::protobuf::internal::VarintParseSlow64(v6, v39);
            v208 = v162;
            *(a1 + 277) = v163 != 0;
            if (!v162)
            {
              return 0;
            }
          }

          else
          {
            v40 = (v6 + 2);
LABEL_71:
            v208 = v40;
            *(a1 + 277) = v39 != 0;
          }

          goto LABEL_301;
        case 0x2Eu:
          if (v7 != 114)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x800000u;
          v116 = *(a1 + 216);
          if (!v116)
          {
            v117 = *(a1 + 8);
            if (v117)
            {
              v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
            }

            v118 = MEMORY[0x277CA32E0](v117);
            LODWORD(v116) = v118;
            *(a1 + 216) = v118;
            v6 = v208;
          }

          v10 = sub_276F56668(a3, v116, v6);
          goto LABEL_300;
        case 0x2Fu:
          if (v7 != 120)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x40000u;
          v149 = (v6 + 1);
          v148 = *v6;
          if ((v148 & 0x8000000000000000) == 0)
          {
            goto LABEL_292;
          }

          v150 = *v149;
          v148 = (v150 << 7) + v148 - 128;
          if (v150 < 0)
          {
            v206 = google::protobuf::internal::VarintParseSlow64(v6, v148);
            v208 = v206;
            *(a1 + 278) = v207 != 0;
            if (!v206)
            {
              return 0;
            }
          }

          else
          {
            v149 = (v6 + 2);
LABEL_292:
            v208 = v149;
            *(a1 + 278) = v148 != 0;
          }

          goto LABEL_301;
        case 0x30u:
          if (v7 != 130)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x1000000u;
          v23 = *(a1 + 224);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecTabsArchive>(v24);
            *(a1 + 224) = v23;
            v6 = v208;
          }

          v10 = sub_276F57438(a3, v23, v6);
          goto LABEL_300;
        case 0x31u:
          if (v7 != 136)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x80000u;
          v48 = (v6 + 1);
          v47 = *v6;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_87;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v166 = google::protobuf::internal::VarintParseSlow64(v6, v47);
            v208 = v166;
            *(a1 + 279) = v167 != 0;
            if (!v166)
            {
              return 0;
            }
          }

          else
          {
            v48 = (v6 + 2);
LABEL_87:
            v208 = v48;
            *(a1 + 279) = v47 != 0;
          }

          goto LABEL_301;
        case 0x32u:
          if (v7 != 146)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x2000000u;
          v30 = *(a1 + 232);
          if (v30)
          {
            goto LABEL_163;
          }

          v52 = *(a1 + 8);
          if (v52)
          {
            v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
          }

          v53 = MEMORY[0x277CA3340](v52);
          LODWORD(v30) = v53;
          *(a1 + 232) = v53;
LABEL_162:
          v6 = v208;
LABEL_163:
          v10 = sub_276F56188(a3, v30, v6);
          goto LABEL_300;
        case 0x33u:
          if (v7 != 152)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x100000u;
          v13 = (v6 + 1);
          v12 = *v6;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_20;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v154 = google::protobuf::internal::VarintParseSlow64(v6, v12);
            v208 = v154;
            *(a1 + 280) = v155 != 0;
            if (!v154)
            {
              return 0;
            }
          }

          else
          {
            v13 = (v6 + 2);
LABEL_20:
            v208 = v13;
            *(a1 + 280) = v12 != 0;
          }

          goto LABEL_301;
        case 0x34u:
          if (v7 != 162)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x4000000u;
          v20 = *(a1 + 240);
          if (v20)
          {
            goto LABEL_299;
          }

          v151 = *(a1 + 8);
          if (v151)
          {
            v151 = *(v151 & 0xFFFFFFFFFFFFFFFELL);
          }

          v152 = MEMORY[0x277CA3300](v151);
          LODWORD(v20) = v152;
          *(a1 + 240) = v152;
          goto LABEL_298;
        case 0x35u:
          if (v7 != 168)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x200000u;
          v146 = (v6 + 1);
          v145 = *v6;
          if ((v145 & 0x8000000000000000) == 0)
          {
            goto LABEL_287;
          }

          v147 = *v146;
          v145 = (v147 << 7) + v145 - 128;
          if (v147 < 0)
          {
            v204 = google::protobuf::internal::VarintParseSlow64(v6, v145);
            v208 = v204;
            *(a1 + 281) = v205 != 0;
            if (!v204)
            {
              return 0;
            }
          }

          else
          {
            v146 = (v6 + 2);
LABEL_287:
            v208 = v146;
            *(a1 + 281) = v145 != 0;
          }

          goto LABEL_301;
        case 0x36u:
          if (v7 != 178)
          {
            goto LABEL_303;
          }

          *(a1 + 16) |= 0x8000000u;
          v20 = *(a1 + 248);
          if (v20)
          {
            goto LABEL_299;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277CA3300](v21);
          LODWORD(v20) = v22;
          *(a1 + 248) = v22;
LABEL_298:
          v6 = v208;
LABEL_299:
          v10 = sub_276F56328(a3, v20, v6);
          goto LABEL_300;
        case 0x37u:
          if (v7 != 184)
          {
            goto LABEL_303;
          }

          *(a1 + 20) |= 0x400000u;
          v143 = (v6 + 1);
          v142 = *v6;
          if ((v142 & 0x8000000000000000) == 0)
          {
            goto LABEL_282;
          }

          v144 = *v143;
          v142 = (v144 << 7) + v142 - 128;
          if (v144 < 0)
          {
            v202 = google::protobuf::internal::VarintParseSlow64(v6, v142);
            v208 = v202;
            *(a1 + 282) = v203 != 0;
            if (!v202)
            {
              return 0;
            }
          }

          else
          {
            v143 = (v6 + 2);
LABEL_282:
            v208 = v143;
            *(a1 + 282) = v142 != 0;
          }

          goto LABEL_301;
        default:
LABEL_303:
          if (v7)
          {
            v153 = (v7 & 7) == 4;
          }

          else
          {
            v153 = 1;
          }

          if (v153)
          {
            *(a3 + 80) = v7 - 1;
            return v208;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_300:
          v208 = v10;
          if (!v10)
          {
            return 0;
          }

LABEL_301:
          if (sub_276EA4A1C(a3, &v208))
          {
            return v208;
          }

          break;
      }
    }
  }

  return v208;
}