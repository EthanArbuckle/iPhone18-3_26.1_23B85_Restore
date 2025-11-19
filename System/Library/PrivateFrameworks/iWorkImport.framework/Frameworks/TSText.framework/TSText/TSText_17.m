unsigned __int8 *TSWPSOS::CharacterStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::CharacterStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 280);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) != 0)
  {
LABEL_18:
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v13, v15, a3);
  }

LABEL_28:
  if (*(this + 20))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 281);
    *a2 = 32;
    a2[1] = v19;
    a2 += 2;
  }

  if ((*(this + 16) & 4) != 0)
  {
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v20, v22, a3);
  }

  if ((*(this + 20) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 282);
    *a2 = 48;
    a2[1] = v26;
    a2 += 2;
  }

  if ((*(this + 16) & 8) != 0)
  {
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v27, v29, a3);
  }

  if ((*(this + 20) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v33 = *(this + 283);
    *a2 = 64;
    a2[1] = v33;
    a2 += 2;
  }

  if ((*(this + 16) & 0x10) != 0)
  {
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v34, v36, a3);
  }

  if ((*(this + 20) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 284);
    *a2 = 80;
    a2[1] = v40;
    a2 += 2;
  }

  if ((*(this + 16) & 0x20) != 0)
  {
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v41, v43, a3);
  }

  if ((*(this + 20) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v47 = *(this + 285);
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

    a2 = TSWPSOS::SpecFontFeaturesArchive::_InternalSerialize(v48, v50, a3);
  }

  if ((*(this + 20) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v54 = *(this + 286);
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v55, v57, a3);
  }

  if ((*(this + 20) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v61 = *(this + 287);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v62, v64, a3);
  }

  if ((*(this + 20) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v68 = *(this + 288);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v69, v71, a3);
  }

  if (*(this + 21))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v75 = *(this + 289);
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

  if ((*(this + 21) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v82 = *(this + 290);
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v83, v85, a3);
  }

  if ((*(this + 21) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v89 = *(this + 291);
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

  if ((*(this + 21) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v96 = *(this + 292);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v97, v99, a3);
  }

  if ((*(this + 21) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v103 = *(this + 293);
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

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v104, v106, a3);
  }

  if ((*(this + 21) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v110 = *(this + 294);
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

  if ((*(this + 21) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v117 = *(this + 295);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v118, v120, a3);
  }

  if ((*(this + 21) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v124 = *(this + 296);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v125, v127, a3);
  }

  if (*(this + 22))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v131 = *(this + 297);
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

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v132, v134, a3);
  }

  if ((*(this + 22) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v138 = *(this + 298);
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

  if ((*(this + 22) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v145 = *(this + 299);
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

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v146, v148, a3);
  }

  if ((*(this + 22) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v152 = *(this + 300);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v153, v155, a3);
  }

  if ((*(this + 22) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v159 = *(this + 301);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v160, v162, a3);
  }

  if ((*(this + 22) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v166 = *(this + 302);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v167, v169, a3);
  }

  if ((*(this + 22) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v173 = *(this + 303);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v174, v176, a3);
  }

  if ((*(this + 22) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v180 = *(this + 304);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v181, v183, a3);
  }

  if (*(this + 23))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v187 = *(this + 305);
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

  if ((*(this + 23) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v194 = *(this + 306);
    *a2 = 944;
    a2[2] = v194;
    a2 += 3;
  }

  if ((*(this + 19) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v195 = *(this + 31);
    *a2 = 954;
    v196 = *(v195 + 5);
    if (v196 > 0x7F)
    {
      a2[2] = v196 | 0x80;
      v198 = v196 >> 7;
      if (v196 >> 14)
      {
        v197 = a2 + 4;
        do
        {
          *(v197 - 1) = v198 | 0x80;
          v199 = v198 >> 7;
          ++v197;
          v200 = v198 >> 14;
          v198 >>= 7;
        }

        while (v200);
        *(v197 - 1) = v199;
      }

      else
      {
        a2[3] = v198;
        v197 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v196;
      v197 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v195, v197, a3);
  }

  if ((*(this + 23) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v201 = *(this + 307);
    *a2 = 960;
    a2[2] = v201;
    a2 += 3;
  }

  if ((*(this + 19) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v202 = *(this + 32);
    *a2 = 970;
    v203 = *(v202 + 5);
    if (v203 > 0x7F)
    {
      a2[2] = v203 | 0x80;
      v205 = v203 >> 7;
      if (v203 >> 14)
      {
        v204 = a2 + 4;
        do
        {
          *(v204 - 1) = v205 | 0x80;
          v206 = v205 >> 7;
          ++v204;
          v207 = v205 >> 14;
          v205 >>= 7;
        }

        while (v207);
        *(v204 - 1) = v206;
      }

      else
      {
        a2[3] = v205;
        v204 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v203;
      v204 = a2 + 3;
    }

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v202, v204, a3);
  }

  if ((*(this + 23) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v208 = *(this + 308);
    *a2 = 976;
    a2[2] = v208;
    a2 += 3;
  }

  if ((*(this + 19) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v209 = *(this + 33);
    *a2 = 986;
    v210 = *(v209 + 5);
    if (v210 > 0x7F)
    {
      a2[2] = v210 | 0x80;
      v212 = v210 >> 7;
      if (v210 >> 14)
      {
        v211 = a2 + 4;
        do
        {
          *(v211 - 1) = v212 | 0x80;
          v213 = v212 >> 7;
          ++v211;
          v214 = v212 >> 14;
          v212 >>= 7;
        }

        while (v214);
        *(v211 - 1) = v213;
      }

      else
      {
        a2[3] = v212;
        v211 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v210;
      v211 = a2 + 3;
    }

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v209, v211, a3);
  }

  if ((*(this + 23) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v215 = *(this + 309);
    *a2 = 992;
    a2[2] = v215;
    a2 += 3;
  }

  if ((*(this + 19) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v216 = *(this + 34);
    *a2 = 1002;
    v217 = *(v216 + 5);
    if (v217 > 0x7F)
    {
      a2[2] = v217 | 0x80;
      v219 = v217 >> 7;
      if (v217 >> 14)
      {
        v218 = a2 + 4;
        do
        {
          *(v218 - 1) = v219 | 0x80;
          v220 = v219 >> 7;
          ++v218;
          v221 = v219 >> 14;
          v219 >>= 7;
        }

        while (v221);
        *(v218 - 1) = v220;
      }

      else
      {
        a2[3] = v219;
        v218 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v217;
      v218 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v216, v218, a3);
  }

  if ((*(this + 23) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v222 = *(this + 310);
    *a2 = 1008;
    a2[2] = v222;
    a2 += 3;
  }

  v223 = *(this + 1);
  if ((v223 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v223 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::CharacterStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::CharacterStylePropertyChangeSetArchive *this, uint32x4_t a2)
{
  v3 = *(this + 4);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (v3)
  {
    v5 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 4));
    v4 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v6 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 5));
    v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v19 = TSSSOS::SpecStringArchive::ByteSizeLong(*(this + 6));
    v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 8) == 0)
    {
LABEL_10:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_106;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_10;
  }

  v20 = TSSSOS::SpecStringArchive::ByteSizeLong(*(this + 7));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_11:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_107;
  }

LABEL_106:
  v21 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 8));
  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_108;
  }

LABEL_107:
  v22 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 9));
  v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_108:
  v23 = TSWPSOS::SpecFontFeaturesArchive::ByteSizeLong(*(this + 10));
  v4 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_14:
    v7 = TSSSOS::SpecStringArchive::ByteSizeLong(*(this + 11));
    v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v3 & 0x100) != 0)
  {
    v24 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 12));
    v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x200) == 0)
    {
LABEL_18:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_112;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v25 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 13));
  v4 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400) == 0)
  {
LABEL_19:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_113;
  }

LABEL_112:
  v26 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 14));
  v4 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800) == 0)
  {
LABEL_20:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_114;
  }

LABEL_113:
  v27 = TSSSOS::SpecStringArchive::ByteSizeLong(*(this + 15));
  v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x1000) == 0)
  {
LABEL_21:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_115;
  }

LABEL_114:
  v28 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 16));
  v4 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x2000) == 0)
  {
LABEL_22:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_116;
  }

LABEL_115:
  v29 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(this + 17));
  v4 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000) == 0)
  {
LABEL_23:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_116:
  v30 = TSSSOS::SpecColorArchive::ByteSizeLong(*(this + 18));
  v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000) != 0)
  {
LABEL_24:
    v8 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 19));
    v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v3 & 0x10000) != 0)
  {
    v31 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 20));
    v4 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_28:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_120;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v32 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 21));
  v4 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_29:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_121;
  }

LABEL_120:
  v33 = TSSSOS::SpecColorArchive::ByteSizeLong(*(this + 22));
  v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_30:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_122;
  }

LABEL_121:
  v34 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 23));
  v4 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_31:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_123;
  }

LABEL_122:
  v35 = TSSSOS::SpecColorArchive::ByteSizeLong(*(this + 24));
  v4 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_32:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_124;
  }

LABEL_123:
  v36 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 25));
  v4 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400000) == 0)
  {
LABEL_33:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_124:
  v37 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 26));
  v4 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800000) != 0)
  {
LABEL_34:
    v9 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 27));
    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v3))
  {
    goto LABEL_46;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v38 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 28));
    v4 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_128;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v39 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 29));
  v4 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_129;
  }

LABEL_128:
  v40 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 30));
  v4 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_130;
  }

LABEL_129:
  v41 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 31));
  v4 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_131;
  }

LABEL_130:
  v42 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 32));
  v4 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_131:
  v43 = TSDSOS::SpecFillArchive::ByteSizeLong(*(this + 33));
  v4 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000000) != 0)
  {
LABEL_43:
    v10 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 34));
    v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_44:
  if (v3 < 0)
  {
    v4 += 2;
  }

