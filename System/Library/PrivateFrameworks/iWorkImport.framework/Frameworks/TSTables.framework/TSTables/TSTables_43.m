unsigned __int8 *TST::Cell::_InternalSerialize(TST::Cell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x100000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 46);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 2) != 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_59;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 4);
  *v4 = 26;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    v4[1] = v16 | 0x80;
    v18 = v16 >> 7;
    if (v16 >> 14)
    {
      v17 = v4 + 3;
      do
      {
        *(v17 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++v17;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(v17 - 1) = v19;
    }

    else
    {
      v4[2] = v18;
      v17 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v16;
    v17 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_59:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 5);
  *v4 = 34;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    v4[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = v4 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      v4[2] = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v22;
    v23 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  if ((v6 & 0x400000) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 24);
  *v4 = 41;
  *(v4 + 1) = v27;
  v4 += 9;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_73;
  }

LABEL_72:
  v4 = sub_22150C00C(a3, 6, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x200000) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(this + 188);
  *v4 = 56;
  v4[1] = v28;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_86;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 6);
  *v4 = 74;
  v30 = *(v29 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v29, v31, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_96;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 7);
  *v4 = 82;
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
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_106;
  }

LABEL_96:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(this + 8);
  *v4 = 90;
  v42 = *(v41 + 12);
  if (v42 > 0x7F)
  {
    v4[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = v4 + 3;
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
      v4[2] = v44;
      v43 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v42;
    v43 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v41, v43, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_116;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v47 = *(this + 9);
  *v4 = 98;
  v48 = *(v47 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v47, v49, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_12:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_126;
  }

LABEL_116:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v53 = *(this + 10);
  *v4 = 106;
  v54 = *(v53 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v53, v55, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_136;
  }

LABEL_126:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v59 = *(this + 11);
  *v4 = 114;
  v60 = *(v59 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v59, v61, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_14:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_146;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v65 = *(this + 12);
  *v4 = 386;
  v66 = *(v65 + 12);
  if (v66 > 0x7F)
  {
    v4[2] = v66 | 0x80;
    v68 = v66 >> 7;
    if (v66 >> 14)
    {
      v67 = v4 + 4;
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
      v4[3] = v68;
      v67 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v66;
    v67 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v65, v67, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_15:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

LABEL_156:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v77 = *(this + 50);
    *v4 = 408;
    if (v77 > 0x7F)
    {
      v4[2] = v77 | 0x80;
      v78 = v77 >> 7;
      if (v77 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v78 | 0x80;
          v79 = v78 >> 7;
          ++v4;
          v80 = v78 >> 14;
          v78 >>= 7;
        }

        while (v80);
        *(v4 - 1) = v79;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v4[3] = v78;
        v4 += 4;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_167;
        }
      }
    }

    else
    {
      v4[2] = v77;
      v4 += 3;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_167;
      }
    }

LABEL_17:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_177;
  }

LABEL_146:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(this + 13);
  *v4 = 394;
  v72 = *(v71 + 12);
  if (v72 > 0x7F)
  {
    v4[2] = v72 | 0x80;
    v74 = v72 >> 7;
    if (v72 >> 14)
    {
      v73 = v4 + 4;
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
      v4[3] = v74;
      v73 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v72;
    v73 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v71, v73, a3);
  if ((v6 & 0x800000) != 0)
  {
    goto LABEL_156;
  }

LABEL_16:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_17;
  }

LABEL_167:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v81 = *(this + 14);
  *v4 = 418;
  v82 = *(v81 + 5);
  if (v82 > 0x7F)
  {
    v4[2] = v82 | 0x80;
    v84 = v82 >> 7;
    if (v82 >> 14)
    {
      v83 = v4 + 4;
      do
      {
        *(v83 - 1) = v84 | 0x80;
        v85 = v84 >> 7;
        ++v83;
        v86 = v84 >> 14;
        v84 >>= 7;
      }

      while (v86);
      *(v83 - 1) = v85;
    }

    else
    {
      v4[3] = v84;
      v83 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v82;
    v83 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v81, v83, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_18:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_187;
  }

LABEL_177:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v87 = *(this + 15);
  *v4 = 426;
  v88 = *(v87 + 5);
  if (v88 > 0x7F)
  {
    v4[2] = v88 | 0x80;
    v90 = v88 >> 7;
    if (v88 >> 14)
    {
      v89 = v4 + 4;
      do
      {
        *(v89 - 1) = v90 | 0x80;
        v91 = v90 >> 7;
        ++v89;
        v92 = v90 >> 14;
        v90 >>= 7;
      }

      while (v92);
      *(v89 - 1) = v91;
    }

    else
    {
      v4[3] = v90;
      v89 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v88;
    v89 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v87, v89, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_19:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_197:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v99 = *(this + 51);
    *v4 = 448;
    if (v99 > 0x7F)
    {
      v4[2] = v99 | 0x80;
      v100 = v99 >> 7;
      if (v99 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v100 | 0x80;
          v101 = v100 >> 7;
          ++v4;
          v102 = v100 >> 14;
          v100 >>= 7;
        }

        while (v102);
        *(v4 - 1) = v101;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_208;
        }
      }

      else
      {
        v4[3] = v100;
        v4 += 4;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_208;
        }
      }
    }

    else
    {
      v4[2] = v99;
      v4 += 3;
      if ((v6 & 0x4000) != 0)
      {
        goto LABEL_208;
      }
    }

LABEL_21:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_218;
  }

LABEL_187:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v93 = *(this + 16);
  *v4 = 442;
  v94 = *(v93 + 5);
  if (v94 > 0x7F)
  {
    v4[2] = v94 | 0x80;
    v96 = v94 >> 7;
    if (v94 >> 14)
    {
      v95 = v4 + 4;
      do
      {
        *(v95 - 1) = v96 | 0x80;
        v97 = v96 >> 7;
        ++v95;
        v98 = v96 >> 14;
        v96 >>= 7;
      }

      while (v98);
      *(v95 - 1) = v97;
    }

    else
    {
      v4[3] = v96;
      v95 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v94;
    v95 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v93, v95, a3);
  if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_197;
  }

LABEL_20:
  if ((v6 & 0x4000) == 0)
  {
    goto LABEL_21;
  }

LABEL_208:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v103 = *(this + 17);
  *v4 = 458;
  v104 = *(v103 + 5);
  if (v104 > 0x7F)
  {
    v4[2] = v104 | 0x80;
    v106 = v104 >> 7;
    if (v104 >> 14)
    {
      v105 = v4 + 4;
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
      v4[3] = v106;
      v105 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v104;
    v105 = v4 + 3;
  }

  v4 = TST::ImportWarningSetArchive::_InternalSerialize(v103, v105, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_22:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_228;
  }

LABEL_218:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v109 = *(this + 18);
  *v4 = 466;
  v110 = *(v109 + 5);
  if (v110 > 0x7F)
  {
    v4[2] = v110 | 0x80;
    v112 = v110 >> 7;
    if (v110 >> 14)
    {
      v111 = v4 + 4;
      do
      {
        *(v111 - 1) = v112 | 0x80;
        v113 = v112 >> 7;
        ++v111;
        v114 = v112 >> 14;
        v112 >>= 7;
      }

      while (v114);
      *(v111 - 1) = v113;
    }

    else
    {
      v4[3] = v112;
      v111 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v110;
    v111 = v4 + 3;
  }

  v4 = TSK::CustomFormatArchive::_InternalSerialize(v109, v111, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_23:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_238;
  }

LABEL_228:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v115 = *(this + 19);
  *v4 = 474;
  v116 = *(v115 + 5);
  if (v116 > 0x7F)
  {
    v4[2] = v116 | 0x80;
    v118 = v116 >> 7;
    if (v116 >> 14)
    {
      v117 = v4 + 4;
      do
      {
        *(v117 - 1) = v118 | 0x80;
        v119 = v118 >> 7;
        ++v117;
        v120 = v118 >> 14;
        v118 >>= 7;
      }

      while (v120);
      *(v117 - 1) = v119;
    }

    else
    {
      v4[3] = v118;
      v117 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v116;
    v117 = v4 + 3;
  }

  v4 = TST::CellBorderArchive::_InternalSerialize(v115, v117, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_24:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_248:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v127 = *(this + 52);
    *v4 = 488;
    if (v127 > 0x7F)
    {
      v4[2] = v127 | 0x80;
      v128 = v127 >> 7;
      if (v127 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v128 | 0x80;
          v129 = v128 >> 7;
          ++v4;
          v130 = v128 >> 14;
          v128 >>= 7;
        }

        while (v130);
        *(v4 - 1) = v129;
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_259;
        }
      }

      else
      {
        v4[3] = v128;
        v4 += 4;
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_259;
        }
      }
    }

    else
    {
      v4[2] = v127;
      v4 += 3;
      if ((v6 & 0x40000) != 0)
      {
        goto LABEL_259;
      }
    }

LABEL_26:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_269;
  }

LABEL_238:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v121 = *(this + 20);
  *v4 = 482;
  v122 = *(v121 + 5);
  if (v122 > 0x7F)
  {
    v4[2] = v122 | 0x80;
    v124 = v122 >> 7;
    if (v122 >> 14)
    {
      v123 = v4 + 4;
      do
      {
        *(v123 - 1) = v124 | 0x80;
        v125 = v124 >> 7;
        ++v123;
        v126 = v124 >> 14;
        v124 >>= 7;
      }

      while (v126);
      *(v123 - 1) = v125;
    }

    else
    {
      v4[3] = v124;
      v123 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v122;
    v123 = v4 + 3;
  }

  v4 = TST::CellSpecArchive::_InternalSerialize(v121, v123, a3);
  if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_25:
  if ((v6 & 0x40000) == 0)
  {
    goto LABEL_26;
  }

LABEL_259:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v131 = *(this + 21);
  *v4 = 498;
  v132 = *(v131 + 12);
  if (v132 > 0x7F)
  {
    v4[2] = v132 | 0x80;
    v134 = v132 >> 7;
    if (v132 >> 14)
    {
      v133 = v4 + 4;
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
      v4[3] = v134;
      v133 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v132;
    v133 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v131, v133, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_279;
  }

LABEL_269:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v137 = *(this + 22);
  *v4 = 506;
  v138 = *(v137 + 12);
  if (v138 > 0x7F)
  {
    v4[2] = v138 | 0x80;
    v140 = v138 >> 7;
    if (v138 >> 14)
    {
      v139 = v4 + 4;
      do
      {
        *(v139 - 1) = v140 | 0x80;
        v141 = v140 >> 7;
        ++v139;
        v142 = v140 >> 14;
        v140 >>= 7;
      }

      while (v142);
      *(v139 - 1) = v141;
    }

    else
    {
      v4[3] = v140;
      v139 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v138;
    v139 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v137, v139, a3);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_29;
  }

LABEL_279:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v143 = *(this + 27);
  *v4 = 640;
  if (v143 > 0x7F)
  {
    v4[2] = v143 | 0x80;
    v144 = v143 >> 7;
    if (v143 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v144 | 0x80;
        v145 = v144 >> 7;
        ++v4;
        v146 = v144 >> 14;
        v144 >>= 7;
      }

      while (v146);
      *(v4 - 1) = v145;
      if ((v6 & 0x8000000) == 0)
      {
        goto LABEL_290;
      }
    }

    else
    {
      v4[3] = v144;
      v4 += 4;
      if ((v6 & 0x8000000) == 0)
      {
        goto LABEL_290;
      }
    }
  }

  else
  {
    v4[2] = v143;
    v4 += 3;
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_290;
    }
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 28);
  *v4 = 648;
  if (v7 > 0x7F)
  {
    v4[2] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[3] = v9;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v7;
    v4 += 3;
  }

