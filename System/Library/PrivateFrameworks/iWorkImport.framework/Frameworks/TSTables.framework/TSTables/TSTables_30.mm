unsigned __int8 *TSCE::OwnerUIDMapperArchive::_InternalSerialize(TSCE::OwnerUIDMapperArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
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

  a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 5);
  *a2 = 26;
  v19 = *(v18 + 5);
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

  a2 = TSP::UUID::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_60;
  }

LABEL_50:
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

  a2 = TSP::UUID::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 7);
  *a2 = 42;
  v31 = *(v30 + 5);
  if (v31 > 0x7F)
  {
    a2[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = a2 + 3;
      do
      {
        *(v32 - 1) = v33 | 0x80;
        v34 = v33 >> 7;
        ++v32;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
      *(v32 - 1) = v34;
    }

    else
    {
      a2[2] = v33;
      v32 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v31;
    v32 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_80;
  }

LABEL_70:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 8);
  *a2 = 50;
  v37 = *(v36 + 5);
  if (v37 > 0x7F)
  {
    a2[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = a2 + 3;
      do
      {
        *(v38 - 1) = v39 | 0x80;
        v40 = v39 >> 7;
        ++v38;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
      *(v38 - 1) = v40;
    }

    else
    {
      a2[2] = v39;
      v38 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v37;
    v38 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_90;
  }

LABEL_80:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 9);
  *a2 = 58;
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

  a2 = TSP::UUID::_InternalSerialize(v42, v44, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_100;
  }

LABEL_90:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(this + 10);
  *a2 = 66;
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

  a2 = TSP::UUID::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_110;
  }

LABEL_100:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v54 = *(this + 11);
  *a2 = 74;
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

  a2 = TSP::UUID::_InternalSerialize(v54, v56, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_120;
  }

LABEL_110:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v60 = *(this + 12);
  *a2 = 82;
  v61 = *(v60 + 5);
  if (v61 > 0x7F)
  {
    a2[1] = v61 | 0x80;
    v63 = v61 >> 7;
    if (v61 >> 14)
    {
      v62 = a2 + 3;
      do
      {
        *(v62 - 1) = v63 | 0x80;
        v64 = v63 >> 7;
        ++v62;
        v65 = v63 >> 14;
        v63 >>= 7;
      }

      while (v65);
      *(v62 - 1) = v64;
    }

    else
    {
      a2[2] = v63;
      v62 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v61;
    v62 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v60, v62, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_130;
  }

LABEL_120:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v66 = *(this + 13);
  *a2 = 90;
  v67 = *(v66 + 5);
  if (v67 > 0x7F)
  {
    a2[1] = v67 | 0x80;
    v69 = v67 >> 7;
    if (v67 >> 14)
    {
      v68 = a2 + 3;
      do
      {
        *(v68 - 1) = v69 | 0x80;
        v70 = v69 >> 7;
        ++v68;
        v71 = v69 >> 14;
        v69 >>= 7;
      }

      while (v71);
      *(v68 - 1) = v70;
    }

    else
    {
      a2[2] = v69;
      v68 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v67;
    v68 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v66, v68, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_140;
  }

LABEL_130:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v72 = *(this + 14);
  *a2 = 98;
  v73 = *(v72 + 5);
  if (v73 > 0x7F)
  {
    a2[1] = v73 | 0x80;
    v75 = v73 >> 7;
    if (v73 >> 14)
    {
      v74 = a2 + 3;
      do
      {
        *(v74 - 1) = v75 | 0x80;
        v76 = v75 >> 7;
        ++v74;
        v77 = v75 >> 14;
        v75 >>= 7;
      }

      while (v77);
      *(v74 - 1) = v76;
    }

    else
    {
      a2[2] = v75;
      v74 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v73;
    v74 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v72, v74, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_150;
  }

LABEL_140:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v78 = *(this + 15);
  *a2 = 122;
  v79 = *(v78 + 5);
  if (v79 > 0x7F)
  {
    a2[1] = v79 | 0x80;
    v81 = v79 >> 7;
    if (v79 >> 14)
    {
      v80 = a2 + 3;
      do
      {
        *(v80 - 1) = v81 | 0x80;
        v82 = v81 >> 7;
        ++v80;
        v83 = v81 >> 14;
        v81 >>= 7;
      }

      while (v83);
      *(v80 - 1) = v82;
    }

    else
    {
      a2[2] = v81;
      v80 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v79;
    v80 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v78, v80, a3);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_160;
  }

LABEL_150:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v84 = *(this + 16);
  *a2 = 386;
  v85 = *(v84 + 5);
  if (v85 > 0x7F)
  {
    a2[2] = v85 | 0x80;
    v87 = v85 >> 7;
    if (v85 >> 14)
    {
      v86 = a2 + 4;
      do
      {
        *(v86 - 1) = v87 | 0x80;
        v88 = v87 >> 7;
        ++v86;
        v89 = v87 >> 14;
        v87 >>= 7;
      }

      while (v89);
      *(v86 - 1) = v88;
    }

    else
    {
      a2[3] = v87;
      v86 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v85;
    v86 = a2 + 3;
  }

  a2 = TSP::UUID::_InternalSerialize(v84, v86, a3);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_170;
  }

LABEL_160:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v90 = *(this + 17);
  *a2 = 394;
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

  a2 = TSP::UUID::_InternalSerialize(v90, v92, a3);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_180;
  }

LABEL_170:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v96 = *(this + 18);
  *a2 = 402;
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

  a2 = TSP::UUID::_InternalSerialize(v96, v98, a3);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_190;
  }

LABEL_180:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v102 = *(this + 19);
  *a2 = 410;
  v103 = *(v102 + 5);
  if (v103 > 0x7F)
  {
    a2[2] = v103 | 0x80;
    v105 = v103 >> 7;
    if (v103 >> 14)
    {
      v104 = a2 + 4;
      do
      {
        *(v104 - 1) = v105 | 0x80;
        v106 = v105 >> 7;
        ++v104;
        v107 = v105 >> 14;
        v105 >>= 7;
      }

      while (v107);
      *(v104 - 1) = v106;
    }

    else
    {
      a2[3] = v105;
      v104 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v103;
    v104 = a2 + 3;
  }

  a2 = TSP::UUID::_InternalSerialize(v102, v104, a3);
  if ((v5 & 0x20000) != 0)
  {
LABEL_190:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v108 = *(this + 20);
    *a2 = 418;
    v109 = *(v108 + 5);
    if (v109 > 0x7F)
    {
      a2[2] = v109 | 0x80;
      v111 = v109 >> 7;
      if (v109 >> 14)
      {
        v110 = a2 + 4;
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
        a2[3] = v111;
        v110 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v109;
      v110 = a2 + 3;
    }

    a2 = TSP::UUID::_InternalSerialize(v108, v110, a3);
  }

LABEL_200:
  v114 = *(this + 1);
  if ((v114 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v114 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::OwnerUIDMapperArchive::RequiredFieldsByteSizeFallback(TSCE::OwnerUIDMapperArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
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
    v5 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v8 = TSP::UUID::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v9 = TSP::UUID::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = TSP::UUID::ByteSizeLong(*(this + 7));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = TSP::UUID::ByteSizeLong(*(this + 8));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = TSP::UUID::ByteSizeLong(*(this + 9));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = TSP::UUID::ByteSizeLong(*(this + 10));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = TSP::UUID::ByteSizeLong(*(this + 11));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = TSP::UUID::ByteSizeLong(*(this + 12));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = TSP::UUID::ByteSizeLong(*(this + 13));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = TSP::UUID::ByteSizeLong(*(this + 14));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = TSP::UUID::ByteSizeLong(*(this + 15));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v19 = TSP::UUID::ByteSizeLong(*(this + 16));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v20 = TSP::UUID::ByteSizeLong(*(this + 17));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x8000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

LABEL_38:
    v22 = TSP::UUID::ByteSizeLong(*(this + 19));
    v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((*(this + 4) & 0x20000) == 0)
    {
      return v3;
    }

    goto LABEL_22;
  }

LABEL_37:
  v21 = TSP::UUID::ByteSizeLong(*(this + 18));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x10000) != 0)
  {
    goto LABEL_38;
  }

LABEL_21:
  if ((v2 & 0x20000) != 0)
  {
LABEL_22:
    v6 = TSP::UUID::ByteSizeLong(*(this + 20));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  return v3;
}

uint64_t TSCE::OwnerUIDMapperArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 0x3FFFF) != 0)
  {
    v32 = TSCE::OwnerUIDMapperArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v50 = TSP::UUID::ByteSizeLong(this[3]);
    v49 = TSP::UUID::ByteSizeLong(this[4]);
    v2 = TSP::UUID::ByteSizeLong(this[5]);
    v46 = TSP::UUID::ByteSizeLong(this[6]);
    v3 = TSP::UUID::ByteSizeLong(this[7]);
    v4 = v3;
    v48 = v3;
    v5 = TSP::UUID::ByteSizeLong(this[8]);
    v6 = v5;
    v47 = v5;
    v7 = TSP::UUID::ByteSizeLong(this[9]);
    v8 = v7;
    v45 = v7;
    v9 = TSP::UUID::ByteSizeLong(this[10]);
    v10 = v9;
    v44 = v9;
    v40 = TSP::UUID::ByteSizeLong(this[11]);
    v39 = TSP::UUID::ByteSizeLong(this[12]);
    v38 = TSP::UUID::ByteSizeLong(this[13]);
    v11 = TSP::UUID::ByteSizeLong(this[14]);
    v12 = TSP::UUID::ByteSizeLong(this[15]);
    v13 = v12;
    v43 = v12;
    v14 = TSP::UUID::ByteSizeLong(this[16]);
    v15 = v14;
    v42 = v14;
    v16 = TSP::UUID::ByteSizeLong(this[17]);
    v17 = v16;
    v41 = v16;
    v18 = TSP::UUID::ByteSizeLong(this[18]);
    v19.i32[1] = v6;
    v19.i64[1] = __PAIR64__(v10, v8);
    v20 = v18;
    v21 = v11;
    v22.i32[0] = v40 | 1;
    v22.i32[1] = v39 | 1;
    v22.i32[2] = v38 | 1;
    v22.i32[3] = v11 | 1;
    v23.i32[0] = v50 | 1;
    v23.i32[1] = v49 | 1;
    v23.i32[2] = v2 | 1;
    v23.i32[3] = v46 | 1;
    v24.i32[0] = v13 | 1;
    v24.i32[1] = v15 | 1;
    v24.i32[2] = v17 | 1;
    v24.i32[3] = v18 | 1;
    v19.i32[0] = v4 | 1;
    v19.i32[1] |= 1u;
    v19.i64[1] |= 0x100000001uLL;
    v25.i64[0] = 0x1F0000001FLL;
    v25.i64[1] = 0x1F0000001FLL;
    v26.i64[0] = 0x4900000049;
    v26.i64[1] = 0x4900000049;
    v27.i64[0] = 0x4900000049;
    v27.i64[1] = 0x4900000049;
    v28 = vmlal_u16(v27, vmovn_s32(veorq_s8(vclzq_s32(v19), v25)), 0x9000900090009);
    v19.i64[0] = 0x4900000049;
    v19.i64[1] = 0x4900000049;
    v29 = vmlal_u16(v19, vmovn_s32(veorq_s8(vclzq_s32(v24), v25)), 0x9000900090009);
    v24.i64[0] = 0x4900000049;
    v24.i64[1] = 0x4900000049;
    v36 = vshrq_n_u32(vmlal_u16(v24, vmovn_s32(veorq_s8(vclzq_s32(v23), v25)), 0x9000900090009), 6uLL);
    v37 = vshrq_n_u32(vmlal_u16(v26, vmovn_s32(veorq_s8(vclzq_s32(v22), v25)), 0x9000900090009), 6uLL);
    v34 = vshrq_n_u32(v28, 6uLL);
    v35 = vshrq_n_u32(v29, 6uLL);
    v30 = TSP::UUID::ByteSizeLong(this[19]);
    v31 = TSP::UUID::ByteSizeLong(this[20]);
    v32 = v50 + v48 + v46 + v2 + v49 + vaddvq_s64(vaddq_s64(vaddq_s64(vaddl_u32(*v36.i8, *v37.i8), vaddl_u32(*v34.i8, *v35.i8)), vaddq_s64(vaddl_high_u32(v36, v37), vaddl_high_u32(v34, v35)))) + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + v30 + v20 + v41 + v42 + v43 + v21 + v38 + v39 + v40 + v44 + v45 + v47 + 23;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v32, this + 20);
  }

  else
  {
    *(this + 5) = v32;
    return v32;
  }
}

