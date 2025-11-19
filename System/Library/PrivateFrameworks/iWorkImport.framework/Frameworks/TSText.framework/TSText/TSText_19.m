unsigned __int8 *TSWPSOS::ParagraphStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      if ((v5 & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
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

  v12 = *(this + 5);
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

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 256);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 6);
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

  a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 257);
  *a2 = 40;
  a2[1] = v25;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 7);
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

  a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v26, v28, a3);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_58:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 258);
  *a2 = 56;
  a2[1] = v32;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 8);
  *a2 = 66;
  v34 = *(v33 + 5);
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v36 = v34 >> 7;
    if (v34 >> 14)
    {
      v35 = a2 + 3;
      do
      {
        *(v35 - 1) = v36 | 0x80;
        v37 = v36 >> 7;
        ++v35;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
      *(v35 - 1) = v37;
    }

    else
    {
      a2[2] = v36;
      v35 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v34;
    v35 = a2 + 2;
  }

  a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v33, v35, a3);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v39 = *(this + 259);
  *a2 = 72;
  a2[1] = v39;
  a2 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_74:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 9);
    *a2 = 82;
    v41 = *(v40 + 5);
    if (v41 > 0x7F)
    {
      a2[1] = v41 | 0x80;
      v43 = v41 >> 7;
      if (v41 >> 14)
      {
        v42 = a2 + 3;
        do
        {
          *(v42 - 1) = v43 | 0x80;
          v44 = v43 >> 7;
          ++v42;
          v45 = v43 >> 14;
          v43 >>= 7;
        }

        while (v45);
        *(v42 - 1) = v44;
      }

      else
      {
        a2[2] = v43;
        v42 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v41;
      v42 = a2 + 2;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v40, v42, a3);
  }