LABEL_290:
  v147 = *(this + 1);
  if ((v147 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v147 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::Cell::ByteSizeLong(TST::Cell *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x100000) != 0)
  {
    v4 = *(this + 46);
    if (v4 < 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  if (!*(this + 4))
  {
    goto LABEL_16;
  }

  if (v2)
  {
    v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_9:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_50;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

  v12 = TSP::Reference::ByteSizeLong(*(this + 4));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = TSP::Reference::ByteSizeLong(*(this + 5));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  v14 = TSK::FormatStructArchive::ByteSizeLong(*(this + 6));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_53:
    v16 = TSK::FormatStructArchive::ByteSizeLong(*(this + 8));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_14:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_52:
  v15 = TSP::Reference::ByteSizeLong(*(this + 7));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_13:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_54:
  v17 = TSK::FormatStructArchive::ByteSizeLong(*(this + 9));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_15:
    v5 = TSK::FormatStructArchive::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = TSK::FormatStructArchive::ByteSizeLong(*(this + 11));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_19:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_58;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v19 = TSK::FormatStructArchive::ByteSizeLong(*(this + 12));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_20:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = TSK::FormatStructArchive::ByteSizeLong(*(this + 13));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v21 = TSP::Reference::ByteSizeLong(*(this + 14));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = TSP::Reference::ByteSizeLong(*(this + 15));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_23:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = TSP::Reference::ByteSizeLong(*(this + 16));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_24:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_62:
  v24 = TST::ImportWarningSetArchive::ByteSizeLong(*(this + 17));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_25:
    v6 = TSK::CustomFormatArchive::ByteSizeLong(*(this + 18));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  if ((v2 & 0xF0000) == 0)
  {
    goto LABEL_32;
  }

  if ((v2 & 0x10000) != 0)
  {
    v25 = TST::CellBorderArchive::ByteSizeLong(*(this + 19));
    v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_29:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

LABEL_66:
      v27 = TSK::FormatStructArchive::ByteSizeLong(*(this + 21));
      v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v26 = TST::CellSpecArchive::ByteSizeLong(*(this + 20));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) != 0)
  {
    goto LABEL_66;
  }

LABEL_30:
  if ((v2 & 0x80000) != 0)
  {
LABEL_31:
    v7 = TSK::FormatStructArchive::ByteSizeLong(*(this + 22));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_32:
  if ((v2 & 0xE00000) != 0)
  {
    v3 += (v2 & 0x400000) != 0 ? ((v2 >> 20) & 2) + 9 : (v2 >> 20) & 2;
    if ((v2 & 0x800000) != 0)
    {
      v3 += ((9 * (__clz(*(this + 50) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v2 & 0xF000000) == 0)
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) == 0)
  {
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_69:
    v3 += ((9 * (__clz(*(this + 52) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x4000000) == 0)
    {
LABEL_42:
      if ((v2 & 0x8000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_70;
  }

  v3 += ((9 * (__clz(*(this + 51) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_41:
  if ((v2 & 0x4000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_70:
  v3 += ((9 * (__clz(*(this + 27) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_43:
    v3 += ((9 * (__clz(*(this + 28) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_44:
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

uint64_t TST::Cell::MergeFrom(TST::Cell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::Cell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::Cell::MergeFrom(uint64_t this, const TST::Cell *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
  }

  v6 = MEMORY[0x277D80A18];
  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v7 = *(v3 + 32);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA0390](v8);
      *(v3 + 32) = v7;
    }

    if (*(a2 + 4))
    {
      v9 = *(a2 + 4);
    }

    else
    {
      v9 = v6;
    }

    this = TSP::Reference::MergeFrom(v7, v9);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0390](v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 5))
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::Reference::MergeFrom(v10, v12);
  }

  v13 = MEMORY[0x277D80740];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v14 = *(v3 + 48);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x223DA02D0](v15);
      *(v3 + 48) = v14;
    }

    if (*(a2 + 6))
    {
      v16 = *(a2 + 6);
    }

    else
    {
      v16 = v13;
    }

    this = TSK::FormatStructArchive::MergeFrom(v14, v16);
    if ((v5 & 0x10) == 0)
    {
LABEL_26:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_46:
      *(v3 + 16) |= 0x20u;
      v20 = *(v3 + 64);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x223DA02D0](v21);
        *(v3 + 64) = v20;
      }

      if (*(a2 + 8))
      {
        v22 = *(a2 + 8);
      }

      else
      {
        v22 = v13;
      }

      this = TSK::FormatStructArchive::MergeFrom(v20, v22);
      if ((v5 & 0x40) == 0)
      {
LABEL_28:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_62;
      }

      goto LABEL_54;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  *(v3 + 16) |= 0x10u;
  v17 = *(v3 + 56);
  if (!v17)
  {
    v18 = *(v3 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x223DA0390](v18);
    *(v3 + 56) = v17;
  }

  if (*(a2 + 7))
  {
    v19 = *(a2 + 7);
  }

  else
  {
    v19 = v6;
  }

  this = TSP::Reference::MergeFrom(v17, v19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_27:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v23 = *(v3 + 72);
  if (!v23)
  {
    v24 = *(v3 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = MEMORY[0x223DA02D0](v24);
    *(v3 + 72) = v23;
  }

  if (*(a2 + 9))
  {
    v25 = *(a2 + 9);
  }

  else
  {
    v25 = v13;
  }

  this = TSK::FormatStructArchive::MergeFrom(v23, v25);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v26 = *(v3 + 80);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x223DA02D0](v27);
      *(v3 + 80) = v26;
    }

    if (*(a2 + 10))
    {
      v28 = *(a2 + 10);
    }

    else
    {
      v28 = v13;
    }

    this = TSK::FormatStructArchive::MergeFrom(v26, v28);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_144;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v29 = *(v3 + 88);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x223DA02D0](v30);
      *(v3 + 88) = v29;
    }

    if (*(a2 + 11))
    {
      v31 = *(a2 + 11);
    }

    else
    {
      v31 = MEMORY[0x277D80740];
    }

    this = TSK::FormatStructArchive::MergeFrom(v29, v31);
    if ((v5 & 0x200) == 0)
    {
LABEL_73:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_96;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(v3 + 16) |= 0x200u;
  v32 = *(v3 + 96);
  if (!v32)
  {
    v33 = *(v3 + 8);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x223DA02D0](v33);
    *(v3 + 96) = v32;
  }

  if (*(a2 + 12))
  {
    v34 = *(a2 + 12);
  }

  else
  {
    v34 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v32, v34);
  if ((v5 & 0x400) == 0)
  {
LABEL_74:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

LABEL_96:
  *(v3 + 16) |= 0x400u;
  v35 = *(v3 + 104);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x223DA02D0](v36);
    *(v3 + 104) = v35;
  }

  if (*(a2 + 13))
  {
    v37 = *(a2 + 13);
  }

  else
  {
    v37 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v35, v37);
  if ((v5 & 0x800) == 0)
  {
LABEL_75:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x800u;
  v38 = *(v3 + 112);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x223DA0390](v39);
    *(v3 + 112) = v38;
  }

  if (*(a2 + 14))
  {
    v40 = *(a2 + 14);
  }

  else
  {
    v40 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v38, v40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_76:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x1000u;
  v41 = *(v3 + 120);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x223DA0390](v42);
    *(v3 + 120) = v41;
  }

  if (*(a2 + 15))
  {
    v43 = *(a2 + 15);
  }

  else
  {
    v43 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v41, v43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_77:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x2000u;
  v44 = *(v3 + 128);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x223DA0390](v45);
    *(v3 + 128) = v44;
  }

  if (*(a2 + 16))
  {
    v46 = *(a2 + 16);
  }

  else
  {
    v46 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v44, v46);
  if ((v5 & 0x4000) == 0)
  {
LABEL_78:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x4000u;
  v47 = *(v3 + 136);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v48);
    *(v3 + 136) = v47;
  }

  if (*(a2 + 17))
  {
    v49 = *(a2 + 17);
  }

  else
  {
    v49 = &TST::_ImportWarningSetArchive_default_instance_;
  }

  this = TST::ImportWarningSetArchive::MergeFrom(v47, v49);
  if ((v5 & 0x8000) != 0)
  {
LABEL_136:
    *(v3 + 16) |= 0x8000u;
    v50 = *(v3 + 144);
    if (!v50)
    {
      v51 = *(v3 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x223DA02C0](v51);
      *(v3 + 144) = v50;
    }

    if (*(a2 + 18))
    {
      v52 = *(a2 + 18);
    }

    else
    {
      v52 = MEMORY[0x277D80730];
    }

    this = TSK::CustomFormatArchive::MergeFrom(v50, v52);
  }

LABEL_144:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_155;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v53 = *(v3 + 152);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = google::protobuf::Arena::CreateMaybeMessage<TST::CellBorderArchive>(v54);
      *(v3 + 152) = v53;
    }

    if (*(a2 + 19))
    {
      v55 = *(a2 + 19);
    }

    else
    {
      v55 = TST::_CellBorderArchive_default_instance_;
    }

    this = TST::CellBorderArchive::MergeFrom(v53, v55);
    if ((v5 & 0x20000) == 0)
    {
LABEL_147:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_179;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_147;
  }

  *(v3 + 16) |= 0x20000u;
  v56 = *(v3 + 160);
  if (!v56)
  {
    v57 = *(v3 + 8);
    if (v57)
    {
      v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    }

    v56 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v57);
    *(v3 + 160) = v56;
  }

  if (*(a2 + 20))
  {
    v58 = *(a2 + 20);
  }

  else
  {
    v58 = TST::_CellSpecArchive_default_instance_;
  }

  this = TST::CellSpecArchive::MergeFrom(v56, v58);
  if ((v5 & 0x40000) == 0)
  {
LABEL_148:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_187;
  }

LABEL_179:
  *(v3 + 16) |= 0x40000u;
  v59 = *(v3 + 168);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x223DA02D0](v60);
    *(v3 + 168) = v59;
  }

  if (*(a2 + 21))
  {
    v61 = *(a2 + 21);
  }

  else
  {
    v61 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v59, v61);
  if ((v5 & 0x80000) == 0)
  {
LABEL_149:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_195;
  }

LABEL_187:
  *(v3 + 16) |= 0x80000u;
  v62 = *(v3 + 176);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x223DA02D0](v63);
    *(v3 + 176) = v62;
  }

  if (*(a2 + 22))
  {
    v64 = *(a2 + 22);
  }

  else
  {
    v64 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v62, v64);
  if ((v5 & 0x100000) == 0)
  {
LABEL_150:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_196;
  }

LABEL_195:
  *(v3 + 184) = *(a2 + 46);
  if ((v5 & 0x200000) == 0)
  {
LABEL_151:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_152;
    }

LABEL_197:
    *(v3 + 192) = *(a2 + 24);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_196:
  *(v3 + 188) = *(a2 + 188);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_197;
  }

LABEL_152:
  if ((v5 & 0x800000) != 0)
  {
LABEL_153:
    *(v3 + 200) = *(a2 + 50);
  }

LABEL_154:
  *(v3 + 16) |= v5;
LABEL_155:
  if ((v5 & 0xF000000) == 0)
  {
    return this;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 204) = *(a2 + 51);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_158:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_159;
      }

LABEL_201:
      *(v3 + 216) = *(a2 + 27);
      if ((v5 & 0x8000000) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_160;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_158;
  }

  *(v3 + 208) = *(a2 + 52);
  if ((v5 & 0x4000000) != 0)
  {
    goto LABEL_201;
  }

LABEL_159:
  if ((v5 & 0x8000000) != 0)
  {
LABEL_160:
    *(v3 + 224) = *(a2 + 28);
  }

LABEL_161:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t TST::CellBorderArchive::MergeFrom(uint64_t this, const TST::CellBorderArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = MEMORY[0x277D804A0];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x223DA0290](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSD::StrokeArchive::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0290](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = v6;
    }

    this = TSD::StrokeArchive::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x223DA0290](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = v6;
    }

    this = TSD::StrokeArchive::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0290](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v6;
    }

    this = TSD::StrokeArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(v3 + 60) = *(a2 + 15);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_12:
      *(v3 + 68) = *(a2 + 17);
      goto LABEL_13;
    }