uint64_t TSCE::OwnerUIDMapperArchive::MergeFrom(TSCE::OwnerUIDMapperArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::OwnerUIDMapperArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::OwnerUIDMapperArchive::MergeFrom(uint64_t this, const TSCE::OwnerUIDMapperArchive *a2)
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
    goto LABEL_77;
  }

  v6 = MEMORY[0x277D809E0];
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

      v7 = MEMORY[0x223DA0360](v8);
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

    this = TSP::UUID::MergeFrom(v7, v9);
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
  v10 = *(v3 + 32);
  if (!v10)
  {
    v11 = *(v3 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0360](v11);
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

  this = TSP::UUID::MergeFrom(v10, v12);
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
  v13 = *(v3 + 40);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0360](v14);
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

  this = TSP::UUID::MergeFrom(v13, v15);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_37:
  *(v3 + 16) |= 8u;
  v16 = *(v3 + 48);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA0360](v17);
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

  this = TSP::UUID::MergeFrom(v16, v18);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v22 = *(v3 + 64);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA0360](v23);
      *(v3 + 64) = v22;
    }

    if (*(a2 + 8))
    {
      v24 = *(a2 + 8);
    }

    else
    {
      v24 = v6;
    }

    this = TSP::UUID::MergeFrom(v22, v24);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
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
  v19 = *(v3 + 56);
  if (!v19)
  {
    v20 = *(v3 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x223DA0360](v20);
    *(v3 + 56) = v19;
  }

  if (*(a2 + 7))
  {
    v21 = *(a2 + 7);
  }

  else
  {
    v21 = v6;
  }

  this = TSP::UUID::MergeFrom(v19, v21);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v25 = *(v3 + 72);
  if (!v25)
  {
    v26 = *(v3 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x223DA0360](v26);
    *(v3 + 72) = v25;
  }

  if (*(a2 + 9))
  {
    v27 = *(a2 + 9);
  }

  else
  {
    v27 = v6;
  }

  this = TSP::UUID::MergeFrom(v25, v27);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v28 = *(v3 + 80);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x223DA0360](v29);
      *(v3 + 80) = v28;
    }

    if (*(a2 + 10))
    {
      v30 = *(a2 + 10);
    }

    else
    {
      v30 = v6;
    }

    this = TSP::UUID::MergeFrom(v28, v30);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 88);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x223DA0360](v32);
      *(v3 + 88) = v31;
    }

    if (*(a2 + 11))
    {
      v33 = *(a2 + 11);
    }

    else
    {
      v33 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v31, v33);
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
  v34 = *(v3 + 96);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x223DA0360](v35);
    *(v3 + 96) = v34;
  }

  if (*(a2 + 12))
  {
    v36 = *(a2 + 12);
  }

  else
  {
    v36 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v34, v36);
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
  v37 = *(v3 + 104);
  if (!v37)
  {
    v38 = *(v3 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x223DA0360](v38);
    *(v3 + 104) = v37;
  }

  if (*(a2 + 13))
  {
    v39 = *(a2 + 13);
  }

  else
  {
    v39 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v37, v39);
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
  v40 = *(v3 + 112);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x223DA0360](v41);
    *(v3 + 112) = v40;
  }

  if (*(a2 + 14))
  {
    v42 = *(a2 + 14);
  }

  else
  {
    v42 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v40, v42);
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
  v43 = *(v3 + 120);
  if (!v43)
  {
    v44 = *(v3 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x223DA0360](v44);
    *(v3 + 120) = v43;
  }

  if (*(a2 + 15))
  {
    v45 = *(a2 + 15);
  }

  else
  {
    v45 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v43, v45);
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
  v46 = *(v3 + 128);
  if (!v46)
  {
    v47 = *(v3 + 8);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x223DA0360](v47);
    *(v3 + 128) = v46;
  }

  if (*(a2 + 16))
  {
    v48 = *(a2 + 16);
  }

  else
  {
    v48 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v46, v48);
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
  v49 = *(v3 + 136);
  if (!v49)
  {
    v50 = *(v3 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x223DA0360](v50);
    *(v3 + 136) = v49;
  }

  if (*(a2 + 17))
  {
    v51 = *(a2 + 17);
  }

  else
  {
    v51 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v49, v51);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v52 = *(v3 + 144);
    if (!v52)
    {
      v53 = *(v3 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x223DA0360](v53);
      *(v3 + 144) = v52;
    }

    if (*(a2 + 18))
    {
      v54 = *(a2 + 18);
    }

    else
    {
      v54 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v52, v54);
  }

LABEL_151:
  if ((v5 & 0x30000) != 0)
  {
    if ((v5 & 0x10000) != 0)
    {
      *(v3 + 16) |= 0x10000u;
      v55 = *(v3 + 152);
      if (!v55)
      {
        v56 = *(v3 + 8);
        if (v56)
        {
          v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
        }

        v55 = MEMORY[0x223DA0360](v56);
        *(v3 + 152) = v55;
      }

      if (*(a2 + 19))
      {
        v57 = *(a2 + 19);
      }

      else
      {
        v57 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v55, v57);
    }

    if ((v5 & 0x20000) != 0)
    {
      *(v3 + 16) |= 0x20000u;
      v58 = *(v3 + 160);
      if (!v58)
      {
        v59 = *(v3 + 8);
        if (v59)
        {
          v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
        }

        v58 = MEMORY[0x223DA0360](v59);
        *(v3 + 160) = v58;
      }

      if (*(a2 + 20))
      {
        v60 = *(a2 + 20);
      }

      else
      {
        v60 = MEMORY[0x277D809E0];
      }

      return TSP::UUID::MergeFrom(v58, v60);
    }
  }

  return this;
}

uint64_t *TSCE::OwnerUIDMapperArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::OwnerUIDMapperArchive::Clear(this);

    return TSCE::OwnerUIDMapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::OwnerUIDMapperArchive::CopyFrom(uint64_t *this, const TSCE::OwnerUIDMapperArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::OwnerUIDMapperArchive::Clear(this);

    return TSCE::OwnerUIDMapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::OwnerUIDMapperArchive::IsInitialized(TSCE::OwnerUIDMapperArchive *this)
{
  if ((~*(this + 4) & 0x3FFFF) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 13));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 14));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 15));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x2000) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 16));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 17));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 18));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10000) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 19));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20000) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(this + 20));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

double TSCE::OwnerUIDMapperArchive::InternalSwap(TSCE::OwnerUIDMapperArchive *this, TSCE::OwnerUIDMapperArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;

  *&result = sub_221547320(this + 3, a2 + 24).n128_u64[0];
  return result;
}