LABEL_46:
  v11 = *(this + 5);
  if (*(this + 5))
  {
    a2.i32[0] = *(this + 5);
    v12 = vshlq_u32(vdupq_n_s32(v11), xmmword_276FA35B0);
    v12.i32[0] = vshlq_u32(a2, xmmword_276FA35A0).u32[0];
    v13.i64[0] = 0x200000002;
    v13.i64[1] = 0x200000002;
    v14 = vaddlvq_u32(vandq_s8(v12, v13)) + (v11 & 2) + v4 + ((v11 >> 4) & 2);
    if ((v11 & 0x40) != 0)
    {
      v14 += 3;
    }

    if ((v11 & 0x80) != 0)
    {
      v4 = v14 + 3;
    }

    else
    {
      v4 = v14;
    }
  }

  if ((v11 & 0xFF00) != 0)
  {
    v15 = v4 + 3;
    if ((v11 & 0x100) == 0)
    {
      v15 = v4;
    }

    if ((v11 & 0x200) != 0)
    {
      v15 += 3;
    }

    if ((v11 & 0x400) != 0)
    {
      v15 += 3;
    }

    if ((v11 & 0x800) != 0)
    {
      v15 += 3;
    }

    if ((v11 & 0x1000) != 0)
    {
      v15 += 3;
    }

    if ((v11 & 0x2000) != 0)
    {
      v15 += 3;
    }

    if ((v11 & 0x4000) != 0)
    {
      v15 += 3;
    }

    if ((v11 & 0x8000) != 0)
    {
      v4 = v15 + 3;
    }

    else
    {
      v4 = v15;
    }
  }

  if ((v11 & 0xFF0000) != 0)
  {
    v16 = v4 + 3;
    if ((v11 & 0x10000) == 0)
    {
      v16 = v4;
    }

    if ((v11 & 0x20000) != 0)
    {
      v16 += 3;
    }

    if ((v11 & 0x40000) != 0)
    {
      v16 += 3;
    }

    if ((v11 & 0x80000) != 0)
    {
      v16 += 3;
    }

    if ((v11 & 0x100000) != 0)
    {
      v16 += 3;
    }

    if ((v11 & 0x200000) != 0)
    {
      v16 += 3;
    }

    if ((v11 & 0x400000) != 0)
    {
      v16 += 3;
    }

    if ((v11 & 0x800000) != 0)
    {
      v4 = v16 + 3;
    }

    else
    {
      v4 = v16;
    }
  }

  if ((v11 & 0x3F000000) != 0)
  {
    v17 = v4 + 3;
    if ((v11 & 0x1000000) == 0)
    {
      v17 = v4;
    }

    if ((v11 & 0x2000000) != 0)
    {
      v17 += 3;
    }

    if ((v11 & 0x4000000) != 0)
    {
      v17 += 3;
    }

    if ((v11 & 0x8000000) != 0)
    {
      v17 += 3;
    }

    if ((v11 & 0x10000000) != 0)
    {
      v17 += 3;
    }

    if ((v11 & 0x20000000) != 0)
    {
      v4 = v17 + 3;
    }

    else
    {
      v4 = v17;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 24);
  }

  else
  {
    *(this + 6) = v4;
    return v4;
  }
}

uint64_t TSWPSOS::CharacterStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::CharacterStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::CharacterStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::CharacterStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSWPSOS::CharacterStylePropertyChangeSetArchive *a2)
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

      v6 = MEMORY[0x277CA3320](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80C08];
    }

    this = TSSSOS::SpecDoubleArchive::MergeFrom(v6, v8);
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

      v9 = MEMORY[0x277CA3340](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 5))
    {
      v11 = *(a2 + 5);
    }

    else
    {
      v11 = MEMORY[0x277D80C18];
    }

    this = TSSSOS::SpecIntegerArchive::MergeFrom(v9, v11);
  }

  v12 = MEMORY[0x277D80C10];
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

      v13 = MEMORY[0x277CA3330](v14);
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

    this = TSSSOS::SpecStringArchive::MergeFrom(v13, v15);
  }

  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 56);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277CA3330](v17);
      *(v3 + 56) = v16;
    }

    if (*(a2 + 7))
    {
      v18 = *(a2 + 7);
    }

    else
    {
      v18 = v12;
    }

    this = TSSSOS::SpecStringArchive::MergeFrom(v16, v18);
  }

  v19 = MEMORY[0x277D80BF8];
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_42;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v23 = *(v3 + 72);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277CA3300](v24);
      *(v3 + 72) = v23;
    }

    if (*(a2 + 9))
    {
      v25 = *(a2 + 9);
    }

    else
    {
      v25 = v19;
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v23, v25);
    if ((v5 & 0x40) == 0)
    {
LABEL_43:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

  *(v3 + 16) |= 0x10u;
  v20 = *(v3 + 64);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x277CA3300](v21);
    *(v3 + 64) = v20;
  }

  if (*(a2 + 8))
  {
    v22 = *(a2 + 8);
  }

  else
  {
    v22 = v19;
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v20, v22);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_42:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_43;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v26 = *(v3 + 80);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecFontFeaturesArchive>(v27);
    *(v3 + 80) = v26;
  }

  if (*(a2 + 10))
  {
    v28 = *(a2 + 10);
  }

  else
  {
    v28 = &TSWPSOS::_SpecFontFeaturesArchive_default_instance_;
  }

  this = TSWPSOS::SpecFontFeaturesArchive::MergeFrom(v26, v28);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v29 = *(v3 + 88);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277CA3330](v30);
      *(v3 + 88) = v29;
    }

    if (*(a2 + 11))
    {
      v31 = *(a2 + 11);
    }

    else
    {
      v31 = v12;
    }

    this = TSSSOS::SpecStringArchive::MergeFrom(v29, v31);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v32 = *(v3 + 96);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277CA3320](v33);
      *(v3 + 96) = v32;
    }

    if (*(a2 + 12))
    {
      v34 = *(a2 + 12);
    }

    else
    {
      v34 = MEMORY[0x277D80C08];
    }

    this = TSSSOS::SpecDoubleArchive::MergeFrom(v32, v34);
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
  v35 = *(v3 + 104);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x277CA3320](v36);
    *(v3 + 104) = v35;
  }

  if (*(a2 + 13))
  {
    v37 = *(a2 + 13);
  }

  else
  {
    v37 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v35, v37);
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
  v38 = *(v3 + 112);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x277CA3320](v39);
    *(v3 + 112) = v38;
  }

  if (*(a2 + 14))
  {
    v40 = *(a2 + 14);
  }

  else
  {
    v40 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v38, v40);
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
  v41 = *(v3 + 120);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x277CA3330](v42);
    *(v3 + 120) = v41;
  }

  if (*(a2 + 15))
  {
    v43 = *(a2 + 15);
  }

  else
  {
    v43 = MEMORY[0x277D80C10];
  }

  this = TSSSOS::SpecStringArchive::MergeFrom(v41, v43);
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
  v44 = *(v3 + 128);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277CA3340](v45);
    *(v3 + 128) = v44;
  }

  if (*(a2 + 16))
  {
    v46 = *(a2 + 16);
  }

  else
  {
    v46 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v44, v46);
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
  v47 = *(v3 + 136);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x277CA32D0](v48);
    *(v3 + 136) = v47;
  }

  if (*(a2 + 17))
  {
    v49 = *(a2 + 17);
  }

  else
  {
    v49 = MEMORY[0x277D80538];
  }

  this = TSDSOS::SpecShadowArchive::MergeFrom(v47, v49);
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
  v50 = *(v3 + 144);
  if (!v50)
  {
    v51 = *(v3 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277CA3310](v51);
    *(v3 + 144) = v50;
  }

  if (*(a2 + 18))
  {
    v52 = *(a2 + 18);
  }

  else
  {
    v52 = MEMORY[0x277D80C00];
  }

  this = TSSSOS::SpecColorArchive::MergeFrom(v50, v52);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v53 = *(v3 + 152);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277CA3340](v54);
      *(v3 + 152) = v53;
    }

    if (*(a2 + 19))
    {
      v55 = *(a2 + 19);
    }

    else
    {
      v55 = MEMORY[0x277D80C18];
    }

    this = TSSSOS::SpecIntegerArchive::MergeFrom(v53, v55);
  }

LABEL_151:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_225;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v56 = *(v3 + 160);
    if (!v56)
    {
      v57 = *(v3 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = MEMORY[0x277CA3320](v57);
      *(v3 + 160) = v56;
    }

    if (*(a2 + 20))
    {
      v58 = *(a2 + 20);
    }

    else
    {
      v58 = MEMORY[0x277D80C08];
    }

    this = TSSSOS::SpecDoubleArchive::MergeFrom(v56, v58);
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
  v59 = *(v3 + 168);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x277CA3340](v60);
    *(v3 + 168) = v59;
  }

  if (*(a2 + 21))
  {
    v61 = *(a2 + 21);
  }

  else
  {
    v61 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v59, v61);
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
  v62 = *(v3 + 176);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x277CA3310](v63);
    *(v3 + 176) = v62;
  }

  if (*(a2 + 22))
  {
    v64 = *(a2 + 22);
  }

  else
  {
    v64 = MEMORY[0x277D80C00];
  }

  this = TSSSOS::SpecColorArchive::MergeFrom(v62, v64);
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
  v65 = *(v3 + 184);
  if (!v65)
  {
    v66 = *(v3 + 8);
    if (v66)
    {
      v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
    }

    v65 = MEMORY[0x277CA3320](v66);
    *(v3 + 184) = v65;
  }

  if (*(a2 + 23))
  {
    v67 = *(a2 + 23);
  }

  else
  {
    v67 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v65, v67);
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
  v68 = *(v3 + 192);
  if (!v68)
  {
    v69 = *(v3 + 8);
    if (v69)
    {
      v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
    }

    v68 = MEMORY[0x277CA3310](v69);
    *(v3 + 192) = v68;
  }

  if (*(a2 + 24))
  {
    v70 = *(a2 + 24);
  }

  else
  {
    v70 = MEMORY[0x277D80C00];
  }

  this = TSSSOS::SpecColorArchive::MergeFrom(v68, v70);
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
  v71 = *(v3 + 200);
  if (!v71)
  {
    v72 = *(v3 + 8);
    if (v72)
    {
      v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
    }

    v71 = MEMORY[0x277CA3340](v72);
    *(v3 + 200) = v71;
  }

  if (*(a2 + 25))
  {
    v73 = *(a2 + 25);
  }

  else
  {
    v73 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v71, v73);
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
  v74 = *(v3 + 208);
  if (!v74)
  {
    v75 = *(v3 + 8);
    if (v75)
    {
      v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
    }

    v74 = MEMORY[0x277CA3320](v75);
    *(v3 + 208) = v74;
  }

  if (*(a2 + 26))
  {
    v76 = *(a2 + 26);
  }

  else
  {
    v76 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v74, v76);
  if ((v5 & 0x800000) != 0)
  {
LABEL_217:
    *(v3 + 16) |= 0x800000u;
    v77 = *(v3 + 216);
    if (!v77)
    {
      v78 = *(v3 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x277CA3300](v78);
      *(v3 + 216) = v77;
    }

    if (*(a2 + 27))
    {
      v79 = *(a2 + 27);
    }

    else
    {
      v79 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v77, v79);
  }