LABEL_84:
  if (*(this + 20))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(this + 260);
    *a2 = 88;
    a2[1] = v46;
    a2 += 2;
  }

  if ((*(this + 16) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v47 = *(this + 10);
    *a2 = 98;
    v48 = *(v47 + 5);
    if (v48 > 0x7F)
    {
      a2[1] = v48 | 0x80;
      v50 = v48 >> 7;
      if (v48 >> 14)
      {
        v49 = a2 + 3;
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
        a2[2] = v50;
        v49 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v48;
      v49 = a2 + 2;
    }

    a2 = TSWPSOS::SpecParagraphStyleArchive::_InternalSerialize(v47, v49, a3);
  }

  if ((*(this + 20) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v53 = *(this + 261);
    *a2 = 104;
    a2[1] = v53;
    a2 += 2;
  }

  if ((*(this + 16) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v54 = *(this + 11);
    *a2 = 114;
    v55 = *(v54 + 5);
    if (v55 > 0x7F)
    {
      a2[1] = v55 | 0x80;
      v57 = v55 >> 7;
      if (v55 >> 14)
      {
        v56 = a2 + 3;
        do
        {
          *(v56 - 1) = v57 | 0x80;
          v58 = v57 >> 7;
          ++v56;
          v59 = v57 >> 14;
          v57 >>= 7;
        }

        while (v59);
        *(v56 - 1) = v58;
      }

      else
      {
        a2[2] = v57;
        v56 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v55;
      v56 = a2 + 2;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v54, v56, a3);
  }

  if ((*(this + 20) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v60 = *(this + 262);
    *a2 = 120;
    a2[1] = v60;
    a2 += 2;
  }

  if (*(this + 17))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v61 = *(this + 12);
    *a2 = 386;
    v62 = *(v61 + 5);
    if (v62 > 0x7F)
    {
      a2[2] = v62 | 0x80;
      v64 = v62 >> 7;
      if (v62 >> 14)
      {
        v63 = a2 + 4;
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
        a2[3] = v64;
        v63 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v62;
      v63 = a2 + 3;
    }

    a2 = TSWPSOS::SpecListStyleArchive::_InternalSerialize(v61, v63, a3);
  }

  if ((*(this + 20) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(this + 263);
    *a2 = 392;
    a2[2] = v67;
    a2 += 3;
  }

  if ((*(this + 17) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v68 = *(this + 13);
    *a2 = 402;
    v69 = *(v68 + 5);
    if (v69 > 0x7F)
    {
      a2[2] = v69 | 0x80;
      v71 = v69 >> 7;
      if (v69 >> 14)
      {
        v70 = a2 + 4;
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
        a2[3] = v71;
        v70 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v69;
      v70 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v68, v70, a3);
  }

  if ((*(this + 20) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v74 = *(this + 264);
    *a2 = 408;
    a2[2] = v74;
    a2 += 3;
  }

  if ((*(this + 17) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v75 = *(this + 14);
    *a2 = 418;
    v76 = *(v75 + 5);
    if (v76 > 0x7F)
    {
      a2[2] = v76 | 0x80;
      v78 = v76 >> 7;
      if (v76 >> 14)
      {
        v77 = a2 + 4;
        do
        {
          *(v77 - 1) = v78 | 0x80;
          v79 = v78 >> 7;
          ++v77;
          v80 = v78 >> 14;
          v78 >>= 7;
        }

        while (v80);
        *(v77 - 1) = v79;
      }

      else
      {
        a2[3] = v78;
        v77 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v76;
      v77 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v75, v77, a3);
  }

  if ((*(this + 20) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v81 = *(this + 265);
    *a2 = 424;
    a2[2] = v81;
    a2 += 3;
  }

  if ((*(this + 17) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v82 = *(this + 15);
    *a2 = 434;
    v83 = *(v82 + 5);
    if (v83 > 0x7F)
    {
      a2[2] = v83 | 0x80;
      v85 = v83 >> 7;
      if (v83 >> 14)
      {
        v84 = a2 + 4;
        do
        {
          *(v84 - 1) = v85 | 0x80;
          v86 = v85 >> 7;
          ++v84;
          v87 = v85 >> 14;
          v85 >>= 7;
        }

        while (v87);
        *(v84 - 1) = v86;
      }

      else
      {
        a2[3] = v85;
        v84 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v83;
      v84 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v82, v84, a3);
  }

  if ((*(this + 20) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v88 = *(this + 266);
    *a2 = 440;
    a2[2] = v88;
    a2 += 3;
  }

  if ((*(this + 17) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v89 = *(this + 16);
    *a2 = 450;
    v90 = *(v89 + 5);
    if (v90 > 0x7F)
    {
      a2[2] = v90 | 0x80;
      v92 = v90 >> 7;
      if (v90 >> 14)
      {
        v91 = a2 + 4;
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
        a2[3] = v92;
        v91 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v90;
      v91 = a2 + 3;
    }

    a2 = TSWPSOS::SpecLineSpacingArchive::_InternalSerialize(v89, v91, a3);
  }

  if ((*(this + 20) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v95 = *(this + 267);
    *a2 = 456;
    a2[2] = v95;
    a2 += 3;
  }

  if ((*(this + 17) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v96 = *(this + 17);
    *a2 = 466;
    v97 = *(v96 + 5);
    if (v97 > 0x7F)
    {
      a2[2] = v97 | 0x80;
      v99 = v97 >> 7;
      if (v97 >> 14)
      {
        v98 = a2 + 4;
        do
        {
          *(v98 - 1) = v99 | 0x80;
          v100 = v99 >> 7;
          ++v98;
          v101 = v99 >> 14;
          v99 >>= 7;
        }

        while (v101);
        *(v98 - 1) = v100;
      }

      else
      {
        a2[3] = v99;
        v98 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v97;
      v98 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v96, v98, a3);
  }

  if (*(this + 21))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v102 = *(this + 268);
    *a2 = 472;
    a2[2] = v102;
    a2 += 3;
  }

  if ((*(this + 17) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v103 = *(this + 18);
    *a2 = 482;
    v104 = *(v103 + 5);
    if (v104 > 0x7F)
    {
      a2[2] = v104 | 0x80;
      v106 = v104 >> 7;
      if (v104 >> 14)
      {
        v105 = a2 + 4;
        do
        {
          *(v105 - 1) = v106 | 0x80;
          v107 = v106 >> 7;
          ++v105;
          v108 = v106 >> 14;
          v106 >>= 7;
        }

        while (v108);
        *(v105 - 1) = v107;
      }

      else
      {
        a2[3] = v106;
        v105 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v104;
      v105 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v103, v105, a3);
  }

  if ((*(this + 21) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v109 = *(this + 269);
    *a2 = 488;
    a2[2] = v109;
    a2 += 3;
  }

  if ((*(this + 17) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v110 = *(this + 19);
    *a2 = 498;
    v111 = *(v110 + 5);
    if (v111 > 0x7F)
    {
      a2[2] = v111 | 0x80;
      v113 = v111 >> 7;
      if (v111 >> 14)
      {
        v112 = a2 + 4;
        do
        {
          *(v112 - 1) = v113 | 0x80;
          v114 = v113 >> 7;
          ++v112;
          v115 = v113 >> 14;
          v113 >>= 7;
        }

        while (v115);
        *(v112 - 1) = v114;
      }

      else
      {
        a2[3] = v113;
        v112 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v111;
      v112 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v110, v112, a3);
  }

  if ((*(this + 21) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v116 = *(this + 270);
    *a2 = 504;
    a2[2] = v116;
    a2 += 3;
  }

  if (*(this + 18))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v117 = *(this + 20);
    *a2 = 642;
    v118 = *(v117 + 5);
    if (v118 > 0x7F)
    {
      a2[2] = v118 | 0x80;
      v120 = v118 >> 7;
      if (v118 >> 14)
      {
        v119 = a2 + 4;
        do
        {
          *(v119 - 1) = v120 | 0x80;
          v121 = v120 >> 7;
          ++v119;
          v122 = v120 >> 14;
          v120 >>= 7;
        }

        while (v122);
        *(v119 - 1) = v121;
      }

      else
      {
        a2[3] = v120;
        v119 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v118;
      v119 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v117, v119, a3);
  }

  if ((*(this + 21) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v123 = *(this + 271);
    *a2 = 648;
    a2[2] = v123;
    a2 += 3;
  }

  if ((*(this + 18) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v124 = *(this + 21);
    *a2 = 658;
    v125 = *(v124 + 5);
    if (v125 > 0x7F)
    {
      a2[2] = v125 | 0x80;
      v127 = v125 >> 7;
      if (v125 >> 14)
      {
        v126 = a2 + 4;
        do
        {
          *(v126 - 1) = v127 | 0x80;
          v128 = v127 >> 7;
          ++v126;
          v129 = v127 >> 14;
          v127 >>= 7;
        }

        while (v129);
        *(v126 - 1) = v128;
      }

      else
      {
        a2[3] = v127;
        v126 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v125;
      v126 = a2 + 3;
    }

    a2 = TSWPSOS::SpecRuleOffsetArchive::_InternalSerialize(v124, v126, a3);
  }

  if ((*(this + 21) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v130 = *(this + 272);
    *a2 = 664;
    a2[2] = v130;
    a2 += 3;
  }

  if ((*(this + 18) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v131 = *(this + 22);
    *a2 = 674;
    v132 = *(v131 + 5);
    if (v132 > 0x7F)
    {
      a2[2] = v132 | 0x80;
      v134 = v132 >> 7;
      if (v132 >> 14)
      {
        v133 = a2 + 4;
        do
        {
          *(v133 - 1) = v134 | 0x80;
          v135 = v134 >> 7;
          ++v133;
          v136 = v134 >> 14;
          v134 >>= 7;
        }

        while (v136);
        *(v133 - 1) = v135;
      }

      else
      {
        a2[3] = v134;
        v133 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v132;
      v133 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v131, v133, a3);
  }

  if ((*(this + 21) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v137 = *(this + 273);
    *a2 = 680;
    a2[2] = v137;
    a2 += 3;
  }

  if ((*(this + 18) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v138 = *(this + 23);
    *a2 = 690;
    v139 = *(v138 + 5);
    if (v139 > 0x7F)
    {
      a2[2] = v139 | 0x80;
      v141 = v139 >> 7;
      if (v139 >> 14)
      {
        v140 = a2 + 4;
        do
        {
          *(v140 - 1) = v141 | 0x80;
          v142 = v141 >> 7;
          ++v140;
          v143 = v141 >> 14;
          v141 >>= 7;
        }

        while (v143);
        *(v140 - 1) = v142;
      }

      else
      {
        a2[3] = v141;
        v140 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v139;
      v140 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v138, v140, a3);
  }

  if ((*(this + 21) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v144 = *(this + 274);
    *a2 = 696;
    a2[2] = v144;
    a2 += 3;
  }

  if ((*(this + 18) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v145 = *(this + 24);
    *a2 = 706;
    v146 = *(v145 + 5);
    if (v146 > 0x7F)
    {
      a2[2] = v146 | 0x80;
      v148 = v146 >> 7;
      if (v146 >> 14)
      {
        v147 = a2 + 4;
        do
        {
          *(v147 - 1) = v148 | 0x80;
          v149 = v148 >> 7;
          ++v147;
          v150 = v148 >> 14;
          v148 >>= 7;
        }

        while (v150);
        *(v147 - 1) = v149;
      }

      else
      {
        a2[3] = v148;
        v147 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v146;
      v147 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v145, v147, a3);
  }

  if ((*(this + 21) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v151 = *(this + 275);
    *a2 = 712;
    a2[2] = v151;
    a2 += 3;
  }

  if ((*(this + 18) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v152 = *(this + 25);
    *a2 = 722;
    v153 = *(v152 + 5);
    if (v153 > 0x7F)
    {
      a2[2] = v153 | 0x80;
      v155 = v153 >> 7;
      if (v153 >> 14)
      {
        v154 = a2 + 4;
        do
        {
          *(v154 - 1) = v155 | 0x80;
          v156 = v155 >> 7;
          ++v154;
          v157 = v155 >> 14;
          v155 >>= 7;
        }

        while (v157);
        *(v154 - 1) = v156;
      }

      else
      {
        a2[3] = v155;
        v154 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v153;
      v154 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v152, v154, a3);
  }

  if (*(this + 22))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v158 = *(this + 276);
    *a2 = 728;
    a2[2] = v158;
    a2 += 3;
  }

  if ((*(this + 18) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v159 = *(this + 26);
    *a2 = 738;
    v160 = *(v159 + 5);
    if (v160 > 0x7F)
    {
      a2[2] = v160 | 0x80;
      v162 = v160 >> 7;
      if (v160 >> 14)
      {
        v161 = a2 + 4;
        do
        {
          *(v161 - 1) = v162 | 0x80;
          v163 = v162 >> 7;
          ++v161;
          v164 = v162 >> 14;
          v162 >>= 7;
        }

        while (v164);
        *(v161 - 1) = v163;
      }

      else
      {
        a2[3] = v162;
        v161 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v160;
      v161 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v159, v161, a3);
  }

  if ((*(this + 22) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v165 = *(this + 277);
    *a2 = 744;
    a2[2] = v165;
    a2 += 3;
  }

  if ((*(this + 18) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v166 = *(this + 27);
    *a2 = 754;
    v167 = *(v166 + 5);
    if (v167 > 0x7F)
    {
      a2[2] = v167 | 0x80;
      v169 = v167 >> 7;
      if (v167 >> 14)
      {
        v168 = a2 + 4;
        do
        {
          *(v168 - 1) = v169 | 0x80;
          v170 = v169 >> 7;
          ++v168;
          v171 = v169 >> 14;
          v169 >>= 7;
        }

        while (v171);
        *(v168 - 1) = v170;
      }

      else
      {
        a2[3] = v169;
        v168 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v167;
      v168 = a2 + 3;
    }

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v166, v168, a3);
  }

  if ((*(this + 22) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v172 = *(this + 278);
    *a2 = 760;
    a2[2] = v172;
    a2 += 3;
  }

  if (*(this + 19))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v173 = *(this + 28);
    *a2 = 898;
    v174 = *(v173 + 5);
    if (v174 > 0x7F)
    {
      a2[2] = v174 | 0x80;
      v176 = v174 >> 7;
      if (v174 >> 14)
      {
        v175 = a2 + 4;
        do
        {
          *(v175 - 1) = v176 | 0x80;
          v177 = v176 >> 7;
          ++v175;
          v178 = v176 >> 14;
          v176 >>= 7;
        }

        while (v178);
        *(v175 - 1) = v177;
      }

      else
      {
        a2[3] = v176;
        v175 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v174;
      v175 = a2 + 3;
    }

    a2 = TSWPSOS::SpecTabsArchive::_InternalSerialize(v173, v175, a3);
  }

  if ((*(this + 22) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v179 = *(this + 279);
    *a2 = 904;
    a2[2] = v179;
    a2 += 3;
  }

  if ((*(this + 19) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v180 = *(this + 29);
    *a2 = 914;
    v181 = *(v180 + 5);
    if (v181 > 0x7F)
    {
      a2[2] = v181 | 0x80;
      v183 = v181 >> 7;
      if (v181 >> 14)
      {
        v182 = a2 + 4;
        do
        {
          *(v182 - 1) = v183 | 0x80;
          v184 = v183 >> 7;
          ++v182;
          v185 = v183 >> 14;
          v183 >>= 7;
        }

        while (v185);
        *(v182 - 1) = v184;
      }

      else
      {
        a2[3] = v183;
        v182 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v181;
      v182 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v180, v182, a3);
  }

  if ((*(this + 22) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v186 = *(this + 280);
    *a2 = 920;
    a2[2] = v186;
    a2 += 3;
  }

  if ((*(this + 19) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v187 = *(this + 30);
    *a2 = 930;
    v188 = *(v187 + 5);
    if (v188 > 0x7F)
    {
      a2[2] = v188 | 0x80;
      v190 = v188 >> 7;
      if (v188 >> 14)
      {
        v189 = a2 + 4;
        do
        {
          *(v189 - 1) = v190 | 0x80;
          v191 = v190 >> 7;
          ++v189;
          v192 = v190 >> 14;
          v190 >>= 7;
        }

        while (v192);
        *(v189 - 1) = v191;
      }

      else
      {
        a2[3] = v190;
        v189 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v188;
      v189 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v187, v189, a3);
  }

  if ((*(this + 22) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v193 = *(this + 281);
    *a2 = 936;
    a2[2] = v193;
    a2 += 3;
  }

  if ((*(this + 19) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v194 = *(this + 31);
    *a2 = 946;
    v195 = *(v194 + 5);
    if (v195 > 0x7F)
    {
      a2[2] = v195 | 0x80;
      v197 = v195 >> 7;
      if (v195 >> 14)
      {
        v196 = a2 + 4;
        do
        {
          *(v196 - 1) = v197 | 0x80;
          v198 = v197 >> 7;
          ++v196;
          v199 = v197 >> 14;
          v197 >>= 7;
        }

        while (v199);
        *(v196 - 1) = v198;
      }

      else
      {
        a2[3] = v197;
        v196 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v195;
      v196 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v194, v196, a3);
  }

  if ((*(this + 22) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v200 = *(this + 282);
    *a2 = 952;
    a2[2] = v200;
    a2 += 3;
  }

  v201 = *(this + 1);
  if ((v201 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v201 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::ParagraphStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this, uint32x4_t a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    v5 = TSWPSOS::CharacterStylePropertyChangeSetArchive::ByteSizeLong(*(this + 4), a2);
    v4 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v3 = *(this + 4);
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0xFE) == 0)
  {
    goto LABEL_13;
  }

  if ((v3 & 2) != 0)
  {
    v15 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 5));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_7:
      if ((v3 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_92;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_7;
  }

  v16 = TSSSOS::SpecStringArchive::ByteSizeLong(*(this + 6));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_93;
  }

LABEL_92:
  v17 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 7));
  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_9:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_94:
    v19 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 9));
    v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_11:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_95;
  }

LABEL_93:
  v18 = TSSSOS::SpecColorArchive::ByteSizeLong(*(this + 8));
  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_94;
  }

LABEL_10:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_95:
  v20 = TSWPSOS::SpecParagraphStyleArchive::ByteSizeLong(*(this + 10));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_12:
    v6 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 11));
    v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v3 & 0x100) != 0)
  {
    v21 = TSWPSOS::SpecListStyleArchive::ByteSizeLong(*(this + 12));
    v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x200) == 0)
    {
LABEL_16:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_99;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v22 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 13));
  v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400) == 0)
  {
LABEL_17:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_100;
  }

LABEL_99:
  v23 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 14));
  v4 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800) == 0)
  {
LABEL_18:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_101;
  }

LABEL_100:
  v24 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 15));
  v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x1000) == 0)
  {
LABEL_19:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_102;
  }

LABEL_101:
  v25 = TSWPSOS::SpecLineSpacingArchive::ByteSizeLong(*(this + 16));
  v4 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x2000) == 0)
  {
LABEL_20:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_103;
  }

LABEL_102:
  v26 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 17));
  v4 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000) == 0)
  {
LABEL_21:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_103:
  v27 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 18));
  v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000) != 0)
  {
LABEL_22:
    v7 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 19));
    v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_23:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v3 & 0x10000) != 0)
  {
    v28 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 20));
    v4 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_26:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_107;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v29 = TSWPSOS::SpecRuleOffsetArchive::ByteSizeLong(*(this + 21));
  v4 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_27:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_108;
  }

LABEL_107:
  v30 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 22));
  v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_28:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_108:
  v31 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 23));
  v4 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_29:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_110;
  }

LABEL_109:
  v32 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 24));
  v4 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_30:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_111;
  }

LABEL_110:
  v33 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 25));
  v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400000) == 0)
  {
LABEL_31:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_111:
  v34 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 26));
  v4 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800000) != 0)
  {
LABEL_32:
    v8 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 27));
    v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if (!HIBYTE(v3))
  {
    goto LABEL_42;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v35 = TSWPSOS::SpecTabsArchive::ByteSizeLong(*(this + 28));
    v4 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_115;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v36 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 29));
  v4 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_115:
  v37 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 30));
  v4 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000000) != 0)
  {
LABEL_38:
    v9 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 31));
    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    v4 += ((v3 >> 28) & 2) + ((v3 >> 27) & 2) + ((v3 >> 29) & 2);
  }

  else
  {
    v4 += ((v3 >> 28) & 2) + ((v3 >> 27) & 2) + ((v3 >> 29) & 2) + 2;
  }