__n128 sub_221547320(void *a1, uint64_t a2)
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
  *(a1 + 7) = *(a2 + 112);
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  v18 = a1[16];
  v19 = a1[17];
  result = *(a2 + 128);
  *(a1 + 8) = result;
  *(a2 + 128) = v18;
  *(a2 + 136) = v19;
  return result;
}

TSP::UUID *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::clear_prev_table_uid(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::clear_new_table_uid(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF490;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AF490;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this, const TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF490;
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
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::~RewriteTableUIDInfoArchive_TableUIDMapEntryArchive(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this)
{
  if (this != TSCE::_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::~RewriteTableUIDInfoArchive_TableUIDMapEntryArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::default_instance(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this)
{
  if (atomic_load_explicit(scc_info_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_default_instance_;
}

uint64_t *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::UUID::Clear(*(v1 + 32));
    }
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

google::protobuf::internal *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_221567030(a3, &v19) & 1) == 0)
  {
    v5 = (v19 + 1);
    v6 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v19 + 2);
LABEL_6:
      v19 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v7 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v17;
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

        v13 = MEMORY[0x223DA0360](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        goto LABEL_28;
      }
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
          return v19;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x223DA0360](v14);
        LODWORD(v11) = v15;
        *(a1 + 24) = v15;
LABEL_28:
        v5 = v19;
      }
    }

    v10 = sub_2216F813C(a3, v11, v5);
LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::_InternalSerialize(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
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

    a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::RequiredFieldsByteSizeFallback(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::UUID::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSP::UUID::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::MergeFrom(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::MergeFrom(uint64_t this, const TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    v6 = MEMORY[0x277D809E0];
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

        v7 = MEMORY[0x223DA0360](v8);
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

      this = TSP::UUID::MergeFrom(v7, v9);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA0360](v11);
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

      return TSP::UUID::MergeFrom(v10, v12);
    }
  }

  return this;
}