LABEL_225:
  if (!HIBYTE(v5))
  {
    goto LABEL_235;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v81 = *(v3 + 224);
    if (!v81)
    {
      v82 = *(v3 + 8);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81 = MEMORY[0x277CA3300](v82);
      *(v3 + 224) = v81;
    }

    if (*(a2 + 28))
    {
      v83 = *(a2 + 28);
    }

    else
    {
      v83 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v81, v83);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_228:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_324;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_228;
  }

  *(v3 + 16) |= 0x2000000u;
  v84 = *(v3 + 232);
  if (!v84)
  {
    v85 = *(v3 + 8);
    if (v85)
    {
      v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
    }

    v84 = MEMORY[0x277CA3340](v85);
    *(v3 + 232) = v84;
  }

  if (*(a2 + 29))
  {
    v86 = *(a2 + 29);
  }

  else
  {
    v86 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v84, v86);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_229:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_332;
  }

LABEL_324:
  *(v3 + 16) |= 0x4000000u;
  v87 = *(v3 + 240);
  if (!v87)
  {
    v88 = *(v3 + 8);
    if (v88)
    {
      v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    }

    v87 = MEMORY[0x277CA3300](v88);
    *(v3 + 240) = v87;
  }

  if (*(a2 + 30))
  {
    v89 = *(a2 + 30);
  }

  else
  {
    v89 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v87, v89);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_340;
  }

LABEL_332:
  *(v3 + 16) |= 0x8000000u;
  v90 = *(v3 + 248);
  if (!v90)
  {
    v91 = *(v3 + 8);
    if (v91)
    {
      v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
    }

    v90 = MEMORY[0x277CA3300](v91);
    *(v3 + 248) = v90;
  }

  if (*(a2 + 31))
  {
    v92 = *(a2 + 31);
  }

  else
  {
    v92 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v90, v92);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_348;
  }

LABEL_340:
  *(v3 + 16) |= 0x10000000u;
  v93 = *(v3 + 256);
  if (!v93)
  {
    v94 = *(v3 + 8);
    if (v94)
    {
      v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
    }

    v93 = MEMORY[0x277CA32E0](v94);
    *(v3 + 256) = v93;
  }

  if (*(a2 + 32))
  {
    v95 = *(a2 + 32);
  }

  else
  {
    v95 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v93, v95);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_233;
    }

LABEL_356:
    *(v3 + 16) |= 0x40000000u;
    v99 = *(v3 + 272);
    if (!v99)
    {
      v100 = *(v3 + 8);
      if (v100)
      {
        v100 = *(v100 & 0xFFFFFFFFFFFFFFFELL);
      }

      v99 = MEMORY[0x277CA3300](v100);
      *(v3 + 272) = v99;
    }

    if (*(a2 + 34))
    {
      v101 = *(a2 + 34);
    }

    else
    {
      v101 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v99, v101);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_364;
  }

LABEL_348:
  *(v3 + 16) |= 0x20000000u;
  v96 = *(v3 + 264);
  if (!v96)
  {
    v97 = *(v3 + 8);
    if (v97)
    {
      v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
    }

    v96 = MEMORY[0x277CA32C0](v97);
    *(v3 + 264) = v96;
  }

  if (*(a2 + 33))
  {
    v98 = *(a2 + 33);
  }

  else
  {
    v98 = MEMORY[0x277D80530];
  }

  this = TSDSOS::SpecFillArchive::MergeFrom(v96, v98);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_356;
  }

LABEL_233:
  if ((v5 & 0x80000000) != 0)
  {
LABEL_364:
    *(v3 + 280) = *(a2 + 280);
  }

LABEL_234:
  *(v3 + 16) |= v5;
LABEL_235:
  v80 = *(a2 + 5);
  if (!v80)
  {
    goto LABEL_246;
  }

  if (v80)
  {
    *(v3 + 281) = *(a2 + 281);
    if ((v80 & 2) == 0)
    {
LABEL_238:
      if ((v80 & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_280;
    }
  }

  else if ((v80 & 2) == 0)
  {
    goto LABEL_238;
  }

  *(v3 + 282) = *(a2 + 282);
  if ((v80 & 4) == 0)
  {
LABEL_239:
    if ((v80 & 8) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_281;
  }

LABEL_280:
  *(v3 + 283) = *(a2 + 283);
  if ((v80 & 8) == 0)
  {
LABEL_240:
    if ((v80 & 0x10) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_282;
  }

LABEL_281:
  *(v3 + 284) = *(a2 + 284);
  if ((v80 & 0x10) == 0)
  {
LABEL_241:
    if ((v80 & 0x20) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_283;
  }

LABEL_282:
  *(v3 + 285) = *(a2 + 285);
  if ((v80 & 0x20) == 0)
  {
LABEL_242:
    if ((v80 & 0x40) == 0)
    {
      goto LABEL_243;
    }

LABEL_284:
    *(v3 + 287) = *(a2 + 287);
    if ((v80 & 0x80) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_244;
  }

LABEL_283:
  *(v3 + 286) = *(a2 + 286);
  if ((v80 & 0x40) != 0)
  {
    goto LABEL_284;
  }

LABEL_243:
  if ((v80 & 0x80) != 0)
  {
LABEL_244:
    *(v3 + 288) = *(a2 + 288);
  }

LABEL_245:
  *(v3 + 20) |= v80;
LABEL_246:
  if ((v80 & 0xFF00) == 0)
  {
    goto LABEL_257;
  }

  if ((v80 & 0x100) != 0)
  {
    *(v3 + 289) = *(a2 + 289);
    if ((v80 & 0x200) == 0)
    {
LABEL_249:
      if ((v80 & 0x400) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_288;
    }
  }

  else if ((v80 & 0x200) == 0)
  {
    goto LABEL_249;
  }

  *(v3 + 290) = *(a2 + 290);
  if ((v80 & 0x400) == 0)
  {
LABEL_250:
    if ((v80 & 0x800) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_289;
  }

LABEL_288:
  *(v3 + 291) = *(a2 + 291);
  if ((v80 & 0x800) == 0)
  {
LABEL_251:
    if ((v80 & 0x1000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_290;
  }

LABEL_289:
  *(v3 + 292) = *(a2 + 292);
  if ((v80 & 0x1000) == 0)
  {
LABEL_252:
    if ((v80 & 0x2000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_291;
  }

LABEL_290:
  *(v3 + 293) = *(a2 + 293);
  if ((v80 & 0x2000) == 0)
  {
LABEL_253:
    if ((v80 & 0x4000) == 0)
    {
      goto LABEL_254;
    }

LABEL_292:
    *(v3 + 295) = *(a2 + 295);
    if ((v80 & 0x8000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

LABEL_291:
  *(v3 + 294) = *(a2 + 294);
  if ((v80 & 0x4000) != 0)
  {
    goto LABEL_292;
  }

LABEL_254:
  if ((v80 & 0x8000) != 0)
  {
LABEL_255:
    *(v3 + 296) = *(a2 + 296);
  }

LABEL_256:
  *(v3 + 20) |= v80;
LABEL_257:
  if ((v80 & 0xFF0000) == 0)
  {
    goto LABEL_268;
  }

  if ((v80 & 0x10000) != 0)
  {
    *(v3 + 297) = *(a2 + 297);
    if ((v80 & 0x20000) == 0)
    {
LABEL_260:
      if ((v80 & 0x40000) == 0)
      {
        goto LABEL_261;
      }

      goto LABEL_296;
    }
  }

  else if ((v80 & 0x20000) == 0)
  {
    goto LABEL_260;
  }

  *(v3 + 298) = *(a2 + 298);
  if ((v80 & 0x40000) == 0)
  {
LABEL_261:
    if ((v80 & 0x80000) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_297;
  }

LABEL_296:
  *(v3 + 299) = *(a2 + 299);
  if ((v80 & 0x80000) == 0)
  {
LABEL_262:
    if ((v80 & 0x100000) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_298;
  }

LABEL_297:
  *(v3 + 300) = *(a2 + 300);
  if ((v80 & 0x100000) == 0)
  {
LABEL_263:
    if ((v80 & 0x200000) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_299;
  }

LABEL_298:
  *(v3 + 301) = *(a2 + 301);
  if ((v80 & 0x200000) == 0)
  {
LABEL_264:
    if ((v80 & 0x400000) == 0)
    {
      goto LABEL_265;
    }

LABEL_300:
    *(v3 + 303) = *(a2 + 303);
    if ((v80 & 0x800000) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_266;
  }

LABEL_299:
  *(v3 + 302) = *(a2 + 302);
  if ((v80 & 0x400000) != 0)
  {
    goto LABEL_300;
  }

LABEL_265:
  if ((v80 & 0x800000) != 0)
  {
LABEL_266:
    *(v3 + 304) = *(a2 + 304);
  }

LABEL_267:
  *(v3 + 20) |= v80;
LABEL_268:
  if ((v80 & 0x3F000000) == 0)
  {
    return this;
  }

  if ((v80 & 0x1000000) != 0)
  {
    *(v3 + 305) = *(a2 + 305);
    if ((v80 & 0x2000000) == 0)
    {
LABEL_271:
      if ((v80 & 0x4000000) == 0)
      {
        goto LABEL_272;
      }

      goto LABEL_304;
    }
  }

  else if ((v80 & 0x2000000) == 0)
  {
    goto LABEL_271;
  }

  *(v3 + 306) = *(a2 + 306);
  if ((v80 & 0x4000000) == 0)
  {
LABEL_272:
    if ((v80 & 0x8000000) == 0)
    {
      goto LABEL_273;
    }

    goto LABEL_305;
  }

LABEL_304:
  *(v3 + 307) = *(a2 + 307);
  if ((v80 & 0x8000000) == 0)
  {
LABEL_273:
    if ((v80 & 0x10000000) == 0)
    {
      goto LABEL_274;
    }

LABEL_306:
    *(v3 + 309) = *(a2 + 309);
    if ((v80 & 0x20000000) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_275;
  }

LABEL_305:
  *(v3 + 308) = *(a2 + 308);
  if ((v80 & 0x10000000) != 0)
  {
    goto LABEL_306;
  }

LABEL_274:
  if ((v80 & 0x20000000) != 0)
  {
LABEL_275:
    *(v3 + 310) = *(a2 + 310);
  }

LABEL_276:
  *(v3 + 20) |= v80;
  return this;
}

uint64_t *TSWPSOS::CharacterStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::CharacterStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::CharacterStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::CharacterStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSWPSOS::CharacterStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::CharacterStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::CharacterStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::CharacterStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) != 0)
  {
    v4 = *(this + 10);
    if (*(v4 + 16))
    {
      result = TSWPSOS::SpecSetFontFeaturesArchive::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(this + 4);
    }
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 13));
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
    result = TSSSOS::SpecStringArchive::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
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
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(this + 18));
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
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 21));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(this + 22));
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
    result = TSSSOS::SpecColorArchive::IsInitialized(*(this + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 25));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 26));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 27));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 28));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 29));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 30));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 31));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(this + 33));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40000000) == 0)
  {
    return 1;
  }

  result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 34));
  if (result)
  {
    return 1;
  }

  return result;
}