LABEL_49:
    *(v3 + 64) = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

uint64_t *TST::Cell::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::Cell::Clear(this);

    return TST::Cell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::Cell::CopyFrom(uint64_t *this, const TST::Cell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::Cell::Clear(this);

    return TST::Cell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::Cell::IsInitialized(TST::Cell *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x100000) == 0)
  {
    return 0;
  }

  if ((v1 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x100) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x200) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x400) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x800) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x1000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x2000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x4000) != 0)
  {
    result = TST::ImportWarningSetArchive::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x8000) != 0)
  {
    result = TSK::CustomFormatArchive::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10000) != 0)
  {
    result = TST::CellBorderArchive::IsInitialized(*(this + 19));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20000) != 0)
  {
    result = TST::CellSpecArchive::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40000) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 21));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80000) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(this + 22));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TST::CellBorderArchive::IsInitialized(TST::CellBorderArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 5));
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

  result = TSD::StrokeArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

double TST::Cell::InternalSwap(TST::Cell *this, TST::Cell *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  v7 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v6;
  *(a2 + 5) = v7;

  *&result = sub_22167EA88(this + 6, a2 + 48).n128_u64[0];
  return result;
}

TST::MergeRegionMapArchive *TST::MergeRegionMapArchive::MergeRegionMapArchive(TST::MergeRegionMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B43C8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_MergeRegionMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::MergeRegionMapArchive *TST::MergeRegionMapArchive::MergeRegionMapArchive(TST::MergeRegionMapArchive *this, const TST::MergeRegionMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B43C8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167E500(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::MergeRegionMapArchive::~MergeRegionMapArchive(TST::MergeRegionMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167E47C(this + 2);
}

{
  TST::MergeRegionMapArchive::~MergeRegionMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::MergeRegionMapArchive::default_instance(TST::MergeRegionMapArchive *this)
{
  if (atomic_load_explicit(scc_info_MergeRegionMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_MergeRegionMapArchive_default_instance_;
}

uint64_t *TST::MergeRegionMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellRange::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::MergeRegionMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_221701AA8(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TST::MergeRegionMapArchive::_InternalSerialize(TST::MergeRegionMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
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

      a2 = TST::CellRange::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::MergeRegionMapArchive::ByteSizeLong(TST::MergeRegionMapArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TST::CellRange::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TST::MergeRegionMapArchive::MergeFrom(TST::MergeRegionMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::MergeRegionMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::MergeRegionMapArchive::MergeFrom(uint64_t this, const TST::MergeRegionMapArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_22167E500(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TST::MergeRegionMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MergeRegionMapArchive::Clear(this);

    return TST::MergeRegionMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::MergeRegionMapArchive::CopyFrom(uint64_t *this, const TST::MergeRegionMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MergeRegionMapArchive::Clear(this);

    return TST::MergeRegionMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::MergeRegionMapArchive::InternalSwap(TST::MergeRegionMapArchive *this, TST::MergeRegionMapArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TST::CellMapArchive::clear_cell_tiles(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t *TST::CellMapArchive::clear_expanded_cell_ids(uint64_t *this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[17] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 128) = 0;
  }

  return this;
}

uint64_t TST::CellMapArchive::clear_merge_uid_ranges(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDRectArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TST::CellMapArchive::clear_unmerge_uid_ranges(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDRectArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

TST::CellMapArchive *TST::CellMapArchive::CellMapArchive(TST::CellMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4478;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 15) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (atomic_load_explicit(scc_info_CellMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 18) = 0;
  *(this + 38) = 16843008;
  return this;
}

void sub_22160FD78(_Unwind_Exception *a1)
{
  sub_2215685C4(v5);
  sub_22167EB4C(v4);
  sub_22167E5C0(v3);
  sub_22167E5C0(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

TST::CellMapArchive *TST::CellMapArchive::CellMapArchive(TST::CellMapArchive *this, const TST::CellMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4478;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_221568514(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_22167E644(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_22167E644(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_22167EBD0(this + 96, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = *(this + 14);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    sub_2215686E0(this + 120, v27, (v26 + 8), v25, **(this + 17) - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = *(this + 17);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 1);
  if (v30)
  {
    sub_22156734C(v4, (v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 18) = 0;
  *(this + 38) = *(a2 + 38);
  return this;
}

void sub_22161009C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C40643BB50ELL);
  sub_2215685C4(v6);
  sub_22167EB4C(v5);
  sub_22167E5C0(v4);
  sub_22167E5C0(v2);
  sub_2216E381C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::CellMapArchive::~CellMapArchive(TST::CellMapArchive *this)
{
  if (this != &TST::_CellMapArchive_default_instance_)
  {
    v2 = *(this + 18);
    if (v2)
    {
      TST::CellUIDListArchive::~CellUIDListArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2215685C4(this + 15);
  sub_22167EB4C(this + 12);
  sub_22167E5C0(this + 9);
  sub_22167E5C0(this + 6);
  sub_2216E381C(this + 3);
}

{
  TST::CellMapArchive::~CellMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellMapArchive::default_instance(TST::CellMapArchive *this)
{
  if (atomic_load_explicit(scc_info_CellMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellMapArchive_default_instance_;
}

uint64_t *TST::CellMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUIDRectArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::UUIDRectArchive::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      this = TST::MergeOperationArchive::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      this = TSCE::CellCoordinateArchive::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 16);
  if (v17)
  {
    this = TST::CellUIDListArchive::Clear(*(v1 + 144));
  }

  if ((v17 & 0x1E) != 0)
  {
    *(v1 + 152) = 16843008;
  }

  v19 = *(v1 + 8);
  v18 = v1 + 8;
  *(v18 + 8) = 0;
  if (v19)
  {

    return sub_221567398(v18);
  }

  return this;
}

google::protobuf::internal *TST::CellMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v81 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v81) & 1) == 0)
  {
    while (1)
    {
      v7 = (v81 + 1);
      v8 = *v81;
      if ((*v81 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v81, (v9 - 128));
      v81 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_135;
      }

      v7 = TagFallback;
      v8 = v36;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 9)
      {
        if (v8 >> 3 <= 0xB)
        {
          if (v10 == 10)
          {
            if (v8 != 80)
            {
              goto LABEL_116;
            }

            v5 |= 4u;
            v47 = (v7 + 1);
            v46 = *v7;
            if ((v46 & 0x8000000000000000) == 0)
            {
              goto LABEL_78;
            }

            v48 = *v47;
            v46 = (v48 << 7) + v46 - 128;
            if ((v48 & 0x80000000) == 0)
            {
              v47 = (v7 + 2);
LABEL_78:
              v81 = v47;
              *(a1 + 153) = v46 != 0;
              goto LABEL_124;
            }

            v77 = google::protobuf::internal::VarintParseSlow64(v7, v46);
            v81 = v77;
            *(a1 + 153) = v78 != 0;
            if (!v77)
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v10 != 11 || v8 != 88)
            {
              goto LABEL_116;
            }

            v5 |= 8u;
            v33 = (v7 + 1);
            v32 = *v7;
            if ((v32 & 0x8000000000000000) == 0)
            {
              goto LABEL_58;
            }

            v34 = *v33;
            v32 = (v34 << 7) + v32 - 128;
            if ((v34 & 0x80000000) == 0)
            {
              v33 = (v7 + 2);
LABEL_58:
              v81 = v33;
              *(a1 + 154) = v32 != 0;
              goto LABEL_124;
            }

            v75 = google::protobuf::internal::VarintParseSlow64(v7, v32);
            v81 = v75;
            *(a1 + 154) = v76 != 0;
            if (!v75)
            {
              goto LABEL_135;
            }
          }
        }

        else
        {
          if (v10 != 12)
          {
            if (v10 != 13)
            {
              if (v10 != 14 || v8 != 114)
              {
                goto LABEL_116;
              }

              v20 = (v7 - 1);
              while (2)
              {
                v21 = (v20 + 1);
                v81 = (v20 + 1);
                v22 = *(a1 + 136);
                if (!v22)
                {
LABEL_32:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v22 = *(a1 + 136);
                  v23 = *v22;
                  goto LABEL_33;
                }

                v27 = *(a1 + 128);
                v23 = *v22;
                if (v27 >= *v22)
                {
                  if (v23 == *(a1 + 132))
                  {
                    goto LABEL_32;
                  }

LABEL_33:
                  *v22 = v23 + 1;
                  v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(a1 + 120));
                  v25 = *(a1 + 128);
                  v26 = *(a1 + 136) + 8 * v25;
                  *(a1 + 128) = v25 + 1;
                  *(v26 + 8) = v24;
                  v21 = v81;
                }

                else
                {
                  *(a1 + 128) = v27 + 1;
                  v24 = *&v22[2 * v27 + 2];
                }

                v20 = sub_2216F806C(a3, v24, v21);
                v81 = v20;
                if (!v20)
                {
                  goto LABEL_135;
                }

                if (*a3 <= v20 || *v20 != 114)
                {
                  goto LABEL_124;
                }

                continue;
              }
            }

            if (v8 != 106)
            {
              goto LABEL_116;
            }

            v64 = (v7 - 1);
            while (2)
            {
              v65 = (v64 + 1);
              v81 = (v64 + 1);
              v66 = *(a1 + 112);
              if (!v66)
              {
LABEL_106:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                v66 = *(a1 + 112);
                v67 = *v66;
                goto LABEL_107;
              }

              v71 = *(a1 + 104);
              v67 = *v66;
              if (v71 >= *v66)
              {
                if (v67 == *(a1 + 108))
                {
                  goto LABEL_106;
                }

LABEL_107:
                *v66 = v67 + 1;
                v68 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(*(a1 + 96));
                v69 = *(a1 + 104);
                v70 = *(a1 + 112) + 8 * v69;
                *(a1 + 104) = v69 + 1;
                *(v70 + 8) = v68;
                v65 = v81;
              }

              else
              {
                *(a1 + 104) = v71 + 1;
                v68 = *&v66[2 * v71 + 2];
              }

              v64 = sub_2217055A8(a3, v68, v65);
              v81 = v64;
              if (!v64)
              {
                goto LABEL_135;
              }

              if (*a3 <= v64 || *v64 != 106)
              {
                goto LABEL_124;
              }

              continue;
            }
          }

          if (v8 != 96)
          {
            goto LABEL_116;
          }

          v5 |= 0x10u;
          v53 = (v7 + 1);
          v52 = *v7;
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v54 = *v53;
          v52 = (v54 << 7) + v52 - 128;
          if ((v54 & 0x80000000) == 0)
          {
            v53 = (v7 + 2);
LABEL_89:
            v81 = v53;
            *(a1 + 155) = v52 != 0;
            goto LABEL_124;
          }

          v79 = google::protobuf::internal::VarintParseSlow64(v7, v52);
          v81 = v79;
          *(a1 + 155) = v80 != 0;
          if (!v79)
          {
LABEL_135:
            v81 = 0;
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 4)
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 1u;
              v49 = *(a1 + 144);
              if (!v49)
              {
                v50 = *(a1 + 8);
                if (v50)
                {
                  v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
                }

                v49 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v50);
                *(a1 + 144) = v49;
                v7 = v81;
              }

              v51 = sub_2217054D8(a3, v49, v7);
LABEL_123:
              v81 = v51;
              if (!v51)
              {
                goto LABEL_135;
              }

              goto LABEL_124;
            }
          }

          else
          {
            if (v10 != 7)
            {
              if (v10 == 9 && v8 == 74)
              {
                v11 = v7 - 1;
                while (1)
                {
                  v12 = (v11 + 1);
                  v81 = (v11 + 1);
                  v13 = *(a1 + 88);
                  if (!v13)
                  {
                    goto LABEL_15;
                  }

                  v19 = *(a1 + 80);
                  v14 = *v13;
                  if (v19 < *v13)
                  {
                    *(a1 + 80) = v19 + 1;
                    v16 = *&v13[2 * v19 + 2];
                    goto LABEL_19;
                  }

                  if (v14 == *(a1 + 84))
                  {
LABEL_15:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                    v13 = *(a1 + 88);
                    v14 = *v13;
                  }

                  *v13 = v14 + 1;
                  v15 = MEMORY[0x223DA0320](*(a1 + 72));
                  LODWORD(v16) = v15;
                  v17 = *(a1 + 80);
                  v18 = *(a1 + 88) + 8 * v17;
                  *(a1 + 80) = v17 + 1;
                  *(v18 + 8) = v15;
                  v12 = v81;
LABEL_19:
                  v11 = sub_221702D58(a3, v16, v12);
                  v81 = v11;
                  if (!v11)
                  {
                    goto LABEL_135;
                  }

                  if (*a3 <= v11 || *v11 != 74)
                  {
                    goto LABEL_124;
                  }
                }
              }

              goto LABEL_116;
            }

            if (v8 == 58)
            {
              v55 = v7 - 1;
              while (1)
              {
                v56 = (v55 + 1);
                v81 = (v55 + 1);
                v57 = *(a1 + 64);
                if (!v57)
                {
                  goto LABEL_93;
                }

                v63 = *(a1 + 56);
                v58 = *v57;
                if (v63 < *v57)
                {
                  *(a1 + 56) = v63 + 1;
                  v60 = *&v57[2 * v63 + 2];
                  goto LABEL_97;
                }

                if (v58 == *(a1 + 60))
                {
LABEL_93:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v57 = *(a1 + 64);
                  v58 = *v57;
                }

                *v57 = v58 + 1;
                v59 = MEMORY[0x223DA0320](*(a1 + 48));
                LODWORD(v60) = v59;
                v61 = *(a1 + 56);
                v62 = *(a1 + 64) + 8 * v61;
                *(a1 + 56) = v61 + 1;
                *(v62 + 8) = v59;
                v56 = v81;
LABEL_97:
                v55 = sub_221702D58(a3, v60, v56);
                v81 = v55;
                if (!v55)
                {
                  goto LABEL_135;
                }

                if (*a3 <= v55 || *v55 != 58)
                {
                  goto LABEL_124;
                }
              }
            }
          }

LABEL_116:
          if (v8)
          {
            v72 = (v8 & 7) == 4;
          }

          else
          {
            v72 = 1;
          }

          if (v72)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v51 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_123;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_116;
          }

          v37 = v7 - 1;
          while (2)
          {
            v38 = (v37 + 1);
            v81 = (v37 + 1);
            v39 = *(a1 + 40);
            if (!v39)
            {
LABEL_64:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v39 = *(a1 + 40);
              v40 = *v39;
              goto LABEL_65;
            }

            v45 = *(a1 + 32);
            v40 = *v39;
            if (v45 >= *v39)
            {
              if (v40 == *(a1 + 36))
              {
                goto LABEL_64;
              }

LABEL_65:
              *v39 = v40 + 1;
              v41 = MEMORY[0x223DA0390](*(a1 + 24));
              LODWORD(v42) = v41;
              v43 = *(a1 + 32);
              v44 = *(a1 + 40) + 8 * v43;
              *(a1 + 32) = v43 + 1;
              *(v44 + 8) = v41;
              v38 = v81;
            }

            else
            {
              *(a1 + 32) = v45 + 1;
              v42 = *&v39[2 * v45 + 2];
            }

            v37 = sub_22170B7F8(a3, v42, v38);
            v81 = v37;
            if (!v37)
            {
              goto LABEL_135;
            }

            if (*a3 <= v37 || *v37 != 18)
            {
              goto LABEL_124;
            }

            continue;
          }
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_116;
        }

        v5 |= 2u;
        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v7 + 2);
LABEL_51:
          v81 = v30;
          *(a1 + 152) = v29 != 0;
          goto LABEL_124;
        }

        v73 = google::protobuf::internal::VarintParseSlow64(v7, v29);
        v81 = v73;
        *(a1 + 152) = v74 != 0;
        if (!v73)
        {
          goto LABEL_135;
        }
      }

LABEL_124:
      if (sub_221567030(a3, &v81))
      {
        goto LABEL_2;
      }
    }

    v7 = (v81 + 2);
LABEL_6:
    v81 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v81;
}

unsigned __int8 *TST::CellMapArchive::_InternalSerialize(TST::CellMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
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

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 152);
    *a2 = 24;
    a2[1] = v14;
    a2 += 2;
  }

  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 18);
    *a2 = 42;
    v16 = *(v15 + 5);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = a2 + 3;
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        a2[2] = v18;
        v17 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v16;
      v17 = a2 + 2;
    }

    a2 = TST::CellUIDListArchive::_InternalSerialize(v15, v17, a3);
  }

  v21 = *(this + 14);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 8) + 8 * j + 8);
      *a2 = 58;
      v24 = *(v23 + 16);
      if (v24 > 0x7F)
      {
        a2[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = a2 + 3;
          do
          {
            *(v25 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++v25;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(v25 - 1) = v27;
        }

        else
        {
          a2[2] = v26;
          v25 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v24;
        v25 = a2 + 2;
      }

      a2 = TSP::UUIDRectArchive::_InternalSerialize(v23, v25, a3);
    }
  }

  v29 = *(this + 20);
  if (v29)
  {
    for (k = 0; k != v29; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(this + 11) + 8 * k + 8);
      *a2 = 74;
      v32 = *(v31 + 16);
      if (v32 > 0x7F)
      {
        a2[1] = v32 | 0x80;
        v34 = v32 >> 7;
        if (v32 >> 14)
        {
          v33 = a2 + 3;
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
          a2[2] = v34;
          v33 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v32;
        v33 = a2 + 2;
      }

      a2 = TSP::UUIDRectArchive::_InternalSerialize(v31, v33, a3);
    }
  }

  if ((v13 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 153);
    *a2 = 80;
    a2[1] = v37;
    a2 += 2;
    if ((v13 & 8) == 0)
    {
LABEL_54:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }
  }

  else if ((v13 & 8) == 0)
  {
    goto LABEL_54;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 154);
  *a2 = 88;
  a2[1] = v38;
  a2 += 2;
  if ((v13 & 0x10) != 0)
  {
LABEL_62:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(this + 155);
    *a2 = 96;
    a2[1] = v39;
    a2 += 2;
  }

LABEL_65:
  v40 = *(this + 26);
  if (v40)
  {
    for (m = 0; m != v40; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v42 = *(*(this + 14) + 8 * m + 8);
      *a2 = 106;
      v43 = *(v42 + 5);
      if (v43 > 0x7F)
      {
        a2[1] = v43 | 0x80;
        v45 = v43 >> 7;
        if (v43 >> 14)
        {
          v44 = a2 + 3;
          do
          {
            *(v44 - 1) = v45 | 0x80;
            v46 = v45 >> 7;
            ++v44;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
          *(v44 - 1) = v46;
        }

        else
        {
          a2[2] = v45;
          v44 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v43;
        v44 = a2 + 2;
      }

      a2 = TST::MergeOperationArchive::_InternalSerialize(v42, v44, a3);
    }
  }

  v48 = *(this + 32);
  if (v48)
  {
    for (n = 0; n != v48; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v50 = *(*(this + 17) + 8 * n + 8);
      *a2 = 114;
      v51 = *(v50 + 5);
      if (v51 > 0x7F)
      {
        a2[1] = v51 | 0x80;
        v53 = v51 >> 7;
        if (v51 >> 14)
        {
          v52 = a2 + 3;
          do
          {
            *(v52 - 1) = v53 | 0x80;
            v54 = v53 >> 7;
            ++v52;
            v55 = v53 >> 14;
            v53 >>= 7;
          }

          while (v55);
          *(v52 - 1) = v54;
        }

        else
        {
          a2[2] = v53;
          v52 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v51;
        v52 = a2 + 2;
      }

      a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v50, v52, a3);
    }
  }

  v56 = *(this + 1);
  if ((v56 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v56 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellMapArchive::ByteSizeLong(TST::CellMapArchive *this)
{
  v2 = *(this + 8);
  v3 = (*(this + 4) & 2) + v2;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = TSP::Reference::ByteSizeLong(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(this + 14);
  v10 = v3 + v9;
  v11 = *(this + 8);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = TSP::UUIDRectArchive::ByteSizeLong(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(this + 20);
  v17 = v10 + v16;
  v18 = *(this + 11);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = TSP::UUIDRectArchive::ByteSizeLong(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(this + 26);
  v24 = v17 + v23;
  v25 = *(this + 14);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = TST::MergeOperationArchive::ByteSizeLong(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(this + 32);
  v31 = v24 + v30;
  v32 = *(this + 17);
  if (v32)
  {
    v33 = (v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = 8 * v30;
    do
    {
      v35 = *v33++;
      v36 = TSCE::CellCoordinateArchive::ByteSizeLong(v35);
      v31 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      v34 -= 8;
    }

    while (v34);
  }

  v37 = *(this + 4);
  if (v37)
  {
    v38 = TST::CellUIDListArchive::ByteSizeLong(*(this + 18));
    v31 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v37 & 0x1C) != 0)
  {
    v39 = v31 + ((v37 >> 2) & 2) + ((v37 >> 1) & 2) + ((v37 >> 3) & 2);
  }

  else
  {
    v39 = v31;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v39, this + 20);
  }

  else
  {
    *(this + 5) = v39;
    return v39;
  }
}

uint64_t TST::CellMapArchive::MergeFrom(TST::CellMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellMapArchive::MergeFrom(uint64_t this, const TST::CellMapArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_221568514(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_22167E644(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_22167E644(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    this = sub_22167EBD0(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    this = sub_2215686E0(v3 + 120, v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 4);
  if ((v30 & 0x1F) != 0)
  {
    if (v30)
    {
      *(v3 + 16) |= 1u;
      v31 = *(v3 + 144);
      if (!v31)
      {
        v32 = *(v3 + 8);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v32);
        *(v3 + 144) = v31;
      }

      if (*(a2 + 18))
      {
        v33 = *(a2 + 18);
      }

      else
      {
        v33 = &TST::_CellUIDListArchive_default_instance_;
      }

      this = TST::CellUIDListArchive::MergeFrom(v31, v33);
      if ((v30 & 2) == 0)
      {
LABEL_21:
        if ((v30 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }
    }

    else if ((v30 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(v3 + 152) = *(a2 + 152);
    if ((v30 & 4) == 0)
    {
LABEL_22:
      if ((v30 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(v3 + 153) = *(a2 + 153);
    if ((v30 & 8) == 0)
    {
LABEL_23:
      if ((v30 & 0x10) == 0)
      {
LABEL_25:
        *(v3 + 16) |= v30;
        return this;
      }

LABEL_24:
      *(v3 + 155) = *(a2 + 155);
      goto LABEL_25;
    }

LABEL_37:
    *(v3 + 154) = *(a2 + 154);
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return this;
}

uint64_t *TST::CellMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellMapArchive::Clear(this);

    return TST::CellMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellMapArchive::CopyFrom(uint64_t *this, const TST::CellMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellMapArchive::Clear(this);

    return TST::CellMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CellMapArchive::IsInitialized(TST::CellMapArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::UUIDRectArchive::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 20);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::UUIDRectArchive::IsInitialized(*(*(this + 11) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(this + 26);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TST::MergeOperationArchive::IsInitialized(*(*(this + 14) + 8 * v12));
    v12 = v13;
    if (!v14)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TST::CellUIDListArchive::IsInitialized(*(this + 18));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::CellMapArchive::InternalSwap(TST::CellMapArchive *this, TST::CellMapArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 13);
  v12 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 16);
  v14 = *(this + 17);
  result = *(a2 + 8);
  *(this + 8) = result;
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  v16 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v16;
  LOBYTE(v16) = *(this + 152);
  *(this + 152) = *(a2 + 152);
  *(a2 + 152) = v16;
  LOBYTE(v16) = *(this + 153);
  *(this + 153) = *(a2 + 153);
  *(a2 + 153) = v16;
  LOBYTE(v16) = *(this + 154);
  *(this + 154) = *(a2 + 154);
  *(a2 + 154) = v16;
  LOBYTE(v16) = *(this + 155);
  *(this + 155) = *(a2 + 155);
  *(a2 + 155) = v16;
  return result;
}

TST::CellListArchive_OptionalCell *TST::CellListArchive_OptionalCell::CellListArchive_OptionalCell(TST::CellListArchive_OptionalCell *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4528;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B4528;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::CellListArchive_OptionalCell *TST::CellListArchive_OptionalCell::CellListArchive_OptionalCell(TST::CellListArchive_OptionalCell *this, const TST::CellListArchive_OptionalCell *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4528;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TST::CellListArchive_OptionalCell::~CellListArchive_OptionalCell(TST::CellListArchive_OptionalCell *this)
{
  if (this != TST::_CellListArchive_OptionalCell_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::Cell::~Cell(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellListArchive_OptionalCell::~CellListArchive_OptionalCell(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellListArchive_OptionalCell::default_instance(TST::CellListArchive_OptionalCell *this)
{
  if (atomic_load_explicit(scc_info_CellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellListArchive_OptionalCell_default_instance_;
}

uint64_t *TST::CellListArchive_OptionalCell::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TST::Cell::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::CellListArchive_OptionalCell::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_221567030(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_221705678(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TST::CellListArchive_OptionalCell::_InternalSerialize(TST::CellListArchive_OptionalCell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TST::Cell::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellListArchive_OptionalCell::ByteSizeLong(TST::Cell **this)
{
  if (this[2])
  {
    v3 = TST::Cell::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::CellListArchive_OptionalCell::MergeFrom(TST::CellListArchive_OptionalCell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellListArchive_OptionalCell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellListArchive_OptionalCell::MergeFrom(uint64_t this, const TST::CellListArchive_OptionalCell *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_Cell_default_instance_;
    }

    return TST::Cell::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TST::CellListArchive_OptionalCell::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellListArchive_OptionalCell::Clear(this);

    return TST::CellListArchive_OptionalCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellListArchive_OptionalCell::CopyFrom(uint64_t *this, const TST::CellListArchive_OptionalCell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellListArchive_OptionalCell::Clear(this);

    return TST::CellListArchive_OptionalCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellListArchive_OptionalCell::IsInitialized(TST::CellListArchive_OptionalCell *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TST::Cell::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TST::CellListArchive_OptionalCell::InternalSwap(TST::CellListArchive_OptionalCell *this, TST::CellListArchive_OptionalCell *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TST::CellListArchive *TST::CellListArchive::CellListArchive(TST::CellListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B45D8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CellListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::CellListArchive *TST::CellListArchive::CellListArchive(TST::CellListArchive *this, const TST::CellListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B45D8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_22167ED14(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::CellListArchive::~CellListArchive(TST::CellListArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167EC90(this + 3);
}

{
  TST::CellListArchive::~CellListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellListArchive::default_instance(TST::CellListArchive *this)
{
  if (atomic_load_explicit(scc_info_CellListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellListArchive_default_instance_;
}

uint64_t *TST::CellListArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellListArchive_OptionalCell::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::CellListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 != 1 || v8 != 10)
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
            sub_221567188((a1 + 8));
          }

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = (v7 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v27 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TST::CellListArchive_OptionalCell>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v27;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_221705748(a3, v19, v16);
          v27 = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          if (*a3 <= v15 || *v15 != 10)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_24:
        v27 = v12;
        *(a1 + 48) = v13;
        v5 = 1;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_25:
      if (sub_221567030(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *TST::CellListArchive::_InternalSerialize(TST::CellListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::CellListArchive_OptionalCell::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 12);
    *a2 = 16;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++a2;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(a2 - 1) = v15;
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellListArchive::ByteSizeLong(TST::CellListArchive *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TST::CellListArchive_OptionalCell::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 16))
  {
    v2 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::CellListArchive::MergeFrom(TST::CellListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellListArchive::MergeFrom(uint64_t this, const TST::CellListArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167ED14(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

uint64_t *TST::CellListArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellListArchive::Clear(this);

    return TST::CellListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellListArchive::CopyFrom(uint64_t *this, const TST::CellListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellListArchive::Clear(this);

    return TST::CellListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t sub_221612ADC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = TST::Cell::IsInitialized(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CellListArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v5;
  return result;
}

uint64_t TST::ConcurrentCellMapArchive::clear_cell_lists(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TST::ConcurrentCellMapArchive *TST::ConcurrentCellMapArchive::ConcurrentCellMapArchive(TST::ConcurrentCellMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4688;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 36) = 0;
  *(this + 74) = 16843009;
  return this;
}

void sub_221612CB4(_Unwind_Exception *a1)
{
  sub_22167EB4C(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

TST::ConcurrentCellMapArchive *TST::ConcurrentCellMapArchive::ConcurrentCellMapArchive(TST::ConcurrentCellMapArchive *this, const TST::ConcurrentCellMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4688;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_221568514(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_22167EBD0(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_22156734C(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v16 = *(a2 + 18);
  *(this + 38) = *(a2 + 38);
  *(this + 18) = v16;
  return this;
}

void sub_221612E3C(_Unwind_Exception *a1)
{
  sub_22167EB4C(v2);
  sub_2216E381C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::ConcurrentCellMapArchive::~ConcurrentCellMapArchive(TST::ConcurrentCellMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167EB4C(this + 6);
  sub_2216E381C(this + 3);
}

{
  TST::ConcurrentCellMapArchive::~ConcurrentCellMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ConcurrentCellMapArchive::default_instance(TST::ConcurrentCellMapArchive *this)
{
  if (atomic_load_explicit(scc_info_ConcurrentCellMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConcurrentCellMapArchive_default_instance_;
}

uint64_t *TST::ConcurrentCellMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TST::MergeOperationArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  *(v1 + 72) = 0;
  if ((*(v1 + 16) & 0x3C) != 0)
  {
    *(v1 + 74) = 16843009;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::ConcurrentCellMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v62 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v62) & 1) == 0)
  {
    while (1)
    {
      v7 = (v62 + 1);
      v8 = *v62;
      if ((*v62 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v62, (v9 - 128));
      v62 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_101;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 != 56)
            {
              goto LABEL_79;
            }

            v5 |= 2u;
            v47 = (v7 + 1);
            v46 = *v7;
            if ((v46 & 0x8000000000000000) == 0)
            {
              goto LABEL_78;
            }

            v48 = *v47;
            v46 = (v48 << 7) + v46 - 128;
            if ((v48 & 0x80000000) == 0)
            {
              v47 = (v7 + 2);
LABEL_78:
              v62 = v47;
              *(a1 + 73) = v46 != 0;
              goto LABEL_86;
            }

            v52 = google::protobuf::internal::VarintParseSlow64(v7, v46);
            v62 = v52;
            *(a1 + 73) = v53 != 0;
            if (!v52)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (v10 != 8 || v8 != 64)
            {
              goto LABEL_79;
            }

            v5 |= 0x20u;
            v22 = (v7 + 1);
            v21 = *v7;
            if ((v21 & 0x8000000000000000) == 0)
            {
              goto LABEL_40;
            }

            v23 = *v22;
            v21 = (v23 << 7) + v21 - 128;
            if ((v23 & 0x80000000) == 0)
            {
              v22 = (v7 + 2);
LABEL_40:
              v62 = v22;
              *(a1 + 77) = v21 != 0;
              goto LABEL_86;
            }

            v60 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v62 = v60;
            *(a1 + 77) = v61 != 0;
            if (!v60)
            {
              goto LABEL_101;
            }
          }
        }

        else if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_79;
          }

          v5 |= 8u;
          v36 = (v7 + 1);
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if ((v37 & 0x80000000) == 0)
          {
            v36 = (v7 + 2);
LABEL_60:
            v62 = v36;
            *(a1 + 75) = v35 != 0;
            goto LABEL_86;
          }

          v50 = google::protobuf::internal::VarintParseSlow64(v7, v35);
          v62 = v50;
          *(a1 + 75) = v51 != 0;
          if (!v50)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_79;
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
            v62 = v16;
            *(a1 + 76) = v15 != 0;
            goto LABEL_86;
          }

          v56 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v62 = v56;
          *(a1 + 76) = v57 != 0;
          if (!v56)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_86;
      }

      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_79;
          }

          v5 |= 4u;
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
            v62 = v19;
            *(a1 + 74) = v18 != 0;
            goto LABEL_86;
          }

          v58 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v62 = v58;
          *(a1 + 74) = v59 != 0;
          if (!v58)
          {
            goto LABEL_101;
          }

          goto LABEL_86;
        }

        if (v8 != 26)
        {
          goto LABEL_79;
        }

        v38 = (v7 - 1);
        while (2)
        {
          v39 = (v38 + 1);
          v62 = (v38 + 1);
          v40 = *(a1 + 64);
          if (!v40)
          {
LABEL_64:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v40 = *(a1 + 64);
            v41 = *v40;
            goto LABEL_65;
          }

          v45 = *(a1 + 56);
          v41 = *v40;
          if (v45 >= *v40)
          {
            if (v41 == *(a1 + 60))
            {
              goto LABEL_64;
            }

LABEL_65:
            *v40 = v41 + 1;
            v42 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(*(a1 + 48));
            v43 = *(a1 + 56);
            v44 = *(a1 + 64) + 8 * v43;
            *(a1 + 56) = v43 + 1;
            *(v44 + 8) = v42;
            v39 = v62;
          }

          else
          {
            *(a1 + 56) = v45 + 1;
            v42 = *&v40[2 * v45 + 2];
          }

          v38 = sub_2217055A8(a3, v42, v39);
          v62 = v38;
          if (!v38)
          {
            goto LABEL_101;
          }

          if (*a3 <= v38 || *v38 != 26)
          {
            goto LABEL_86;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          v26 = v7 - 1;
          while (1)
          {
            v27 = (v26 + 1);
            v62 = (v26 + 1);
            v28 = *(a1 + 40);
            if (!v28)
            {
              goto LABEL_46;
            }

            v34 = *(a1 + 32);
            v29 = *v28;
            if (v34 < *v28)
            {
              *(a1 + 32) = v34 + 1;
              v31 = *&v28[2 * v34 + 2];
              goto LABEL_50;
            }

            if (v29 == *(a1 + 36))
            {
LABEL_46:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v28 = *(a1 + 40);
              v29 = *v28;
            }

            *v28 = v29 + 1;
            v30 = MEMORY[0x223DA0390](*(a1 + 24));
            LODWORD(v31) = v30;
            v32 = *(a1 + 32);
            v33 = *(a1 + 40) + 8 * v32;
            *(a1 + 32) = v32 + 1;
            *(v33 + 8) = v30;
            v27 = v62;
LABEL_50:
            v26 = sub_22170B7F8(a3, v31, v27);
            v62 = v26;
            if (!v26)
            {
              goto LABEL_101;
            }

            if (*a3 <= v26 || *v26 != 10)
            {
              goto LABEL_86;
            }
          }
        }

LABEL_79:
        if (v8)
        {
          v49 = (v8 & 7) == 4;
        }

        else
        {
          v49 = 1;
        }

        if (v49)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v62 = google::protobuf::internal::UnknownFieldParse();
        if (!v62)
        {
LABEL_101:
          v62 = 0;
          goto LABEL_2;
        }

        goto LABEL_86;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_79;
      }

      v5 |= 1u;
      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_18:
        v62 = v13;
        *(a1 + 72) = v12 != 0;
        goto LABEL_86;
      }

      v54 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v62 = v54;
      *(a1 + 72) = v55 != 0;
      if (!v54)
      {
        goto LABEL_101;
      }

LABEL_86:
      if (sub_221567030(a3, &v62))
      {
        goto LABEL_2;
      }
    }

    v7 = (v62 + 2);
LABEL_6:
    v62 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v62;
}

unsigned __int8 *TST::ConcurrentCellMapArchive::_InternalSerialize(TST::ConcurrentCellMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 72);
    *a2 = 16;
    a2[1] = v14;
    a2 += 2;
  }

  v15 = *(this + 14);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v17 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        a2[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = a2 + 3;
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v19;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          a2[2] = v20;
          v19 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v18;
        v19 = a2 + 2;
      }

      a2 = TST::MergeOperationArchive::_InternalSerialize(v17, v19, a3);
    }
  }

  if ((v13 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 74);
    *a2 = 32;
    a2[1] = v23;
    a2 += 2;
    if ((v13 & 8) == 0)
    {
LABEL_31:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }
  }

  else if ((v13 & 8) == 0)
  {
    goto LABEL_31;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 75);
  *a2 = 40;
  a2[1] = v24;
  a2 += 2;
  if ((v13 & 0x10) == 0)
  {
LABEL_32:
    if ((v13 & 2) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 76);
  *a2 = 48;
  a2[1] = v25;
  a2 += 2;
  if ((v13 & 2) == 0)
  {
LABEL_33:
    if ((v13 & 0x20) == 0)
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

  v26 = *(this + 73);
  *a2 = 56;
  a2[1] = v26;
  a2 += 2;
  if ((v13 & 0x20) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v27 = *(this + 77);
    *a2 = 64;
    a2[1] = v27;
    a2 += 2;
  }

LABEL_50:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ConcurrentCellMapArchive::ByteSizeLong(TST::ConcurrentCellMapArchive *this)
{
  v2 = *(this + 8);
  v3 = 2 * (*(this + 4) & 1) + v2;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = TSP::Reference::ByteSizeLong(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(this + 14);
  v10 = v3 + v9;
  v11 = *(this + 8);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = TST::MergeOperationArchive::ByteSizeLong(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(this + 4);
  if ((v16 & 0x3E) != 0)
  {
    v17.i64[0] = 0x200000002;
    v17.i64[1] = 0x200000002;
    v10 += vaddlvq_u32(vandq_s8(vshlq_u32(vdupq_n_s32(v16), xmmword_2217E2240), v17)) + (v16 & 2);
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

uint64_t TST::ConcurrentCellMapArchive::MergeFrom(TST::ConcurrentCellMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConcurrentCellMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConcurrentCellMapArchive::MergeFrom(uint64_t this, const TST::ConcurrentCellMapArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_221568514(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_22167EBD0(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 0x3F) != 0)
  {
    if (v15)
    {
      *(v3 + 72) = *(a2 + 72);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 73) = *(a2 + 73);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(v3 + 74) = *(a2 + 74);
    if ((v15 & 8) == 0)
    {
LABEL_14:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v3 + 75) = *(a2 + 75);
    if ((v15 & 0x10) == 0)
    {
LABEL_15:
      if ((v15 & 0x20) == 0)
      {
LABEL_17:
        *(v3 + 16) |= v15;
        return this;
      }

LABEL_16:
      *(v3 + 77) = *(a2 + 77);
      goto LABEL_17;
    }

LABEL_23:
    *(v3 + 76) = *(a2 + 76);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return this;
}

uint64_t *TST::ConcurrentCellMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellMapArchive::Clear(this);

    return TST::ConcurrentCellMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ConcurrentCellMapArchive::CopyFrom(uint64_t *this, const TST::ConcurrentCellMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellMapArchive::Clear(this);

    return TST::ConcurrentCellMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ConcurrentCellMapArchive::IsInitialized(TST::ConcurrentCellMapArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 14);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = TST::MergeOperationArchive::IsInitialized(*(*(this + 8) + 8 * v7));
    v7 = v8;
  }

  while (v9);
  return v5;
}

__n128 TST::ConcurrentCellMapArchive::InternalSwap(TST::ConcurrentCellMapArchive *this, TST::ConcurrentCellMapArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  LOWORD(v7) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v7;
  LOBYTE(v7) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v7;
  LOBYTE(v7) = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v7;
  LOBYTE(v7) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v7;
  LOBYTE(v7) = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v7;
  return result;
}

TST::ConcurrentCellListArchive_OptionalCell *TST::ConcurrentCellListArchive_OptionalCell::ConcurrentCellListArchive_OptionalCell(TST::ConcurrentCellListArchive_OptionalCell *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4738;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B4738;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::ConcurrentCellListArchive_OptionalCell *TST::ConcurrentCellListArchive_OptionalCell::ConcurrentCellListArchive_OptionalCell(TST::ConcurrentCellListArchive_OptionalCell *this, const TST::ConcurrentCellListArchive_OptionalCell *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4738;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TST::ConcurrentCellListArchive_OptionalCell::~ConcurrentCellListArchive_OptionalCell(TST::ConcurrentCellListArchive_OptionalCell *this)
{
  if (this != &TST::_ConcurrentCellListArchive_OptionalCell_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::Cell::~Cell(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ConcurrentCellListArchive_OptionalCell::~ConcurrentCellListArchive_OptionalCell(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ConcurrentCellListArchive_OptionalCell::default_instance(TST::ConcurrentCellListArchive_OptionalCell *this)
{
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConcurrentCellListArchive_OptionalCell_default_instance_;
}

uint64_t *TST::ConcurrentCellListArchive_OptionalCell::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TST::Cell::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::ConcurrentCellListArchive_OptionalCell::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_221567030(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_221705678(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TST::ConcurrentCellListArchive_OptionalCell::_InternalSerialize(TST::ConcurrentCellListArchive_OptionalCell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TST::Cell::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ConcurrentCellListArchive_OptionalCell::ByteSizeLong(TST::Cell **this)
{
  if (this[2])
  {
    v3 = TST::Cell::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(TST::ConcurrentCellListArchive_OptionalCell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(uint64_t this, const TST::ConcurrentCellListArchive_OptionalCell *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_Cell_default_instance_;
    }

    return TST::Cell::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TST::ConcurrentCellListArchive_OptionalCell::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellListArchive_OptionalCell::Clear(this);

    return TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ConcurrentCellListArchive_OptionalCell::CopyFrom(uint64_t *this, const TST::ConcurrentCellListArchive_OptionalCell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellListArchive_OptionalCell::Clear(this);

    return TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ConcurrentCellListArchive_OptionalCell::IsInitialized(TST::ConcurrentCellListArchive_OptionalCell *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TST::Cell::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TST::ConcurrentCellListArchive_OptionalCell::InternalSwap(TST::ConcurrentCellListArchive_OptionalCell *this, TST::ConcurrentCellListArchive_OptionalCell *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSP::UUIDRectArchive *TST::ConcurrentCellListArchive::clear_cell_uid_range(TST::ConcurrentCellListArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUIDRectArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::ConcurrentCellListArchive *TST::ConcurrentCellListArchive::ConcurrentCellListArchive(TST::ConcurrentCellListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B47E8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TST::ConcurrentCellListArchive *TST::ConcurrentCellListArchive::ConcurrentCellListArchive(TST::ConcurrentCellListArchive *this, const TST::ConcurrentCellListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B47E8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_22167EE58(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = *(a2 + 4);
  if (v11)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void sub_221614898(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40DFBAE579);
  sub_22167EDD4((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::ConcurrentCellListArchive::~ConcurrentCellListArchive(TST::ConcurrentCellListArchive *this)
{
  if (this != &TST::_ConcurrentCellListArchive_default_instance_)
  {
    if (*(this + 6))
    {
      v2 = MEMORY[0x223D9FC70]();
      MEMORY[0x223DA1450](v2, 0x10A1C40759568C3);
    }

    v3 = *(this + 7);
    if (v3)
    {
      TST::CellRange::~CellRange(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22167EDD4(this + 3);
}

{
  TST::ConcurrentCellListArchive::~ConcurrentCellListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ConcurrentCellListArchive::default_instance(TST::ConcurrentCellListArchive *this)
{
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConcurrentCellListArchive_default_instance_;
}

uint64_t *TST::ConcurrentCellListArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::ConcurrentCellListArchive_OptionalCell::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSP::UUIDRectArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TST::CellRange::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TST::ConcurrentCellListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v28))
    {
      return v28;
    }

    v5 = (v28 + 1);
    v6 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v28 + 2);
LABEL_6:
      v28 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v7 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v26;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 == 26)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 56);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v16);
          *(a1 + 56) = v15;
          v5 = v28;
        }

        v11 = sub_221701AA8(a3, v15, v5);
        goto LABEL_32;
      }
    }

    else
    {
      if (v8 != 2)
      {
        if (v8 != 1 || v6 != 10)
        {
          goto LABEL_13;
        }

        v17 = (v5 - 1);
        while (1)
        {
          v18 = (v17 + 1);
          v28 = (v17 + 1);
          v19 = *(a1 + 40);
          if (!v19)
          {
            goto LABEL_36;
          }

          v24 = *(a1 + 32);
          v20 = *v19;
          if (v24 < *v19)
          {
            *(a1 + 32) = v24 + 1;
            v21 = *&v19[2 * v24 + 2];
            goto LABEL_40;
          }

          if (v20 == *(a1 + 36))
          {
LABEL_36:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v19 = *(a1 + 40);
            v20 = *v19;
          }

          *v19 = v20 + 1;
          v21 = google::protobuf::Arena::CreateMaybeMessage<TST::ConcurrentCellListArchive_OptionalCell>(*(a1 + 24));
          v22 = *(a1 + 32);
          v23 = *(a1 + 40) + 8 * v22;
          *(a1 + 32) = v22 + 1;
          *(v23 + 8) = v21;
          v18 = v28;
LABEL_40:
          v17 = sub_221705818(a3, v21, v18);
          v28 = v17;
          if (!v17)
          {
            return 0;
          }

          if (*a3 <= v17 || *v17 != 10)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 == 18)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 48);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x223DA0320](v13);
          LODWORD(v12) = v14;
          *(a1 + 48) = v14;
          v5 = v28;
        }

        v11 = sub_221702D58(a3, v12, v5);
        goto LABEL_32;
      }
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_32:
    v28 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v28;
}

unsigned __int8 *TST::ConcurrentCellListArchive::_InternalSerialize(TST::ConcurrentCellListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::ConcurrentCellListArchive_OptionalCell::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 6);
    *a2 = 18;
    v15 = *(v14 + 16);
    if (v15 > 0x7F)
    {
      a2[1] = v15 | 0x80;
      v17 = v15 >> 7;
      if (v15 >> 14)
      {
        v16 = a2 + 3;
        do
        {
          *(v16 - 1) = v17 | 0x80;
          v18 = v17 >> 7;
          ++v16;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
        *(v16 - 1) = v18;
      }

      else
      {
        a2[2] = v17;
        v16 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v15;
      v16 = a2 + 2;
    }

    a2 = TSP::UUIDRectArchive::_InternalSerialize(v14, v16, a3);
  }

  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 7);
    *a2 = 26;
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

    a2 = TST::CellRange::_InternalSerialize(v20, v22, a3);
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ConcurrentCellListArchive::ByteSizeLong(TST::ConcurrentCellListArchive *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TST::ConcurrentCellListArchive_OptionalCell::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TSP::UUIDRectArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TST::CellRange::ByteSizeLong(*(this + 7));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::ConcurrentCellListArchive::MergeFrom(TST::ConcurrentCellListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConcurrentCellListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConcurrentCellListArchive::MergeFrom(uint64_t this, const TST::ConcurrentCellListArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167EE58(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0320](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80A40];
      }

      this = TSP::UUIDRectArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v14 = *(v3 + 56);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = TST::_CellRange_default_instance_;
      }

      return TST::CellRange::MergeFrom(v14, v16);
    }
  }

  return this;
}

uint64_t *TST::ConcurrentCellListArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellListArchive::Clear(this);

    return TST::ConcurrentCellListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ConcurrentCellListArchive::CopyFrom(uint64_t *this, const TST::ConcurrentCellListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellListArchive::Clear(this);

    return TST::ConcurrentCellListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ConcurrentCellListArchive::IsInitialized(TST::ConcurrentCellListArchive *this)
{
  result = sub_221612ADC(this + 24);
  if (result)
  {
    v3 = *(this + 4);
    if (v3)
    {
      result = TSP::UUIDRectArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    result = 1;
    if ((v3 & 2) != 0)
    {
      v4 = *(this + 7);
      if ((~*(v4 + 16) & 3) != 0 || (*(*(v4 + 24) + 16) & 2) == 0 || (*(*(v4 + 32) + 16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 TST::ConcurrentCellListArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  v8 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  return result;
}

TSP::Reference *TST::CellFormatAndValueArchive::clear_richtextstorage(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_number_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_currency_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_date_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_duration_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_text_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_BOOLean_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Reference *TST::CellFormatAndValueArchive::clear_formatted_rich_text_value(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TST::CellFormatAndValueArchive *TST::CellFormatAndValueArchive::CellFormatAndValueArchive(TST::CellFormatAndValueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4898;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellFormatAndValueArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 129) = 0u;
  return this;
}

TST::CellFormatAndValueArchive *TST::CellFormatAndValueArchive::CellFormatAndValueArchive(TST::CellFormatAndValueArchive *this, const TST::CellFormatAndValueArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B4898;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  v6 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 4) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v4 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v4 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v4 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v4 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v4 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(this + 129) = *(a2 + 129);
  *(this + 120) = v8;
  *(this + 104) = v7;
  return this;
}

void TST::CellFormatAndValueArchive::~CellFormatAndValueArchive(TST::CellFormatAndValueArchive *this)
{
  sub_2216159CC(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::CellFormatAndValueArchive::~CellFormatAndValueArchive(this);

  JUMPOUT(0x223DA1450);
}

TSP::Reference *sub_2216159CC(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  if (v1 != &TST::_CellFormatAndValueArchive_default_instance_)
  {
    v5 = *(v1 + 5);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 6))
    {
      v6 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v6, 0x10A1C4029F168B5);
    }

    if (*(v1 + 7))
    {
      v7 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v7, 0x10A1C4029F168B5);
    }

    if (*(v1 + 8))
    {
      v8 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v8, 0x10A1C4029F168B5);
    }

    if (*(v1 + 9))
    {
      v9 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v9, 0x10A1C4029F168B5);
    }

    if (*(v1 + 10))
    {
      v10 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v10, 0x10A1C4029F168B5);
    }

    if (*(v1 + 11))
    {
      v11 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v11, 0x10A1C4029F168B5);
    }

    result = *(v1 + 12);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::CellFormatAndValueArchive::default_instance(TST::CellFormatAndValueArchive *this)
{
  if (atomic_load_explicit(scc_info_CellFormatAndValueArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellFormatAndValueArchive_default_instance_;
}

uint64_t *TST::CellFormatAndValueArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_28:
    v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_32:
  this = TSP::Reference::Clear(this[5]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = TSK::FormatStructArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    this = TSK::FormatStructArchive::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_34:
  this = TSK::FormatStructArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_36:
  this = TSK::FormatStructArchive::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSK::FormatStructArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = TSK::FormatStructArchive::Clear(*(v1 + 88));
    }

    if ((v2 & 0x200) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 96));
    }
  }

  if ((v2 & 0xFC00) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
    *(v1 + 118) = 0;
  }

  if ((v2 & 0x1F0000) != 0)
  {
    *(v1 + 134) = 0;
    *(v1 + 126) = 0;
    *(v1 + 141) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::CellFormatAndValueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v80 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v80) & 1) == 0)
  {
    while (1)
    {
      v7 = (v80 + 1);
      v8 = *v80;
      if (*v80 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v80, (v9 - 128));
          v80 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_145;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v80 + 2);
      }

      v80 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_116;
          }

          v11 = (v7 + 1);
          v10 = *v7;
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v12 = *v11;
          v10 = (v12 << 7) + v10 - 128;
          if (v12 < 0)
          {
            v80 = google::protobuf::internal::VarintParseSlow64(v7, v10);
            if (!v80)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v11 = (v7 + 2);
LABEL_12:
            v80 = v11;
          }

          if (v10 > 9)
          {
            sub_2217087CC();
          }

          else
          {
            *(a1 + 16) |= 0x800u;
            *(a1 + 112) = v10;
          }

          goto LABEL_99;
        case 2u:
          if (v8 != 17)
          {
            goto LABEL_116;
          }

          v5 |= 0x400u;
          *(a1 + 104) = *v7;
          v80 = (v7 + 8);
          goto LABEL_99;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_68;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_116;
          }

          v5 |= 0x4000u;
          v44 = (v7 + 1);
          v43 = *v7;
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_78;
          }

          v45 = *v44;
          v43 = (v45 << 7) + v43 - 128;
          if (v45 < 0)
          {
            v72 = google::protobuf::internal::VarintParseSlow64(v7, v43);
            v80 = v72;
            *(a1 + 124) = v73 != 0;
            if (!v72)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v44 = (v7 + 2);
LABEL_78:
            v80 = v44;
            *(a1 + 124) = v43 != 0;
          }

          goto LABEL_99;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 4u;
          v40 = *(a1 + 40);
          if (v40)
          {
            goto LABEL_85;
          }

          v46 = *(a1 + 8);
          if (v46)
          {
            v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
          }

          v47 = MEMORY[0x223DA0390](v46);
          LODWORD(v40) = v47;
          *(a1 + 40) = v47;
          goto LABEL_84;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_116;
          }

          v5 |= 0x8000u;
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
            v66 = google::protobuf::internal::VarintParseSlow64(v7, v28);
            v80 = v66;
            *(a1 + 125) = v67 != 0;
            if (!v66)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v29 = (v7 + 2);
LABEL_48:
            v80 = v29;
            *(a1 + 125) = v28 != 0;
          }

          goto LABEL_99;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_116;
          }

          v5 |= 0x1000u;
          v33 = (v7 + 1);
          LODWORD(v34) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          v35 = *v33;
          v34 = (v34 + (v35 << 7) - 128);
          if (v35 < 0)
          {
            v68 = google::protobuf::internal::VarintParseSlow32(v7, v34);
            v80 = v68;
            *(a1 + 116) = v69;
            if (!v68)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v33 = (v7 + 2);
LABEL_60:
            v80 = v33;
            *(a1 + 116) = v34;
          }

          goto LABEL_99;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_116;
          }

          v5 |= 0x2000u;
          v36 = (v7 + 1);
          LODWORD(v37) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v38 = *v36;
          v37 = (v37 + (v38 << 7) - 128);
          if (v38 < 0)
          {
            v70 = google::protobuf::internal::VarintParseSlow32(v7, v37);
            v80 = v70;
            *(a1 + 120) = v71;
            if (!v70)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v36 = (v7 + 2);
LABEL_65:
            v80 = v36;
            *(a1 + 120) = v37;
          }

          goto LABEL_99;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 8u;
          v18 = *(a1 + 48);
          if (v18)
          {
            goto LABEL_97;
          }

          v50 = *(a1 + 8);
          if (v50)
          {
            v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
          }

          v51 = MEMORY[0x223DA02D0](v50);
          LODWORD(v18) = v51;
          *(a1 + 48) = v51;
          goto LABEL_96;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x10u;
          v18 = *(a1 + 56);
          if (v18)
          {
            goto LABEL_97;
          }

          v48 = *(a1 + 8);
          if (v48)
          {
            v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
          }

          v49 = MEMORY[0x223DA02D0](v48);
          LODWORD(v18) = v49;
          *(a1 + 56) = v49;
          goto LABEL_96;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x20u;
          v18 = *(a1 + 64);
          if (v18)
          {
            goto LABEL_97;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x223DA02D0](v21);
          LODWORD(v18) = v22;
          *(a1 + 64) = v22;
          goto LABEL_96;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x40u;
          v18 = *(a1 + 72);
          if (v18)
          {
            goto LABEL_97;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x223DA02D0](v31);
          LODWORD(v18) = v32;
          *(a1 + 72) = v32;
          goto LABEL_96;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x80u;
          v18 = *(a1 + 80);
          if (v18)
          {
            goto LABEL_97;
          }

          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = MEMORY[0x223DA02D0](v23);
          LODWORD(v18) = v24;
          *(a1 + 80) = v24;
          goto LABEL_96;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x100u;
          v18 = *(a1 + 88);
          if (v18)
          {
            goto LABEL_97;
          }

          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x223DA02D0](v19);
          LODWORD(v18) = v20;
          *(a1 + 88) = v20;
LABEL_96:
          v7 = v80;
LABEL_97:
          v39 = sub_2216FEC0C(a3, v18, v7);
          goto LABEL_98;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 2u;
LABEL_68:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v39 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_98;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x200u;
          v40 = *(a1 + 96);
          if (!v40)
          {
            v41 = *(a1 + 8);
            if (v41)
            {
              v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
            }

            v42 = MEMORY[0x223DA0390](v41);
            LODWORD(v40) = v42;
            *(a1 + 96) = v42;
LABEL_84:
            v7 = v80;
          }

LABEL_85:
          v39 = sub_22170B7F8(a3, v40, v7);
          goto LABEL_98;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_116;
          }

          v5 |= 0x10000u;
          v56 = (v7 + 1);
          v55 = *v7;
          if ((v55 & 0x8000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v57 = *v56;
          v55 = (v57 << 7) + v55 - 128;
          if (v57 < 0)
          {
            v76 = google::protobuf::internal::VarintParseSlow64(v7, v55);
            v80 = v76;
            *(a1 + 126) = v77 != 0;
            if (!v76)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v56 = (v7 + 2);
LABEL_110:
            v80 = v56;
            *(a1 + 126) = v55 != 0;
          }

          goto LABEL_99;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_116;
          }

          v5 |= 0x20000u;
          v53 = (v7 + 1);
          v52 = *v7;
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v54 = *v53;
          v52 = (v54 << 7) + v52 - 128;
          if (v54 < 0)
          {
            v74 = google::protobuf::internal::VarintParseSlow64(v7, v52);
            v80 = v74;
            *(a1 + 127) = v75 != 0;
            if (!v74)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v53 = (v7 + 2);
LABEL_105:
            v80 = v53;
            *(a1 + 127) = v52 != 0;
          }

          goto LABEL_99;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_116;
          }

          v5 |= 0x40000u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v62 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            v80 = v62;
            *(a1 + 128) = v63;
            if (!v62)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v16 = (v7 + 2);
LABEL_21:
            v80 = v16;
            *(a1 + 128) = v15;
          }

          goto LABEL_99;
        case 0x15u:
          if (v8 != 168)
          {
            goto LABEL_116;
          }

          v5 |= 0x80000u;
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v64 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            v80 = v64;
            *(a1 + 136) = v65;
            if (!v64)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_41:
            v80 = v26;
            *(a1 + 136) = v25;
          }

          goto LABEL_99;
        case 0x16u:
          if (v8 != 176)
          {
            goto LABEL_116;
          }

          v5 |= 0x100000u;
          v59 = (v7 + 1);
          v58 = *v7;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_115;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            v78 = google::protobuf::internal::VarintParseSlow64(v7, v58);
            v80 = v78;
            *(a1 + 144) = v79 != 0;
            if (!v78)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v59 = (v7 + 2);
LABEL_115:
            v80 = v59;
            *(a1 + 144) = v58 != 0;
          }

          goto LABEL_99;
        default:
LABEL_116:
          if (v8)
          {
            v61 = (v8 & 7) == 4;
          }

          else
          {
            v61 = 1;
          }

          if (v61)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v39 = google::protobuf::internal::UnknownFieldParse();
LABEL_98:
          v80 = v39;
          if (!v39)
          {
LABEL_145:
            v80 = 0;
            goto LABEL_2;
          }

LABEL_99:
          if (sub_221567030(a3, &v80))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v80;
}

unsigned __int8 *TST::CellFormatAndValueArchive::_InternalSerialize(TST::CellFormatAndValueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 28);
    *v4 = 8;
    if (v10 > 0x7F)
    {
      v4[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++v4;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(v4 - 1) = v12;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v4[2] = v11;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v4[1] = v10;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_3:
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  if ((v6 & 0x400) == 0)
  {
    goto LABEL_3;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 13);
  *v4 = 17;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = sub_22150C00C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x4000) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 124);
  *v4 = 32;
  v4[1] = v15;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(this + 5);
  *v4 = 42;
  v17 = *(v16 + 5);
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = v4 + 3;
      do
      {
        *(v18 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++v18;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(v18 - 1) = v20;
    }

    else
    {
      v4[2] = v19;
      v18 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v17;
    v18 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v16, v18, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_7:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 125);
  *v4 = 48;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_8:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

LABEL_69:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v27 = *(this + 30);
    *v4 = 64;
    if (v27 > 0x7F)
    {
      v4[1] = v27 | 0x80;
      v28 = v27 >> 7;
      if (v27 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          ++v4;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v4 - 1) = v29;
        if ((v6 & 8) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v4[2] = v28;
        v4 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      v4[1] = v27;
      v4 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_90;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 29);
  *v4 = 56;
  if (v23 > 0x7F)
  {
    v4[1] = v23 | 0x80;
    v24 = v23 >> 7;
    if (v23 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v4;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v4 - 1) = v25;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v4[2] = v24;
      v4 += 3;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v4[1] = v23;
    v4 += 2;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_69;
    }
  }

LABEL_9:
  if ((v6 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_80:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(this + 6);
  *v4 = 82;
  v32 = *(v31 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_100;
  }

LABEL_90:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 7);
  *v4 = 90;
  v38 = *(v37 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_110;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(this + 8);
  *v4 = 98;
  v44 = *(v43 + 12);
  if (v44 > 0x7F)
  {
    v4[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = v4 + 3;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      v4[2] = v46;
      v45 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v44;
    v45 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_120;
  }

LABEL_110:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 9);
  *v4 = 106;
  v50 = *(v49 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v49, v51, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_14:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_130;
  }

LABEL_120:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v55 = *(this + 10);
  *v4 = 114;
  v56 = *(v55 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v55, v57, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_15:
    if ((v6 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_140;
  }

LABEL_130:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v61 = *(this + 11);
  *v4 = 122;
  v62 = *(v61 + 12);
  if (v62 > 0x7F)
  {
    v4[1] = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = v4 + 3;
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
      v4[2] = v64;
      v63 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v62;
    v63 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v61, v63, a3);
  if ((v6 & 2) == 0)
  {
LABEL_16:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_141;
  }

LABEL_140:
  v4 = sub_22150C00C(a3, 16, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x200) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_151;
  }

LABEL_141:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v67 = *(this + 12);
  *v4 = 394;
  v68 = *(v67 + 5);
  if (v68 > 0x7F)
  {
    v4[2] = v68 | 0x80;
    v70 = v68 >> 7;
    if (v68 >> 14)
    {
      v69 = v4 + 4;
      do
      {
        *(v69 - 1) = v70 | 0x80;
        v71 = v70 >> 7;
        ++v69;
        v72 = v70 >> 14;
        v70 >>= 7;
      }

      while (v72);
      *(v69 - 1) = v71;
    }

    else
    {
      v4[3] = v70;
      v69 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v68;
    v69 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v67, v69, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_154;
  }

LABEL_151:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v73 = *(this + 126);
  *v4 = 400;
  v4[2] = v73;
  v4 += 3;
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

LABEL_157:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v75 = *(this + 16);
    *v4 = 416;
    if (v75 > 0x7F)
    {
      v4[2] = v75 | 0x80;
      v76 = v75 >> 7;
      if (v75 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v76 | 0x80;
          v77 = v76 >> 7;
          ++v4;
          v78 = v76 >> 14;
          v76 >>= 7;
        }

        while (v78);
        *(v4 - 1) = v77;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v4[3] = v76;
        v4 += 4;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_168;
        }
      }
    }

    else
    {
      v4[2] = v75;
      v4 += 3;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_168;
      }
    }

LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_154:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v74 = *(this + 127);
  *v4 = 408;
  v4[2] = v74;
  v4 += 3;
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_157;
  }

LABEL_20:
  if ((v6 & 0x80000) == 0)
  {
    goto LABEL_21;
  }

LABEL_168:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v79 = *(this + 17);
  *v4 = 424;
  if (v79 > 0x7F)
  {
    v4[2] = v79 | 0x80;
    v80 = v79 >> 7;
    if (v79 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v80 | 0x80;
        v81 = v80 >> 7;
        ++v4;
        v82 = v80 >> 14;
        v80 >>= 7;
      }

      while (v82);
      *(v4 - 1) = v81;
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4[3] = v80;
      v4 += 4;
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v4[2] = v79;
    v4 += 3;
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 144);
  *v4 = 432;
  v4[2] = v7;
  v4 += 3;
LABEL_25:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}