uint64_t *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::Clear(this);

    return TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::CopyFrom(uint64_t *this, const TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::Clear(this);

    return TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::IsInitialized(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::InternalSwap(TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *this, TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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

TSCE::RewriteTableUIDInfoArchive *TSCE::RewriteTableUIDInfoArchive::RewriteTableUIDInfoArchive(TSCE::RewriteTableUIDInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF540;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_RewriteTableUIDInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::RewriteTableUIDInfoArchive *TSCE::RewriteTableUIDInfoArchive::RewriteTableUIDInfoArchive(TSCE::RewriteTableUIDInfoArchive *this, const TSCE::RewriteTableUIDInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AF540;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156B62C(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::RewriteTableUIDInfoArchive::~RewriteTableUIDInfoArchive(TSCE::RewriteTableUIDInfoArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156B5A8(this + 2);
}

{
  TSCE::RewriteTableUIDInfoArchive::~RewriteTableUIDInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RewriteTableUIDInfoArchive::default_instance(TSCE::RewriteTableUIDInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_RewriteTableUIDInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RewriteTableUIDInfoArchive_default_instance_;
}

google::protobuf::internal *TSCE::RewriteTableUIDInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FE17C(a3, v13, v10);
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

unsigned __int8 *TSCE::RewriteTableUIDInfoArchive::_InternalSerialize(TSCE::RewriteTableUIDInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RewriteTableUIDInfoArchive::ByteSizeLong(TSCE::RewriteTableUIDInfoArchive *this)
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
      v7 = TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::ByteSizeLong(v6);
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

uint64_t TSCE::RewriteTableUIDInfoArchive::MergeFrom(TSCE::RewriteTableUIDInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RewriteTableUIDInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::RewriteTableUIDInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RewriteTableUIDInfoArchive::Clear(this);

    return TSCE::RewriteTableUIDInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RewriteTableUIDInfoArchive::CopyFrom(uint64_t *this, const TSCE::RewriteTableUIDInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RewriteTableUIDInfoArchive::Clear(this);

    return TSCE::RewriteTableUIDInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::RewriteTableUIDInfoArchive::InternalSwap(TSCE::RewriteTableUIDInfoArchive *this, TSCE::RewriteTableUIDInfoArchive *a2)
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

void *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::GroupByChangeArchive_GroupingColumnChangeArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AF5F0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834AF5F0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::GroupByChangeArchive_GroupingColumnChangeArchive(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this, const TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF5F0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::~GroupByChangeArchive_GroupingColumnChangeArchive(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this)
{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::default_instance(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByChangeArchive_GroupingColumnChangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_GroupByChangeArchive_GroupingColumnChangeArchive_default_instance_;
}

uint64_t *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::Clear(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v24) & 1) == 0)
  {
    while (1)
    {
      v7 = (v24 + 1);
      v8 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v9 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_12;
        }

        v5 |= 2u;
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
          v24 = v12;
          *(a1 + 28) = v13;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v24 = v20;
        *(a1 + 28) = v21;
        if (!v20)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >> 3 != 1 || v8 != 8)
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

          v24 = google::protobuf::internal::UnknownFieldParse();
          if (!v24)
          {
LABEL_38:
            v24 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v5 |= 1u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_28:
          v24 = v15;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v24 = v22;
        *(a1 + 24) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      if (sub_221567030(a3, &v24))
      {
        goto LABEL_2;
      }
    }

    v7 = (v24 + 2);
LABEL_6:
    v24 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

unsigned __int8 *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::_InternalSerialize(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::RequiredFieldsByteSizeFallback(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::ByteSizeLong(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::MergeFrom(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::MergeFrom(uint64_t this, const TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::CopyFrom(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::Clear(this);

    return TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::CopyFrom(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this, const TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::Clear(this);

    return TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::InternalSwap(TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *this, TSCE::GroupByChangeArchive_GroupingColumnChangeArchive *a2)
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

TSP::UUID *TSCE::GroupByChangeArchive::clear_group_by_uid(TSCE::GroupByChangeArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDMapArchive *TSCE::GroupByChangeArchive::clear_previous_to_updated_map(TSCE::GroupByChangeArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::UUIDMapArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUIDMapArchive *TSCE::GroupByChangeArchive::clear_updated_to_previous_map(TSCE::GroupByChangeArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::UUIDMapArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t TSCE::GroupByChangeArchive::clear_removed_group_uids(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSCE::GroupByChangeArchive *TSCE::GroupByChangeArchive::GroupByChangeArchive(TSCE::GroupByChangeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF6A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_GroupByChangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 26) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  return this;
}

void sub_22154914C(_Unwind_Exception *a1)
{
  sub_221567450(v2);
  sub_221567974(v1);
  _Unwind_Resume(a1);
}

TSCE::GroupByChangeArchive *TSCE::GroupByChangeArchive::GroupByChangeArchive(TSCE::GroupByChangeArchive *this, const TSCE::GroupByChangeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF6A0;
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
    sub_2215679F8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22156B6EC(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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

  v16 = *(a2 + 4);
  if (v16)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v16 & 4) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  v17 = *(a2 + 12);
  *(this + 26) = *(a2 + 26);
  *(this + 12) = v17;
  return this;
}

void sub_22154937C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C40759568C3);
  sub_221567450(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::GroupByChangeArchive::~GroupByChangeArchive(TSCE::GroupByChangeArchive *this)
{
  if (this != &TSCE::_GroupByChangeArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    if (*(this + 10))
    {
      v3 = MEMORY[0x223D9FC20]();
      MEMORY[0x223DA1450](v3, 0x10A1C40759568C3);
    }

    if (*(this + 11))
    {
      v4 = MEMORY[0x223D9FC20]();
      MEMORY[0x223DA1450](v4, 0x10A1C40759568C3);
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221567450(this + 6);
  sub_221567974(this + 3);
}

{
  TSCE::GroupByChangeArchive::~GroupByChangeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::GroupByChangeArchive::default_instance(TSCE::GroupByChangeArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByChangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_GroupByChangeArchive_default_instance_;
}

uint64_t *TSCE::GroupByChangeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
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
      this = TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      this = TSP::UUID::Clear(*(v1 + 72));
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    this = TSP::UUIDMapArchive::Clear(*(v1 + 80));
    if ((v8 & 4) != 0)
    {
LABEL_13:
      this = TSP::UUIDMapArchive::Clear(*(v1 + 88));
    }
  }

LABEL_14:
  if ((v8 & 0x38) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_221567398(v9);
  }

  return this;
}

google::protobuf::internal *TSCE::GroupByChangeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v54) & 1) == 0)
  {
    while (1)
    {
      v7 = (v54 + 1);
      v8 = *v54;
      if ((*v54 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v54, (v9 - 128));
      v54 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_102;
      }

      v7 = TagFallback;
      v8 = v31;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 <= 6)
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
              goto LABEL_84;
            }

            *(a1 + 16) |= 2u;
            v16 = *(a1 + 80);
            if (!v16)
            {
              v35 = *(a1 + 8);
              if (v35)
              {
                v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
              }

              v36 = MEMORY[0x223DA0310](v35);
              LODWORD(v16) = v36;
              *(a1 + 80) = v36;
LABEL_64:
              v7 = v54;
            }
          }

          else
          {
            if (v10 != 6 || v8 != 50)
            {
              goto LABEL_84;
            }

            *(a1 + 16) |= 4u;
            v16 = *(a1 + 88);
            if (!v16)
            {
              v17 = *(a1 + 8);
              if (v17)
              {
                v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
              }

              v18 = MEMORY[0x223DA0310](v17);
              LODWORD(v16) = v18;
              *(a1 + 88) = v18;
              goto LABEL_64;
            }
          }

          v15 = sub_2216FE24C(a3, v16, v7);
          goto LABEL_91;
        }

        if (v10 != 7)
        {
          if (v10 != 8 || v8 != 66)
          {
            goto LABEL_84;
          }

          v22 = (v7 - 1);
          while (2)
          {
            v23 = (v22 + 1);
            v54 = (v22 + 1);
            v24 = *(a1 + 64);
            if (!v24)
            {
LABEL_40:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v24 = *(a1 + 64);
              v25 = *v24;
              goto LABEL_41;
            }

            v29 = *(a1 + 56);
            v25 = *v24;
            if (v29 >= *v24)
            {
              if (v25 == *(a1 + 60))
              {
                goto LABEL_40;
              }

LABEL_41:
              *v24 = v25 + 1;
              v26 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByChangeArchive_GroupingColumnChangeArchive>(*(a1 + 48));
              v27 = *(a1 + 56);
              v28 = *(a1 + 64) + 8 * v27;
              *(a1 + 56) = v27 + 1;
              *(v28 + 8) = v26;
              v23 = v54;
            }

            else
            {
              *(a1 + 56) = v29 + 1;
              v26 = *&v24[2 * v29 + 2];
            }

            v22 = sub_2216FE31C(a3, v26, v23);
            v54 = v22;
            if (!v22)
            {
              goto LABEL_102;
            }

            if (*a3 <= v22 || *v22 != 66)
            {
              goto LABEL_92;
            }

            continue;
          }
        }

        if (v8 != 58)
        {
          goto LABEL_84;
        }

        v40 = v7 - 1;
        while (2)
        {
          v41 = (v40 + 1);
          v54 = (v40 + 1);
          v42 = *(a1 + 40);
          if (!v42)
          {
LABEL_74:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v42 = *(a1 + 40);
            v43 = *v42;
            goto LABEL_75;
          }

          v48 = *(a1 + 32);
          v43 = *v42;
          if (v48 >= *v42)
          {
            if (v43 == *(a1 + 36))
            {
              goto LABEL_74;
            }

LABEL_75:
            *v42 = v43 + 1;
            v44 = MEMORY[0x223DA0360](*(a1 + 24));
            LODWORD(v45) = v44;
            v46 = *(a1 + 32);
            v47 = *(a1 + 40) + 8 * v46;
            *(a1 + 32) = v46 + 1;
            *(v47 + 8) = v44;
            v41 = v54;
          }

          else
          {
            *(a1 + 32) = v48 + 1;
            v45 = *&v42[2 * v48 + 2];
          }

          v40 = sub_2216F813C(a3, v45, v41);
          v54 = v40;
          if (!v40)
          {
            goto LABEL_102;
          }

          if (*a3 <= v40 || *v40 != 58)
          {
            goto LABEL_92;
          }

          continue;
        }
      }

      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            v12 = *(a1 + 72);
            if (!v12)
            {
              v13 = *(a1 + 8);
              if (v13)
              {
                v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
              }

              v14 = MEMORY[0x223DA0360](v13);
              LODWORD(v12) = v14;
              *(a1 + 72) = v14;
              v7 = v54;
            }

            v15 = sub_2216F813C(a3, v12, v7);
          }

          else
          {
LABEL_84:
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

            v15 = google::protobuf::internal::UnknownFieldParse();
          }

LABEL_91:
          v54 = v15;
          if (!v15)
          {
            goto LABEL_102;
          }

          goto LABEL_92;
        }

        if (v8 != 8)
        {
          goto LABEL_84;
        }

        v33 = (v7 + 1);
        v32 = *v7;
        if ((v32 & 0x8000000000000000) != 0)
        {
          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if ((v34 & 0x80000000) == 0)
          {
            v33 = (v7 + 2);
            goto LABEL_56;
          }

          v54 = google::protobuf::internal::VarintParseSlow64(v7, v32);
          if (!v54)
          {
            goto LABEL_102;
          }
        }

        else
        {
LABEL_56:
          v54 = v33;
        }

        if (v32 > 6)
        {
          sub_2216FF0EC();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 96) = v32;
        }

        goto LABEL_92;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_84;
        }

        v5 |= 0x10u;
        v37 = (v7 + 1);
        LODWORD(v38) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

        v39 = *v37;
        v38 = (v38 + (v39 << 7) - 128);
        if ((v39 & 0x80000000) == 0)
        {
          v37 = (v7 + 2);
LABEL_70:
          v54 = v37;
          *(a1 + 100) = v38;
          goto LABEL_92;
        }

        v50 = google::protobuf::internal::VarintParseSlow32(v7, v38);
        v54 = v50;
        *(a1 + 100) = v51;
        if (!v50)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_84;
        }

        v5 |= 0x20u;
        v19 = (v7 + 1);
        LODWORD(v20) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v19;
        v20 = (v20 + (v21 << 7) - 128);
        if ((v21 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_34:
          v54 = v19;
          *(a1 + 104) = v20;
          goto LABEL_92;
        }

        v52 = google::protobuf::internal::VarintParseSlow32(v7, v20);
        v54 = v52;
        *(a1 + 104) = v53;
        if (!v52)
        {
LABEL_102:
          v54 = 0;
          goto LABEL_2;
        }
      }

LABEL_92:
      if (sub_221567030(a3, &v54))
      {
        goto LABEL_2;
      }
    }

    v7 = (v54 + 2);
LABEL_6:
    v54 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

unsigned __int8 *TSCE::GroupByChangeArchive::_InternalSerialize(TSCE::GroupByChangeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 24);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
        if (v5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if (v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if (v5)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 9);
  *a2 = 18;
  v11 = *(v10 + 5);
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = a2 + 3;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      a2[2] = v13;
      v12 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v11;
    v12 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v10, v12, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 26);
    *a2 = 32;
    if (v20 > 0x7F)
    {
      a2[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++a2;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(a2 - 1) = v22;
        if ((v5 & 2) != 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        a2[2] = v21;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      a2[1] = v20;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_61;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 25);
  *a2 = 24;
  if (v16 > 0x7F)
  {
    a2[1] = v16 | 0x80;
    v17 = v16 >> 7;
    if (v16 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++a2;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_40;
    }
  }

LABEL_5:
  if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_51:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 10);
  *a2 = 42;
  v25 = *(v24 + 16);
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

  a2 = TSP::UUIDMapArchive::_InternalSerialize(v24, v26, a3);
  if ((v5 & 4) != 0)
  {
LABEL_61:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 11);
    *a2 = 50;
    v31 = *(v30 + 16);
    if (v31 > 0x7F)
    {
      a2[1] = v31 | 0x80;
      v33 = v31 >> 7;
      if (v31 >> 14)
      {
        v32 = a2 + 3;
        do
        {
          *(v32 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++v32;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(v32 - 1) = v34;
      }

      else
      {
        a2[2] = v33;
        v32 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v31;
      v32 = a2 + 2;
    }

    a2 = TSP::UUIDMapArchive::_InternalSerialize(v30, v32, a3);
  }

LABEL_71:
  v36 = *(this + 8);
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v38 = *(*(this + 5) + 8 * i + 8);
      *a2 = 58;
      v39 = *(v38 + 5);
      if (v39 > 0x7F)
      {
        a2[1] = v39 | 0x80;
        v41 = v39 >> 7;
        if (v39 >> 14)
        {
          v40 = a2 + 3;
          do
          {
            *(v40 - 1) = v41 | 0x80;
            v42 = v41 >> 7;
            ++v40;
            v43 = v41 >> 14;
            v41 >>= 7;
          }

          while (v43);
          *(v40 - 1) = v42;
        }

        else
        {
          a2[2] = v41;
          v40 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v39;
        v40 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v38, v40, a3);
    }
  }

  v44 = *(this + 14);
  if (v44)
  {
    for (j = 0; j != v44; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v46 = *(*(this + 8) + 8 * j + 8);
      *a2 = 66;
      v47 = *(v46 + 5);
      if (v47 > 0x7F)
      {
        a2[1] = v47 | 0x80;
        v49 = v47 >> 7;
        if (v47 >> 14)
        {
          v48 = a2 + 3;
          do
          {
            *(v48 - 1) = v49 | 0x80;
            v50 = v49 >> 7;
            ++v48;
            v51 = v49 >> 14;
            v49 >>= 7;
          }

          while (v51);
          *(v48 - 1) = v50;
        }

        else
        {
          a2[2] = v49;
          v48 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v47;
        v48 = a2 + 2;
      }

      a2 = TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::_InternalSerialize(v46, v48, a3);
    }
  }

  v52 = *(this + 1);
  if ((v52 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v52 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::GroupByChangeArchive::RequiredFieldsByteSizeFallback(TSCE::GroupByChangeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 9));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 8) == 0)
    {
      return result;
    }
  }

  v5 = *(this + 24);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  return result;
}

uint64_t TSCE::GroupByChangeArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 9) != 0)
  {
    v7 = TSCE::GroupByChangeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[9]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 24);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 2;
  }

  v8 = *(this + 8);
  v9 = v7 + v8;
  v10 = this[5];
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSP::UUID::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 14);
  v16 = v9 + v15;
  v17 = this[8];
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 4);
  if ((v22 & 6) != 0)
  {
    if ((v22 & 2) != 0)
    {
      v23 = TSP::UUIDMapArchive::ByteSizeLong(this[10]);
      v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v22 & 4) != 0)
    {
      v24 = TSP::UUIDMapArchive::ByteSizeLong(this[11]);
      v16 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v22 & 0x30) != 0)
  {
    if ((v22 & 0x10) != 0)
    {
      v16 += ((9 * (__clz(*(this + 25) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v22 & 0x20) != 0)
    {
      v16 += ((9 * (__clz(*(this + 26) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v16, this + 20);
  }

  else
  {
    *(this + 5) = v16;
    return v16;
  }
}

uint64_t TSCE::GroupByChangeArchive::MergeFrom(TSCE::GroupByChangeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::GroupByChangeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::GroupByChangeArchive::MergeFrom(uint64_t this, const TSCE::GroupByChangeArchive *a2)
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
    this = sub_2215679F8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_22156B6EC(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0360](v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 9))
      {
        v18 = *(a2 + 9);
      }

      else
      {
        v18 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v16, v18);
    }

    v19 = MEMORY[0x277D80A38];
    if ((v15 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v20 = *(v3 + 80);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x223DA0310](v21);
        *(v3 + 80) = v20;
      }

      if (*(a2 + 10))
      {
        v22 = *(a2 + 10);
      }

      else
      {
        v22 = v19;
      }

      this = TSP::UUIDMapArchive::MergeFrom(v20, v22);
      if ((v15 & 4) == 0)
      {
LABEL_21:
        if ((v15 & 8) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_43;
      }
    }

    else if ((v15 & 4) == 0)
    {
      goto LABEL_21;
    }

    *(v3 + 16) |= 4u;
    v23 = *(v3 + 88);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x223DA0310](v24);
      *(v3 + 88) = v23;
    }

    if (*(a2 + 11))
    {
      v25 = *(a2 + 11);
    }

    else
    {
      v25 = v19;
    }

    this = TSP::UUIDMapArchive::MergeFrom(v23, v25);
    if ((v15 & 8) == 0)
    {
LABEL_22:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(v3 + 96) = *(a2 + 24);
    if ((v15 & 0x10) == 0)
    {
LABEL_23:
      if ((v15 & 0x20) == 0)
      {
LABEL_25:
        *(v3 + 16) |= v15;
        return this;
      }

LABEL_24:
      *(v3 + 104) = *(a2 + 26);
      goto LABEL_25;
    }

LABEL_44:
    *(v3 + 100) = *(a2 + 25);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return this;
}

uint64_t *TSCE::GroupByChangeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByChangeArchive::Clear(this);

    return TSCE::GroupByChangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::GroupByChangeArchive::CopyFrom(uint64_t *this, const TSCE::GroupByChangeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByChangeArchive::Clear(this);

    return TSCE::GroupByChangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::GroupByChangeArchive::IsInitialized(TSCE::GroupByChangeArchive *this)
{
  if ((~*(this + 4) & 9) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = *(*(this + 8) + 8 * v6--);
    if ((~*(v7 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v8 = *(this + 4);
  if (v8)
  {
    result = TSP::UUID::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v8 = *(this + 4);
  }

  if ((v8 & 2) != 0)
  {
    result = TSP::UUIDMapArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v8 = *(this + 4);
  }

  if ((v8 & 4) == 0)
  {
    return 1;
  }

  result = TSP::UUIDMapArchive::IsInitialized(*(this + 11));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::GroupByChangeArchive::InternalSwap(TSCE::GroupByChangeArchive *this, TSCE::GroupByChangeArchive *a2)
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
  v9 = *(this + 9);
  v10 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  LODWORD(v11) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v11;
  return result;
}

TSP::UUID *TSCE::RewriteGroupNodeUIDInfoArchive::clear_group_by_uid(TSCE::RewriteGroupNodeUIDInfoArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDMapArchive *TSCE::RewriteGroupNodeUIDInfoArchive::clear_group_node_uid_map(TSCE::RewriteGroupNodeUIDInfoArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDMapArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCE::RewriteGroupNodeUIDInfoArchive *TSCE::RewriteGroupNodeUIDInfoArchive::RewriteGroupNodeUIDInfoArchive(TSCE::RewriteGroupNodeUIDInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF750;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RewriteGroupNodeUIDInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AF750;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RewriteGroupNodeUIDInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::RewriteGroupNodeUIDInfoArchive *TSCE::RewriteGroupNodeUIDInfoArchive::RewriteGroupNodeUIDInfoArchive(TSCE::RewriteGroupNodeUIDInfoArchive *this, const TSCE::RewriteGroupNodeUIDInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF750;
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
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSCE::RewriteGroupNodeUIDInfoArchive::~RewriteGroupNodeUIDInfoArchive(TSCE::RewriteGroupNodeUIDInfoArchive *this)
{
  if (this != &TSCE::_RewriteGroupNodeUIDInfoArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x223D9FC20]();
      MEMORY[0x223DA1450](v3, 0x10A1C40759568C3);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RewriteGroupNodeUIDInfoArchive::~RewriteGroupNodeUIDInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RewriteGroupNodeUIDInfoArchive::default_instance(TSCE::RewriteGroupNodeUIDInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_RewriteGroupNodeUIDInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RewriteGroupNodeUIDInfoArchive_default_instance_;
}

uint64_t *TSCE::RewriteGroupNodeUIDInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::UUIDMapArchive::Clear(*(v1 + 32));
    }
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

google::protobuf::internal *TSCE::RewriteGroupNodeUIDInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_221567030(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v20 + 2);
LABEL_6:
      v20 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v18;
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

        v13 = MEMORY[0x223DA0310](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_2216FE24C(a3, v11, v5);
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
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0360](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_2216F813C(a3, v14, v5);
    }

LABEL_30:
    v20 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TSCE::RewriteGroupNodeUIDInfoArchive::_InternalSerialize(TSCE::RewriteGroupNodeUIDInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 18;
    v13 = *(v12 + 16);
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

    a2 = TSP::UUIDMapArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RewriteGroupNodeUIDInfoArchive::ByteSizeLong(TSCE::RewriteGroupNodeUIDInfoArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TSP::UUIDMapArchive::ByteSizeLong(*(this + 4));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v5 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
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

uint64_t TSCE::RewriteGroupNodeUIDInfoArchive::MergeFrom(TSCE::RewriteGroupNodeUIDInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RewriteGroupNodeUIDInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RewriteGroupNodeUIDInfoArchive::MergeFrom(uint64_t this, const TSCE::RewriteGroupNodeUIDInfoArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x223DA0360](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x223DA0310](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A38];
      }

      return TSP::UUIDMapArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCE::RewriteGroupNodeUIDInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RewriteGroupNodeUIDInfoArchive::Clear(this);

    return TSCE::RewriteGroupNodeUIDInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RewriteGroupNodeUIDInfoArchive::CopyFrom(uint64_t *this, const TSCE::RewriteGroupNodeUIDInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RewriteGroupNodeUIDInfoArchive::Clear(this);

    return TSCE::RewriteGroupNodeUIDInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::RewriteGroupNodeUIDInfoArchive::IsInitialized(TSCE::RewriteGroupNodeUIDInfoArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if (v1)
  {
    result = TSP::UUID::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }
  }

  result = TSP::UUIDMapArchive::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::RewriteGroupNodeUIDInfoArchive::InternalSwap(TSCE::RewriteGroupNodeUIDInfoArchive *this, TSCE::RewriteGroupNodeUIDInfoArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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

TSP::UUID *TSCE::IndexedUidsArchive_IndexedUid::clear_uid_for_index(TSCE::IndexedUidsArchive_IndexedUid *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::IndexedUidsArchive_IndexedUid *TSCE::IndexedUidsArchive_IndexedUid::IndexedUidsArchive_IndexedUid(TSCE::IndexedUidsArchive_IndexedUid *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF800;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_IndexedUidsArchive_IndexedUid_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AF800;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_IndexedUidsArchive_IndexedUid_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::IndexedUidsArchive_IndexedUid *TSCE::IndexedUidsArchive_IndexedUid::IndexedUidsArchive_IndexedUid(TSCE::IndexedUidsArchive_IndexedUid *this, const TSCE::IndexedUidsArchive_IndexedUid *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF800;
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
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSCE::IndexedUidsArchive_IndexedUid::~IndexedUidsArchive_IndexedUid(TSCE::IndexedUidsArchive_IndexedUid *this)
{
  if (this != TSCE::_IndexedUidsArchive_IndexedUid_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::IndexedUidsArchive_IndexedUid::~IndexedUidsArchive_IndexedUid(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::IndexedUidsArchive_IndexedUid::default_instance(TSCE::IndexedUidsArchive_IndexedUid *this)
{
  if (atomic_load_explicit(scc_info_IndexedUidsArchive_IndexedUid_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_IndexedUidsArchive_IndexedUid_default_instance_;
}

uint64_t *TSCE::IndexedUidsArchive_IndexedUid::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::UUID::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TSCE::IndexedUidsArchive_IndexedUid::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
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

            v18 = MEMORY[0x223DA0360](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_2216F813C(a3, v16, v7);
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
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
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
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_23:
        v23 = v13;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_221567030(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TSCE::IndexedUidsArchive_IndexedUid::_InternalSerialize(TSCE::IndexedUidsArchive_IndexedUid *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 8);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::IndexedUidsArchive_IndexedUid::RequiredFieldsByteSizeFallback(TSCE::IndexedUidsArchive_IndexedUid *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::IndexedUidsArchive_IndexedUid::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::IndexedUidsArchive_IndexedUid::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCE::IndexedUidsArchive_IndexedUid::MergeFrom(TSCE::IndexedUidsArchive_IndexedUid *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::IndexedUidsArchive_IndexedUid::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::IndexedUidsArchive_IndexedUid::MergeFrom(uint64_t this, const TSCE::IndexedUidsArchive_IndexedUid *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x223DA0360](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCE::IndexedUidsArchive_IndexedUid::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::IndexedUidsArchive_IndexedUid::Clear(this);

    return TSCE::IndexedUidsArchive_IndexedUid::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::IndexedUidsArchive_IndexedUid::CopyFrom(uint64_t *this, const TSCE::IndexedUidsArchive_IndexedUid *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::IndexedUidsArchive_IndexedUid::Clear(this);

    return TSCE::IndexedUidsArchive_IndexedUid::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::IndexedUidsArchive_IndexedUid::IsInitialized(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::UUID::IsInitialized(this[3]);
  }
}

uint64_t *TSCE::IndexedUidsArchive_IndexedUid::InternalSwap(TSCE::IndexedUidsArchive_IndexedUid *this, TSCE::IndexedUidsArchive_IndexedUid *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

TSCE::IndexedUidsArchive *TSCE::IndexedUidsArchive::IndexedUidsArchive(TSCE::IndexedUidsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF8B0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_IndexedUidsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::IndexedUidsArchive *TSCE::IndexedUidsArchive::IndexedUidsArchive(TSCE::IndexedUidsArchive *this, const TSCE::IndexedUidsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AF8B0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156B830(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::IndexedUidsArchive::~IndexedUidsArchive(TSCE::IndexedUidsArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156B7AC(this + 2);
}

{
  TSCE::IndexedUidsArchive::~IndexedUidsArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::IndexedUidsArchive::default_instance(TSCE::IndexedUidsArchive *this)
{
  if (atomic_load_explicit(scc_info_IndexedUidsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_IndexedUidsArchive_default_instance_;
}

uint64_t *TSCE::IndexedUidsArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::IndexedUidsArchive_IndexedUid::Clear(v4);
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

google::protobuf::internal *TSCE::IndexedUidsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive_IndexedUid>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FE3EC(a3, v13, v10);
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

unsigned __int8 *TSCE::IndexedUidsArchive::_InternalSerialize(TSCE::IndexedUidsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::IndexedUidsArchive_IndexedUid::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::IndexedUidsArchive::ByteSizeLong(TSCE::IndexedUidsArchive *this)
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
      v7 = TSCE::IndexedUidsArchive_IndexedUid::ByteSizeLong(v6);
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

uint64_t TSCE::IndexedUidsArchive::MergeFrom(TSCE::IndexedUidsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::IndexedUidsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::IndexedUidsArchive::MergeFrom(uint64_t this, const TSCE::IndexedUidsArchive *a2)
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
    this = sub_22156B830(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::IndexedUidsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::IndexedUidsArchive::Clear(this);

    return TSCE::IndexedUidsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::IndexedUidsArchive::CopyFrom(uint64_t *this, const TSCE::IndexedUidsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::IndexedUidsArchive::Clear(this);

    return TSCE::IndexedUidsArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_22154C62C(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::UUID::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::IndexedUidsArchive::InternalSwap(TSCE::IndexedUidsArchive *this, TSCE::IndexedUidsArchive *a2)
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

uint64_t TSCE::RewriteRangeEntryArchive::clear_range_uids(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSCE::RewriteRangeEntryArchive *TSCE::RewriteRangeEntryArchive::RewriteRangeEntryArchive(TSCE::RewriteRangeEntryArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF960;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_RewriteRangeEntryArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TSCE::RewriteRangeEntryArchive *TSCE::RewriteRangeEntryArchive::RewriteRangeEntryArchive(TSCE::RewriteRangeEntryArchive *this, const TSCE::RewriteRangeEntryArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF960;
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
    sub_2215679F8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  v11 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v11;
  return this;
}

void TSCE::RewriteRangeEntryArchive::~RewriteRangeEntryArchive(TSCE::RewriteRangeEntryArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 3);
}

{
  TSCE::RewriteRangeEntryArchive::~RewriteRangeEntryArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RewriteRangeEntryArchive::default_instance(TSCE::RewriteRangeEntryArchive *this)
{
  if (atomic_load_explicit(scc_info_RewriteRangeEntryArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RewriteRangeEntryArchive_default_instance_;
}

uint64_t *TSCE::RewriteRangeEntryArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::RewriteRangeEntryArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v39) & 1) == 0)
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
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v32;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
LABEL_43:
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
              sub_221567188((a1 + 8));
            }

            v39 = google::protobuf::internal::UnknownFieldParse();
            if (!v39)
            {
LABEL_61:
              v39 = 0;
              goto LABEL_2;
            }

            goto LABEL_50;
          }

          v21 = v7 - 1;
          while (2)
          {
            v22 = (v21 + 1);
            v39 = (v21 + 1);
            v23 = *(a1 + 40);
            if (!v23)
            {
LABEL_33:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v23 = *(a1 + 40);
              v24 = *v23;
              goto LABEL_34;
            }

            v29 = *(a1 + 32);
            v24 = *v23;
            if (v29 >= *v23)
            {
              if (v24 == *(a1 + 36))
              {
                goto LABEL_33;
              }

LABEL_34:
              *v23 = v24 + 1;
              v25 = MEMORY[0x223DA0360](*(a1 + 24));
              LODWORD(v26) = v25;
              v27 = *(a1 + 32);
              v28 = *(a1 + 40) + 8 * v27;
              *(a1 + 32) = v27 + 1;
              *(v28 + 8) = v25;
              v22 = v39;
            }

            else
            {
              *(a1 + 32) = v29 + 1;
              v26 = *&v23[2 * v29 + 2];
            }

            v21 = sub_2216F813C(a3, v26, v22);
            v39 = v21;
            if (!v21)
            {
              goto LABEL_61;
            }

            if (*a3 <= v21 || *v21 != 26)
            {
              goto LABEL_50;
            }

            continue;
          }
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_43;
        }

        v5 |= 4u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_24:
          v39 = v15;
          *(a1 + 56) = v16;
          goto LABEL_50;
        }

        v33 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v39 = v33;
        *(a1 + 56) = v34;
        if (!v33)
        {
          goto LABEL_61;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_43;
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
          v39 = v18;
          *(a1 + 48) = v19;
          goto LABEL_50;
        }

        v37 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v39 = v37;
        *(a1 + 48) = v38;
        if (!v37)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_43;
        }

        v5 |= 2u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_17:
          v39 = v12;
          *(a1 + 52) = v13;
          goto LABEL_50;
        }

        v35 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v39 = v35;
        *(a1 + 52) = v36;
        if (!v35)
        {
          goto LABEL_61;
        }
      }

LABEL_50:
      if (sub_221567030(a3, &v39))
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

unsigned __int8 *TSCE::RewriteRangeEntryArchive::_InternalSerialize(TSCE::RewriteRangeEntryArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 13);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v17 = *(v16 + 5);
      if (v17 > 0x7F)
      {
        a2[1] = v17 | 0x80;
        v19 = v17 >> 7;
        if (v17 >> 14)
        {
          v18 = a2 + 3;
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
          a2[2] = v19;
          v18 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v17;
        v18 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v16, v18, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 14);
    *a2 = 32;
    if (v22 > 0x7F)
    {
      a2[1] = v22 | 0x80;
      v23 = v22 >> 7;
      if (v22 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v23 | 0x80;
          v24 = v23 >> 7;
          ++a2;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
        *(a2 - 1) = v24;
      }

      else
      {
        a2[2] = v23;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v22;
      a2 += 2;
    }
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RewriteRangeEntryArchive::RequiredFieldsByteSizeFallback(TSCE::RewriteRangeEntryArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::RewriteRangeEntryArchive::ByteSizeLong(TSCE::RewriteRangeEntryArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v3 = TSCE::RewriteRangeEntryArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(this + 52) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    v3 = v2.i32[0] + ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + v2.i32[1] + 3;
  }

  v4 = *(this + 8);
  v5 = v3 + v4;
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::UUID::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCE::RewriteRangeEntryArchive::MergeFrom(TSCE::RewriteRangeEntryArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RewriteRangeEntryArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RewriteRangeEntryArchive::MergeFrom(uint64_t this, const TSCE::RewriteRangeEntryArchive *a2)
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
    this = sub_2215679F8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 12);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
LABEL_11:
          *(v3 + 16) |= v10;
          return this;
        }

LABEL_10:
        *(v3 + 56) = *(a2 + 14);
        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 52) = *(a2 + 13);
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCE::RewriteRangeEntryArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RewriteRangeEntryArchive::Clear(this);

    return TSCE::RewriteRangeEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RewriteRangeEntryArchive::CopyFrom(uint64_t *this, const TSCE::RewriteRangeEntryArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RewriteRangeEntryArchive::Clear(this);

    return TSCE::RewriteRangeEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::RewriteRangeEntryArchive::IsInitialized(TSCE::RewriteRangeEntryArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

__n128 TSCE::RewriteRangeEntryArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  LODWORD(v8) = this[3].n128_u32[2];
  this[3].n128_u32[2] = a2[3].n128_u32[2];
  a2[3].n128_u32[2] = v8;
  return result;
}

TSP::UUID *TSCE::ColumnOrRowUuidsInfoArchive::clear_table_uid(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TSCE::ColumnOrRowUuidsInfoArchive::clear_cond_style_owner_uid(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TSCE::ColumnOrRowUuidsInfoArchive::clear_group_by_uid(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::UUID *TSCE::ColumnOrRowUuidsInfoArchive::clear_insert_at_uid(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::UUID *TSCE::ColumnOrRowUuidsInfoArchive::clear_insert_opposite_uid(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSCE::ColumnOrRowUuidsInfoArchive *TSCE::ColumnOrRowUuidsInfoArchive::ColumnOrRowUuidsInfoArchive(TSCE::ColumnOrRowUuidsInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AFA10;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ColumnOrRowUuidsInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 89) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
  return this;
}

TSCE::ColumnOrRowUuidsInfoArchive *TSCE::ColumnOrRowUuidsInfoArchive::ColumnOrRowUuidsInfoArchive(TSCE::ColumnOrRowUuidsInfoArchive *this, const TSCE::ColumnOrRowUuidsInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AFA10;
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
    sub_22156B974(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  if ((v11 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v11 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v11 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v11 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v11 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  *(this + 104) = *(a2 + 104);
  return this;
}

void sub_22154D994(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_22156B8F0((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::ColumnOrRowUuidsInfoArchive::~ColumnOrRowUuidsInfoArchive(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  sub_22154DA3C(this);
  sub_2214DFCF8(this + 1);
  sub_22156B8F0(this + 3);
}

{
  TSCE::ColumnOrRowUuidsInfoArchive::~ColumnOrRowUuidsInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

void *sub_22154DA3C(void *result)
{
  if (result != &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[7];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[8];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[9];
    if (v5)
    {
      TSCE::IndexedUidsArchive::~IndexedUidsArchive(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[10];
    if (v6)
    {
      sub_2214DFCF8((v6 + 8));
      MEMORY[0x223DA1450](v6, 0x1081C40825B58B5);
    }

    v7 = v1[11];
    if (v7)
    {
      TSP::UUID::~UUID(v7);
      MEMORY[0x223DA1450]();
    }

    result = v1[12];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TSCE::ColumnOrRowUuidsInfoArchive::default_instance(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnOrRowUuidsInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_;
}

uint64_t *TSCE::ColumnOrRowUuidsInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::RewriteRangeEntryArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x7F) == 0)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    this = TSP::UUID::Clear(*(v1 + 48));
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  this = TSP::UUID::Clear(*(v1 + 56));
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = TSP::UUID::Clear(*(v1 + 64));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = TSCE::RangeCoordinateArchive::Clear(*(v1 + 80));
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = TSCE::IndexedUidsArchive::Clear(*(v1 + 72));
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_23:
  this = TSP::UUID::Clear(*(v1 + 88));
  if ((v5 & 0x40) != 0)
  {
LABEL_13:
    this = TSP::UUID::Clear(*(v1 + 96));
  }

LABEL_14:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 96) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TSCE::ColumnOrRowUuidsInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v44) & 1) == 0)
  {
    while (1)
    {
      v7 = (v44 + 1);
      v8 = *v44;
      if ((*v44 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v9 - 128));
      v44 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_94;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 != 7)
          {
            if (v10 == 8)
            {
              if (v8 != 66)
              {
                goto LABEL_84;
              }

              *(a1 + 16) |= 0x20u;
              v11 = *(a1 + 88);
              if (!v11)
              {
                v39 = *(a1 + 8);
                if (v39)
                {
                  v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
                }

                v40 = MEMORY[0x223DA0360](v39);
                LODWORD(v11) = v40;
                *(a1 + 88) = v40;
                goto LABEL_79;
              }
            }

            else
            {
              if (v10 != 9 || v8 != 74)
              {
                goto LABEL_84;
              }

              *(a1 + 16) |= 0x40u;
              v11 = *(a1 + 96);
              if (!v11)
              {
                v12 = *(a1 + 8);
                if (v12)
                {
                  v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
                }

                v13 = MEMORY[0x223DA0360](v12);
                LODWORD(v11) = v13;
                *(a1 + 96) = v13;
                goto LABEL_79;
              }
            }

            goto LABEL_80;
          }

          if (v8 != 58)
          {
            goto LABEL_84;
          }

          *(a1 + 16) |= 0x10u;
          v34 = *(a1 + 80);
          if (!v34)
          {
            v35 = *(a1 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v35);
            *(a1 + 80) = v34;
            v7 = v44;
          }

          v36 = sub_2216F820C(a3, v34, v7);
LABEL_81:
          v44 = v36;
          if (!v36)
          {
            goto LABEL_94;
          }

          goto LABEL_82;
        }

        if (v10 == 5)
        {
          if (v8 != 42)
          {
            goto LABEL_84;
          }

          *(a1 + 16) |= 8u;
          v37 = *(a1 + 72);
          if (!v37)
          {
            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v38);
            *(a1 + 72) = v37;
            v7 = v44;
          }

          v36 = sub_2216FE4BC(a3, v37, v7);
          goto LABEL_81;
        }

        if (v10 != 6 || v8 != 50)
        {
          goto LABEL_84;
        }

        v19 = (v7 - 1);
        while (2)
        {
          v20 = (v19 + 1);
          v44 = (v19 + 1);
          v21 = *(a1 + 40);
          if (!v21)
          {
LABEL_40:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v21 = *(a1 + 40);
            v22 = *v21;
            goto LABEL_41;
          }

          v26 = *(a1 + 32);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(a1 + 36))
            {
              goto LABEL_40;
            }

LABEL_41:
            *v21 = v22 + 1;
            v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteRangeEntryArchive>(*(a1 + 24));
            v24 = *(a1 + 32);
            v25 = *(a1 + 40) + 8 * v24;
            *(a1 + 32) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v44;
          }

          else
          {
            *(a1 + 32) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = sub_2216FE58C(a3, v23, v20);
          v44 = v19;
          if (!v19)
          {
            goto LABEL_94;
          }

          if (*a3 <= v19 || *v19 != 50)
          {
            goto LABEL_82;
          }

          continue;
        }
      }

      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_84;
          }

          *(a1 + 16) |= 2u;
          v11 = *(a1 + 56);
          if (v11)
          {
            goto LABEL_80;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0360](v32);
          LODWORD(v11) = v33;
          *(a1 + 56) = v33;
        }

        else
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_84;
          }

          *(a1 + 16) |= 4u;
          v11 = *(a1 + 64);
          if (v11)
          {
            goto LABEL_80;
          }

          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA0360](v17);
          LODWORD(v11) = v18;
          *(a1 + 64) = v18;
        }

LABEL_79:
        v7 = v44;
        goto LABEL_80;
      }

      if (v10 != 1)
      {
        if (v10 != 2 || v8 != 18)
        {
LABEL_84:
          if (v8)
          {
            v41 = (v8 & 7) == 4;
          }

          else
          {
            v41 = 1;
          }

          if (v41)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v36 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_81;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 48);
        if (!v11)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x223DA0360](v15);
          LODWORD(v11) = v16;
          *(a1 + 48) = v16;
          goto LABEL_79;
        }

LABEL_80:
        v36 = sub_2216F813C(a3, v11, v7);
        goto LABEL_81;
      }

      if (v8 != 8)
      {
        goto LABEL_84;
      }

      v5 |= 0x80u;
      v30 = (v7 + 1);
      v29 = *v7;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_56;
      }

      v31 = *v30;
      v29 = (v31 << 7) + v29 - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v30 = (v7 + 2);
LABEL_56:
        v44 = v30;
        *(a1 + 104) = v29 != 0;
        goto LABEL_82;
      }

      v42 = google::protobuf::internal::VarintParseSlow64(v7, v29);
      v44 = v42;
      *(a1 + 104) = v43 != 0;
      if (!v42)
      {
LABEL_94:
        v44 = 0;
        goto LABEL_2;
      }

LABEL_82:
      if (sub_221567030(a3, &v44))
      {
        goto LABEL_2;
      }
    }

    v7 = (v44 + 2);
LABEL_6:
    v44 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

unsigned __int8 *TSCE::ColumnOrRowUuidsInfoArchive::_InternalSerialize(TSCE::ColumnOrRowUuidsInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 104);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 6);
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

  a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 7);
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

  a2 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 8);
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

  a2 = TSP::UUID::_InternalSerialize(v19, v21, a3);
  if ((v5 & 8) != 0)
  {
LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 9);
    *a2 = 42;
    v26 = *(v25 + 10);
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v27 = a2 + 3;
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
        a2[2] = v28;
        v27 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v26;
      v27 = a2 + 2;
    }

    a2 = TSCE::IndexedUidsArchive::_InternalSerialize(v25, v27, a3);
  }

LABEL_50:
  v31 = *(this + 8);
  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v33 = *(*(this + 5) + 8 * i + 8);
      *a2 = 50;
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

      a2 = TSCE::RewriteRangeEntryArchive::_InternalSerialize(v33, v35, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(this + 10);
    *a2 = 58;
    v40 = *(v39 + 5);
    if (v40 > 0x7F)
    {
      a2[1] = v40 | 0x80;
      v42 = v40 >> 7;
      if (v40 >> 14)
      {
        v41 = a2 + 3;
        do
        {
          *(v41 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          ++v41;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(v41 - 1) = v43;
      }

      else
      {
        a2[2] = v42;
        v41 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v40;
      v41 = a2 + 2;
    }

    a2 = TSCE::RangeCoordinateArchive::_InternalSerialize(v39, v41, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_64:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_86;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_64;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v45 = *(this + 11);
  *a2 = 66;
  v46 = *(v45 + 5);
  if (v46 > 0x7F)
  {
    a2[1] = v46 | 0x80;
    v48 = v46 >> 7;
    if (v46 >> 14)
    {
      v47 = a2 + 3;
      do
      {
        *(v47 - 1) = v48 | 0x80;
        v49 = v48 >> 7;
        ++v47;
        v50 = v48 >> 14;
        v48 >>= 7;
      }

      while (v50);
      *(v47 - 1) = v49;
    }

    else
    {
      a2[2] = v48;
      v47 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v46;
    v47 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v45, v47, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_86:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v51 = *(this + 12);
    *a2 = 74;
    v52 = *(v51 + 5);
    if (v52 > 0x7F)
    {
      a2[1] = v52 | 0x80;
      v54 = v52 >> 7;
      if (v52 >> 14)
      {
        v53 = a2 + 3;
        do
        {
          *(v53 - 1) = v54 | 0x80;
          v55 = v54 >> 7;
          ++v53;
          v56 = v54 >> 14;
          v54 >>= 7;
        }

        while (v56);
        *(v53 - 1) = v55;
      }

      else
      {
        a2[2] = v54;
        v53 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v52;
      v53 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v51, v53, a3);
  }

LABEL_96:
  v57 = *(this + 1);
  if ((v57 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v57 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ColumnOrRowUuidsInfoArchive::RequiredFieldsByteSizeFallback(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 6));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
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
    v5 = TSP::UUID::ByteSizeLong(*(this + 7));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v9 = TSCE::IndexedUidsArchive::ByteSizeLong(*(this + 9));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 0x10) == 0)
    {
      return v3 + ((v2 >> 6) & 2);
    }

    goto LABEL_9;
  }

  v8 = TSP::UUID::ByteSizeLong(*(this + 8));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v2 & 0x10) != 0)
  {
LABEL_9:
    v6 = TSCE::RangeCoordinateArchive::ByteSizeLong(*(this + 10));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  return v3 + ((v2 >> 6) & 2);
}

uint64_t TSCE::ColumnOrRowUuidsInfoArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 0x9F) != 0)
  {
    v10 = TSCE::ColumnOrRowUuidsInfoArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[6]);
    v3 = TSP::UUID::ByteSizeLong(this[7]);
    v4 = TSP::UUID::ByteSizeLong(this[8]);
    v5 = TSCE::IndexedUidsArchive::ByteSizeLong(this[9]);
    v6.i32[0] = v2 | 1;
    v6.i32[1] = v3 | 1;
    v6.i32[2] = v4 | 1;
    v6.i32[3] = v5 | 1;
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x4900000049;
    v8.i64[1] = 0x4900000049;
    v22 = vshrq_n_u32(vmlal_u16(v8, vmovn_s32(veorq_s8(vclzq_s32(v6), v7)), 0x9000900090009), 6uLL);
    v9 = TSCE::RangeCoordinateArchive::ByteSizeLong(this[10]);
    v10 = v2 + v4 + v3 + vaddlvq_u32(v22) + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + v9 + v5 + 7;
  }

  v11 = *(this + 8);
  v12 = v10 + v11;
  v13 = this[5];
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSCE::RewriteRangeEntryArchive::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 4);
  if ((v18 & 0x60) != 0)
  {
    if ((v18 & 0x20) != 0)
    {
      v19 = TSP::UUID::ByteSizeLong(this[11]);
      v12 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v18 & 0x40) != 0)
    {
      v20 = TSP::UUID::ByteSizeLong(this[12]);
      v12 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TSCE::ColumnOrRowUuidsInfoArchive::MergeFrom(TSCE::ColumnOrRowUuidsInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ColumnOrRowUuidsInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ColumnOrRowUuidsInfoArchive::MergeFrom(uint64_t this, const TSCE::ColumnOrRowUuidsInfoArchive *a2)
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
    this = sub_22156B974(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if (v10)
  {
    v11 = MEMORY[0x277D809E0];
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v12 = *(v3 + 48);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0360](v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = v11;
      }

      this = TSP::UUID::MergeFrom(v12, v14);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_34;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    v15 = *(v3 + 56);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x223DA0360](v16);
      *(v3 + 56) = v15;
    }

    if (*(a2 + 7))
    {
      v17 = *(a2 + 7);
    }

    else
    {
      v17 = v11;
    }

    this = TSP::UUID::MergeFrom(v15, v17);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(v3 + 16) |= 4u;
    v18 = *(v3 + 64);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x223DA0360](v19);
      *(v3 + 64) = v18;
    }

    if (*(a2 + 8))
    {
      v20 = *(a2 + 8);
    }

    else
    {
      v20 = v11;
    }

    this = TSP::UUID::MergeFrom(v18, v20);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(v3 + 16) |= 8u;
    v21 = *(v3 + 72);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v22);
      *(v3 + 72) = v21;
    }

    if (*(a2 + 9))
    {
      v23 = *(a2 + 9);
    }

    else
    {
      v23 = &TSCE::_IndexedUidsArchive_default_instance_;
    }

    this = TSCE::IndexedUidsArchive::MergeFrom(v21, v23);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(v3 + 16) |= 0x10u;
    v24 = *(v3 + 80);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v25);
      *(v3 + 80) = v24;
    }

    if (*(a2 + 10))
    {
      v26 = *(a2 + 10);
    }

    else
    {
      v26 = &TSCE::_RangeCoordinateArchive_default_instance_;
    }

    this = TSCE::RangeCoordinateArchive::MergeFrom(v24, v26);
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_66;
    }

LABEL_58:
    *(v3 + 16) |= 0x20u;
    v27 = *(v3 + 88);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x223DA0360](v28);
      *(v3 + 88) = v27;
    }

    if (*(a2 + 11))
    {
      v29 = *(a2 + 11);
    }

    else
    {
      v29 = v11;
    }

    this = TSP::UUID::MergeFrom(v27, v29);
    if ((v10 & 0x40) == 0)
    {
LABEL_14:
      if ((v10 & 0x80) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v10;
        return this;
      }

LABEL_15:
      *(v3 + 104) = *(a2 + 104);
      goto LABEL_16;
    }

LABEL_66:
    *(v3 + 16) |= 0x40u;
    v30 = *(v3 + 96);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x223DA0360](v31);
      *(v3 + 96) = v30;
    }

    if (*(a2 + 12))
    {
      v32 = *(a2 + 12);
    }

    else
    {
      v32 = v11;
    }

    this = TSP::UUID::MergeFrom(v30, v32);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return this;
}

uint64_t *TSCE::ColumnOrRowUuidsInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ColumnOrRowUuidsInfoArchive::Clear(this);

    return TSCE::ColumnOrRowUuidsInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ColumnOrRowUuidsInfoArchive::CopyFrom(uint64_t *this, const TSCE::ColumnOrRowUuidsInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ColumnOrRowUuidsInfoArchive::Clear(this);

    return TSCE::ColumnOrRowUuidsInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::ColumnOrRowUuidsInfoArchive::IsInitialized(TSCE::ColumnOrRowUuidsInfoArchive *this)
{
  if ((~*(this + 4) & 0x9F) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCE::RewriteRangeEntryArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if (!IsInitialized)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    result = TSP::UUID::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 8) != 0)
  {
    result = sub_22154C62C(*(this + 9) + 16);
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x10) != 0 && (~*(*(this + 10) + 16) & 0xF) != 0)
  {
    return 0;
  }

  if ((v6 & 0x20) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x40) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 12));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::ColumnOrRowUuidsInfoArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  this[3] = a2[3];
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  v9 = this[4].n128_u64[0];
  v10 = this[4].n128_u64[1];
  this[4] = a2[4];
  a2[4].n128_u64[0] = v9;
  a2[4].n128_u64[1] = v10;
  v11 = this[5].n128_u64[0];
  v12 = this[5].n128_u64[1];
  result = a2[5];
  this[5] = result;
  a2[5].n128_u64[0] = v11;
  a2[5].n128_u64[1] = v12;
  v14 = this[6].n128_u64[0];
  this[6].n128_u64[0] = a2[6].n128_u64[0];
  a2[6].n128_u64[0] = v14;
  LOBYTE(v14) = this[6].n128_u8[8];
  this[6].n128_u8[8] = a2[6].n128_u8[8];
  a2[6].n128_u8[8] = v14;
  return result;
}

TSP::UUID *TSCE::RegionInfoArchive::clear_table_uid(TSCE::RegionInfoArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::RegionInfoArchive *TSCE::RegionInfoArchive::RegionInfoArchive(TSCE::RegionInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AFAC0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RegionInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834AFAC0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RegionInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSCE::RegionInfoArchive *TSCE::RegionInfoArchive::RegionInfoArchive(TSCE::RegionInfoArchive *this, const TSCE::RegionInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AFAC0;
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
  return this;
}

void TSCE::RegionInfoArchive::~RegionInfoArchive(TSCE::RegionInfoArchive *this)
{
  if (this != TSCE::_RegionInfoArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCE::IndexedUidsArchive::~IndexedUidsArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSCE::IndexedUidsArchive::~IndexedUidsArchive(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RegionInfoArchive::~RegionInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RegionInfoArchive::default_instance(TSCE::RegionInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_RegionInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_RegionInfoArchive_default_instance_;
}

uint64_t *TSCE::RegionInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(this[3]);
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

    this = TSCE::IndexedUidsArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSCE::IndexedUidsArchive::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::RegionInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  while ((sub_221567030(a3, &v21) & 1) == 0)
  {
    v5 = (v21 + 1);
    v6 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v21 + 2);
LABEL_6:
      v21 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v19;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v14);
        *(a1 + 40) = v12;
LABEL_30:
        v5 = v21;
      }

LABEL_31:
      v11 = sub_2216FE4BC(a3, v12, v5);
      goto LABEL_37;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v13);
        *(a1 + 32) = v12;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v8 != 1 || v6 != 10)
    {
LABEL_13:
      if (v6)
      {
        v10 = (v6 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 80) = v6 - 1;
        return v21;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_37;
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

      v17 = MEMORY[0x223DA0360](v16);
      LODWORD(v15) = v17;
      *(a1 + 24) = v17;
      v5 = v21;
    }

    v11 = sub_2216F813C(a3, v15, v5);
LABEL_37:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v21;
}

unsigned __int8 *TSCE::RegionInfoArchive::_InternalSerialize(TSCE::RegionInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
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
  v13 = *(v12 + 10);
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

  a2 = TSCE::IndexedUidsArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 5);
    *a2 = 26;
    v19 = *(v18 + 10);
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

    a2 = TSCE::IndexedUidsArchive::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}