double TSWPSOS::CharacterStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::CharacterStylePropertyChangeSetArchive *this, TSWPSOS::CharacterStylePropertyChangeSetArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 4);
  v7 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v6;
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  v9 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v8;
  *(a2 + 7) = v9;
  v10 = *(this + 8);
  v11 = *(this + 9);
  *(this + 4) = *(a2 + 4);
  *(a2 + 8) = v10;
  *(a2 + 9) = v11;
  v12 = *(this + 10);
  v13 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v12;
  *(a2 + 11) = v13;

  return sub_276EE0E00(this + 12, a2 + 96);
}

TSSSOS::SpecBoolArchive *TSWPSOS::ColumnStylePropertyChangeSetArchive::clear_continuous(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::ColumnStylePropertyChangeSetArchive::clear_min_horizontal_inset(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ColumnStylePropertyChangeSetArchive::clear_shrink_to_fit(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ColumnStylePropertyChangeSetArchive::clear_vertical_alignment(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ColumnStylePropertyChangeSetArchive::clear_vertical_text(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ColumnStylePropertyChangeSetArchive::clear_writing_direction(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSWPSOS::ColumnStylePropertyChangeSetArchive *TSWPSOS::ColumnStylePropertyChangeSetArchive::ColumnStylePropertyChangeSetArchive(TSWPSOS::ColumnStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605F50;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 104) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288605F50;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 104) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWPSOS::ColumnStylePropertyChangeSetArchive *TSWPSOS::ColumnStylePropertyChangeSetArchive::ColumnStylePropertyChangeSetArchive(TSWPSOS::ColumnStylePropertyChangeSetArchive *this, const TSWPSOS::ColumnStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605F50;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  v7 = *(a2 + 12);
  *(this + 104) = *(a2 + 104);
  *(this + 12) = v7;
  return this;
}

void TSWPSOS::ColumnStylePropertyChangeSetArchive::~ColumnStylePropertyChangeSetArchive(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  sub_276EC9898(this);
  sub_276E4E808(this + 1);
}

{
  TSWPSOS::ColumnStylePropertyChangeSetArchive::~ColumnStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276EC9898(uint64_t *result)
{
  if (result != &TSWPSOS::_ColumnStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSWPSOS::SpecColumnsArchive::~SpecColumnsArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40D4912B22);
    }

    v4 = v1[5];
    if (v4)
    {
      TSWPSOS::SpecPaddingArchive::~SpecPaddingArchive(v4);
      MEMORY[0x277CA3D00]();
    }

    if (v1[6])
    {
      v5 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v5, 0x10A1C40D4912B22);
    }

    v6 = v1[7];
    if (v6)
    {
      TSWPSOS::SpecPaddingArchive::~SpecPaddingArchive(v6);
      MEMORY[0x277CA3D00]();
    }

    if (v1[8])
    {
      v7 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v7, 0x10A1C40D4912B22);
    }

    if (v1[9])
    {
      v8 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v8, 0x10A1C40D4912B22);
    }

    if (v1[10])
    {
      v9 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v9, 0x10A1C40D4912B22);
    }

    result = v1[11];
    if (result)
    {
      MEMORY[0x277CA30B0]();

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWPSOS::ColumnStylePropertyChangeSetArchive::default_instance(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_ColumnStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::ColumnStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSWPSOS::SpecColumnsArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = TSWPSOS::SpecPaddingArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = TSWPSOS::SpecPaddingArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 88));
  }

  if ((v2 & 0xFE00) != 0)
  {
    *(v1 + 99) = 0;
    *(v1 + 96) = 0;
  }

  if ((v2 & 0x30000) != 0)
  {
    *(v1 + 103) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::ColumnStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v79 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v79) & 1) == 0)
  {
    while (1)
    {
      v7 = (v79 + 1);
      v8 = *v79;
      if (*v79 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v79, (v9 - 128));
          v79 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_137;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v79 + 2);
      }

      v79 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecColumnsArchive>(v11);
            *(a1 + 24) = v10;
            v7 = v79;
          }

          v12 = sub_276F56808(a3, v10, v7);
          goto LABEL_115;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_108;
          }

          v5 |= 0x200u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_72;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v71 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v79 = v71;
            *(a1 + 96) = v72 != 0;
            if (!v71)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_72:
            v79 = v43;
            *(a1 + 96) = v42 != 0;
          }

          goto LABEL_116;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 2u;
          v18 = *(a1 + 32);
          if (v18)
          {
            goto LABEL_100;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x277CA3300](v31);
          LODWORD(v18) = v32;
          *(a1 + 32) = v32;
          goto LABEL_99;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_108;
          }

          v5 |= 0x400u;
          v37 = (v7 + 1);
          v36 = *v7;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_62;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v67 = google::protobuf::internal::VarintParseSlow64(v7, v36);
            v79 = v67;
            *(a1 + 97) = v68 != 0;
            if (!v67)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v37 = (v7 + 2);
LABEL_62:
            v79 = v37;
            *(a1 + 97) = v36 != 0;
          }

          goto LABEL_116;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 4u;
          v24 = *(a1 + 40);
          if (v24)
          {
            goto LABEL_107;
          }

          v25 = *(a1 + 8);
          if (v25)
          {
            v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecPaddingArchive>(v25);
          *(a1 + 40) = v24;
          goto LABEL_106;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_108;
          }

          v5 |= 0x800u;
          v49 = (v7 + 1);
          v48 = *v7;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_82;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v75 = google::protobuf::internal::VarintParseSlow64(v7, v48);
            v79 = v75;
            *(a1 + 98) = v76 != 0;
            if (!v75)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v49 = (v7 + 2);
LABEL_82:
            v79 = v49;
            *(a1 + 98) = v48 != 0;
          }

          goto LABEL_116;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 8u;
          v54 = *(a1 + 48);
          if (!v54)
          {
            v55 = *(a1 + 8);
            if (v55)
            {
              v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
            }

            v56 = MEMORY[0x277CA3320](v55);
            LODWORD(v54) = v56;
            *(a1 + 48) = v56;
            v7 = v79;
          }

          v12 = sub_276F560B8(a3, v54, v7);
          goto LABEL_115;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_108;
          }

          v5 |= 0x1000u;
          v40 = (v7 + 1);
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v69 = google::protobuf::internal::VarintParseSlow64(v7, v39);
            v79 = v69;
            *(a1 + 99) = v70 != 0;
            if (!v69)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_67:
            v79 = v40;
            *(a1 + 99) = v39 != 0;
          }

          goto LABEL_116;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 0x10u;
          v24 = *(a1 + 56);
          if (v24)
          {
            goto LABEL_107;
          }

          v59 = *(a1 + 8);
          if (v59)
          {
            v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecPaddingArchive>(v59);
          *(a1 + 56) = v24;
LABEL_106:
          v7 = v79;
LABEL_107:
          v12 = sub_276F568D8(a3, v24, v7);
          goto LABEL_115;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_108;
          }

          v5 |= 0x2000u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_47;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if (v30 < 0)
          {
            v63 = google::protobuf::internal::VarintParseSlow64(v7, v28);
            v79 = v63;
            *(a1 + 100) = v64 != 0;
            if (!v63)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v29 = (v7 + 2);
LABEL_47:
            v79 = v29;
            *(a1 + 100) = v28 != 0;
          }

          goto LABEL_116;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 0x20u;
          v18 = *(a1 + 64);
          if (v18)
          {
            goto LABEL_100;
          }

          v57 = *(a1 + 8);
          if (v57)
          {
            v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
          }

          v58 = MEMORY[0x277CA3300](v57);
          LODWORD(v18) = v58;
          *(a1 + 64) = v58;
          goto LABEL_99;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_108;
          }

          v5 |= 0x4000u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v61 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v79 = v61;
            *(a1 + 101) = v62 != 0;
            if (!v61)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_30:
            v79 = v22;
            *(a1 + 101) = v21 != 0;
          }

          goto LABEL_116;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 0x40u;
          v15 = *(a1 + 72);
          if (v15)
          {
            goto LABEL_42;
          }

          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v27 = MEMORY[0x277CA3340](v26);
          LODWORD(v15) = v27;
          *(a1 + 72) = v27;
          goto LABEL_41;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_108;
          }

          v5 |= 0x8000u;
          v52 = (v7 + 1);
          v51 = *v7;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_87;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v77 = google::protobuf::internal::VarintParseSlow64(v7, v51);
            v79 = v77;
            *(a1 + 102) = v78 != 0;
            if (!v77)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v52 = (v7 + 2);
LABEL_87:
            v79 = v52;
            *(a1 + 102) = v51 != 0;
          }

          goto LABEL_116;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 0x80u;
          v18 = *(a1 + 80);
          if (v18)
          {
            goto LABEL_100;
          }

          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x277CA3300](v19);
          LODWORD(v18) = v20;
          *(a1 + 80) = v20;
LABEL_99:
          v7 = v79;