LABEL_42:
  v10 = *(this + 5);
  if (v10)
  {
    v11 = v4 + (v10 & 2) + 2 * (v10 & 1) + ((v10 >> 1) & 2);
    if ((v10 & 8) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 0x10) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 0x20) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 0x40) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 0x80) != 0)
    {
      v4 = v11 + 3;
    }

    else
    {
      v4 = v11;
    }
  }

  if ((v10 & 0xFF00) != 0)
  {
    v12 = v4 + 3;
    if ((v10 & 0x100) == 0)
    {
      v12 = v4;
    }

    if ((v10 & 0x200) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x400) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x800) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x1000) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x2000) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x4000) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x8000) != 0)
    {
      v4 = v12 + 3;
    }

    else
    {
      v4 = v12;
    }
  }

  if ((v10 & 0x7F0000) != 0)
  {
    v13 = v4 + 3;
    if ((v10 & 0x10000) == 0)
    {
      v13 = v4;
    }

    if ((v10 & 0x20000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x40000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x80000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x100000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x200000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x400000) != 0)
    {
      v4 = v13 + 3;
    }

    else
    {
      v4 = v13;
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

uint64_t TSWPSOS::ParagraphStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::ParagraphStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::ParagraphStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSWPSOS::ParagraphStylePropertyChangeSetArchive *a2)
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
    goto LABEL_78;
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::CharacterStylePropertyChangeSetArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
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
        goto LABEL_32;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

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
  if ((v5 & 4) != 0)
  {
LABEL_24:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA3330](v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 6))
    {
      v14 = *(a2 + 6);
    }

    else
    {
      v14 = MEMORY[0x277D80C10];
    }

    this = TSSSOS::SpecStringArchive::MergeFrom(v12, v14);
  }

LABEL_32:
  v15 = MEMORY[0x277D80C08];
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

      v16 = MEMORY[0x277CA3320](v17);
      *(v3 + 56) = v16;
    }

    if (*(a2 + 7))
    {
      v18 = *(a2 + 7);
    }

    else
    {
      v18 = v15;
    }

    this = TSSSOS::SpecDoubleArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_34:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_35;
      }

LABEL_54:
      *(v3 + 16) |= 0x20u;
      v22 = *(v3 + 72);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277CA3320](v23);
        *(v3 + 72) = v22;
      }

      if (*(a2 + 9))
      {
        v24 = *(a2 + 9);
      }

      else
      {
        v24 = v15;
      }

      this = TSSSOS::SpecDoubleArchive::MergeFrom(v22, v24);
      if ((v5 & 0x40) == 0)
      {
LABEL_36:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_70;
      }

      goto LABEL_62;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_34;
  }

  *(v3 + 16) |= 0x10u;
  v19 = *(v3 + 64);
  if (!v19)
  {
    v20 = *(v3 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277CA3310](v20);
    *(v3 + 64) = v19;
  }

  if (*(a2 + 8))
  {
    v21 = *(a2 + 8);
  }

  else
  {
    v21 = MEMORY[0x277D80C00];
  }

  this = TSSSOS::SpecColorArchive::MergeFrom(v19, v21);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_35:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_36;
  }

LABEL_62:
  *(v3 + 16) |= 0x40u;
  v25 = *(v3 + 80);
  if (!v25)
  {
    v26 = *(v3 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecParagraphStyleArchive>(v26);
    *(v3 + 80) = v25;
  }

  if (*(a2 + 10))
  {
    v27 = *(a2 + 10);
  }

  else
  {
    v27 = &TSWPSOS::_SpecParagraphStyleArchive_default_instance_;
  }

  this = TSWPSOS::SpecParagraphStyleArchive::MergeFrom(v25, v27);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v28 = *(v3 + 88);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277CA3300](v29);
      *(v3 + 88) = v28;
    }

    if (*(a2 + 11))
    {
      v30 = *(a2 + 11);
    }

    else
    {
      v30 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v28, v30);
  }

LABEL_78:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_152;
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

      v31 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecListStyleArchive>(v32);
      *(v3 + 96) = v31;
    }

    if (*(a2 + 12))
    {
      v33 = *(a2 + 12);
    }

    else
    {
      v33 = &TSWPSOS::_SpecListStyleArchive_default_instance_;
    }

    this = TSWPSOS::SpecListStyleArchive::MergeFrom(v31, v33);
    if ((v5 & 0x200) == 0)
    {
LABEL_81:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_81;
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
LABEL_82:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x400u;
  v37 = *(v3 + 112);
  if (!v37)
  {
    v38 = *(v3 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x277CA3300](v38);
    *(v3 + 112) = v37;
  }

  if (*(a2 + 14))
  {
    v39 = *(a2 + 14);
  }

  else
  {
    v39 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v37, v39);
  if ((v5 & 0x800) == 0)
  {
LABEL_83:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x800u;
  v40 = *(v3 + 120);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x277CA3320](v41);
    *(v3 + 120) = v40;
  }

  if (*(a2 + 15))
  {
    v42 = *(a2 + 15);
  }

  else
  {
    v42 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v40, v42);
  if ((v5 & 0x1000) == 0)
  {
LABEL_84:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x1000u;
  v43 = *(v3 + 128);
  if (!v43)
  {
    v44 = *(v3 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecLineSpacingArchive>(v44);
    *(v3 + 128) = v43;
  }

  if (*(a2 + 16))
  {
    v45 = *(a2 + 16);
  }

  else
  {
    v45 = &TSWPSOS::_SpecLineSpacingArchive_default_instance_;
  }

  this = TSWPSOS::SpecLineSpacingArchive::MergeFrom(v43, v45);
  if ((v5 & 0x2000) == 0)
  {
LABEL_85:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_136;
  }

LABEL_128:
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
LABEL_86:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(v3 + 16) |= 0x4000u;
  v49 = *(v3 + 144);
  if (!v49)
  {
    v50 = *(v3 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x277CA3340](v50);
    *(v3 + 144) = v49;
  }

  if (*(a2 + 18))
  {
    v51 = *(a2 + 18);
  }

  else
  {
    v51 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v49, v51);
  if ((v5 & 0x8000) != 0)
  {
LABEL_144:
    *(v3 + 16) |= 0x8000u;
    v52 = *(v3 + 152);
    if (!v52)
    {
      v53 = *(v3 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x277CA3300](v53);
      *(v3 + 152) = v52;
    }

    if (*(a2 + 19))
    {
      v54 = *(a2 + 19);
    }

    else
    {
      v54 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v52, v54);
  }

LABEL_152:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_226;
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

      v55 = MEMORY[0x277CA3340](v56);
      *(v3 + 160) = v55;
    }

    if (*(a2 + 20))
    {
      v57 = *(a2 + 20);
    }

    else
    {
      v57 = MEMORY[0x277D80C18];
    }

    this = TSSSOS::SpecIntegerArchive::MergeFrom(v55, v57);
    if ((v5 & 0x20000) == 0)
    {
LABEL_155:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_178;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_155;
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

    v58 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecRuleOffsetArchive>(v59);
    *(v3 + 168) = v58;
  }

  if (*(a2 + 21))
  {
    v60 = *(a2 + 21);
  }

  else
  {
    v60 = &TSWPSOS::_SpecRuleOffsetArchive_default_instance_;
  }

  this = TSWPSOS::SpecRuleOffsetArchive::MergeFrom(v58, v60);
  if ((v5 & 0x40000) == 0)
  {
LABEL_156:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_186;
  }

LABEL_178:
  *(v3 + 16) |= 0x40000u;
  v61 = *(v3 + 176);
  if (!v61)
  {
    v62 = *(v3 + 8);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = MEMORY[0x277CA3300](v62);
    *(v3 + 176) = v61;
  }

  if (*(a2 + 22))
  {
    v63 = *(a2 + 22);
  }

  else
  {
    v63 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v61, v63);
  if ((v5 & 0x80000) == 0)
  {
LABEL_157:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_194;
  }

LABEL_186:
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
LABEL_158:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_202;
  }

LABEL_194:
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
LABEL_159:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_210;
  }

LABEL_202:
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
LABEL_160:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_218;
  }

LABEL_210:
  *(v3 + 16) |= 0x400000u;
  v73 = *(v3 + 208);
  if (!v73)
  {
    v74 = *(v3 + 8);
    if (v74)
    {
      v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
    }

    v73 = MEMORY[0x277CA3320](v74);
    *(v3 + 208) = v73;
  }

  if (*(a2 + 26))
  {
    v75 = *(a2 + 26);
  }

  else
  {
    v75 = MEMORY[0x277D80C08];
  }

  this = TSSSOS::SpecDoubleArchive::MergeFrom(v73, v75);
  if ((v5 & 0x800000) != 0)
  {
LABEL_218:
    *(v3 + 16) |= 0x800000u;
    v76 = *(v3 + 216);
    if (!v76)
    {
      v77 = *(v3 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x277CA32E0](v77);
      *(v3 + 216) = v76;
    }

    if (*(a2 + 27))
    {
      v78 = *(a2 + 27);
    }

    else
    {
      v78 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v76, v78);
  }

LABEL_226:
  if (!HIBYTE(v5))
  {
    goto LABEL_236;
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

      v80 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecTabsArchive>(v81);
      *(v3 + 224) = v80;
    }

    if (*(a2 + 28))
    {
      v82 = *(a2 + 28);
    }

    else
    {
      v82 = &TSWPSOS::_SpecTabsArchive_default_instance_;
    }

    this = TSWPSOS::SpecTabsArchive::MergeFrom(v80, v82);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_229:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_230;
      }

      goto LABEL_308;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_229;
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

    v83 = MEMORY[0x277CA3340](v84);
    *(v3 + 232) = v83;
  }

  if (*(a2 + 29))
  {
    v85 = *(a2 + 29);
  }

  else
  {
    v85 = MEMORY[0x277D80C18];
  }

  this = TSSSOS::SpecIntegerArchive::MergeFrom(v83, v85);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_316;
  }

LABEL_308:
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
LABEL_231:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_324;
  }