LABEL_100:
          v12 = sub_276F56328(a3, v18, v7);
          goto LABEL_115;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_108;
          }

          v5 |= 0x10000u;
          v34 = (v7 + 1);
          v33 = *v7;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_57;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v65 = google::protobuf::internal::VarintParseSlow64(v7, v33);
            v79 = v65;
            *(a1 + 103) = v66 != 0;
            if (!v65)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v34 = (v7 + 2);
LABEL_57:
            v79 = v34;
            *(a1 + 103) = v33 != 0;
          }

          goto LABEL_116;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_108;
          }

          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 88);
          if (v15)
          {
            goto LABEL_42;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277CA3340](v16);
          LODWORD(v15) = v17;
          *(a1 + 88) = v17;
LABEL_41:
          v7 = v79;
LABEL_42:
          v12 = sub_276F56188(a3, v15, v7);
          goto LABEL_115;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_108;
          }

          v5 |= 0x20000u;
          v46 = (v7 + 1);
          v45 = *v7;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_77;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v73 = google::protobuf::internal::VarintParseSlow64(v7, v45);
            v79 = v73;
            *(a1 + 104) = v74 != 0;
            if (!v73)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v46 = (v7 + 2);
LABEL_77:
            v79 = v46;
            *(a1 + 104) = v45 != 0;
          }

          goto LABEL_116;
        default:
LABEL_108:
          if (v8)
          {
            v60 = (v8 & 7) == 4;
          }

          else
          {
            v60 = 1;
          }

          if (v60)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_115:
          v79 = v12;
          if (!v12)
          {
LABEL_137:
            v79 = 0;
            goto LABEL_2;
          }

LABEL_116:
          if (sub_276EA4A1C(a3, &v79))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v79;
}

unsigned __int8 *TSWPSOS::ColumnStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::ColumnStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecColumnsArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 96);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_33:
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

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v13, v15, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 97);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_46:
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

  a2 = TSWPSOS::SpecPaddingArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 98);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_59:
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

  a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v27, v29, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 99);
  *a2 = 64;
  a2[1] = v33;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_82;
  }

LABEL_72:
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

  a2 = TSWPSOS::SpecPaddingArchive::_InternalSerialize(v34, v36, a3);
  if ((v5 & 0x2000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_85;
  }

LABEL_82:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(this + 100);
  *a2 = 80;
  a2[1] = v40;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_95;
  }

LABEL_85:
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

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v41, v43, a3);
  if ((v5 & 0x4000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_98;
  }

LABEL_95:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v47 = *(this + 101);
  *a2 = 96;
  a2[1] = v47;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_108;
  }

LABEL_98:
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

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x8000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v54 = *(this + 102);
  *a2 = 112;
  a2[1] = v54;
  a2 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_121;
  }

LABEL_111:
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

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v55, v57, a3);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_124;
  }

LABEL_121:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v61 = *(this + 103);
  *a2 = 384;
  a2[2] = v61;
  a2 += 3;
  if ((v5 & 0x100) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_134;
  }

LABEL_124:
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

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v62, v64, a3);
  if ((v5 & 0x20000) != 0)
  {
LABEL_134:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v68 = *(this + 104);
    *a2 = 400;
    a2[2] = v68;
    a2 += 3;
  }

LABEL_137:
  v69 = *(this + 1);
  if ((v69 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v69 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::ColumnStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSWPSOS::SpecColumnsArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v12 = TSWPSOS::SpecPaddingArchive::ByteSizeLong(*(this + 5));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v13 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 6));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = TSWPSOS::SpecPaddingArchive::ByteSizeLong(*(this + 7));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 8));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_32:
  v16 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 9));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 10));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v7 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 11));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v8.i64[0] = 0x200000002;
    v8.i64[1] = 0x200000002;
    v3 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276FA35C0), v8)) + ((v2 >> 12) & 2) + ((v2 >> 13) & 2) + ((v2 >> 14) & 2);
  }

  v9 = v3 + 3;
  if ((v2 & 0x10000) == 0)
  {
    v9 = v3;
  }

  if ((v2 & 0x20000) != 0)
  {
    v9 += 3;
  }

  if ((v2 & 0x30000) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v3;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}

void TSWPSOS::ColumnStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::ColumnStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWPSOS::ColumnStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWPSOS::ColumnStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::ColumnStylePropertyChangeSetArchive *this, const TSWPSOS::ColumnStylePropertyChangeSetArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_77;
  }

  if (v5)
  {
    *(this + 4) |= 1u;
    v6 = *(this + 3);
    if (!v6)
    {
      v7 = *(this + 1);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecColumnsArchive>(v7);
      *(this + 3) = v6;
    }

    if (*(a2 + 3))
    {
      v8 = *(a2 + 3);
    }

    else
    {
      v8 = &TSWPSOS::_SpecColumnsArchive_default_instance_;
    }

    TSWPSOS::SpecColumnsArchive::MergeFrom(v6, v8);
  }

  v9 = MEMORY[0x277D80BF8];
  if ((v5 & 2) != 0)
  {
    *(this + 4) |= 2u;
    v10 = *(this + 4);
    if (!v10)
    {
      v11 = *(this + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277CA3300](v11);
      *(this + 4) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = v9;
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v10, v12);
  }

  if ((v5 & 4) != 0)
  {
    *(this + 4) |= 4u;
    v13 = *(this + 5);
    if (!v13)
    {
      v14 = *(this + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecPaddingArchive>(v14);
      *(this + 5) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = &TSWPSOS::_SpecPaddingArchive_default_instance_;
    }

    TSWPSOS::SpecPaddingArchive::MergeFrom(v13, v15);
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

  *(this + 4) |= 8u;
  v16 = *(this + 6);
  if (!v16)
  {
    v17 = *(this + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x277CA3320](v17);
    *(this + 6) = v16;
  }

  if (*(a2 + 6))
  {
    v18 = *(a2 + 6);
  }

  else
  {
    v18 = MEMORY[0x277D80C08];
  }

  TSSSOS::SpecDoubleArchive::MergeFrom(v16, v18);
  if ((v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_53:
    *(this + 4) |= 0x20u;
    v22 = *(this + 8);
    if (!v22)
    {
      v23 = *(this + 1);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x277CA3300](v23);
      *(this + 8) = v22;
    }

    if (*(a2 + 8))
    {
      v24 = *(a2 + 8);
    }

    else
    {
      v24 = v9;
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v22, v24);
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
  *(this + 4) |= 0x10u;
  v19 = *(this + 7);
  if (!v19)
  {
    v20 = *(this + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecPaddingArchive>(v20);
    *(this + 7) = v19;
  }

  if (*(a2 + 7))
  {
    v21 = *(a2 + 7);
  }

  else
  {
    v21 = &TSWPSOS::_SpecPaddingArchive_default_instance_;
  }

  TSWPSOS::SpecPaddingArchive::MergeFrom(v19, v21);
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
  *(this + 4) |= 0x40u;
  v25 = *(this + 9);
  if (!v25)
  {
    v26 = *(this + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x277CA3340](v26);
    *(this + 9) = v25;
  }

  if (*(a2 + 9))
  {
    v27 = *(a2 + 9);
  }

  else
  {
    v27 = MEMORY[0x277D80C18];
  }

  TSSSOS::SpecIntegerArchive::MergeFrom(v25, v27);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(this + 4) |= 0x80u;
    v28 = *(this + 10);
    if (!v28)
    {
      v29 = *(this + 1);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277CA3300](v29);
      *(this + 10) = v28;
    }

    if (*(a2 + 10))
    {
      v30 = *(a2 + 10);
    }

    else
    {
      v30 = v9;
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v28, v30);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v5 & 0x100) != 0)
  {
    *(this + 4) |= 0x100u;
    v31 = *(this + 11);
    if (!v31)
    {
      v32 = *(this + 1);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277CA3340](v32);
      *(this + 11) = v31;
    }

    if (*(a2 + 11))
    {
      v33 = *(a2 + 11);
    }

    else
    {
      v33 = MEMORY[0x277D80C18];
    }

    TSSSOS::SpecIntegerArchive::MergeFrom(v31, v33);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(this + 96) = *(a2 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(this + 97) = *(a2 + 97);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(this + 98) = *(a2 + 98);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(this + 99) = *(a2 + 99);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_108:
    *(this + 101) = *(a2 + 101);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_107:
  *(this + 100) = *(a2 + 100);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_108;
  }

LABEL_85:
  if ((v5 & 0x8000) != 0)
  {
LABEL_86:
    *(this + 102) = *(a2 + 102);
  }

LABEL_87:
  *(this + 4) |= v5;
LABEL_88:
  if ((v5 & 0x30000) != 0)
  {
    if ((v5 & 0x10000) != 0)
    {
      *(this + 103) = *(a2 + 103);
    }

    if ((v5 & 0x20000) != 0)
    {
      *(this + 104) = *(a2 + 104);
    }

    *(this + 4) |= v5;
  }
}

void TSWPSOS::ColumnStylePropertyChangeSetArchive::CopyFrom(TSWPSOS::ColumnStylePropertyChangeSetArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWPSOS::ColumnStylePropertyChangeSetArchive::Clear(this);

    TSWPSOS::ColumnStylePropertyChangeSetArchive::MergeFrom(this, a2);
  }
}

void TSWPSOS::ColumnStylePropertyChangeSetArchive::CopyFrom(TSWPSOS::ColumnStylePropertyChangeSetArchive *this, const TSWPSOS::ColumnStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    TSWPSOS::ColumnStylePropertyChangeSetArchive::Clear(this);

    TSWPSOS::ColumnStylePropertyChangeSetArchive::MergeFrom(this, a2);
  }
}

uint64_t TSWPSOS::ColumnStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::ColumnStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSWPSOS::SpecColumnsArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 4));
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
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    v5 = *(this + 7);
    if ((*(v5 + 16) & 1) != 0 && (*(*(v5 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 11));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWPSOS::ColumnStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::ColumnStylePropertyChangeSetArchive *this, TSWPSOS::ColumnStylePropertyChangeSetArchive *a2)
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
  v9 = *(this + 7);
  v10 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v13 = *(this + 11);
  v14 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v13;
  *(a2 + 12) = v14;
  LOBYTE(v13) = *(this + 104);
  *(this + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  return result;
}

TSDSOS::SpecStrokeArchive *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::clear_drop_cap_shape_stroke(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSDSOS::SpecFillArchive *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::clear_drop_cap_shape_fill(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSDSOS::SpecFillArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::DropCapSpecificStylePropertyChangeSetArchive(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288606000;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DropCapSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 47) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288606000;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DropCapSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 47) = 0;
  *(this + 5) = 0;
  return this;
}

TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::DropCapSpecificStylePropertyChangeSetArchive(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this, const TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288606000;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  v7 = *(a2 + 24);
  *(this + 50) = *(a2 + 50);
  *(this + 24) = v7;
  return this;
}

void TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::~DropCapSpecificStylePropertyChangeSetArchive(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this)
{
  if (this != &TSWPSOS::_DropCapSpecificStylePropertyChangeSetArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecDropCapArchive::~SpecDropCapArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277CA2ED0]();
      MEMORY[0x277CA3D00](v3, 0x10A1C4030AC051BLL);
    }

    if (*(this + 5))
    {
      v4 = MEMORY[0x277CA2E30]();
      MEMORY[0x277CA3D00](v4, 0x10A1C404E50D5EBLL);
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::~DropCapSpecificStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::default_instance(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_DropCapSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_DropCapSpecificStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSWPSOS::SpecDropCapArchive::Clear(this[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSDSOS::SpecFillArchive::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 42) = 0;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_69;
      }

      v7 = TagFallback;
      v8 = v32;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_50;
          }

          v5 |= 0x10u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_38:
            v39 = v22;
            *(a1 + 49) = v21 != 0;
            goto LABEL_58;
          }

          v33 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v39 = v33;
          *(a1 + 49) = v34 != 0;
          if (!v33)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 4u;
              v27 = *(a1 + 40);
              if (!v27)
              {
                v28 = *(a1 + 8);
                if (v28)
                {
                  v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
                }

                v29 = MEMORY[0x277CA32C0](v28);
                LODWORD(v27) = v29;
                *(a1 + 40) = v29;
                v7 = v39;
              }

              v15 = sub_276F56738(a3, v27, v7);
              goto LABEL_57;
            }

LABEL_50:
            if (v8)
            {
              v30 = (v8 & 7) == 4;
            }

            else
            {
              v30 = 1;
            }

            if (v30)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v15 = google::protobuf::internal::UnknownFieldParse();
LABEL_57:
            v39 = v15;
            if (!v15)
            {
              goto LABEL_69;
            }

            goto LABEL_58;
          }

          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_50;
          }

          v5 |= 0x20u;
          v17 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if ((v18 & 0x80000000) == 0)
          {
            v17 = (v7 + 2);
LABEL_27:
            v39 = v17;
            *(a1 + 50) = v16 != 0;
            goto LABEL_58;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v7, v16);
          v39 = v35;
          *(a1 + 50) = v36 != 0;
          if (!v35)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v19 = *(a1 + 24);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecDropCapArchive>(v20);
              *(a1 + 24) = v19;
              v7 = v39;
            }

            v15 = sub_276F569A8(a3, v19, v7);
            goto LABEL_57;
          }

          goto LABEL_50;
        }

        if (v10 != 2)
        {
          if (v10 == 3 && v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v12 = *(a1 + 32);
            if (!v12)
            {
              v13 = *(a1 + 8);
              if (v13)
              {
                v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
              }

              v14 = MEMORY[0x277CA32E0](v13);
              LODWORD(v12) = v14;
              *(a1 + 32) = v14;
              v7 = v39;
            }

            v15 = sub_276F56668(a3, v12, v7);
            goto LABEL_57;
          }

          goto LABEL_50;
        }

        if (v8 != 16)
        {
          goto LABEL_50;
        }

        v5 |= 8u;
        v25 = (v7 + 1);
        v24 = *v7;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v25 = (v7 + 2);
LABEL_43:
          v39 = v25;
          *(a1 + 48) = v24 != 0;
          goto LABEL_58;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v24);
        v39 = v37;
        *(a1 + 48) = v38 != 0;
        if (!v37)
        {
LABEL_69:
          v39 = 0;
          goto LABEL_2;
        }
      }

LABEL_58:
      if (sub_276EA4A1C(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecDropCapArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 48);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_21:
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

  a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v13, v15, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 49);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_34:
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

  a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_44:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 50);
    *a2 = 48;
    a2[1] = v26;
    a2 += 2;
  }

LABEL_47:
  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSWPSOS::SpecDropCapArchive::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSDSOS::SpecFillArchive::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = v3 + ((v2 >> 3) & 2) + ((v2 >> 2) & 2) + ((v2 >> 4) & 2);
LABEL_11:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecDropCapArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWPSOS::_SpecDropCapArchive_default_instance_;
      }

      this = TSWPSOS::SpecDropCapArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA32E0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA32C0](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = MEMORY[0x277D80530];
    }

    this = TSDSOS::SpecFillArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_10:
      *(v3 + 50) = *(a2 + 50);
      goto LABEL_11;
    }

LABEL_38:
    *(v3 + 49) = *(a2 + 49);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 3);
    if ((*(v3 + 16) & 1) != 0 && (*(*(v3 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 2) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSDSOS::SpecFillArchive::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *this, TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LOWORD(v8) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v8;
  LOBYTE(v8) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v8;
  return result;
}

TSDSOS::SpecStrokeArchive *TSWPSOS::DropCapStylePropertyChangeSetArchive::clear_drop_cap_shape_stroke(TSWPSOS::DropCapStylePropertyChangeSetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSDSOS::SpecFillArchive *TSWPSOS::DropCapStylePropertyChangeSetArchive::clear_drop_cap_shape_fill(TSWPSOS::DropCapStylePropertyChangeSetArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSDSOS::SpecFillArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWPSOS::DropCapStylePropertyChangeSetArchive *TSWPSOS::DropCapStylePropertyChangeSetArchive::DropCapStylePropertyChangeSetArchive(TSWPSOS::DropCapStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886060B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DropCapStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 55) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2886060B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DropCapStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 55) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWPSOS::DropCapStylePropertyChangeSetArchive *TSWPSOS::DropCapStylePropertyChangeSetArchive::DropCapStylePropertyChangeSetArchive(TSWPSOS::DropCapStylePropertyChangeSetArchive *this, const TSWPSOS::DropCapStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886060B0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  v7 = *(a2 + 28);
  *(this + 58) = *(a2 + 58);
  *(this + 28) = v7;
  return this;
}

void TSWPSOS::DropCapStylePropertyChangeSetArchive::~DropCapStylePropertyChangeSetArchive(TSWPSOS::DropCapStylePropertyChangeSetArchive *this)
{
  sub_276ECC790(this);
  sub_276E4E808(this + 1);
}

{
  TSWPSOS::DropCapStylePropertyChangeSetArchive::~DropCapStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276ECC790(uint64_t *result)
{
  if (result != &TSWPSOS::_DropCapStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSWPSOS::CharacterStylePropertyChangeSetArchive::~CharacterStylePropertyChangeSetArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSWPSOS::SpecDropCapArchive::~SpecDropCapArchive(v3);
      MEMORY[0x277CA3D00]();
    }

    if (v1[5])
    {
      v4 = MEMORY[0x277CA2ED0]();
      MEMORY[0x277CA3D00](v4, 0x10A1C4030AC051BLL);
    }

    result = v1[6];
    if (result)
    {
      MEMORY[0x277CA2E30]();

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWPSOS::DropCapStylePropertyChangeSetArchive::default_instance(TSWPSOS::DropCapStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_DropCapStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_DropCapStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::DropCapStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    this = TSWPSOS::SpecDropCapArchive::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  this = TSWPSOS::CharacterStylePropertyChangeSetArchive::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSDSOS::SpecFillArchive::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 50) = 0;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::DropCapStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v41) & 1) == 0)
  {
    while (1)
    {
      v7 = (v41 + 1);
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v9 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_77;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_60;
          }

          *(a1 + 16) |= 1u;
          v23 = *(a1 + 24);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::CharacterStylePropertyChangeSetArchive>(v24);
            *(a1 + 24) = v23;
            v7 = v41;
          }

          v25 = sub_276F56A78(a3, v23, v7);
          goto LABEL_67;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_60;
          }

          *(a1 + 16) |= 2u;
          v32 = *(a1 + 32);
          if (!v32)
          {
            v33 = *(a1 + 8);
            if (v33)
            {
              v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
            }

            v32 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecDropCapArchive>(v33);
            *(a1 + 32) = v32;
            v7 = v41;
          }

          v25 = sub_276F569A8(a3, v32, v7);
          goto LABEL_67;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_60;
        }

        v5 |= 0x10u;
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
          v41 = v16;
          *(a1 + 56) = v15 != 0;
          goto LABEL_68;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v41 = v39;
        *(a1 + 56) = v40 != 0;
        if (!v39)
        {
LABEL_77:
          v41 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 16) |= 8u;
            v29 = *(a1 + 48);
            if (!v29)
            {
              v30 = *(a1 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = MEMORY[0x277CA32C0](v30);
              LODWORD(v29) = v31;
              *(a1 + 48) = v31;
              v7 = v41;
            }

            v25 = sub_276F56738(a3, v29, v7);
            goto LABEL_67;
          }

LABEL_60:
          if (v8)
          {
            v34 = (v8 & 7) == 4;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v25 = google::protobuf::internal::UnknownFieldParse();
LABEL_67:
          v41 = v25;
          if (!v25)
          {
            goto LABEL_77;
          }

          goto LABEL_68;
        }

        if (v10 != 7 || v8 != 56)
        {
          goto LABEL_60;
        }

        v5 |= 0x40u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_33:
          v41 = v19;
          *(a1 + 58) = v18 != 0;
          goto LABEL_68;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v41 = v37;
        *(a1 + 58) = v38 != 0;
        if (!v37)
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v10 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 4u;
            v26 = *(a1 + 40);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277CA32E0](v27);
              LODWORD(v26) = v28;
              *(a1 + 40) = v28;
              v7 = v41;
            }

            v25 = sub_276F56668(a3, v26, v7);
            goto LABEL_67;
          }

          goto LABEL_60;
        }

        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_60;
        }

        v5 |= 0x20u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v41 = v12;
          *(a1 + 57) = v11 != 0;
          goto LABEL_68;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v41 = v35;
        *(a1 + 57) = v36 != 0;
        if (!v35)
        {
          goto LABEL_77;
        }
      }