LABEL_316:
  *(v3 + 16) |= 0x8000000u;
  v89 = *(v3 + 248);
  if (!v89)
  {
    v90 = *(v3 + 8);
    if (v90)
    {
      v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
    }

    v89 = MEMORY[0x277CA3300](v90);
    *(v3 + 248) = v89;
  }

  if (*(a2 + 31))
  {
    v91 = *(a2 + 31);
  }

  else
  {
    v91 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v89, v91);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_325;
  }

LABEL_324:
  *(v3 + 256) = *(a2 + 256);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_233:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_234;
    }

LABEL_326:
    *(v3 + 258) = *(a2 + 258);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

LABEL_327:
    *(v3 + 259) = *(a2 + 259);
    goto LABEL_235;
  }

LABEL_325:
  *(v3 + 257) = *(a2 + 257);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_326;
  }

LABEL_234:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_327;
  }

LABEL_235:
  *(v3 + 16) |= v5;
LABEL_236:
  v79 = *(a2 + 5);
  if (!v79)
  {
    goto LABEL_247;
  }

  if (v79)
  {
    *(v3 + 260) = *(a2 + 260);
    if ((v79 & 2) == 0)
    {
LABEL_239:
      if ((v79 & 4) == 0)
      {
        goto LABEL_240;
      }

      goto LABEL_271;
    }
  }

  else if ((v79 & 2) == 0)
  {
    goto LABEL_239;
  }

  *(v3 + 261) = *(a2 + 261);
  if ((v79 & 4) == 0)
  {
LABEL_240:
    if ((v79 & 8) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_272;
  }

LABEL_271:
  *(v3 + 262) = *(a2 + 262);
  if ((v79 & 8) == 0)
  {
LABEL_241:
    if ((v79 & 0x10) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_273;
  }

LABEL_272:
  *(v3 + 263) = *(a2 + 263);
  if ((v79 & 0x10) == 0)
  {
LABEL_242:
    if ((v79 & 0x20) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_274;
  }

LABEL_273:
  *(v3 + 264) = *(a2 + 264);
  if ((v79 & 0x20) == 0)
  {
LABEL_243:
    if ((v79 & 0x40) == 0)
    {
      goto LABEL_244;
    }

LABEL_275:
    *(v3 + 266) = *(a2 + 266);
    if ((v79 & 0x80) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_245;
  }

LABEL_274:
  *(v3 + 265) = *(a2 + 265);
  if ((v79 & 0x40) != 0)
  {
    goto LABEL_275;
  }

LABEL_244:
  if ((v79 & 0x80) != 0)
  {
LABEL_245:
    *(v3 + 267) = *(a2 + 267);
  }

LABEL_246:
  *(v3 + 20) |= v79;
LABEL_247:
  if ((v79 & 0xFF00) == 0)
  {
    goto LABEL_258;
  }

  if ((v79 & 0x100) != 0)
  {
    *(v3 + 268) = *(a2 + 268);
    if ((v79 & 0x200) == 0)
    {
LABEL_250:
      if ((v79 & 0x400) == 0)
      {
        goto LABEL_251;
      }

      goto LABEL_279;
    }
  }

  else if ((v79 & 0x200) == 0)
  {
    goto LABEL_250;
  }

  *(v3 + 269) = *(a2 + 269);
  if ((v79 & 0x400) == 0)
  {
LABEL_251:
    if ((v79 & 0x800) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_280;
  }

LABEL_279:
  *(v3 + 270) = *(a2 + 270);
  if ((v79 & 0x800) == 0)
  {
LABEL_252:
    if ((v79 & 0x1000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_281;
  }

LABEL_280:
  *(v3 + 271) = *(a2 + 271);
  if ((v79 & 0x1000) == 0)
  {
LABEL_253:
    if ((v79 & 0x2000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_282;
  }

LABEL_281:
  *(v3 + 272) = *(a2 + 272);
  if ((v79 & 0x2000) == 0)
  {
LABEL_254:
    if ((v79 & 0x4000) == 0)
    {
      goto LABEL_255;
    }

LABEL_283:
    *(v3 + 274) = *(a2 + 274);
    if ((v79 & 0x8000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_256;
  }

LABEL_282:
  *(v3 + 273) = *(a2 + 273);
  if ((v79 & 0x4000) != 0)
  {
    goto LABEL_283;
  }

LABEL_255:
  if ((v79 & 0x8000) != 0)
  {
LABEL_256:
    *(v3 + 275) = *(a2 + 275);
  }

LABEL_257:
  *(v3 + 20) |= v79;
LABEL_258:
  if ((v79 & 0x7F0000) == 0)
  {
    return this;
  }

  if ((v79 & 0x10000) != 0)
  {
    *(v3 + 276) = *(a2 + 276);
    if ((v79 & 0x20000) == 0)
    {
LABEL_261:
      if ((v79 & 0x40000) == 0)
      {
        goto LABEL_262;
      }

      goto LABEL_287;
    }
  }

  else if ((v79 & 0x20000) == 0)
  {
    goto LABEL_261;
  }

  *(v3 + 277) = *(a2 + 277);
  if ((v79 & 0x40000) == 0)
  {
LABEL_262:
    if ((v79 & 0x80000) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_288;
  }

LABEL_287:
  *(v3 + 278) = *(a2 + 278);
  if ((v79 & 0x80000) == 0)
  {
LABEL_263:
    if ((v79 & 0x100000) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_289;
  }

LABEL_288:
  *(v3 + 279) = *(a2 + 279);
  if ((v79 & 0x100000) == 0)
  {
LABEL_264:
    if ((v79 & 0x200000) == 0)
    {
      goto LABEL_265;
    }

LABEL_290:
    *(v3 + 281) = *(a2 + 281);
    if ((v79 & 0x400000) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_266;
  }

LABEL_289:
  *(v3 + 280) = *(a2 + 280);
  if ((v79 & 0x200000) != 0)
  {
    goto LABEL_290;
  }

LABEL_265:
  if ((v79 & 0x400000) != 0)
  {
LABEL_266:
    *(v3 + 282) = *(a2 + 282);
  }

LABEL_267:
  *(v3 + 20) |= v79;
  return this;
}

uint64_t *TSWPSOS::ParagraphStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::ParagraphStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::ParagraphStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::ParagraphStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSWPSOS::ParagraphStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::ParagraphStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::ParagraphStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::ParagraphStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSWPSOS::CharacterStylePropertyChangeSetArchive::IsInitialized(*(this + 4));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSSSOS::SpecStringArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSSSOS::SpecColorArchive::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSWPSOS::SpecParagraphStyleArchive::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSWPSOS::SpecListStyleArchive::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 13));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 14));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 15));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000) != 0)
    {
      v4 = *(this + 16);
      if ((*(v4 + 16) & 1) != 0 && (*(*(v4 + 24) + 16) & 2) == 0)
      {
        return 0;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 17));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 18));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 19));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10000) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 20));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = TSWPSOS::SpecRuleOffsetArchive::IsInitialized(*(this + 21));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 22));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 23));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 24));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 25));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 26));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 27));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000000) != 0)
    {
      v5 = *(this + 28);
      if ((*(v5 + 16) & 1) != 0 && (*(*(v5 + 24) + 16) & 2) == 0)
      {
        return 0;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 29));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 30));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x8000000) == 0)
    {
      return 1;
    }

    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 31));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

double TSWPSOS::ParagraphStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::ParagraphStylePropertyChangeSetArchive *this, TSWPSOS::ParagraphStylePropertyChangeSetArchive *a2)
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

  return sub_276EE0FE0(this + 8, a2 + 64);
}

TSDSOS::BaseShapeStylePropertyChangeSetArchive *TSWPSOS::ShapeStylePropertyChangeSetArchive::clear_super(TSWPSOS::ShapeStylePropertyChangeSetArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSDSOS::BaseShapeStylePropertyChangeSetArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ShapeStylePropertyChangeSetArchive::clear_shrink_text_to_fit(TSWPSOS::ShapeStylePropertyChangeSetArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::ShapeStylePropertyChangeSetArchive::clear_vertical_alignment(TSWPSOS::ShapeStylePropertyChangeSetArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::ShapeStylePropertyChangeSetArchive::clear_vertical_text(TSWPSOS::ShapeStylePropertyChangeSetArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSWPSOS::ShapeStylePropertyChangeSetArchive *TSWPSOS::ShapeStylePropertyChangeSetArchive::ShapeStylePropertyChangeSetArchive(TSWPSOS::ShapeStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288606370;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 70) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288606370;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 70) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWPSOS::ShapeStylePropertyChangeSetArchive *TSWPSOS::ShapeStylePropertyChangeSetArchive::ShapeStylePropertyChangeSetArchive(TSWPSOS::ShapeStylePropertyChangeSetArchive *this, const TSWPSOS::ShapeStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288606370;
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
  v7 = *(a2 + 20);
  *(this + 42) = *(a2 + 42);
  *(this + 20) = v7;
  return this;
}

void TSWPSOS::ShapeStylePropertyChangeSetArchive::~ShapeStylePropertyChangeSetArchive(TSWPSOS::ShapeStylePropertyChangeSetArchive *this)
{
  sub_276EDB318(this);
  sub_276E4E808(this + 1);
}

{
  TSWPSOS::ShapeStylePropertyChangeSetArchive::~ShapeStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276EDB318(uint64_t *result)
{
  if (result != &TSWPSOS::_ShapeStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277CA2F20]();
      MEMORY[0x277CA3D00](v2, 0x10A1C4047D312EALL);
    }

    v3 = v1[4];
    if (v3)
    {
      TSWPSOS::SpecColumnsArchive::~SpecColumnsArchive(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSWPSOS::SpecPaddingArchive::~SpecPaddingArchive(v4);
      MEMORY[0x277CA3D00]();
    }

    if (v1[6])
    {
      v5 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v5, 0x10A1C40D4912B22);
    }

    if (v1[7])
    {
      v6 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v6, 0x10A1C40D4912B22);
    }

    if (v1[8])
    {
      v7 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v7, 0x10A1C40D4912B22);
    }

    result = v1[9];
    if (result)
    {
      TSWPSOS::SpecParagraphStyleArchive::~SpecParagraphStyleArchive(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWPSOS::ShapeStylePropertyChangeSetArchive::default_instance(TSWPSOS::ShapeStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_ShapeStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::ShapeStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    this = TSDSOS::BaseShapeStylePropertyChangeSetArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSWPSOS::SpecColumnsArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = TSWPSOS::SpecPaddingArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 56));
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 64));
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    this = TSWPSOS::SpecParagraphStyleArchive::Clear(*(v1 + 72));
  }