LABEL_68:
      if (sub_276EA4A1C(a3, &v41))
      {
        goto LABEL_2;
      }
    }

    v7 = (v41 + 2);
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

unsigned __int8 *TSWPSOS::DropCapStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::DropCapStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = *(v6 + 6);
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

    a2 = TSWPSOS::CharacterStylePropertyChangeSetArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 4);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSWPSOS::SpecDropCapArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 56);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 5);
  *a2 = 34;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 3;
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
      a2[2] = v22;
      v21 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v20;
    v21 = a2 + 2;
  }

  a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 57);
  *a2 = 40;
  a2[1] = v25;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 6);
  *a2 = 50;
  v27 = *(v26 + 5);
  if (v27 > 0x7F)
  {
    a2[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = a2 + 3;
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      a2[2] = v29;
      v28 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v27;
    v28 = a2 + 2;
  }

  a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v26, v28, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_55:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 58);
    *a2 = 56;
    a2[1] = v32;
    a2 += 2;
  }

LABEL_58:
  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v33 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::DropCapStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::DropCapStylePropertyChangeSetArchive *this, uint32x4_t a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    v5 = TSWPSOS::CharacterStylePropertyChangeSetArchive::ByteSizeLong(*(this + 3), a2);
    v4 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v3 = *(this + 4);
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0x7E) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v8 = TSWPSOS::SpecDropCapArchive::ByteSizeLong(*(this + 4));
      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 4) == 0)
      {
LABEL_7:
        if ((v3 & 8) == 0)
        {
LABEL_9:
          v4 += ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
          goto LABEL_10;
        }

LABEL_8:
        v6 = TSDSOS::SpecFillArchive::ByteSizeLong(*(this + 6));
        v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_9;
      }
    }

    else if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    v9 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 5));
    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSWPSOS::DropCapStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::DropCapStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::DropCapStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::DropCapStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSWPSOS::DropCapStylePropertyChangeSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::CharacterStylePropertyChangeSetArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWPSOS::_CharacterStylePropertyChangeSetArchive_default_instance_;
      }

      this = TSWPSOS::CharacterStylePropertyChangeSetArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecDropCapArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWPSOS::_SpecDropCapArchive_default_instance_;
    }

    this = TSWPSOS::SpecDropCapArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA32E0](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277CA32C0](v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = MEMORY[0x277D80530];
    }

    this = TSDSOS::SpecFillArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_11:
      *(v3 + 58) = *(a2 + 58);
      goto LABEL_12;
    }

LABEL_47:
    *(v3 + 57) = *(a2 + 57);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t *TSWPSOS::DropCapStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::DropCapStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::DropCapStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::DropCapStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSWPSOS::DropCapStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::DropCapStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::DropCapStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::DropCapStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::DropCapStylePropertyChangeSetArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSWPSOS::CharacterStylePropertyChangeSetArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      v4 = *(this + 4);
      if ((*(v4 + 16) & 1) != 0 && (*(*(v4 + 24) + 16) & 2) == 0)
      {
        return 0;
      }
    }

    if ((v3 & 4) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSDSOS::SpecFillArchive::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWPSOS::DropCapStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::DropCapStylePropertyChangeSetArchive *this, TSWPSOS::DropCapStylePropertyChangeSetArchive *a2)
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
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  LOWORD(v7) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v7;
  LOBYTE(v7) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v7;
  return result;
}

TSSSOS::SpecColorArchive *TSWPSOS::ListStylePropertyChangeSetArchive::clear_list_font_color(TSWPSOS::ListStylePropertyChangeSetArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSSSOS::SpecColorArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSSSOS::SpecStringArchive *TSWPSOS::ListStylePropertyChangeSetArchive::clear_font_name(TSWPSOS::ListStylePropertyChangeSetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSSSOS::SpecStringArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSDSOS::SpecShadowArchive *TSWPSOS::ListStylePropertyChangeSetArchive::clear_text_shadow(TSWPSOS::ListStylePropertyChangeSetArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSDSOS::SpecShadowArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ListStylePropertyChangeSetArchive::clear_writing_direction(TSWPSOS::ListStylePropertyChangeSetArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSWPSOS::ListStylePropertyChangeSetArchive *TSWPSOS::ListStylePropertyChangeSetArchive::ListStylePropertyChangeSetArchive(TSWPSOS::ListStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288606160;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ListStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 133) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288606160;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ListStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 133) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWPSOS::ListStylePropertyChangeSetArchive *TSWPSOS::ListStylePropertyChangeSetArchive::ListStylePropertyChangeSetArchive(TSWPSOS::ListStylePropertyChangeSetArchive *this, const TSWPSOS::ListStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288606160;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v5 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v5 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v5 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v5 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  v7 = *(a2 + 16);
  *(this + 133) = *(a2 + 133);
  *(this + 16) = v7;
  return this;
}

void TSWPSOS::ListStylePropertyChangeSetArchive::~ListStylePropertyChangeSetArchive(TSWPSOS::ListStylePropertyChangeSetArchive *this)
{
  sub_276ECDC60(this);
  sub_276E4E808(this + 1);
}

{
  TSWPSOS::ListStylePropertyChangeSetArchive::~ListStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276ECDC60(uint64_t *result)
{
  if (result != &TSWPSOS::_ListStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277CA2FC0]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40D4912B22);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277CA3060]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40D4912B22);
    }

    v4 = v1[5];
    if (v4)
    {
      TSWPSOS::SpecListStyleFloatArrayArchive::~SpecListStyleFloatArrayArchive(v4);
      MEMORY[0x277CA3D00]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::~SpecListStyleListLabelGeometryArrayArchive(v5);
      MEMORY[0x277CA3D00]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSWPSOS::SpecListStyleImageDataArrayArchive::~SpecListStyleImageDataArrayArchive(v6);
      MEMORY[0x277CA3D00]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSWPSOS::SpecListStyleFloatArrayArchive::~SpecListStyleFloatArrayArchive(v7);
      MEMORY[0x277CA3D00]();
    }

    v8 = v1[9];
    if (v8)
    {
      TSWPSOS::SpecListStyleListNumberTypeArrayArchive::~SpecListStyleListNumberTypeArrayArchive(v8);
      MEMORY[0x277CA3D00]();
    }

    v9 = v1[10];
    if (v9)
    {
      TSWPSOS::SpecListStyleBoolArrayArchive::~SpecListStyleBoolArrayArchive(v9);
      MEMORY[0x277CA3D00]();
    }

    if (v1[11])
    {
      v10 = MEMORY[0x277CA2E80]();
      MEMORY[0x277CA3D00](v10, 0x10A1C4034CD354FLL);
    }

    v11 = v1[12];
    if (v11)
    {
      TSWPSOS::SpecListStyleStringArrayArchive::~SpecListStyleStringArrayArchive(v11);
      MEMORY[0x277CA3D00]();
    }

    v12 = v1[13];
    if (v12)
    {
      TSWPSOS::SpecListStyleFloatArrayArchive::~SpecListStyleFloatArrayArchive(v12);
      MEMORY[0x277CA3D00]();
    }

    v13 = v1[14];
    if (v13)
    {
      TSWPSOS::SpecListStyleListLabelTypeArrayArchive::~SpecListStyleListLabelTypeArrayArchive(v13);
      MEMORY[0x277CA3D00]();
    }

    result = v1[15];
    if (result)
    {
      MEMORY[0x277CA30B0]();

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWPSOS::ListStylePropertyChangeSetArchive::default_instance(TSWPSOS::ListStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_ListStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_ListStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::ListStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSSSOS::SpecColorArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSSSOS::SpecStringArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = TSWPSOS::SpecListStyleFloatArrayArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_33:
    this = TSWPSOS::SpecListStyleFloatArrayArchive::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_32:
  this = TSWPSOS::SpecListStyleImageDataArrayArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_34:
  this = TSWPSOS::SpecListStyleListNumberTypeArrayArchive::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSWPSOS::SpecListStyleBoolArrayArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x1F00) == 0)
  {
    goto LABEL_18;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSDSOS::SpecShadowArchive::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSWPSOS::SpecListStyleStringArrayArchive::Clear(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = TSWPSOS::SpecListStyleFloatArrayArchive::Clear(*(v1 + 104));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_39:
  this = TSWPSOS::SpecListStyleListLabelTypeArrayArchive::Clear(*(v1 + 112));
  if ((v2 & 0x1000) != 0)
  {
LABEL_17:
    this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 120));
  }

LABEL_18:
  if ((v2 & 0xE000) != 0)
  {
    *(v1 + 130) = 0;
    *(v1 + 128) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 131) = 0;
  }

  if ((v2 & 0x3000000) != 0)
  {
    *(v1 + 139) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::ListStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v107 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v107) & 1) == 0)
  {
    while (1)
    {
      v7 = (v107 + 1);
      v8 = *v107;
      if (*v107 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v107, (v9 - 128));
          v107 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_189;
          }

          v7 = TagFallback;
          v8 = v15;
          goto LABEL_7;
        }

        v7 = (v107 + 2);
      }

      v107 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = MEMORY[0x277CA3310](v11);
            LODWORD(v10) = v12;
            *(a1 + 24) = v12;
            v7 = v107;
          }

          v13 = sub_276F56598(a3, v10, v7);
          goto LABEL_159;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_152;
          }

          v5 |= 0x2000u;
          v50 = (v7 + 1);
          v49 = *v7;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_85;
          }

          v51 = *v50;
          v49 = (v51 << 7) + v49 - 128;
          if (v51 < 0)
          {
            v93 = google::protobuf::internal::VarintParseSlow64(v7, v49);
            v107 = v93;
            *(a1 + 128) = v94 != 0;
            if (!v93)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v50 = (v7 + 2);
LABEL_85:
            v107 = v50;
            *(a1 + 128) = v49 != 0;
          }

          goto LABEL_160;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 2u;
          v37 = *(a1 + 32);
          if (!v37)
          {
            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v39 = MEMORY[0x277CA3330](v38);
            LODWORD(v37) = v39;
            *(a1 + 32) = v39;
            v7 = v107;
          }

          v13 = sub_276F56258(a3, v37, v7);
          goto LABEL_159;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_152;
          }

          v5 |= 0x4000u;
          v44 = (v7 + 1);
          v43 = *v7;
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_75;
          }

          v45 = *v44;
          v43 = (v45 << 7) + v43 - 128;
          if (v45 < 0)
          {
            v89 = google::protobuf::internal::VarintParseSlow64(v7, v43);
            v107 = v89;
            *(a1 + 129) = v90 != 0;
            if (!v89)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v44 = (v7 + 2);
LABEL_75:
            v107 = v44;
            *(a1 + 129) = v43 != 0;
          }

          goto LABEL_160;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 4u;
          v24 = *(a1 + 40);
          if (v24)
          {
            goto LABEL_129;
          }

          v25 = *(a1 + 8);
          if (v25)
          {
            v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleFloatArrayArchive>(v25);
          *(a1 + 40) = v24;
          goto LABEL_128;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_152;
          }

          v5 |= 0x8000u;
          v57 = (v7 + 1);
          v56 = *v7;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_100;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v97 = google::protobuf::internal::VarintParseSlow64(v7, v56);
            v107 = v97;
            *(a1 + 130) = v98 != 0;
            if (!v97)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v57 = (v7 + 2);