LABEL_10:
  *(v1 + 80) = 0;
  if ((v2 & 0x1F00) != 0)
  {
    *(v1 + 85) = 0;
    *(v1 + 81) = 0;
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

google::protobuf::internal *TSWPSOS::ShapeStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v61 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v61) & 1) == 0)
  {
    while (1)
    {
      v7 = (v61 + 1);
      v8 = *v61;
      if (*v61 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v61, (v9 - 128));
          v61 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_105;
          }

          v7 = TagFallback;
          v8 = v15;
          goto LABEL_7;
        }

        v7 = (v61 + 2);
      }

      v61 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_82;
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

            v12 = MEMORY[0x277CA32F0](v11);
            LODWORD(v10) = v12;
            *(a1 + 24) = v12;
            v7 = v61;
          }

          v13 = sub_276F57508(a3, v10, v7);
          goto LABEL_89;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 2u;
          v35 = *(a1 + 32);
          if (!v35)
          {
            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v35 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecColumnsArchive>(v36);
            *(a1 + 32) = v35;
            v7 = v61;
          }

          v13 = sub_276F56808(a3, v35, v7);
          goto LABEL_89;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_82;
          }

          v5 |= 0x80u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v53 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            v61 = v53;
            *(a1 + 80) = v54 != 0;
            if (!v53)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_41:
            v61 = v28;
            *(a1 + 80) = v27 != 0;
          }

          goto LABEL_90;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 4u;
          v30 = *(a1 + 40);
          if (!v30)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v30 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecPaddingArchive>(v31);
            *(a1 + 40) = v30;
            v7 = v61;
          }

          v13 = sub_276F568D8(a3, v30, v7);
          goto LABEL_89;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_82;
          }

          v5 |= 0x100u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v49 = google::protobuf::internal::VarintParseSlow64(v7, v18);
            v61 = v49;
            *(a1 + 81) = v50 != 0;
            if (!v49)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_26:
            v61 = v19;
            *(a1 + 81) = v18 != 0;
          }

          goto LABEL_90;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 8u;
          v24 = *(a1 + 48);
          if (v24)
          {
            goto LABEL_66;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v38 = MEMORY[0x277CA3300](v37);
          LODWORD(v24) = v38;
          *(a1 + 48) = v38;
          goto LABEL_65;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_82;
          }

          v5 |= 0x200u;
          v40 = (v7 + 1);
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_71;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v7, v39);
            v61 = v55;
            *(a1 + 82) = v56 != 0;
            if (!v55)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_71:
            v61 = v40;
            *(a1 + 82) = v39 != 0;
          }

          goto LABEL_90;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 0x10u;
          v32 = *(a1 + 56);
          if (!v32)
          {
            v33 = *(a1 + 8);
            if (v33)
            {
              v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = MEMORY[0x277CA3340](v33);
            LODWORD(v32) = v34;
            *(a1 + 56) = v34;
            v7 = v61;
          }

          v13 = sub_276F56188(a3, v32, v7);
          goto LABEL_89;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_82;
          }

          v5 |= 0x400u;
          v46 = (v7 + 1);
          v45 = *v7;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v59 = google::protobuf::internal::VarintParseSlow64(v7, v45);
            v61 = v59;
            *(a1 + 83) = v60 != 0;
            if (!v59)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v46 = (v7 + 2);
LABEL_81:
            v61 = v46;
            *(a1 + 83) = v45 != 0;
          }

          goto LABEL_90;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 0x20u;
          v24 = *(a1 + 64);
          if (v24)
          {
            goto LABEL_66;
          }

          v25 = *(a1 + 8);
          if (v25)
          {
            v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = MEMORY[0x277CA3300](v25);
          LODWORD(v24) = v26;
          *(a1 + 64) = v26;
LABEL_65:
          v7 = v61;
LABEL_66:
          v13 = sub_276F56328(a3, v24, v7);
          goto LABEL_89;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_82;
          }

          v5 |= 0x800u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_76;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v61 = v57;
            *(a1 + 84) = v58 != 0;
            if (!v57)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_76:
            v61 = v43;
            *(a1 + 84) = v42 != 0;
          }

          goto LABEL_90;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 0x40u;
          v16 = *(a1 + 72);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecParagraphStyleArchive>(v17);
            *(a1 + 72) = v16;
            v7 = v61;
          }

          v13 = sub_276F570F8(a3, v16, v7);
          goto LABEL_89;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_82;
          }

          v5 |= 0x1000u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v61 = v51;
            *(a1 + 85) = v52 != 0;
            if (!v51)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_31:
            v61 = v22;
            *(a1 + 85) = v21 != 0;
          }

          goto LABEL_90;
        default:
LABEL_82:
          if (v8)
          {
            v48 = (v8 & 7) == 4;
          }

          else
          {
            v48 = 1;
          }

          if (v48)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_89:
          v61 = v13;
          if (!v13)
          {
LABEL_105:
            v61 = 0;
            goto LABEL_2;
          }

LABEL_90:
          if (sub_276EA4A1C(a3, &v61))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v61;
}

unsigned __int8 *TSWPSOS::ShapeStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::ShapeStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSDSOS::BaseShapeStylePropertyChangeSetArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
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

  a2 = TSWPSOS::SpecColumnsArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 80);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

LABEL_38:
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

  a2 = TSWPSOS::SpecPaddingArchive::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 81);
  *a2 = 40;
  a2[1] = v25;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }

LABEL_51:
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

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v26, v28, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 82);
  *a2 = 56;
  a2[1] = v32;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_64:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 7);
  *a2 = 66;
  v34 = *(v33 + 5);
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v36 = v34 >> 7;
    if (v34 >> 14)
    {
      v35 = a2 + 3;
      do
      {
        *(v35 - 1) = v36 | 0x80;
        v37 = v36 >> 7;
        ++v35;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
      *(v35 - 1) = v37;
    }

    else
    {
      a2[2] = v36;
      v35 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v34;
    v35 = a2 + 2;
  }

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v33, v35, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_77;
  }

LABEL_74:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v39 = *(this + 83);
  *a2 = 72;
  a2[1] = v39;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_87;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(this + 8);
  *a2 = 82;
  v41 = *(v40 + 5);
  if (v41 > 0x7F)
  {
    a2[1] = v41 | 0x80;
    v43 = v41 >> 7;
    if (v41 >> 14)
    {
      v42 = a2 + 3;
      do
      {
        *(v42 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++v42;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(v42 - 1) = v44;
    }

    else
    {
      a2[2] = v43;
      v42 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v41;
    v42 = a2 + 2;
  }

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v40, v42, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_90;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v46 = *(this + 84);
  *a2 = 88;
  a2[1] = v46;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_100;
  }

LABEL_90:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v47 = *(this + 9);
  *a2 = 98;
  v48 = *(v47 + 5);
  if (v48 > 0x7F)
  {
    a2[1] = v48 | 0x80;
    v50 = v48 >> 7;
    if (v48 >> 14)
    {
      v49 = a2 + 3;
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
      a2[2] = v50;
      v49 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v48;
    v49 = a2 + 2;
  }

  a2 = TSWPSOS::SpecParagraphStyleArchive::_InternalSerialize(v47, v49, a3);
  if ((v5 & 0x1000) != 0)
  {
LABEL_100:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v53 = *(this + 85);
    *a2 = 104;
    a2[1] = v53;
    a2 += 2;
  }

LABEL_103:
  v54 = *(this + 1);
  if ((v54 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v54 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::ShapeStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::ShapeStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSDSOS::BaseShapeStylePropertyChangeSetArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v8 = TSWPSOS::SpecColumnsArchive::ByteSizeLong(*(this + 4));
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v9 = TSWPSOS::SpecPaddingArchive::ByteSizeLong(*(this + 5));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 6));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
LABEL_9:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_20:
    v11 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 7));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x20) == 0)
    {
LABEL_10:
      if ((v2 & 0x40) == 0)
      {
LABEL_12:
        v3 += (v2 >> 6) & 2;
        goto LABEL_13;
      }

LABEL_11:
      v5 = TSWPSOS::SpecParagraphStyleArchive::ByteSizeLong(*(this + 9));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_12;
    }

LABEL_21:
    v12 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 8));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  if ((v2 & 0x1F00) != 0)
  {
    v6.i64[0] = 0x200000002;
    v6.i64[1] = 0x200000002;
    v3 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276FA35F0), v6)) + ((v2 >> 11) & 2);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSWPSOS::ShapeStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::ShapeStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWPSOS::ShapeStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWPSOS::ShapeStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::ShapeStylePropertyChangeSetArchive *this, const TSWPSOS::ShapeStylePropertyChangeSetArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
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

        v6 = MEMORY[0x277CA32F0](v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80550];
      }

      TSDSOS::BaseShapeStylePropertyChangeSetArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecColumnsArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWPSOS::_SpecColumnsArchive_default_instance_;
    }

    TSWPSOS::SpecColumnsArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_32:
      v15 = MEMORY[0x277D80BF8];
      if ((v5 & 8) != 0)
      {
        *(this + 4) |= 8u;
        v16 = *(this + 6);
        if (!v16)
        {
          v17 = *(this + 1);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277CA3300](v17);
          *(this + 6) = v16;
        }

        if (*(a2 + 6))
        {
          v18 = *(a2 + 6);
        }

        else
        {
          v18 = v15;
        }

        TSSSOS::SpecBoolArchive::MergeFrom(v16, v18);
        if ((v5 & 0x10) == 0)
        {
LABEL_34:
          if ((v5 & 0x20) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_64;
        }
      }

      else if ((v5 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      *(this + 4) |= 0x10u;
      v19 = *(this + 7);
      if (!v19)
      {
        v20 = *(this + 1);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277CA3340](v20);
        *(this + 7) = v19;
      }

      if (*(a2 + 7))
      {
        v21 = *(a2 + 7);
      }

      else
      {
        v21 = MEMORY[0x277D80C18];
      }

      TSSSOS::SpecIntegerArchive::MergeFrom(v19, v21);
      if ((v5 & 0x20) == 0)
      {
LABEL_35:
        if ((v5 & 0x40) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_72;
      }

LABEL_64:
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
        v24 = v15;
      }

      TSSSOS::SpecBoolArchive::MergeFrom(v22, v24);
      if ((v5 & 0x40) == 0)
      {
LABEL_36:
        if ((v5 & 0x80) == 0)
        {
LABEL_38:
          *(this + 4) |= v5;
          goto LABEL_39;
        }

LABEL_37:
        *(this + 80) = *(a2 + 80);
        goto LABEL_38;
      }

LABEL_72:
      *(this + 4) |= 0x40u;
      v25 = *(this + 9);
      if (!v25)
      {
        v26 = *(this + 1);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecParagraphStyleArchive>(v26);
        *(this + 9) = v25;
      }

      if (*(a2 + 9))
      {
        v27 = *(a2 + 9);
      }

      else
      {
        v27 = &TSWPSOS::_SpecParagraphStyleArchive_default_instance_;
      }

      TSWPSOS::SpecParagraphStyleArchive::MergeFrom(v25, v27);
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

LABEL_24:
    *(this + 4) |= 4u;
    v12 = *(this + 5);
    if (!v12)
    {
      v13 = *(this + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecPaddingArchive>(v13);
      *(this + 5) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSWPSOS::_SpecPaddingArchive_default_instance_;
    }

    TSWPSOS::SpecPaddingArchive::MergeFrom(v12, v14);
    goto LABEL_32;
  }

LABEL_39:
  if ((v5 & 0x1F00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    *(this + 81) = *(a2 + 81);
    if ((v5 & 0x200) == 0)
    {
LABEL_42:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_83;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  *(this + 82) = *(a2 + 82);
  if ((v5 & 0x400) == 0)
  {
LABEL_43:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_44;
    }

LABEL_84:
    *(this + 84) = *(a2 + 84);
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_83:
  *(this + 83) = *(a2 + 83);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_84;
  }

LABEL_44:
  if ((v5 & 0x1000) != 0)
  {
LABEL_45:
    *(this + 85) = *(a2 + 85);
  }

LABEL_46:
  *(this + 4) |= v5;
}

void TSWPSOS::ShapeStylePropertyChangeSetArchive::CopyFrom(TSWPSOS::ShapeStylePropertyChangeSetArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWPSOS::ShapeStylePropertyChangeSetArchive::Clear(this);

    TSWPSOS::ShapeStylePropertyChangeSetArchive::MergeFrom(this, a2);
  }
}

void TSWPSOS::ShapeStylePropertyChangeSetArchive::CopyFrom(TSWPSOS::ShapeStylePropertyChangeSetArchive *this, const TSWPSOS::ShapeStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    TSWPSOS::ShapeStylePropertyChangeSetArchive::Clear(this);

    TSWPSOS::ShapeStylePropertyChangeSetArchive::MergeFrom(this, a2);
  }
}

uint64_t TSWPSOS::ShapeStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::ShapeStylePropertyChangeSetArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSDSOS::BaseShapeStylePropertyChangeSetArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSWPSOS::SpecColumnsArchive::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      v4 = *(this + 5);
      if ((*(v4 + 16) & 1) != 0 && (*(*(v4 + 24) + 16) & 2) == 0)
      {
        return 0;
      }
    }

    if ((v3 & 8) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) == 0)
    {
      return 1;
    }

    result = TSWPSOS::SpecParagraphStyleArchive::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWPSOS::ShapeStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::ShapeStylePropertyChangeSetArchive *this, TSWPSOS::ShapeStylePropertyChangeSetArchive *a2)
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
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  LODWORD(v12) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v12;
  LOWORD(v12) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v12;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::clear_toc_show_page_number(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWPSOS::TOCEntryStylePropertyChangeSetArchive *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::TOCEntryStylePropertyChangeSetArchive(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288606420;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288606420;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  return this;
}

TSWPSOS::TOCEntryStylePropertyChangeSetArchive *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::TOCEntryStylePropertyChangeSetArchive(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this, const TSWPSOS::TOCEntryStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288606420;
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
  *(this + 24) = *(a2 + 24);
  return this;
}

void TSWPSOS::TOCEntryStylePropertyChangeSetArchive::~TOCEntryStylePropertyChangeSetArchive(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this)
{
  if (this != &TSWPSOS::_TOCEntryStylePropertyChangeSetArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::ParagraphStylePropertyChangeSetArchive::~ParagraphStylePropertyChangeSetArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40D4912B22);
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSWPSOS::SpecCharacterStyleArchive::~SpecCharacterStyleArchive(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::TOCEntryStylePropertyChangeSetArchive::~TOCEntryStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::default_instance(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_TOCEntryStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSWPSOS::ParagraphStylePropertyChangeSetArchive::Clear(this[3]);
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

    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSWPSOS::SpecCharacterStyleArchive::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v33) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 1u;
          v24 = *(a1 + 24);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::ParagraphStylePropertyChangeSetArchive>(v25);
            *(a1 + 24) = v24;
            v7 = v33;
          }

          v18 = sub_276F575D8(a3, v24, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 32);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277CA3300](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v33;
          }

          v18 = sub_276F56328(a3, v15, v7);
        }

LABEL_51:
        v33 = v18;
        if (!v18)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_44;
        }

        v5 |= 8u;
        v20 = (v7 + 1);
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_31:
          v33 = v20;
          *(a1 + 48) = v19 != 0;
          goto LABEL_52;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v19);
        v33 = v29;
        *(a1 + 48) = v30 != 0;
        if (!v29)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 4u;
            v22 = *(a1 + 40);
            if (!v22)
            {
              v23 = *(a1 + 8);
              if (v23)
              {
                v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
              }

              v22 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecCharacterStyleArchive>(v23);
              *(a1 + 40) = v22;
              v7 = v33;
            }

            v18 = sub_276F576A8(a3, v22, v7);
            goto LABEL_51;
          }

LABEL_44:
          if (v8)
          {
            v26 = (v8 & 7) == 4;
          }

          else
          {
            v26 = 1;
          }

          if (v26)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_51;
        }

        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_44;
        }

        v5 |= 0x10u;
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
          v33 = v12;
          *(a1 + 49) = v11 != 0;
          goto LABEL_52;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v33 = v31;
        *(a1 + 49) = v32 != 0;
        if (!v31)
        {
LABEL_61:
          v33 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
      if (sub_276EA4A1C(a3, &v33))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::_InternalSerialize(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::ParagraphStylePropertyChangeSetArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
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

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 48);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_30:
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

  a2 = TSWPSOS::SpecCharacterStyleArchive::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 49);
    *a2 = 40;
    a2[1] = v25;
    a2 += 2;
  }

LABEL_43:
  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::TOCEntryStylePropertyChangeSetArchive::ByteSizeLong(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this, uint32x4_t a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    v5 = TSWPSOS::ParagraphStylePropertyChangeSetArchive::ByteSizeLong(*(this + 3), a2);
    v4 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v3 = *(this + 4);
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0x1E) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v6 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 4));
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 4) != 0)
    {
      v7 = TSWPSOS::SpecCharacterStyleArchive::ByteSizeLong(*(this + 5));
      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += ((v3 >> 3) & 2) + ((v3 >> 2) & 2);
  }

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

uint64_t TSWPSOS::TOCEntryStylePropertyChangeSetArchive::MergeFrom(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::TOCEntryStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::TOCEntryStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSWPSOS::TOCEntryStylePropertyChangeSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::ParagraphStylePropertyChangeSetArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWPSOS::_ParagraphStylePropertyChangeSetArchive_default_instance_;
      }

      this = TSWPSOS::ParagraphStylePropertyChangeSetArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
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

      v9 = MEMORY[0x277CA3300](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecCharacterStyleArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSWPSOS::_SpecCharacterStyleArchive_default_instance_;
    }

    this = TSWPSOS::SpecCharacterStyleArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_9:
      *(v3 + 49) = *(a2 + 49);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::TOCEntryStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::TOCEntryStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::TOCEntryStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSWPSOS::TOCEntryStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::TOCEntryStylePropertyChangeSetArchive::Clear(this);

    return TSWPSOS::TOCEntryStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::TOCEntryStylePropertyChangeSetArchive::IsInitialized(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSWPSOS::ParagraphStylePropertyChangeSetArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = TSWPSOS::SpecCharacterStyleArchive::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWPSOS::TOCEntryStylePropertyChangeSetArchive::InternalSwap(TSWPSOS::TOCEntryStylePropertyChangeSetArchive *this, TSWPSOS::TOCEntryStylePropertyChangeSetArchive *a2)
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
  return result;
}

TSP::Reference *TSWPSOS::StyleDiffArchive::clear_style(TSWPSOS::StyleDiffArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::StyleDiffArchive *TSWPSOS::StyleDiffArchive::StyleDiffArchive(TSWPSOS::StyleDiffArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886064D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyleDiffArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2886064D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyleDiffArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWPSOS::StyleDiffArchive *TSWPSOS::StyleDiffArchive::StyleDiffArchive(TSWPSOS::StyleDiffArchive *this, const TSWPSOS::StyleDiffArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886064D0;
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
  return this;
}

void TSWPSOS::StyleDiffArchive::~StyleDiffArchive(TSWPSOS::StyleDiffArchive *this)
{
  sub_276EDDB34(this);
  sub_276E4E808(this + 1);
}

{
  TSWPSOS::StyleDiffArchive::~StyleDiffArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276EDDB34(uint64_t *result)
{
  if (result != &TSWPSOS::_StyleDiffArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSWPSOS::CharacterStylePropertyChangeSetArchive::~CharacterStylePropertyChangeSetArchive(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSWPSOS::ParagraphStylePropertyChangeSetArchive::~ParagraphStylePropertyChangeSetArchive(v4);
      MEMORY[0x277CA3D00]();
    }

    result = v1[6];
    if (result)
    {
      TSWPSOS::ShapeStylePropertyChangeSetArchive::~ShapeStylePropertyChangeSetArchive(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWPSOS::StyleDiffArchive::default_instance(TSWPSOS::StyleDiffArchive *this)
{
  if (atomic_load_explicit(scc_info_StyleDiffArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_StyleDiffArchive_default_instance_;
}

uint64_t *TSWPSOS::StyleDiffArchive::Clear(uint64_t *this)
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
    this = TSWPSOS::CharacterStylePropertyChangeSetArchive::Clear(*(v1 + 32));
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

  this = TSP::Reference::Clear(this[3]);
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
  this = TSWPSOS::ParagraphStylePropertyChangeSetArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSWPSOS::ShapeStylePropertyChangeSetArchive::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::StyleDiffArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while ((sub_276EA4A1C(a3, &v24) & 1) == 0)
  {
    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 40);
        if (!v18)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::ParagraphStylePropertyChangeSetArchive>(v19);
          *(a1 + 40) = v18;
          v5 = v24;
        }

        v12 = sub_276F575D8(a3, v18, v5);
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 8u;
        v13 = *(a1 + 48);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::ShapeStylePropertyChangeSetArchive>(v14);
          *(a1 + 48) = v13;
          v5 = v24;
        }

        v12 = sub_276F57778(a3, v13, v5);
      }
    }

    else if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277CA3250](v16);
        LODWORD(v15) = v17;
        *(a1 + 24) = v17;
        v5 = v24;
      }

      v12 = sub_276F4F9E8(a3, v15, v5);
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_39:
        if (v6)
        {
          v20 = (v6 & 7) == 4;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          *(a3 + 80) = v6 - 1;
          return v24;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v12 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_46;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 32);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::CharacterStylePropertyChangeSetArchive>(v11);
        *(a1 + 32) = v10;
        v5 = v24;
      }

      v12 = sub_276F56A78(a3, v10, v5);
    }

LABEL_46:
    v24 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  return v24;
}