LABEL_100:
            v107 = v57;
            *(a1 + 130) = v56 != 0;
          }

          goto LABEL_160;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 8u;
          v65 = *(a1 + 48);
          if (!v65)
          {
            v66 = *(a1 + 8);
            if (v66)
            {
              v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
            }

            v65 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleListLabelGeometryArrayArchive>(v66);
            *(a1 + 48) = v65;
            v7 = v107;
          }

          v13 = sub_276F56C18(a3, v65, v7);
          goto LABEL_159;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_152;
          }

          v5 |= 0x10000u;
          v47 = (v7 + 1);
          v46 = *v7;
          if ((v46 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v48 = *v47;
          v46 = (v48 << 7) + v46 - 128;
          if (v48 < 0)
          {
            v91 = google::protobuf::internal::VarintParseSlow64(v7, v46);
            v107 = v91;
            *(a1 + 131) = v92 != 0;
            if (!v91)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v47 = (v7 + 2);
LABEL_80:
            v107 = v47;
            *(a1 + 131) = v46 != 0;
          }

          goto LABEL_160;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x10u;
          v70 = *(a1 + 56);
          if (!v70)
          {
            v71 = *(a1 + 8);
            if (v71)
            {
              v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
            }

            v70 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleImageDataArrayArchive>(v71);
            *(a1 + 56) = v70;
            v7 = v107;
          }

          v13 = sub_276F56CE8(a3, v70, v7);
          goto LABEL_159;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_152;
          }

          v5 |= 0x20000u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if (v30 < 0)
          {
            v83 = google::protobuf::internal::VarintParseSlow64(v7, v28);
            v107 = v83;
            *(a1 + 132) = v84 != 0;
            if (!v83)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v29 = (v7 + 2);
LABEL_48:
            v107 = v29;
            *(a1 + 132) = v28 != 0;
          }

          goto LABEL_160;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x20u;
          v24 = *(a1 + 64);
          if (v24)
          {
            goto LABEL_129;
          }

          v69 = *(a1 + 8);
          if (v69)
          {
            v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleFloatArrayArchive>(v69);
          *(a1 + 64) = v24;
          goto LABEL_128;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_152;
          }

          v5 |= 0x40000u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_32;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v81 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v107 = v81;
            *(a1 + 133) = v82 != 0;
            if (!v81)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_32:
            v107 = v22;
            *(a1 + 133) = v21 != 0;
          }

          goto LABEL_160;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x40u;
          v26 = *(a1 + 72);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleListNumberTypeArrayArchive>(v27);
            *(a1 + 72) = v26;
            v7 = v107;
          }

          v13 = sub_276F56DB8(a3, v26, v7);
          goto LABEL_159;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_152;
          }

          v5 |= 0x80000u;
          v63 = (v7 + 1);
          v62 = *v7;
          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v64 = *v63;
          v62 = (v64 << 7) + v62 - 128;
          if (v64 < 0)
          {
            v101 = google::protobuf::internal::VarintParseSlow64(v7, v62);
            v107 = v101;
            *(a1 + 134) = v102 != 0;
            if (!v101)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v63 = (v7 + 2);
LABEL_110:
            v107 = v63;
            *(a1 + 134) = v62 != 0;
          }

          goto LABEL_160;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x80u;
          v19 = *(a1 + 80);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleBoolArrayArchive>(v20);
            *(a1 + 80) = v19;
            v7 = v107;
          }

          v13 = sub_276F56E88(a3, v19, v7);
          goto LABEL_159;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_152;
          }

          v5 |= 0x100000u;
          v41 = (v7 + 1);
          v40 = *v7;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v87 = google::protobuf::internal::VarintParseSlow64(v7, v40);
            v107 = v87;
            *(a1 + 135) = v88 != 0;
            if (!v87)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v41 = (v7 + 2);
LABEL_70:
            v107 = v41;
            *(a1 + 135) = v40 != 0;
          }

          goto LABEL_160;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x100u;
          v16 = *(a1 + 88);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277CA32D0](v17);
            LODWORD(v16) = v18;
            *(a1 + 88) = v18;
            v7 = v107;
          }

          v13 = sub_276F564C8(a3, v16, v7);
          goto LABEL_159;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_152;
          }

          v5 |= 0x200000u;
          v53 = (v7 + 1);
          v52 = *v7;
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v54 = *v53;
          v52 = (v54 << 7) + v52 - 128;
          if (v54 < 0)
          {
            v95 = google::protobuf::internal::VarintParseSlow64(v7, v52);
            v107 = v95;
            *(a1 + 136) = v96 != 0;
            if (!v95)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v53 = (v7 + 2);
LABEL_90:
            v107 = v53;
            *(a1 + 136) = v52 != 0;
          }

          goto LABEL_160;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x200u;
          v67 = *(a1 + 96);
          if (!v67)
          {
            v68 = *(a1 + 8);
            if (v68)
            {
              v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
            }

            v67 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleStringArrayArchive>(v68);
            *(a1 + 96) = v67;
            v7 = v107;
          }

          v13 = sub_276F56F58(a3, v67, v7);
          goto LABEL_159;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_152;
          }

          v5 |= 0x400000u;
          v75 = (v7 + 1);
          v74 = *v7;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_146;
          }

          v76 = *v75;
          v74 = (v76 << 7) + v74 - 128;
          if (v76 < 0)
          {
            v103 = google::protobuf::internal::VarintParseSlow64(v7, v74);
            v107 = v103;
            *(a1 + 137) = v104 != 0;
            if (!v103)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v75 = (v7 + 2);
LABEL_146:
            v107 = v75;
            *(a1 + 137) = v74 != 0;
          }

          goto LABEL_160;
        case 0x15u:
          if (v8 != 170)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x400u;
          v24 = *(a1 + 104);
          if (v24)
          {
            goto LABEL_129;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleFloatArrayArchive>(v55);
          *(a1 + 104) = v24;
LABEL_128:
          v7 = v107;
LABEL_129:
          v13 = sub_276F56B48(a3, v24, v7);
          goto LABEL_159;
        case 0x16u:
          if (v8 != 176)
          {
            goto LABEL_152;
          }

          v5 |= 0x800000u;
          v60 = (v7 + 1);
          v59 = *v7;
          if ((v59 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v61 = *v60;
          v59 = (v61 << 7) + v59 - 128;
          if (v61 < 0)
          {
            v99 = google::protobuf::internal::VarintParseSlow64(v7, v59);
            v107 = v99;
            *(a1 + 138) = v100 != 0;
            if (!v99)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v60 = (v7 + 2);
LABEL_105:
            v107 = v60;
            *(a1 + 138) = v59 != 0;
          }

          goto LABEL_160;
        case 0x17u:
          if (v8 != 186)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x800u;
          v72 = *(a1 + 112);
          if (!v72)
          {
            v73 = *(a1 + 8);
            if (v73)
            {
              v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
            }

            v72 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleListLabelTypeArrayArchive>(v73);
            *(a1 + 112) = v72;
            v7 = v107;
          }

          v13 = sub_276F57028(a3, v72, v7);
          goto LABEL_159;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_152;
          }

          v5 |= 0x1000000u;
          v78 = (v7 + 1);
          v77 = *v7;
          if ((v77 & 0x8000000000000000) == 0)
          {
            goto LABEL_151;
          }

          v79 = *v78;
          v77 = (v79 << 7) + v77 - 128;
          if (v79 < 0)
          {
            v105 = google::protobuf::internal::VarintParseSlow64(v7, v77);
            v107 = v105;
            *(a1 + 139) = v106 != 0;
            if (!v105)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v78 = (v7 + 2);
LABEL_151:
            v107 = v78;
            *(a1 + 139) = v77 != 0;
          }

          goto LABEL_160;
        case 0x19u:
          if (v8 != 202)
          {
            goto LABEL_152;
          }

          *(a1 + 16) |= 0x1000u;
          v34 = *(a1 + 120);
          if (!v34)
          {
            v35 = *(a1 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v36 = MEMORY[0x277CA3340](v35);
            LODWORD(v34) = v36;
            *(a1 + 120) = v36;
            v7 = v107;
          }

          v13 = sub_276F56188(a3, v34, v7);
          goto LABEL_159;
        case 0x1Au:
          if (v8 != 208)
          {
            goto LABEL_152;
          }

          v5 |= 0x2000000u;
          v32 = (v7 + 1);
          v31 = *v7;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_53;
          }

          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            v85 = google::protobuf::internal::VarintParseSlow64(v7, v31);
            v107 = v85;
            *(a1 + 140) = v86 != 0;
            if (!v85)
            {
              goto LABEL_189;
            }
          }

          else
          {
            v32 = (v7 + 2);
LABEL_53:
            v107 = v32;
            *(a1 + 140) = v31 != 0;
          }

          goto LABEL_160;
        default:
LABEL_152:
          if (v8)
          {
            v80 = (v8 & 7) == 4;
          }

          else
          {
            v80 = 1;
          }

          if (v80)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_159:
          v107 = v13;
          if (!v13)
          {
LABEL_189:
            v107 = 0;
            goto LABEL_2;
          }

LABEL_160:
          if (sub_276EA4A1C(a3, &v107))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v107;
}