unsigned __int8 *TSWPSOS::StyleDiffArchive::_InternalSerialize(TSWPSOS::StyleDiffArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
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
  v13 = *(v12 + 6);
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

  a2 = TSWPSOS::CharacterStylePropertyChangeSetArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 5);
  *a2 = 26;
  v19 = *(v18 + 6);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSWPSOS::ParagraphStylePropertyChangeSetArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 6);
    *a2 = 34;
    v25 = *(v24 + 5);
    if (v25 > 0x7F)
    {
      a2[1] = v25 | 0x80;
      v27 = v25 >> 7;
      if (v25 >> 14)
      {
        v26 = a2 + 3;
        do
        {
          *(v26 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++v26;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(v26 - 1) = v28;
      }

      else
      {
        a2[2] = v27;
        v26 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v25;
      v26 = a2 + 2;
    }

    a2 = TSWPSOS::ShapeStylePropertyChangeSetArchive::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::StyleDiffArchive::ByteSizeLong(TSWPSOS::StyleDiffArchive *this, uint32x4_t a2)
{
  v3 = *(this + 4);
  if ((v3 & 0xF) == 0)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (v3)
  {
    v5 = TSP::Reference::ByteSizeLong(*(this + 3));
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
    v6 = TSWPSOS::CharacterStylePropertyChangeSetArchive::ByteSizeLong(*(this + 4), a2);
    v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = TSWPSOS::ParagraphStylePropertyChangeSetArchive::ByteSizeLong(*(this + 5), a2);
  v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) != 0)
  {
LABEL_10:
    v7 = TSWPSOS::ShapeStylePropertyChangeSetArchive::ByteSizeLong(*(this + 6));
    v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void TSWPSOS::StyleDiffArchive::MergeFrom(TSWPSOS::StyleDiffArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWPSOS::StyleDiffArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWPSOS::StyleDiffArchive::MergeFrom(TSWPSOS::StyleDiffArchive *this, const TSWPSOS::StyleDiffArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) == 0)
  {
    return;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::CharacterStylePropertyChangeSetArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWPSOS::_CharacterStylePropertyChangeSetArchive_default_instance_;
    }

    TSWPSOS::CharacterStylePropertyChangeSetArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_33;
    }

    goto LABEL_25;
  }

  *(this + 4) |= 1u;
  v6 = *(this + 3);
  if (!v6)
  {
    v7 = *(this + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x277CA3250](v7);
    *(this + 3) = v6;
  }

  if (*(a2 + 3))
  {
    v8 = *(a2 + 3);
  }

  else
  {
    v8 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v6, v8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  *(this + 4) |= 4u;
  v12 = *(this + 5);
  if (!v12)
  {
    v13 = *(this + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::ParagraphStylePropertyChangeSetArchive>(v13);
    *(this + 5) = v12;
  }

  if (*(a2 + 5))
  {
    v14 = *(a2 + 5);
  }

  else
  {
    v14 = &TSWPSOS::_ParagraphStylePropertyChangeSetArchive_default_instance_;
  }

  TSWPSOS::ParagraphStylePropertyChangeSetArchive::MergeFrom(v12, v14);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(this + 4) |= 8u;
    v15 = *(this + 6);
    if (!v15)
    {
      v16 = *(this + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::ShapeStylePropertyChangeSetArchive>(v16);
      *(this + 6) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSWPSOS::_ShapeStylePropertyChangeSetArchive_default_instance_;
    }

    TSWPSOS::ShapeStylePropertyChangeSetArchive::MergeFrom(v15, v17);
  }
}

void TSWPSOS::StyleDiffArchive::CopyFrom(TSWPSOS::StyleDiffArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWPSOS::StyleDiffArchive::Clear(this);

    TSWPSOS::StyleDiffArchive::MergeFrom(this, a2);
  }
}

void TSWPSOS::StyleDiffArchive::CopyFrom(TSWPSOS::StyleDiffArchive *this, const TSWPSOS::StyleDiffArchive *a2)
{
  if (a2 != this)
  {
    TSWPSOS::StyleDiffArchive::Clear(this);

    TSWPSOS::StyleDiffArchive::MergeFrom(this, a2);
  }
}

uint64_t TSWPSOS::StyleDiffArchive::IsInitialized(TSWPSOS::StyleDiffArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSWPSOS::CharacterStylePropertyChangeSetArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSWPSOS::ParagraphStylePropertyChangeSetArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSWPSOS::ShapeStylePropertyChangeSetArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWPSOS::StyleDiffArchive::InternalSwap(TSWPSOS::StyleDiffArchive *this, TSWPSOS::StyleDiffArchive *a2)
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
  return result;
}

uint64_t sub_276EDE78C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE10F0(a1);
}

uint64_t sub_276EDE85C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE11F4(a1);
}

uint64_t sub_276EDE92C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE12F8(a1);
}

TSWPSOS::SpecSetFontFeaturesArchive *sub_276EDE9FC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EE13FC(a1, 1);
  TSWPSOS::SpecSetFontFeaturesArchive::SpecSetFontFeaturesArchive(v2, a1);
  return v2;
}

uint64_t sub_276EDEA88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE1488(a1);
}

uint64_t sub_276EDEB58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE158C(a1);
}

uint64_t sub_276EDEC28(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EE1690(a1, 1);
  *result = &unk_288604B60;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_276EDECC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EE171C(a1, 1);
  *result = &unk_288604C10;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

TSWPSOS::SpecSetListStyleImageDataArrayArchive *sub_276EDED58(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EE17A8(a1, 1);
  TSWPSOS::SpecSetListStyleImageDataArrayArchive::SpecSetListStyleImageDataArrayArchive(v2, a1);
  return v2;
}

TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *sub_276EDEDE4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EE1834(a1, 1);
  TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::SpecSetListStyleListLabelGeometryArrayArchive(v2, a1);
  return v2;
}

uint64_t sub_276EDEE70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EE18C0(a1, 1);
  *result = &unk_288604E20;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_276EDEF08(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EE194C(a1, 1);
  *result = &unk_288604ED0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

TSWPSOS::SpecSetListStyleStringArrayArchive *sub_276EDEFA0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EE19D8(a1, 1);
  TSWPSOS::SpecSetListStyleStringArrayArchive::SpecSetListStyleStringArrayArchive(v2, a1);
  return v2;
}

uint64_t sub_276EDF02C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE1A64(a1);
}

uint64_t sub_276EDF0FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE1B68(a1);
}

uint64_t sub_276EDF1CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE1C6C(a1);
}

uint64_t sub_276EDF29C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE1D70(a1);
}

void *sub_276EDF36C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE1E74(a1);
}

void *sub_276EDF438(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE1F74(a1);
}

void *sub_276EDF504(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2074(a1);
}

void *sub_276EDF5D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2174(a1);
}

void *sub_276EDF69C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2274(a1);
}

void *sub_276EDF768(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2374(a1);
}

void *sub_276EDF834(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2474(a1);
}

void *sub_276EDF900(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2574(a1);
}

void *sub_276EDF9CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2674(a1);
}

void *sub_276EDFA98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2774(a1);
}

void *sub_276EDFB64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2874(a1);
}

void *sub_276EDFC30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2974(a1);
}

void *sub_276EDFCFC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2A74(a1);
}

void *sub_276EDFDC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2B74(a1);
}

void *sub_276EDFE94(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2C74(a1);
}

void *sub_276EDFF60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2D74(a1);
}

void *sub_276EE002C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2E74(a1);
}

uint64_t sub_276EE00F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE2F74(a1);
}

uint64_t sub_276EE01F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE30A4(a1);
}

uint64_t sub_276EE02D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE31BC(a1);
}

uint64_t sub_276EE03AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE32C4(a1);
}

uint64_t sub_276EE0484(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE33D0(a1);
}

uint64_t sub_276EE0570(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE34F0(a1);
}

uint64_t sub_276EE0668(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE361C(a1);
}

uint64_t sub_276EE0760(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE3748(a1);
}

uint64_t sub_276EE083C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE3858(a1);
}

uint64_t sub_276EE0910(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EE3960(a1);
}

double sub_276EE0E00(void *a1, uint64_t a2)
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
  *&result = sub_276EE0E5C(a1 + 10, a2 + 80).n128_u64[0];
  return result;
}

__n128 sub_276EE0E5C(uint64_t *a1, uint64_t a2)
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
  v12 = a1[10];
  v13 = a1[11];
  *(a1 + 5) = *(a2 + 80);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = a1[12];
  v15 = a1[13];
  *(a1 + 6) = *(a2 + 96);
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  v16 = a1[14];
  v17 = a1[15];
  result = *(a2 + 112);
  *(a1 + 7) = result;
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  LODWORD(v16) = *(a1 + 32);
  *(a1 + 32) = *(a2 + 128);
  *(a2 + 128) = v16;
  LOWORD(v16) = *(a1 + 66);
  *(a1 + 66) = *(a2 + 132);
  *(a2 + 132) = v16;
  LOBYTE(v16) = *(a1 + 134);
  *(a1 + 134) = *(a2 + 134);
  *(a2 + 134) = v16;
  return result;
}

double sub_276EE0F10(void *a1, uint64_t a2)
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
  *&result = sub_276EE0F6C(a1 + 10, a2 + 80).n128_u64[0];
  return result;
}

__n128 sub_276EE0F6C(uint64_t *a1, uint64_t a2)
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
  result = *(a2 + 64);
  *(a1 + 4) = result;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  LOWORD(v10) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 80);
  *(a2 + 80) = v10;
  LOBYTE(v10) = *(a1 + 82);
  *(a1 + 82) = *(a2 + 82);
  *(a2 + 82) = v10;
  return result;
}

double sub_276EE0FE0(void *a1, uint64_t a2)
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
  *&result = sub_276EE103C(a1 + 10, a2 + 80).n128_u64[0];
  return result;
}

__n128 sub_276EE103C(uint64_t *a1, uint64_t a2)
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
  v12 = a1[10];
  v13 = a1[11];
  *(a1 + 5) = *(a2 + 80);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = a1[12];
  v15 = a1[13];
  *(a1 + 6) = *(a2 + 96);
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  v16 = a1[14];
  v17 = a1[15];
  result = *(a2 + 112);
  *(a1 + 7) = result;
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  v19 = a1[16];
  a1[16] = *(a2 + 128);
  *(a2 + 128) = v19;
  LOWORD(v19) = *(a1 + 68);
  *(a1 + 68) = *(a2 + 136);
  *(a2 + 136) = v19;
  LOBYTE(v19) = *(a1 + 138);
  *(a1 + 138) = *(a2 + 138);
  *(a2 + 138) = v19;
  return result;
}

uint64_t sub_276EE10F0(uint64_t a1)
{
  v2 = sub_276EE1168(a1, 1);
  *v2 = &unk_288604740;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE1168(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F578A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetCharacterStyleArchive::~SpecSetCharacterStyleArchive);
}

uint64_t sub_276EE11F4(uint64_t a1)
{
  v2 = sub_276EE126C(a1, 1);
  *v2 = &unk_2886047F0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE126C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F578D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetColumnsArchive::~SpecSetColumnsArchive);
}

uint64_t sub_276EE12F8(uint64_t a1)
{
  v2 = sub_276EE1370(a1, 1);
  *v2 = &unk_2886048A0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE1370(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57900(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetDropCapArchive::~SpecSetDropCapArchive);
}

uint64_t sub_276EE13FC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57930(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWPSOS::SpecSetFontFeaturesArchive::~SpecSetFontFeaturesArchive);
}

uint64_t sub_276EE1488(uint64_t a1)
{
  v2 = sub_276EE1500(a1, 1);
  *v2 = &unk_288604A00;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE1500(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57960(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetLineSpacingArchive::~SpecSetLineSpacingArchive);
}

uint64_t sub_276EE158C(uint64_t a1)
{
  v2 = sub_276EE1604(a1, 1);
  *v2 = &unk_288604AB0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE1604(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57990(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetListStyleArchive::~SpecSetListStyleArchive);
}

uint64_t sub_276EE1690(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F579C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWPSOS::SpecSetListStyleBoolArrayArchive::~SpecSetListStyleBoolArrayArchive);
}

uint64_t sub_276EE171C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F579F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWPSOS::SpecSetListStyleFloatArrayArchive::~SpecSetListStyleFloatArrayArchive);
}

uint64_t sub_276EE17A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57A20(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWPSOS::SpecSetListStyleImageDataArrayArchive::~SpecSetListStyleImageDataArrayArchive);
}

uint64_t sub_276EE1834(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57A50(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::~SpecSetListStyleListLabelGeometryArrayArchive);
}

uint64_t sub_276EE18C0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57A80(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::~SpecSetListStyleListLabelTypeArrayArchive);
}

uint64_t sub_276EE194C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57AB0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::~SpecSetListStyleListNumberTypeArrayArchive);
}

uint64_t sub_276EE19D8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57AE0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWPSOS::SpecSetListStyleStringArrayArchive::~SpecSetListStyleStringArrayArchive);
}

uint64_t sub_276EE1A64(uint64_t a1)
{
  v2 = sub_276EE1ADC(a1, 1);
  *v2 = &unk_288605030;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE1ADC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57B10(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetPaddingArchive::~SpecSetPaddingArchive);
}

uint64_t sub_276EE1B68(uint64_t a1)
{
  v2 = sub_276EE1BE0(a1, 1);
  *v2 = &unk_2886050E0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE1BE0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57B40(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetParagraphStyleArchive::~SpecSetParagraphStyleArchive);
}

uint64_t sub_276EE1C6C(uint64_t a1)
{
  v2 = sub_276EE1CE4(a1, 1);
  *v2 = &unk_288605190;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE1CE4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57B70(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetRuleOffsetArchive::~SpecSetRuleOffsetArchive);
}

uint64_t sub_276EE1D70(uint64_t a1)
{
  v2 = sub_276EE1DE8(a1, 1);
  *v2 = &unk_288605240;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EE1DE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57BA0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWPSOS::SpecSetTabsArchive::~SpecSetTabsArchive);
}

void *sub_276EE1E74(uint64_t a1)
{
  v2 = sub_276EE1EE8(a1, 1);
  *v2 = &unk_2886052F0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE1EE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57BD0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecCharacterStyleArchive::~SpecCharacterStyleArchive);
}

void *sub_276EE1F74(uint64_t a1)
{
  v2 = sub_276EE1FE8(a1, 1);
  *v2 = &unk_2886053A0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE1FE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57C00(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecColumnsArchive::~SpecColumnsArchive);
}

void *sub_276EE2074(uint64_t a1)
{
  v2 = sub_276EE20E8(a1, 1);
  *v2 = &unk_288605450;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE20E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57C30(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecDropCapArchive::~SpecDropCapArchive);
}

void *sub_276EE2174(uint64_t a1)
{
  v2 = sub_276EE21E8(a1, 1);
  *v2 = &unk_288605500;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecFontFeaturesArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE21E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57C60(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecFontFeaturesArchive::~SpecFontFeaturesArchive);
}

void *sub_276EE2274(uint64_t a1)
{
  v2 = sub_276EE22E8(a1, 1);
  *v2 = &unk_2886055B0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE22E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57C90(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecLineSpacingArchive::~SpecLineSpacingArchive);
}

void *sub_276EE2374(uint64_t a1)
{
  v2 = sub_276EE23E8(a1, 1);
  *v2 = &unk_288605660;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE23E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57CC0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecListStyleArchive::~SpecListStyleArchive);
}

void *sub_276EE2474(uint64_t a1)
{
  v2 = sub_276EE24E8(a1, 1);
  *v2 = &unk_288605710;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleBoolArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE24E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57CF0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecListStyleBoolArrayArchive::~SpecListStyleBoolArrayArchive);
}

void *sub_276EE2574(uint64_t a1)
{
  v2 = sub_276EE25E8(a1, 1);
  *v2 = &unk_2886057C0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleFloatArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE25E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57D20(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecListStyleFloatArrayArchive::~SpecListStyleFloatArrayArchive);
}

void *sub_276EE2674(uint64_t a1)
{
  v2 = sub_276EE26E8(a1, 1);
  *v2 = &unk_288605870;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleImageDataArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE26E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57D50(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecListStyleImageDataArrayArchive::~SpecListStyleImageDataArrayArchive);
}

void *sub_276EE2774(uint64_t a1)
{
  v2 = sub_276EE27E8(a1, 1);
  *v2 = &unk_288605920;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelGeometryArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE27E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57D80(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::~SpecListStyleListLabelGeometryArrayArchive);
}

void *sub_276EE2874(uint64_t a1)
{
  v2 = sub_276EE28E8(a1, 1);
  *v2 = &unk_2886059D0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE28E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57DB0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecListStyleListLabelTypeArrayArchive::~SpecListStyleListLabelTypeArrayArchive);
}

void *sub_276EE2974(uint64_t a1)
{
  v2 = sub_276EE29E8(a1, 1);
  *v2 = &unk_288605A80;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListNumberTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE29E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57DE0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecListStyleListNumberTypeArrayArchive::~SpecListStyleListNumberTypeArrayArchive);
}

void *sub_276EE2A74(uint64_t a1)
{
  v2 = sub_276EE2AE8(a1, 1);
  *v2 = &unk_288605B30;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleStringArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE2AE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57E10(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecListStyleStringArrayArchive::~SpecListStyleStringArrayArchive);
}

void *sub_276EE2B74(uint64_t a1)
{
  v2 = sub_276EE2BE8(a1, 1);
  *v2 = &unk_288605BE0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE2BE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57E40(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecPaddingArchive::~SpecPaddingArchive);
}

void *sub_276EE2C74(uint64_t a1)
{
  v2 = sub_276EE2CE8(a1, 1);
  *v2 = &unk_288605C90;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE2CE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57E70(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecParagraphStyleArchive::~SpecParagraphStyleArchive);
}

void *sub_276EE2D74(uint64_t a1)
{
  v2 = sub_276EE2DE8(a1, 1);
  *v2 = &unk_288605D40;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE2DE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57EA0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecRuleOffsetArchive::~SpecRuleOffsetArchive);
}

void *sub_276EE2E74(uint64_t a1)
{
  v2 = sub_276EE2EE8(a1, 1);
  *v2 = &unk_288605DF0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EE2EE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57ED0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWPSOS::SpecTabsArchive::~SpecTabsArchive);
}

uint64_t sub_276EE2F74(uint64_t a1)
{
  v2 = sub_276EE3018(a1, 1);
  *v2 = &unk_288605EA0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(scc_info_CharacterStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 303) = 0;
  return v2;
}

uint64_t sub_276EE3018(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57F00(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 312, TSWPSOS::CharacterStylePropertyChangeSetArchive::~CharacterStylePropertyChangeSetArchive);
}

uint64_t sub_276EE30A4(uint64_t a1)
{
  v2 = sub_276EE3130(a1, 1);
  *v2 = &unk_288605F50;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ColumnStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 104) = 0;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276EE3130(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57F3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, TSWPSOS::ColumnStylePropertyChangeSetArchive::~ColumnStylePropertyChangeSetArchive);
}

uint64_t sub_276EE31BC(uint64_t a1)
{
  v2 = sub_276EE3238(a1, 1);
  *v2 = &unk_288606000;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DropCapSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 47) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EE3238(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57F78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWPSOS::DropCapSpecificStylePropertyChangeSetArchive::~DropCapSpecificStylePropertyChangeSetArchive);
}

uint64_t sub_276EE32C4(uint64_t a1)
{
  v2 = sub_276EE3344(a1, 1);
  *v2 = &unk_2886060B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DropCapStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 55) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276EE3344(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57FA8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWPSOS::DropCapStylePropertyChangeSetArchive::~DropCapStylePropertyChangeSetArchive);
}

uint64_t sub_276EE33D0(uint64_t a1)
{
  v2 = sub_276EE3464(a1, 1);
  *v2 = &unk_288606160;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ListStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 133) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276EE3464(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F57FE4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 144, TSWPSOS::ListStylePropertyChangeSetArchive::~ListStylePropertyChangeSetArchive);
}

uint64_t sub_276EE34F0(uint64_t a1)
{
  v2 = sub_276EE3590(a1, 1);
  *v2 = &unk_288606210;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(scc_info_ParagraphSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 271) = 0;
  return v2;
}

uint64_t sub_276EE3590(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F58020(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 280, TSWPSOS::ParagraphSpecificStylePropertyChangeSetArchive::~ParagraphSpecificStylePropertyChangeSetArchive);
}

uint64_t sub_276EE361C(uint64_t a1)
{
  v2 = sub_276EE36BC(a1, 1);
  *v2 = &unk_2886062C0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(scc_info_ParagraphStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 267) = 0u;
  return v2;
}

uint64_t sub_276EE36BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5805C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 288, TSWPSOS::ParagraphStylePropertyChangeSetArchive::~ParagraphStylePropertyChangeSetArchive);
}

uint64_t sub_276EE3748(uint64_t a1)
{
  v2 = sub_276EE37CC(a1, 1);
  *v2 = &unk_288606370;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 70) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276EE37CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F58098(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSWPSOS::ShapeStylePropertyChangeSetArchive::~ShapeStylePropertyChangeSetArchive);
}