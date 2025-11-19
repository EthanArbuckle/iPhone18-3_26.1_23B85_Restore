unsigned __int8 *TSD::PencilAnnotationStorageArchive::_InternalSerialize(TSD::PencilAnnotationStorageArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 46);
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
        if (v6)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if (v6)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if (v6)
      {
        goto LABEL_27;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 9);
  *a2 = 18;
  v12 = *(v11 + 5);
  if (v12 > 0x7F)
  {
    a2[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      v13 = a2 + 3;
      do
      {
        *(v13 - 1) = v14 | 0x80;
        v15 = v14 >> 7;
        ++v13;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
      *(v13 - 1) = v15;
    }

    else
    {
      a2[2] = v14;
      v13 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v12;
    v13 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v11, v13, a3);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 10);
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

  a2 = TSP::DataReference::_InternalSerialize(v17, v19, a3);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 11);
  *a2 = 34;
  v24 = *(v23 + 5);
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

  a2 = TSP::DataReference::_InternalSerialize(v23, v25, a3);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_57:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 12);
  *a2 = 42;
  v30 = *(v29 + 10);
  if (v30 > 0x7F)
  {
    a2[1] = v30 | 0x80;
    v32 = v30 >> 7;
    if (v30 >> 14)
    {
      v31 = a2 + 3;
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
      a2[2] = v32;
      v31 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v30;
    v31 = a2 + 2;
  }

  a2 = TSP::Path::_InternalSerialize(v29, v31, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

LABEL_67:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(this + 13);
  *a2 = 50;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    a2[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = a2 + 3;
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
      a2[2] = v38;
      v37 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v36;
    v37 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v35, v37, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

LABEL_87:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v47 = *(this + 47);
    *a2 = 64;
    if (v47 > 0x7F)
    {
      a2[1] = v47 | 0x80;
      v48 = v47 >> 7;
      if (v47 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v48 | 0x80;
          v49 = v48 >> 7;
          ++a2;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
        *(a2 - 1) = v49;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_98;
        }
      }

      else
      {
        a2[2] = v48;
        a2 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
      a2[1] = v47;
      a2 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_98;
      }
    }

LABEL_10:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_108;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v41 = *(this + 14);
  *a2 = 58;
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

  a2 = TSP::Size::_InternalSerialize(v41, v43, a3);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_87;
  }

LABEL_9:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_98:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v51 = *(this + 15);
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

  a2 = TSP::Size::_InternalSerialize(v51, v53, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_11:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v57 = *(this + 24);
  *a2 = 81;
  *(a2 + 1) = v57;
  a2 += 9;
  if ((v6 & 0x20000) == 0)
  {
LABEL_12:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

LABEL_122:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v62 = *(this + 26);
    *a2 = 96;
    if (v62 > 0x7F)
    {
      a2[1] = v62 | 0x80;
      v63 = v62 >> 7;
      if (v62 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v63 | 0x80;
          v64 = v63 >> 7;
          ++a2;
          v65 = v63 >> 14;
          v63 >>= 7;
        }

        while (v65);
        *(a2 - 1) = v64;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_133;
        }
      }

      else
      {
        a2[2] = v63;
        a2 += 3;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_133;
        }
      }
    }

    else
    {
      a2[1] = v62;
      a2 += 2;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_133;
      }
    }

LABEL_14:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_143;
  }

LABEL_111:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v58 = *(this + 25);
  *a2 = 88;
  if (v58 > 0x7F)
  {
    a2[1] = v58 | 0x80;
    v59 = v58 >> 7;
    if (v58 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v59 | 0x80;
        v60 = v59 >> 7;
        ++a2;
        v61 = v59 >> 14;
        v59 >>= 7;
      }

      while (v61);
      *(a2 - 1) = v60;
      if ((v6 & 0x40000) != 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      a2[2] = v59;
      a2 += 3;
      if ((v6 & 0x40000) != 0)
      {
        goto LABEL_122;
      }
    }
  }

  else
  {
    a2[1] = v58;
    a2 += 2;
    if ((v6 & 0x40000) != 0)
    {
      goto LABEL_122;
    }
  }

LABEL_13:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_14;
  }

LABEL_133:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v66 = *(this + 16);
  *a2 = 106;
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

  a2 = TSP::Color::_InternalSerialize(v66, v68, a3);
  if ((v6 & 0x80000) != 0)
  {
LABEL_143:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v72 = *(this + 54);
    *a2 = 112;
    if (v72 > 0x7F)
    {
      a2[1] = v72 | 0x80;
      v73 = v72 >> 7;
      if (v72 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v73 | 0x80;
          v74 = v73 >> 7;
          ++a2;
          v75 = v73 >> 14;
          v73 >>= 7;
        }

        while (v75);
        *(a2 - 1) = v74;
      }

      else
      {
        a2[2] = v73;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v72;
      a2 += 2;
    }
  }

LABEL_152:
  v76 = *(this + 8);
  if (v76)
  {
    for (i = 0; i != v76; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v78 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v78, v80, a3);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v84 = *(this + 17);
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

    a2 = TSP::Date::_InternalSerialize(v84, v86, a3);
    if ((v6 & 0x200000) == 0)
    {
LABEL_166:
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_181;
    }
  }

  else if ((v6 & 0x200000) == 0)
  {
    goto LABEL_166;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v90 = *(this + 28);
  *a2 = 393;
  *(a2 + 2) = v90;
  a2 += 10;
  if ((v6 & 0x100000) != 0)
  {
LABEL_181:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v91 = *(this + 55);
    *a2 = 400;
    if (v91 > 0x7F)
    {
      a2[2] = v91 | 0x80;
      v92 = v91 >> 7;
      if (v91 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v92 | 0x80;
          v93 = v92 >> 7;
          ++a2;
          v94 = v92 >> 14;
          v92 >>= 7;
        }

        while (v94);
        *(a2 - 1) = v93;
      }

      else
      {
        a2[3] = v92;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v91;
      a2 += 3;
    }
  }

LABEL_190:
  v95 = *(this + 14);
  if (v95)
  {
    for (j = 0; j != v95; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v97 = *(*(this + 8) + 8 * j + 8);
      *a2 = 410;
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

      a2 = TSP::Reference::_InternalSerialize(v97, v99, a3);
    }
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v103 = *(this + 18);
    *a2 = 418;
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

    a2 = TSP::DataReference::_InternalSerialize(v103, v105, a3);
    if ((v6 & 0x400) == 0)
    {
LABEL_204:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_205;
      }

      goto LABEL_228;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_204;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v109 = *(this + 19);
  *a2 = 426;
  v110 = *(v109 + 5);
  if (v110 > 0x7F)
  {
    a2[2] = v110 | 0x80;
    v112 = v110 >> 7;
    if (v110 >> 14)
    {
      v111 = a2 + 4;
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
      a2[3] = v112;
      v111 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v110;
    v111 = a2 + 3;
  }

  a2 = TSP::Point::_InternalSerialize(v109, v111, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_205:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_238;
  }

LABEL_228:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v115 = *(this + 20);
  *a2 = 434;
  v116 = *(v115 + 5);
  if (v116 > 0x7F)
  {
    a2[2] = v116 | 0x80;
    v118 = v116 >> 7;
    if (v116 >> 14)
    {
      v117 = a2 + 4;
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
      a2[3] = v118;
      v117 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v116;
    v117 = a2 + 3;
  }

  a2 = TSP::Size::_InternalSerialize(v115, v117, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_206:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_248;
  }

LABEL_238:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v121 = *(this + 21);
  *a2 = 442;
  v122 = *(v121 + 5);
  if (v122 > 0x7F)
  {
    a2[2] = v122 | 0x80;
    v124 = v122 >> 7;
    if (v122 >> 14)
    {
      v123 = a2 + 4;
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
      a2[3] = v124;
      v123 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v122;
    v123 = a2 + 3;
  }

  a2 = TSP::Point::_InternalSerialize(v121, v123, a3);
  if ((v6 & 0x2000) != 0)
  {
LABEL_248:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v127 = *(this + 22);
    *a2 = 450;
    v128 = *(v127 + 5);
    if (v128 > 0x7F)
    {
      a2[2] = v128 | 0x80;
      v130 = v128 >> 7;
      if (v128 >> 14)
      {
        v129 = a2 + 4;
        do
        {
          *(v129 - 1) = v130 | 0x80;
          v131 = v130 >> 7;
          ++v129;
          v132 = v130 >> 14;
          v130 >>= 7;
        }

        while (v132);
        *(v129 - 1) = v131;
      }

      else
      {
        a2[3] = v130;
        v129 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v128;
      v129 = a2 + 3;
    }

    a2 = TSP::Size::_InternalSerialize(v127, v129, a3);
  }

LABEL_258:
  v133 = *(this + 1);
  if ((v133 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v133 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::PencilAnnotationStorageArchive::ByteSizeLong(TSD::PencilAnnotationStorageArchive *this)
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
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + 2 * v8;
  v10 = *(this + 8);
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
      v14 = TSP::Reference::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 4);
  if (!v15)
  {
    goto LABEL_25;
  }

  if (v15)
  {
    v25 = TSP::Point::ByteSizeLong(*(this + 9));
    v9 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_56;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v26 = TSP::DataReference::ByteSizeLong(*(this + 10));
  v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  v27 = TSP::DataReference::ByteSizeLong(*(this + 11));
  v9 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) == 0)
  {
LABEL_20:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  v28 = TSP::Path::ByteSizeLong(*(this + 12));
  v9 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x10) == 0)
  {
LABEL_21:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_59:
    v30 = TSP::Size::ByteSizeLong(*(this + 14));
    v9 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x40) == 0)
    {
LABEL_23:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_58:
  v29 = TSP::Point::ByteSizeLong(*(this + 13));
  v9 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_59;
  }

LABEL_22:
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_60:
  v31 = TSP::Size::ByteSizeLong(*(this + 15));
  v9 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x80) != 0)
  {
LABEL_24:
    v16 = TSP::Color::ByteSizeLong(*(this + 16));
    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_25:
  if ((v15 & 0xFF00) == 0)
  {
    goto LABEL_38;
  }

  if ((v15 & 0x100) != 0)
  {
    v32 = TSP::Date::ByteSizeLong(*(this + 17));
    v9 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v15 & 0x200) == 0)
    {
LABEL_28:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_64;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_28;
  }

  v33 = TSP::DataReference::ByteSizeLong(*(this + 18));
  v9 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x400) == 0)
  {
LABEL_29:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  v34 = TSP::Point::ByteSizeLong(*(this + 19));
  v9 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x800) == 0)
  {
LABEL_30:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  v35 = TSP::Size::ByteSizeLong(*(this + 20));
  v9 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x1000) == 0)
  {
LABEL_31:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  v36 = TSP::Point::ByteSizeLong(*(this + 21));
  v9 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x2000) == 0)
  {
LABEL_32:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  v37 = TSP::Size::ByteSizeLong(*(this + 22));
  v9 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x4000) == 0)
  {
LABEL_33:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

LABEL_68:
  v38 = *(this + 46);
  v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v38 >= 0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 11;
  }

  v9 += v40;
  if ((v15 & 0x8000) != 0)
  {
LABEL_34:
    v17 = *(this + 47);
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v17 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 11;
    }

    v9 += v19;
  }

LABEL_38:
  if ((v15 & 0x3F0000) == 0)
  {
    goto LABEL_52;
  }

  v20 = v9 + 9;
  if ((v15 & 0x10000) == 0)
  {
    v20 = v9;
  }

  if ((v15 & 0x20000) != 0)
  {
    v20 += ((9 * (__clz(*(this + 25) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v15 & 0x40000) == 0)
    {
LABEL_43:
      if ((v15 & 0x80000) == 0)
      {
        goto LABEL_44;
      }

LABEL_75:
      v41 = *(this + 54);
      v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v41 >= 0)
      {
        v43 = v42;
      }

      else
      {
        v43 = 11;
      }

      v20 += v43;
      if ((v15 & 0x100000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  else if ((v15 & 0x40000) == 0)
  {
    goto LABEL_43;
  }

  v20 += ((9 * (__clz(*(this + 26) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v15 & 0x80000) != 0)
  {
    goto LABEL_75;
  }

LABEL_44:
  if ((v15 & 0x100000) != 0)
  {
LABEL_45:
    v21 = *(this + 55);
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v21 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 12;
    }

    v20 += v23;
  }

LABEL_49:
  if ((v15 & 0x200000) != 0)
  {
    v9 = v20 + 10;
  }

  else
  {
    v9 = v20;
  }

LABEL_52:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TSD::PencilAnnotationStorageArchive::MergeFrom(TSD::PencilAnnotationStorageArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::PencilAnnotationStorageArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::PencilAnnotationStorageArchive::MergeFrom(uint64_t this, const TSD::PencilAnnotationStorageArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27676CA94(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_27676CA94(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if (!v15)
  {
    goto LABEL_84;
  }

  v16 = MEMORY[0x277D809F0];
  if (v15)
  {
    *(v3 + 16) |= 1u;
    v17 = *(v3 + 72);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C9BB00](v18);
      *(v3 + 72) = v17;
    }

    if (*(a2 + 9))
    {
      v19 = *(a2 + 9);
    }

    else
    {
      v19 = v16;
    }

    this = TSP::Point::MergeFrom(v17, v19);
  }

  v20 = MEMORY[0x277D80A30];
  if ((v15 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v21 = *(v3 + 80);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C9BA90](v22);
      *(v3 + 80) = v21;
    }

    if (*(a2 + 10))
    {
      v23 = *(a2 + 10);
    }

    else
    {
      v23 = v20;
    }

    this = TSP::DataReference::MergeFrom(v21, v23);
    if ((v15 & 4) == 0)
    {
LABEL_21:
      if ((v15 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_40:
      *(v3 + 16) |= 8u;
      v27 = *(v3 + 96);
      if (!v27)
      {
        v28 = *(v3 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = MEMORY[0x277C9BAC0](v28);
        *(v3 + 96) = v27;
      }

      if (*(a2 + 12))
      {
        v29 = *(a2 + 12);
      }

      else
      {
        v29 = MEMORY[0x277D809C8];
      }

      this = TSP::Path::MergeFrom(v27, v29);
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }
  }

  else if ((v15 & 4) == 0)
  {
    goto LABEL_21;
  }

  *(v3 + 16) |= 4u;
  v24 = *(v3 + 88);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x277C9BA90](v25);
    *(v3 + 88) = v24;
  }

  if (*(a2 + 11))
  {
    v26 = *(a2 + 11);
  }

  else
  {
    v26 = v20;
  }

  this = TSP::DataReference::MergeFrom(v24, v26);
  if ((v15 & 8) != 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  if ((v15 & 0x10) != 0)
  {
LABEL_48:
    *(v3 + 16) |= 0x10u;
    v30 = *(v3 + 104);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C9BB00](v31);
      *(v3 + 104) = v30;
    }

    if (*(a2 + 13))
    {
      v32 = *(a2 + 13);
    }

    else
    {
      v32 = v16;
    }

    this = TSP::Point::MergeFrom(v30, v32);
  }

LABEL_56:
  v33 = MEMORY[0x277D809D8];
  if ((v15 & 0x20) != 0)
  {
    *(v3 + 16) |= 0x20u;
    v34 = *(v3 + 112);
    if (!v34)
    {
      v35 = *(v3 + 8);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = MEMORY[0x277C9BAD0](v35);
      *(v3 + 112) = v34;
    }

    if (*(a2 + 14))
    {
      v36 = *(a2 + 14);
    }

    else
    {
      v36 = v33;
    }

    this = TSP::Size::MergeFrom(v34, v36);
    if ((v15 & 0x40) == 0)
    {
LABEL_58:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_76;
    }
  }

  else if ((v15 & 0x40) == 0)
  {
    goto LABEL_58;
  }

  *(v3 + 16) |= 0x40u;
  v37 = *(v3 + 120);
  if (!v37)
  {
    v38 = *(v3 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x277C9BAD0](v38);
    *(v3 + 120) = v37;
  }

  if (*(a2 + 15))
  {
    v39 = *(a2 + 15);
  }

  else
  {
    v39 = v33;
  }

  this = TSP::Size::MergeFrom(v37, v39);
  if ((v15 & 0x80) != 0)
  {
LABEL_76:
    *(v3 + 16) |= 0x80u;
    v40 = *(v3 + 128);
    if (!v40)
    {
      v41 = *(v3 + 8);
      if (v41)
      {
        v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
      }

      v40 = MEMORY[0x277C9BAF0](v41);
      *(v3 + 128) = v40;
    }

    if (*(a2 + 16))
    {
      v42 = *(a2 + 16);
    }

    else
    {
      v42 = MEMORY[0x277D809E8];
    }

    this = TSP::Color::MergeFrom(v40, v42);
  }

LABEL_84:
  if ((v15 & 0xFF00) == 0)
  {
    goto LABEL_95;
  }

  if ((v15 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v43 = *(v3 + 136);
    if (!v43)
    {
      v44 = *(v3 + 8);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x277C9BAB0](v44);
      *(v3 + 136) = v43;
    }

    if (*(a2 + 17))
    {
      v45 = *(a2 + 17);
    }

    else
    {
      v45 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v43, v45);
    if ((v15 & 0x200) == 0)
    {
LABEL_87:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_121;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_87;
  }

  *(v3 + 16) |= 0x200u;
  v46 = *(v3 + 144);
  if (!v46)
  {
    v47 = *(v3 + 8);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x277C9BA90](v47);
    *(v3 + 144) = v46;
  }

  if (*(a2 + 18))
  {
    v48 = *(a2 + 18);
  }

  else
  {
    v48 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v46, v48);
  if ((v15 & 0x400) == 0)
  {
LABEL_88:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_129;
  }

LABEL_121:
  *(v3 + 16) |= 0x400u;
  v49 = *(v3 + 152);
  if (!v49)
  {
    v50 = *(v3 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x277C9BB00](v50);
    *(v3 + 152) = v49;
  }

  if (*(a2 + 19))
  {
    v51 = *(a2 + 19);
  }

  else
  {
    v51 = MEMORY[0x277D809F0];
  }

  this = TSP::Point::MergeFrom(v49, v51);
  if ((v15 & 0x800) == 0)
  {
LABEL_89:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_137;
  }

LABEL_129:
  *(v3 + 16) |= 0x800u;
  v52 = *(v3 + 160);
  if (!v52)
  {
    v53 = *(v3 + 8);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = MEMORY[0x277C9BAD0](v53);
    *(v3 + 160) = v52;
  }

  if (*(a2 + 20))
  {
    v54 = *(a2 + 20);
  }

  else
  {
    v54 = MEMORY[0x277D809D8];
  }

  this = TSP::Size::MergeFrom(v52, v54);
  if ((v15 & 0x1000) == 0)
  {
LABEL_90:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_145;
  }

LABEL_137:
  *(v3 + 16) |= 0x1000u;
  v55 = *(v3 + 168);
  if (!v55)
  {
    v56 = *(v3 + 8);
    if (v56)
    {
      v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
    }

    v55 = MEMORY[0x277C9BB00](v56);
    *(v3 + 168) = v55;
  }

  if (*(a2 + 21))
  {
    v57 = *(a2 + 21);
  }

  else
  {
    v57 = MEMORY[0x277D809F0];
  }

  this = TSP::Point::MergeFrom(v55, v57);
  if ((v15 & 0x2000) == 0)
  {
LABEL_91:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_92;
    }

LABEL_153:
    *(v3 + 184) = *(a2 + 46);
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_145:
  *(v3 + 16) |= 0x2000u;
  v58 = *(v3 + 176);
  if (!v58)
  {
    v59 = *(v3 + 8);
    if (v59)
    {
      v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = MEMORY[0x277C9BAD0](v59);
    *(v3 + 176) = v58;
  }

  if (*(a2 + 22))
  {
    v60 = *(a2 + 22);
  }

  else
  {
    v60 = MEMORY[0x277D809D8];
  }

  this = TSP::Size::MergeFrom(v58, v60);
  if ((v15 & 0x4000) != 0)
  {
    goto LABEL_153;
  }

LABEL_92:
  if ((v15 & 0x8000) != 0)
  {
LABEL_93:
    *(v3 + 188) = *(a2 + 47);
  }

LABEL_94:
  *(v3 + 16) |= v15;
LABEL_95:
  if ((v15 & 0x3F0000) == 0)
  {
    return this;
  }

  if ((v15 & 0x10000) != 0)
  {
    *(v3 + 192) = *(a2 + 24);
    if ((v15 & 0x20000) == 0)
    {
LABEL_98:
      if ((v15 & 0x40000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_157;
    }
  }

  else if ((v15 & 0x20000) == 0)
  {
    goto LABEL_98;
  }

  *(v3 + 200) = *(a2 + 25);
  if ((v15 & 0x40000) == 0)
  {
LABEL_99:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(v3 + 208) = *(a2 + 26);
  if ((v15 & 0x80000) == 0)
  {
LABEL_100:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_101;
    }

LABEL_159:
    *(v3 + 220) = *(a2 + 55);
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_158:
  *(v3 + 216) = *(a2 + 54);
  if ((v15 & 0x100000) != 0)
  {
    goto LABEL_159;
  }

LABEL_101:
  if ((v15 & 0x200000) != 0)
  {
LABEL_102:
    *(v3 + 224) = *(a2 + 28);
  }

LABEL_103:
  *(v3 + 16) |= v15;
  return this;
}

uint64_t *TSD::PencilAnnotationStorageArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PencilAnnotationStorageArchive::Clear(this);

    return TSD::PencilAnnotationStorageArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::PencilAnnotationStorageArchive::CopyFrom(uint64_t *this, const TSD::PencilAnnotationStorageArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PencilAnnotationStorageArchive::Clear(this);

    return TSD::PencilAnnotationStorageArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::PencilAnnotationStorageArchive::IsInitialized(TSD::PencilAnnotationStorageArchive *this)
{
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

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 4);
  if (v9)
  {
    result = TSP::Point::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 2) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 4) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 8) != 0)
  {
    result = TSP::Path::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x10) != 0)
  {
    result = TSP::Point::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x20) != 0)
  {
    result = TSP::Size::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x40) != 0)
  {
    result = TSP::Size::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x80) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x100) != 0)
  {
    result = TSP::Date::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x200) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x400) != 0)
  {
    result = TSP::Point::IsInitialized(*(this + 19));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x800) != 0)
  {
    result = TSP::Size::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x1000) != 0)
  {
    result = TSP::Point::IsInitialized(*(this + 21));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x2000) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(this + 22));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::PencilAnnotationStorageArchive::InternalSwap(TSD::PencilAnnotationStorageArchive *this, TSD::PencilAnnotationStorageArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  v13 = *(this + 13);
  v14 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v13;
  *(a2 + 14) = v14;
  v15 = *(this + 15);
  v16 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v15;
  *(a2 + 16) = v16;
  v17 = *(this + 17);
  v18 = *(this + 18);
  *(this + 136) = *(a2 + 136);
  *(a2 + 17) = v17;
  *(a2 + 18) = v18;
  v19 = *(this + 19);
  v20 = *(this + 20);
  *(this + 152) = *(a2 + 152);
  *(a2 + 19) = v19;
  *(a2 + 20) = v20;
  v21 = *(this + 21);
  v22 = *(this + 22);
  *(this + 168) = *(a2 + 168);
  *(a2 + 21) = v21;
  *(a2 + 22) = v22;
  v23 = *(this + 23);
  v24 = *(this + 24);
  *(this + 184) = *(a2 + 184);
  *(a2 + 23) = v23;
  *(a2 + 24) = v24;
  v25 = *(this + 25);
  v26 = *(this + 26);
  *(this + 200) = *(a2 + 200);
  *(a2 + 25) = v25;
  *(a2 + 26) = v26;
  v27 = *(this + 27);
  v28 = *(this + 28);
  result = *(a2 + 216);
  *(this + 216) = result;
  *(a2 + 27) = v27;
  *(a2 + 28) = v28;
  return result;
}

TSP::Color *TSD::SpecColorFillSetColorArchive::clear_color(TSD::SpecColorFillSetColorArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::SpecColorFillSetColorArchive *TSD::SpecColorFillSetColorArchive::SpecColorFillSetColorArchive(TSD::SpecColorFillSetColorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885785D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecColorFillSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885785D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecColorFillSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::SpecColorFillSetColorArchive *TSD::SpecColorFillSetColorArchive::SpecColorFillSetColorArchive(TSD::SpecColorFillSetColorArchive *this, const TSD::SpecColorFillSetColorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885785D8;
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
  return this;
}

void TSD::SpecColorFillSetColorArchive::~SpecColorFillSetColorArchive(TSD::SpecColorFillSetColorArchive *this)
{
  if (this != &TSD::_SpecColorFillSetColorArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::SpecColorFillSetColorArchive::~SpecColorFillSetColorArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::SpecColorFillSetColorArchive::default_instance(TSD::SpecColorFillSetColorArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecColorFillSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecColorFillSetColorArchive_default_instance_;
}

uint64_t *TSD::SpecColorFillSetColorArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Color::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::SpecColorFillSetColorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_27670AF08(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
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

        v12 = MEMORY[0x277C9BAF0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27680B3AC(a3, v10, v5);
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
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSD::SpecColorFillSetColorArchive::_InternalSerialize(TSD::SpecColorFillSetColorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
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

    a2 = TSP::Color::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecColorFillSetColorArchive::ByteSizeLong(TSP::Color **this)
{
  if (this[2])
  {
    v3 = TSP::Color::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::SpecColorFillSetColorArchive::MergeFrom(TSD::SpecColorFillSetColorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::SpecColorFillSetColorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::SpecColorFillSetColorArchive::MergeFrom(uint64_t this, const TSD::SpecColorFillSetColorArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C9BAF0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D809E8];
    }

    return TSP::Color::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::SpecColorFillSetColorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SpecColorFillSetColorArchive::Clear(this);

    return TSD::SpecColorFillSetColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::SpecColorFillSetColorArchive::CopyFrom(uint64_t *this, const TSD::SpecColorFillSetColorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SpecColorFillSetColorArchive::Clear(this);

    return TSD::SpecColorFillSetColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::SpecColorFillSetColorArchive::IsInitialized(TSP::Color **this)
{
  if (this[2])
  {
    return TSP::Color::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::SpecColorFillSetColorArchive::InternalSwap(TSD::SpecColorFillSetColorArchive *this, TSD::SpecColorFillSetColorArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

void *TSD::SpecFrameSetAssetScaleArchive::SpecFrameSetAssetScaleArchive(void *result, uint64_t a2)
{
  *result = &unk_288578688;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288578688;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::SpecFrameSetAssetScaleArchive *TSD::SpecFrameSetAssetScaleArchive::SpecFrameSetAssetScaleArchive(TSD::SpecFrameSetAssetScaleArchive *this, const TSD::SpecFrameSetAssetScaleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578688;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::SpecFrameSetAssetScaleArchive::~SpecFrameSetAssetScaleArchive(TSD::SpecFrameSetAssetScaleArchive *this)
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

uint64_t *TSD::SpecFrameSetAssetScaleArchive::default_instance(TSD::SpecFrameSetAssetScaleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecFrameSetAssetScaleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecFrameSetAssetScaleArchive_default_instance_;
}

uint64_t *TSD::SpecFrameSetAssetScaleArchive::Clear(TSD::SpecFrameSetAssetScaleArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[2] = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecFrameSetAssetScaleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 9)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 8);
        v5 = 1;
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::SpecFrameSetAssetScaleArchive::_InternalSerialize(TSD::SpecFrameSetAssetScaleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecFrameSetAssetScaleArchive::ByteSizeLong(TSD::SpecFrameSetAssetScaleArchive *this)
{
  if (*(this + 16))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::SpecFrameSetAssetScaleArchive::MergeFrom(TSD::SpecFrameSetAssetScaleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::SpecFrameSetAssetScaleArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

double TSD::SpecFrameSetAssetScaleArchive::MergeFrom(TSD::SpecFrameSetAssetScaleArchive *this, const TSD::SpecFrameSetAssetScaleArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSD::SpecFrameSetAssetScaleArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    p_var1[2].var0 = 0;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::SpecFrameSetAssetScaleArchive::MergeFrom(this, lpsrc);
  }
}

double TSD::SpecFrameSetAssetScaleArchive::CopyFrom(TSD::SpecFrameSetAssetScaleArchive *this, const TSD::SpecFrameSetAssetScaleArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecFrameSetAssetScaleArchive::MergeFrom(this, a2);
  }

  return result;
}

double TSD::SpecFrameSetAssetScaleArchive::InternalSwap(TSD::SpecFrameSetAssetScaleArchive *this, TSD::SpecFrameSetAssetScaleArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

void *TSD::SpecGradientFillSetAngleArchive::SpecGradientFillSetAngleArchive(void *result, uint64_t a2)
{
  *result = &unk_288578738;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288578738;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::SpecGradientFillSetAngleArchive *TSD::SpecGradientFillSetAngleArchive::SpecGradientFillSetAngleArchive(TSD::SpecGradientFillSetAngleArchive *this, const TSD::SpecGradientFillSetAngleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578738;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::SpecGradientFillSetAngleArchive::~SpecGradientFillSetAngleArchive(TSD::SpecGradientFillSetAngleArchive *this)
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

uint64_t *TSD::SpecGradientFillSetAngleArchive::default_instance(TSD::SpecGradientFillSetAngleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecGradientFillSetAngleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecGradientFillSetAngleArchive_default_instance_;
}

uint64_t *TSD::SpecGradientFillSetAngleArchive::Clear(TSD::SpecGradientFillSetAngleArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[2] = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecGradientFillSetAngleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 9)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 8);
        v5 = 1;
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::SpecGradientFillSetAngleArchive::_InternalSerialize(TSD::SpecGradientFillSetAngleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecGradientFillSetAngleArchive::ByteSizeLong(TSD::SpecGradientFillSetAngleArchive *this)
{
  if (*(this + 16))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::SpecGradientFillSetAngleArchive::MergeFrom(TSD::SpecGradientFillSetAngleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::SpecGradientFillSetAngleArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

double TSD::SpecGradientFillSetAngleArchive::MergeFrom(TSD::SpecGradientFillSetAngleArchive *this, const TSD::SpecGradientFillSetAngleArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSD::SpecGradientFillSetAngleArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    p_var1[2].var0 = 0;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::SpecGradientFillSetAngleArchive::MergeFrom(this, lpsrc);
  }
}

double TSD::SpecGradientFillSetAngleArchive::CopyFrom(TSD::SpecGradientFillSetAngleArchive *this, const TSD::SpecGradientFillSetAngleArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecGradientFillSetAngleArchive::MergeFrom(this, a2);
  }

  return result;
}

double TSD::SpecGradientFillSetAngleArchive::InternalSwap(TSD::SpecGradientFillSetAngleArchive *this, TSD::SpecGradientFillSetAngleArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

uint64_t TSD::SpecImageFillSetTechniqueArchive::SpecImageFillSetTechniqueArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2885787E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_2885787E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSD::SpecImageFillSetTechniqueArchive *TSD::SpecImageFillSetTechniqueArchive::SpecImageFillSetTechniqueArchive(TSD::SpecImageFillSetTechniqueArchive *this, const TSD::SpecImageFillSetTechniqueArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885787E8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSD::SpecImageFillSetTechniqueArchive::~SpecImageFillSetTechniqueArchive(TSD::SpecImageFillSetTechniqueArchive *this)
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

uint64_t *TSD::SpecImageFillSetTechniqueArchive::default_instance(TSD::SpecImageFillSetTechniqueArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecImageFillSetTechniqueArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecImageFillSetTechniqueArchive_default_instance_;
}

uint64_t *TSD::SpecImageFillSetTechniqueArchive::Clear(TSD::SpecImageFillSetTechniqueArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecImageFillSetTechniqueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v18) & 1) == 0)
  {
    while (1)
    {
      v6 = (v18 + 1);
      v7 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
      v18 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_27;
      }

      v6 = TagFallback;
      v7 = v14;
LABEL_6:
      if (v7 == 8)
      {
        v11 = (v6 + 1);
        LODWORD(v10) = *v6;
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v12 = *v11;
        v10 = (v10 + (v12 << 7) - 128);
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (v6 + 2);
LABEL_18:
          v18 = v11;
          *(a1 + 24) = v10;
          v5 = 1;
          goto LABEL_19;
        }

        v15 = google::protobuf::internal::VarintParseSlow64(v6, v10);
        v18 = v15;
        *(a1 + 24) = v16;
        v5 = 1;
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        if (!v18)
        {
LABEL_27:
          v18 = 0;
          goto LABEL_26;
        }
      }

LABEL_19:
      if (sub_27670AF08(a3, &v18))
      {
        goto LABEL_26;
      }
    }

    v6 = (v18 + 2);
LABEL_5:
    v18 = v6;
    goto LABEL_6;
  }

LABEL_26:
  *(a1 + 16) |= v5;
  return v18;
}

unsigned __int8 *TSD::SpecImageFillSetTechniqueArchive::_InternalSerialize(TSD::SpecImageFillSetTechniqueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
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
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecImageFillSetTechniqueArchive::ByteSizeLong(TSD::SpecImageFillSetTechniqueArchive *this)
{
  if (*(this + 16))
  {
    v2 = *(this + 6);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

uint64_t TSD::SpecImageFillSetTechniqueArchive::MergeFrom(TSD::SpecImageFillSetTechniqueArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::SpecImageFillSetTechniqueArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::SpecImageFillSetTechniqueArchive::MergeFrom(uint64_t this, const TSD::SpecImageFillSetTechniqueArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return this;
}

TSD::SpecImageFillSetTechniqueArchive *TSD::SpecImageFillSetTechniqueArchive::CopyFrom(TSD::SpecImageFillSetTechniqueArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecImageFillSetTechniqueArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSD::SpecImageFillSetTechniqueArchive *TSD::SpecImageFillSetTechniqueArchive::CopyFrom(const TSD::SpecImageFillSetTechniqueArchive *this, const TSD::SpecImageFillSetTechniqueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecImageFillSetTechniqueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::SpecImageFillSetTechniqueArchive::InternalSwap(TSD::SpecImageFillSetTechniqueArchive *this, TSD::SpecImageFillSetTechniqueArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

void *TSD::SpecReflectionSetOpacityArchive::SpecReflectionSetOpacityArchive(void *result, uint64_t a2)
{
  *result = &unk_288578898;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288578898;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::SpecReflectionSetOpacityArchive *TSD::SpecReflectionSetOpacityArchive::SpecReflectionSetOpacityArchive(TSD::SpecReflectionSetOpacityArchive *this, const TSD::SpecReflectionSetOpacityArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578898;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::SpecReflectionSetOpacityArchive::~SpecReflectionSetOpacityArchive(TSD::SpecReflectionSetOpacityArchive *this)
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

uint64_t *TSD::SpecReflectionSetOpacityArchive::default_instance(TSD::SpecReflectionSetOpacityArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecReflectionSetOpacityArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecReflectionSetOpacityArchive_default_instance_;
}

uint64_t *TSD::SpecReflectionSetOpacityArchive::Clear(TSD::SpecReflectionSetOpacityArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[2] = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecReflectionSetOpacityArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 9)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 8);
        v5 = 1;
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::SpecReflectionSetOpacityArchive::_InternalSerialize(TSD::SpecReflectionSetOpacityArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecReflectionSetOpacityArchive::ByteSizeLong(TSD::SpecReflectionSetOpacityArchive *this)
{
  if (*(this + 16))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::SpecReflectionSetOpacityArchive::MergeFrom(TSD::SpecReflectionSetOpacityArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::SpecReflectionSetOpacityArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

double TSD::SpecReflectionSetOpacityArchive::MergeFrom(TSD::SpecReflectionSetOpacityArchive *this, const TSD::SpecReflectionSetOpacityArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSD::SpecReflectionSetOpacityArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    p_var1[2].var0 = 0;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::SpecReflectionSetOpacityArchive::MergeFrom(this, lpsrc);
  }
}

double TSD::SpecReflectionSetOpacityArchive::CopyFrom(TSD::SpecReflectionSetOpacityArchive *this, const TSD::SpecReflectionSetOpacityArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecReflectionSetOpacityArchive::MergeFrom(this, a2);
  }

  return result;
}

double TSD::SpecReflectionSetOpacityArchive::InternalSwap(TSD::SpecReflectionSetOpacityArchive *this, TSD::SpecReflectionSetOpacityArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

void *TSD::SpecShadowSetAngleArchive::SpecShadowSetAngleArchive(void *result, uint64_t a2)
{
  *result = &unk_288578948;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288578948;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::SpecShadowSetAngleArchive *TSD::SpecShadowSetAngleArchive::SpecShadowSetAngleArchive(TSD::SpecShadowSetAngleArchive *this, const TSD::SpecShadowSetAngleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578948;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::SpecShadowSetAngleArchive::~SpecShadowSetAngleArchive(TSD::SpecShadowSetAngleArchive *this)
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

uint64_t *TSD::SpecShadowSetAngleArchive::default_instance(TSD::SpecShadowSetAngleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecShadowSetAngleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecShadowSetAngleArchive_default_instance_;
}

uint64_t *TSD::SpecShadowSetAngleArchive::Clear(TSD::SpecShadowSetAngleArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[2] = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecShadowSetAngleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 9)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 8);
        v5 = 1;
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::SpecShadowSetAngleArchive::_InternalSerialize(TSD::SpecShadowSetAngleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecShadowSetAngleArchive::ByteSizeLong(TSD::SpecShadowSetAngleArchive *this)
{
  if (*(this + 16))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::SpecShadowSetAngleArchive::MergeFrom(TSD::SpecShadowSetAngleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::SpecShadowSetAngleArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

double TSD::SpecShadowSetAngleArchive::MergeFrom(TSD::SpecShadowSetAngleArchive *this, const TSD::SpecShadowSetAngleArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSD::SpecShadowSetAngleArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    p_var1[2].var0 = 0;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::SpecShadowSetAngleArchive::MergeFrom(this, lpsrc);
  }
}

double TSD::SpecShadowSetAngleArchive::CopyFrom(TSD::SpecShadowSetAngleArchive *this, const TSD::SpecShadowSetAngleArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecShadowSetAngleArchive::MergeFrom(this, a2);
  }

  return result;
}

double TSD::SpecShadowSetAngleArchive::InternalSwap(TSD::SpecShadowSetAngleArchive *this, TSD::SpecShadowSetAngleArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

TSP::Color *TSD::SpecShadowSetColorArchive::clear_color(TSD::SpecShadowSetColorArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::SpecShadowSetColorArchive *TSD::SpecShadowSetColorArchive::SpecShadowSetColorArchive(TSD::SpecShadowSetColorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885789F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecShadowSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885789F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecShadowSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::SpecShadowSetColorArchive *TSD::SpecShadowSetColorArchive::SpecShadowSetColorArchive(TSD::SpecShadowSetColorArchive *this, const TSD::SpecShadowSetColorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885789F8;
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
  return this;
}

void TSD::SpecShadowSetColorArchive::~SpecShadowSetColorArchive(TSD::SpecShadowSetColorArchive *this)
{
  if (this != &TSD::_SpecShadowSetColorArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::SpecShadowSetColorArchive::~SpecShadowSetColorArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::SpecShadowSetColorArchive::default_instance(TSD::SpecShadowSetColorArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecShadowSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecShadowSetColorArchive_default_instance_;
}

uint64_t *TSD::SpecShadowSetColorArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Color::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::SpecShadowSetColorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_27670AF08(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
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

        v12 = MEMORY[0x277C9BAF0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27680B3AC(a3, v10, v5);
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
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSD::SpecShadowSetColorArchive::_InternalSerialize(TSD::SpecShadowSetColorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
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

    a2 = TSP::Color::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecShadowSetColorArchive::ByteSizeLong(TSP::Color **this)
{
  if (this[2])
  {
    v3 = TSP::Color::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::SpecShadowSetColorArchive::MergeFrom(TSD::SpecShadowSetColorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::SpecShadowSetColorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::SpecShadowSetColorArchive::MergeFrom(uint64_t this, const TSD::SpecShadowSetColorArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C9BAF0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D809E8];
    }

    return TSP::Color::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::SpecShadowSetColorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SpecShadowSetColorArchive::Clear(this);

    return TSD::SpecShadowSetColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::SpecShadowSetColorArchive::CopyFrom(uint64_t *this, const TSD::SpecShadowSetColorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SpecShadowSetColorArchive::Clear(this);

    return TSD::SpecShadowSetColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::SpecShadowSetColorArchive::IsInitialized(TSP::Color **this)
{
  if (this[2])
  {
    return TSP::Color::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::SpecShadowSetColorArchive::InternalSwap(TSD::SpecShadowSetColorArchive *this, TSD::SpecShadowSetColorArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

void *TSD::SpecShadowSetOffsetArchive::SpecShadowSetOffsetArchive(void *result, uint64_t a2)
{
  *result = &unk_288578AA8;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288578AA8;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::SpecShadowSetOffsetArchive *TSD::SpecShadowSetOffsetArchive::SpecShadowSetOffsetArchive(TSD::SpecShadowSetOffsetArchive *this, const TSD::SpecShadowSetOffsetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578AA8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::SpecShadowSetOffsetArchive::~SpecShadowSetOffsetArchive(TSD::SpecShadowSetOffsetArchive *this)
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

uint64_t *TSD::SpecShadowSetOffsetArchive::default_instance(TSD::SpecShadowSetOffsetArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecShadowSetOffsetArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecShadowSetOffsetArchive_default_instance_;
}

uint64_t *TSD::SpecShadowSetOffsetArchive::Clear(TSD::SpecShadowSetOffsetArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[2] = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecShadowSetOffsetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 9)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 8);
        v5 = 1;
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::SpecShadowSetOffsetArchive::_InternalSerialize(TSD::SpecShadowSetOffsetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecShadowSetOffsetArchive::ByteSizeLong(TSD::SpecShadowSetOffsetArchive *this)
{
  if (*(this + 16))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::SpecShadowSetOffsetArchive::MergeFrom(TSD::SpecShadowSetOffsetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::SpecShadowSetOffsetArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

double TSD::SpecShadowSetOffsetArchive::MergeFrom(TSD::SpecShadowSetOffsetArchive *this, const TSD::SpecShadowSetOffsetArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSD::SpecShadowSetOffsetArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    p_var1[2].var0 = 0;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::SpecShadowSetOffsetArchive::MergeFrom(this, lpsrc);
  }
}

double TSD::SpecShadowSetOffsetArchive::CopyFrom(TSD::SpecShadowSetOffsetArchive *this, const TSD::SpecShadowSetOffsetArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecShadowSetOffsetArchive::MergeFrom(this, a2);
  }

  return result;
}

double TSD::SpecShadowSetOffsetArchive::InternalSwap(TSD::SpecShadowSetOffsetArchive *this, TSD::SpecShadowSetOffsetArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

void *TSD::SpecShadowSetOpacityArchive::SpecShadowSetOpacityArchive(void *result, uint64_t a2)
{
  *result = &unk_288578B58;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288578B58;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::SpecShadowSetOpacityArchive *TSD::SpecShadowSetOpacityArchive::SpecShadowSetOpacityArchive(TSD::SpecShadowSetOpacityArchive *this, const TSD::SpecShadowSetOpacityArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578B58;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::SpecShadowSetOpacityArchive::~SpecShadowSetOpacityArchive(TSD::SpecShadowSetOpacityArchive *this)
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

uint64_t *TSD::SpecShadowSetOpacityArchive::default_instance(TSD::SpecShadowSetOpacityArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecShadowSetOpacityArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecShadowSetOpacityArchive_default_instance_;
}

uint64_t *TSD::SpecShadowSetOpacityArchive::Clear(TSD::SpecShadowSetOpacityArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[2] = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecShadowSetOpacityArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 9)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 8);
        v5 = 1;
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::SpecShadowSetOpacityArchive::_InternalSerialize(TSD::SpecShadowSetOpacityArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecShadowSetOpacityArchive::ByteSizeLong(TSD::SpecShadowSetOpacityArchive *this)
{
  if (*(this + 16))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::SpecShadowSetOpacityArchive::MergeFrom(TSD::SpecShadowSetOpacityArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::SpecShadowSetOpacityArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

double TSD::SpecShadowSetOpacityArchive::MergeFrom(TSD::SpecShadowSetOpacityArchive *this, const TSD::SpecShadowSetOpacityArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSD::SpecShadowSetOpacityArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    p_var1[2].var0 = 0;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::SpecShadowSetOpacityArchive::MergeFrom(this, lpsrc);
  }
}

double TSD::SpecShadowSetOpacityArchive::CopyFrom(TSD::SpecShadowSetOpacityArchive *this, const TSD::SpecShadowSetOpacityArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecShadowSetOpacityArchive::MergeFrom(this, a2);
  }

  return result;
}

double TSD::SpecShadowSetOpacityArchive::InternalSwap(TSD::SpecShadowSetOpacityArchive *this, TSD::SpecShadowSetOpacityArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

uint64_t TSD::SpecShadowSetRadiusArchive::SpecShadowSetRadiusArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288578C08;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_288578C08;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSD::SpecShadowSetRadiusArchive *TSD::SpecShadowSetRadiusArchive::SpecShadowSetRadiusArchive(TSD::SpecShadowSetRadiusArchive *this, const TSD::SpecShadowSetRadiusArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578C08;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSD::SpecShadowSetRadiusArchive::~SpecShadowSetRadiusArchive(TSD::SpecShadowSetRadiusArchive *this)
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

uint64_t *TSD::SpecShadowSetRadiusArchive::default_instance(TSD::SpecShadowSetRadiusArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecShadowSetRadiusArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecShadowSetRadiusArchive_default_instance_;
}

uint64_t *TSD::SpecShadowSetRadiusArchive::Clear(TSD::SpecShadowSetRadiusArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecShadowSetRadiusArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v18) & 1) == 0)
  {
    while (1)
    {
      v6 = (v18 + 1);
      v7 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
      v18 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_27;
      }

      v6 = TagFallback;
      v7 = v14;
LABEL_6:
      if (v7 == 8)
      {
        v11 = (v6 + 1);
        LODWORD(v10) = *v6;
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v12 = *v11;
        v10 = (v10 + (v12 << 7) - 128);
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (v6 + 2);
LABEL_18:
          v18 = v11;
          *(a1 + 24) = v10;
          v5 = 1;
          goto LABEL_19;
        }

        v15 = google::protobuf::internal::VarintParseSlow64(v6, v10);
        v18 = v15;
        *(a1 + 24) = v16;
        v5 = 1;
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        if (!v18)
        {
LABEL_27:
          v18 = 0;
          goto LABEL_26;
        }
      }

LABEL_19:
      if (sub_27670AF08(a3, &v18))
      {
        goto LABEL_26;
      }
    }

    v6 = (v18 + 2);
LABEL_5:
    v18 = v6;
    goto LABEL_6;
  }

LABEL_26:
  *(a1 + 16) |= v5;
  return v18;
}

unsigned __int8 *TSD::SpecShadowSetRadiusArchive::_InternalSerialize(TSD::SpecShadowSetRadiusArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
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
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecShadowSetRadiusArchive::ByteSizeLong(TSD::SpecShadowSetRadiusArchive *this)
{
  if (*(this + 16))
  {
    v2 = *(this + 6);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

uint64_t TSD::SpecShadowSetRadiusArchive::MergeFrom(TSD::SpecShadowSetRadiusArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::SpecShadowSetRadiusArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::SpecShadowSetRadiusArchive::MergeFrom(uint64_t this, const TSD::SpecShadowSetRadiusArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return this;
}

TSD::SpecShadowSetRadiusArchive *TSD::SpecShadowSetRadiusArchive::CopyFrom(TSD::SpecShadowSetRadiusArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecShadowSetRadiusArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSD::SpecShadowSetRadiusArchive *TSD::SpecShadowSetRadiusArchive::CopyFrom(const TSD::SpecShadowSetRadiusArchive *this, const TSD::SpecShadowSetRadiusArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecShadowSetRadiusArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::SpecShadowSetRadiusArchive::InternalSwap(TSD::SpecShadowSetRadiusArchive *this, TSD::SpecShadowSetRadiusArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

TSP::Color *TSD::SpecStrokeSetColorArchive::clear_color(TSD::SpecStrokeSetColorArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::SpecStrokeSetColorArchive *TSD::SpecStrokeSetColorArchive::SpecStrokeSetColorArchive(TSD::SpecStrokeSetColorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578CB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288578CB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::SpecStrokeSetColorArchive *TSD::SpecStrokeSetColorArchive::SpecStrokeSetColorArchive(TSD::SpecStrokeSetColorArchive *this, const TSD::SpecStrokeSetColorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578CB8;
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
  return this;
}

void TSD::SpecStrokeSetColorArchive::~SpecStrokeSetColorArchive(TSD::SpecStrokeSetColorArchive *this)
{
  if (this != &TSD::_SpecStrokeSetColorArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::SpecStrokeSetColorArchive::~SpecStrokeSetColorArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::SpecStrokeSetColorArchive::default_instance(TSD::SpecStrokeSetColorArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecStrokeSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecStrokeSetColorArchive_default_instance_;
}

uint64_t *TSD::SpecStrokeSetColorArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Color::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::SpecStrokeSetColorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_27670AF08(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
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

        v12 = MEMORY[0x277C9BAF0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27680B3AC(a3, v10, v5);
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
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSD::SpecStrokeSetColorArchive::_InternalSerialize(TSD::SpecStrokeSetColorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
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

    a2 = TSP::Color::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecStrokeSetColorArchive::ByteSizeLong(TSP::Color **this)
{
  if (this[2])
  {
    v3 = TSP::Color::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::SpecStrokeSetColorArchive::MergeFrom(TSD::SpecStrokeSetColorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::SpecStrokeSetColorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::SpecStrokeSetColorArchive::MergeFrom(uint64_t this, const TSD::SpecStrokeSetColorArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C9BAF0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D809E8];
    }

    return TSP::Color::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::SpecStrokeSetColorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SpecStrokeSetColorArchive::Clear(this);

    return TSD::SpecStrokeSetColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::SpecStrokeSetColorArchive::CopyFrom(uint64_t *this, const TSD::SpecStrokeSetColorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SpecStrokeSetColorArchive::Clear(this);

    return TSD::SpecStrokeSetColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::SpecStrokeSetColorArchive::IsInitialized(TSP::Color **this)
{
  if (this[2])
  {
    return TSP::Color::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::SpecStrokeSetColorArchive::InternalSwap(TSD::SpecStrokeSetColorArchive *this, TSD::SpecStrokeSetColorArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSP::Color *TSD::SpecStrokeSetPatternArchive::clear_color(TSD::SpecStrokeSetPatternArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::SpecStrokeSetPatternArchive *TSD::SpecStrokeSetPatternArchive::SpecStrokeSetPatternArchive(TSD::SpecStrokeSetPatternArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578D68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeSetPatternArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288578D68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeSetPatternArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::SpecStrokeSetPatternArchive *TSD::SpecStrokeSetPatternArchive::SpecStrokeSetPatternArchive(TSD::SpecStrokeSetPatternArchive *this, const TSD::SpecStrokeSetPatternArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578D68;
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
  v7 = *(a2 + 40);
  *(this + 7) = *(a2 + 7);
  *(this + 40) = v7;
  return this;
}

void TSD::SpecStrokeSetPatternArchive::~SpecStrokeSetPatternArchive(TSD::SpecStrokeSetPatternArchive *this)
{
  if (this != &TSD::_SpecStrokeSetPatternArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSD::StrokePatternArchive::~StrokePatternArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::SpecStrokeSetPatternArchive::~SpecStrokeSetPatternArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::SpecStrokeSetPatternArchive::default_instance(TSD::SpecStrokeSetPatternArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecStrokeSetPatternArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecStrokeSetPatternArchive_default_instance_;
}

uint64_t *TSD::SpecStrokeSetPatternArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Color::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSD::StrokePatternArchive::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0x3C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
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

google::protobuf::internal *TSD::SpecStrokeSetPatternArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v34) & 1) == 0)
  {
    while (1)
    {
      v7 = (v34 + 1);
      v8 = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v9 - 128));
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 == 33)
          {
            v20 = *v7;
            v12 = (v7 + 8);
            v5 |= 0x20u;
            *(a1 + 56) = v20;
            goto LABEL_32;
          }

LABEL_44:
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

          v16 = google::protobuf::internal::UnknownFieldParse();
        }

        else if (v10 == 5)
        {
          if (v8 != 42)
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

            v26 = MEMORY[0x277C9BAF0](v25);
            LODWORD(v24) = v26;
            *(a1 + 24) = v26;
            v7 = v34;
          }

          v16 = sub_27680B3AC(a3, v24, v7);
        }

        else
        {
          if (v10 != 6 || v8 != 50)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 2u;
          v14 = *(a1 + 32);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokePatternArchive>(v15);
            *(a1 + 32) = v14;
            v7 = v34;
          }

          v16 = sub_27680BA2C(a3, v14, v7);
        }

        v34 = v16;
        if (!v16)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_44;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        LODWORD(v17) = *v7;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v18;
        v17 = (v17 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v34 = v18;
          *(a1 + 40) = v17;
          goto LABEL_52;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v34 = v30;
        *(a1 + 40) = v31;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 3 && v8 == 25)
          {
            v13 = *v7;
            v12 = (v7 + 8);
            v5 |= 0x10u;
            *(a1 + 48) = v13;
LABEL_32:
            v34 = v12;
            goto LABEL_52;
          }

          goto LABEL_44;
        }

        if (v8 != 16)
        {
          goto LABEL_44;
        }

        v5 |= 8u;
        v22 = (v7 + 1);
        LODWORD(v21) = *v7;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v22;
        v21 = (v21 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v7 + 2);
LABEL_37:
          v34 = v22;
          *(a1 + 44) = v21;
          goto LABEL_52;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v7, v21);
        v34 = v32;
        *(a1 + 44) = v33;
        if (!v32)
        {
LABEL_61:
          v34 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
      if (sub_27670AF08(a3, &v34))
      {
        goto LABEL_2;
      }
    }

    v7 = (v34 + 2);
LABEL_6:
    v34 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

unsigned __int8 *TSD::SpecStrokeSetPatternArchive::_InternalSerialize(TSD::SpecStrokeSetPatternArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 11);
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
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        a2[2] = v12;
        a2 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      a2[1] = v11;
      a2 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 10);
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
      if ((v6 & 8) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      a2[2] = v8;
      a2 += 3;
      if ((v6 & 8) != 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    a2[1] = v7;
    a2 += 2;
    if ((v6 & 8) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_4;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 6);
  *a2 = 25;
  *(a2 + 1) = v15;
  a2 += 9;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 7);
  *a2 = 33;
  *(a2 + 1) = v16;
  a2 += 9;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_46;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 3);
  *a2 = 42;
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

  a2 = TSP::Color::_InternalSerialize(v17, v19, a3);
  if ((v6 & 2) != 0)
  {
LABEL_46:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 4);
    *a2 = 50;
    v24 = *(v23 + 5);
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

    a2 = TSD::StrokePatternArchive::_InternalSerialize(v23, v25, a3, a4);
  }

LABEL_56:
  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecStrokeSetPatternArchive::ByteSizeLong(TSD::SpecStrokeSetPatternArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TSD::StrokePatternArchive::ByteSizeLong(*(this + 4));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
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
    v5 = TSP::Color::ByteSizeLong(*(this + 3));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 0x3C) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v6 = *(this + 10);
      if (v6 < 0)
      {
        v7 = 11;
      }

      else
      {
        v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v7;
    }

    if ((v2 & 8) != 0)
    {
      v8 = *(this + 11);
      if (v8 < 0)
      {
        v9 = 11;
      }

      else
      {
        v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v9;
    }

    v10 = v3 + 9;
    if ((v2 & 0x10) == 0)
    {
      v10 = v3;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 = v10 + 9;
    }

    else
    {
      v3 = v10;
    }
  }

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

uint64_t TSD::SpecStrokeSetPatternArchive::MergeFrom(TSD::SpecStrokeSetPatternArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::SpecStrokeSetPatternArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::SpecStrokeSetPatternArchive::MergeFrom(uint64_t this, const TSD::SpecStrokeSetPatternArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C9BAF0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E8];
      }

      this = TSP::Color::MergeFrom(v6, v8);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokePatternArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSD::_StrokePatternArchive_default_instance_;
    }

    this = TSD::StrokePatternArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(v3 + 44) = *(a2 + 11);
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
      *(v3 + 56) = *(a2 + 7);
      goto LABEL_11;
    }

LABEL_31:
    *(v3 + 48) = *(a2 + 6);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSD::SpecStrokeSetPatternArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SpecStrokeSetPatternArchive::Clear(this);

    return TSD::SpecStrokeSetPatternArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::SpecStrokeSetPatternArchive::CopyFrom(uint64_t *this, const TSD::SpecStrokeSetPatternArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SpecStrokeSetPatternArchive::Clear(this);

    return TSD::SpecStrokeSetPatternArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::SpecStrokeSetPatternArchive::IsInitialized(TSD::SpecStrokeSetPatternArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::SpecStrokeSetPatternArchive::InternalSwap(TSD::SpecStrokeSetPatternArchive *this, TSD::SpecStrokeSetPatternArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  return result;
}

void *TSD::SpecStrokeSetWidthArchive::SpecStrokeSetWidthArchive(void *result, uint64_t a2)
{
  *result = &unk_288578E18;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288578E18;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::SpecStrokeSetWidthArchive *TSD::SpecStrokeSetWidthArchive::SpecStrokeSetWidthArchive(TSD::SpecStrokeSetWidthArchive *this, const TSD::SpecStrokeSetWidthArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578E18;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::SpecStrokeSetWidthArchive::~SpecStrokeSetWidthArchive(TSD::SpecStrokeSetWidthArchive *this)
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

uint64_t *TSD::SpecStrokeSetWidthArchive::default_instance(TSD::SpecStrokeSetWidthArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecStrokeSetWidthArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SpecStrokeSetWidthArchive_default_instance_;
}

uint64_t *TSD::SpecStrokeSetWidthArchive::Clear(TSD::SpecStrokeSetWidthArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[2] = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::SpecStrokeSetWidthArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 9)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 8);
        v5 = 1;
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::SpecStrokeSetWidthArchive::_InternalSerialize(TSD::SpecStrokeSetWidthArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SpecStrokeSetWidthArchive::ByteSizeLong(TSD::SpecStrokeSetWidthArchive *this)
{
  if (*(this + 16))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::SpecStrokeSetWidthArchive::MergeFrom(TSD::SpecStrokeSetWidthArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::SpecStrokeSetWidthArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

double TSD::SpecStrokeSetWidthArchive::MergeFrom(TSD::SpecStrokeSetWidthArchive *this, const TSD::SpecStrokeSetWidthArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSD::SpecStrokeSetWidthArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    p_var1[2].var0 = 0;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::SpecStrokeSetWidthArchive::MergeFrom(this, lpsrc);
  }
}

double TSD::SpecStrokeSetWidthArchive::CopyFrom(TSD::SpecStrokeSetWidthArchive *this, const TSD::SpecStrokeSetWidthArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::SpecStrokeSetWidthArchive::MergeFrom(this, a2);
  }

  return result;
}

double TSD::SpecStrokeSetWidthArchive::InternalSwap(TSD::SpecStrokeSetWidthArchive *this, TSD::SpecStrokeSetWidthArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

TSD::Attribution *TSD::Attribution::Attribution(TSD::Attribution *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578EC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Attribution_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = v3;
  return this;
}

TSD::Attribution *TSD::Attribution::Attribution(TSD::Attribution *this, const TSD::Attribution *a2)
{
  *(this + 1) = 0;
  *this = &unk_288578EC8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

  *(this + 5) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 6) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 7) = v6;
  if ((v4 & 0x10) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

void TSD::Attribution::~Attribution(TSD::Attribution *this)
{
  sub_276765B88(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::Attribution::~Attribution(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t sub_276765B88(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  v4 = v1[4];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C9C1D0](v4, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C9C1D0](v5, 0x1012C40EC159624);
  }

  v6 = v1[6];
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C9C1D0](v6, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x277C9C1D0);
  }

  return result;
}

void *TSD::Attribution::default_instance(TSD::Attribution *this)
{
  if (atomic_load_explicit(scc_info_Attribution_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_Attribution_default_instance_;
}

google::protobuf::internal *TSD::Attribution::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  TagFallback = a2;
  while ((sub_27670AF08(a3, &TagFallback) & 1) == 0)
  {
    v5 = (TagFallback + 1);
    v6 = *TagFallback;
    if ((*TagFallback & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (TagFallback + 2);
LABEL_6:
      TagFallback = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(TagFallback, (v7 - 128));
    if (!TagFallback)
    {
      return 0;
    }

    v6 = v12;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_29;
        }

        *(a1 + 16) |= 1u;
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_29:
          if (v6)
          {
            v11 = (v6 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v6 - 1;
            return TagFallback;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v10 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_27;
        }

        *(a1 + 16) |= 2u;
      }
    }

    else if (v8 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_29;
      }

      *(a1 + 16) |= 4u;
    }

    else if (v8 == 4)
    {
      if (v6 != 34)
      {
        goto LABEL_29;
      }

      *(a1 + 16) |= 8u;
    }

    else
    {
      if (v8 != 5 || v6 != 42)
      {
        goto LABEL_29;
      }

      *(a1 + 16) |= 0x10u;
    }

    google::protobuf::internal::ArenaStringPtr::Mutable();
    v10 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_27:
    TagFallback = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return TagFallback;
}

google::protobuf::UnknownFieldSet *TSD::Attribution::_InternalSerialize(TSD::Attribution *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276727B88(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276727B88(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = sub_276727B88(a3, 3, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  v4 = sub_276727B88(a3, 4, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    v4 = sub_276727B88(a3, 5, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_7:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::Attribution::ByteSizeLong(TSD::Attribution *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v13 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_15:
    v9 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSD::Attribution::MergeFrom(TSD::Attribution *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::Attribution::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

TSD::Attribution *TSD::Attribution::CopyFrom(TSD::Attribution *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::Attribution::Clear(this);

    return TSD::Attribution::MergeFrom(v4, a2);
  }

  return this;
}

TSD::Attribution *TSD::Attribution::CopyFrom(TSD::Attribution *this, const TSD::Attribution *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::Attribution::Clear(this);

    return TSD::Attribution::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::Attribution::InternalSwap(TSD::Attribution *this, TSD::Attribution *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  return result;
}

TSD::MovieFingerprint *TSD::MovieFingerprint::MovieFingerprint(TSD::MovieFingerprint *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578F78;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 15) = 0;
  if (atomic_load_explicit(scc_info_MovieFingerprint_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_2767664BC(_Unwind_Exception *a1)
{
  if (*(v2 + 44) >= 1)
  {
    sub_27680D478(v3);
  }

  sub_27676CD60(v1);
  _Unwind_Resume(a1);
}

TSD::MovieFingerprint *TSD::MovieFingerprint::MovieFingerprint(TSD::MovieFingerprint *this, const TSD::MovieFingerprint *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288578F78;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_27676CF8C(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v11 = *(a2 + 10);
  if (v11)
  {
    sub_2766C3850(this + 10, v11);
    v12 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v12, *(a2 + 6), 4 * *(a2 + 10));
  }

  *(this + 15) = 0;
  v13 = *(a2 + 1);
  if (v13)
  {
    sub_27670B0F8(v4, (v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_276766604(_Unwind_Exception *a1)
{
  if (*(v2 + 44) >= 1)
  {
    v4 = *(v2 + 48);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  sub_27676CD60(v1);
  _Unwind_Resume(a1);
}

void TSD::MovieFingerprint::~MovieFingerprint(TSD::MovieFingerprint *this)
{
  sub_2766FFE58(this + 1);
  if (*(this + 11) >= 1)
  {
    v2 = *(this + 6);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  sub_27676CD60(this + 2);
}

{
  TSD::MovieFingerprint::~MovieFingerprint(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::MovieFingerprint::default_instance(TSD::MovieFingerprint *this)
{
  if (atomic_load_explicit(scc_info_MovieFingerprint_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MovieFingerprint_default_instance_;
}

google::protobuf::internal *TSD::MovieFingerprint::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v6 = v22 + 1;
      v7 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_7:
      if (v7 >> 3 != 2)
      {
        if (v7 >> 3 != 1 || v7 != 10)
        {
LABEL_12:
          if (v7)
          {
            v10 = (v7 & 7) == 4;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            *(a3 + 80) = v7 - 1;
            return v22;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v11 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_21;
        }

        v12 = (v6 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
LABEL_26:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v14 = *(a1 + 32);
            v15 = *v14;
            goto LABEL_27;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 28))
            {
              goto LABEL_26;
            }

LABEL_27:
            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieFingerprintTrack>(*(a1 + 16));
            v17 = *(a1 + 24);
            v18 = *(a1 + 32) + 8 * v17;
            *(a1 + 24) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v22;
          }

          else
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_27680D23C(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_22;
          }

          continue;
        }
      }

      if (v7 == 18)
      {
        v11 = google::protobuf::internal::PackedUInt32Parser();
LABEL_21:
        v22 = v11;
        if (!v11)
        {
          return 0;
        }

        goto LABEL_22;
      }

      if (v7 != 16)
      {
        goto LABEL_12;
      }

      v23 = 0;
      v22 = sub_27676C2F8(v6, &v23);
      sub_27676C358((a1 + 40), &v23);
      if (!v22)
      {
        return 0;
      }

LABEL_22:
      if (sub_27670AF08(a3, &v22))
      {
        return v22;
      }
    }

    v6 = v22 + 2;
LABEL_6:
    v22 = v6;
    goto LABEL_7;
  }

  return v22;
}

unsigned __int8 *TSD::MovieFingerprint::_InternalSerialize(TSD::MovieFingerprint *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSD::MovieFingerprintTrack::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 14);
  if (v14 > 0)
  {
    a2 = sub_27676CDE4(a3, 2, this + 10, v14, a2, nullsub_3);
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, v14);
}

uint64_t TSD::MovieFingerprint::ByteSizeLong(TSD::MovieFingerprint *this)
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
      v7 = TSD::MovieFingerprintTrack::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::UInt32Size();
  if (v8)
  {
    v9 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
  }

  else
  {
    v9 = 0;
  }

  *(this + 14) = v9;
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 15) = v2 + v8;
    return v2 + v8;
  }
}

uint64_t *TSD::MovieFingerprint::MergeFrom(TSD::MovieFingerprint *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MovieFingerprint::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSD::MovieFingerprint::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieFingerprint::Clear(this);

    return TSD::MovieFingerprint::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MovieFingerprint::CopyFrom(uint64_t *this, const TSD::MovieFingerprint *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieFingerprint::Clear(this);

    return TSD::MovieFingerprint::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t sub_276766D04(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 0x10) != 0)
    {
      result = TSP::Size::IsInitialized(*(v3 + 56));
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

__n128 TSD::MovieFingerprint::InternalSwap(TSD::MovieFingerprint *this, TSD::MovieFingerprint *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  v7 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v6;
  *(a2 + 6) = v7;
  return result;
}

TSP::Size *TSD::MovieFingerprintTrack::clear_natural_size(TSD::MovieFingerprintTrack *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSD::MovieFingerprintTrack *TSD::MovieFingerprintTrack::MovieFingerprintTrack(TSD::MovieFingerprintTrack *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579028;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MovieFingerprintTrack_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  return this;
}

TSD::MovieFingerprintTrack *TSD::MovieFingerprintTrack::MovieFingerprintTrack(TSD::MovieFingerprintTrack *this, const TSD::MovieFingerprintTrack *a2)
{
  *(this + 1) = 0;
  *this = &unk_288579028;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

  *(this + 5) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 6) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  v7 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v7;
  v8 = *(a2 + 6);
  v9 = *(a2 + 7);
  v10 = *(a2 + 8);
  *(this + 140) = *(a2 + 140);
  *(this + 7) = v9;
  *(this + 8) = v10;
  *(this + 6) = v8;
  return this;
}

void TSD::MovieFingerprintTrack::~MovieFingerprintTrack(TSD::MovieFingerprintTrack *this)
{
  sub_2767670AC(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::MovieFingerprintTrack::~MovieFingerprintTrack(this);

  JUMPOUT(0x277C9C1D0);
}

TSP::Size *sub_2767670AC(TSP::Size *result)
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

    result = MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C9C1D0](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 5);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C9C1D0](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 6);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C9C1D0](v6, 0x1012C40EC159624);
  }

  if (v1 != &TSD::_MovieFingerprintTrack_default_instance_)
  {
    result = *(v1 + 7);
    if (result)
    {
      TSP::Size::~Size(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::MovieFingerprintTrack::default_instance(TSD::MovieFingerprintTrack *this)
{
  if (atomic_load_explicit(scc_info_MovieFingerprintTrack_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MovieFingerprintTrack_default_instance_;
}

uint64_t *TSD::MovieFingerprintTrack::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_22:
    v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_26:
  v7 = this[5] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_30;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_30:
  v8 = this[6] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    this = TSP::Size::Clear(this[7]);
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 112) = 0u;
    *(v1 + 100) = 0u;
    *(v1 + 84) = 0u;
  }

  if ((v2 & 0xF0000) != 0)
  {
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    *(v1 + 152) = 0;
    *(v1 + 144) = 0;
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

google::protobuf::internal *TSD::MovieFingerprintTrack::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v65 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v65) & 1) == 0)
  {
    while (1)
    {
      v7 = (v65 + 1);
      v8 = *v65;
      if (*v65 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v65, (v9 - 128));
          v65 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_107;
          }

          v7 = TagFallback;
          v8 = v11;
          goto LABEL_7;
        }

        v7 = (v65 + 2);
      }

      v65 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_79;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_83;
          }

          v5 |= 0x100u;
          v31 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v7, v30);
            v65 = v57;
            *(a1 + 84) = v58 != 0;
            if (!v57)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_48:
            v65 = v31;
            *(a1 + 84) = v30 != 0;
          }

          goto LABEL_81;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_83;
          }

          v5 |= 0x20u;
          v24 = (v7 + 1);
          v23 = *v7;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v53 = google::protobuf::internal::VarintParseSlow64(v7, v23);
            v65 = v53;
            *(a1 + 64) = v54;
            if (!v53)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v24 = (v7 + 2);
LABEL_34:
            v65 = v24;
            *(a1 + 64) = v23;
          }

          goto LABEL_81;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 2u;
          goto LABEL_79;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_83;
          }

          v5 |= 0x40u;
          v17 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v49 = google::protobuf::internal::VarintParseSlow64(v7, v16);
            v65 = v49;
            *(a1 + 72) = v50;
            if (!v49)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v17 = (v7 + 2);
LABEL_22:
            v65 = v17;
            *(a1 + 72) = v16;
          }

          goto LABEL_81;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_83;
          }

          v5 |= 0x80u;
          v35 = (v7 + 1);
          LODWORD(v34) = *v7;
          if ((v34 & 0x80) == 0)
          {
            goto LABEL_55;
          }

          v36 = *v35;
          v34 = (v34 + (v36 << 7) - 128);
          if (v36 < 0)
          {
            v59 = google::protobuf::internal::VarintParseSlow64(v7, v34);
            v65 = v59;
            *(a1 + 80) = v60;
            if (!v59)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v35 = (v7 + 2);
LABEL_55:
            v65 = v35;
            *(a1 + 80) = v34;
          }

          goto LABEL_81;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_83;
          }

          v5 |= 0x200u;
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_63;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v61 = google::protobuf::internal::VarintParseSlow64(v7, v38);
            v65 = v61;
            *(a1 + 85) = v62 != 0;
            if (!v61)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v39 = (v7 + 2);
LABEL_63:
            v65 = v39;
            *(a1 + 85) = v38 != 0;
          }

          goto LABEL_81;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_83;
          }

          v5 |= 0x800u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_43;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            v65 = v55;
            *(a1 + 88) = v56;
            if (!v55)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_43:
            v65 = v28;
            *(a1 + 88) = v27;
          }

          goto LABEL_81;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_83;
          }

          v5 |= 0x80000u;
          v46 = (v7 + 1);
          LODWORD(v45) = *v7;
          if ((v45 & 0x80) == 0)
          {
            goto LABEL_76;
          }

          v47 = *v46;
          v45 = (v45 + (v47 << 7) - 128);
          if (v47 < 0)
          {
            v63 = google::protobuf::internal::VarintParseSlow64(v7, v45);
            v65 = v63;
            *(a1 + 152) = v64;
            if (!v63)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v46 = (v7 + 2);
LABEL_76:
            v65 = v46;
            *(a1 + 152) = v45;
          }

          goto LABEL_81;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_83;
          }

          v5 |= 0x400u;
          v21 = (v7 + 1);
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v65 = v51;
            *(a1 + 86) = v52 != 0;
            if (!v51)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v21 = (v7 + 2);
LABEL_29:
            v65 = v21;
            *(a1 + 86) = v20 != 0;
          }

          goto LABEL_81;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 0x10u;
          v41 = *(a1 + 56);
          if (!v41)
          {
            v42 = *(a1 + 8);
            if (v42)
            {
              v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
            }

            v43 = MEMORY[0x277C9BAD0](v42);
            LODWORD(v41) = v43;
            *(a1 + 56) = v43;
            v7 = v65;
          }

          v44 = sub_27680AB8C(a3, v41, v7);
          goto LABEL_80;
        case 0xCu:
          if (v8 != 97)
          {
            goto LABEL_83;
          }

          v15 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x1000u;
          *(a1 + 96) = v15;
          goto LABEL_58;
        case 0xDu:
          if (v8 != 105)
          {
            goto LABEL_83;
          }

          v19 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x2000u;
          *(a1 + 104) = v19;
          goto LABEL_58;
        case 0xEu:
          if (v8 != 113)
          {
            goto LABEL_83;
          }

          v37 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x4000u;
          *(a1 + 112) = v37;
          goto LABEL_58;
        case 0xFu:
          if (v8 != 121)
          {
            goto LABEL_83;
          }

          v14 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x8000u;
          *(a1 + 120) = v14;
          goto LABEL_58;
        case 0x10u:
          if (v8 != 129)
          {
            goto LABEL_83;
          }

          v26 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x10000u;
          *(a1 + 128) = v26;
          goto LABEL_58;
        case 0x11u:
          if (v8 != 137)
          {
            goto LABEL_83;
          }

          v13 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x20000u;
          *(a1 + 136) = v13;
          goto LABEL_58;
        case 0x12u:
          if (v8 != 145)
          {
            goto LABEL_83;
          }

          v33 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x40000u;
          *(a1 + 144) = v33;
LABEL_58:
          v65 = v12;
          goto LABEL_81;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 4u;
          goto LABEL_79;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 8u;
LABEL_79:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v44 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_80;
        default:
LABEL_83:
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
            sub_27670AF80((a1 + 8));
          }

          v44 = google::protobuf::internal::UnknownFieldParse();
LABEL_80:
          v65 = v44;
          if (!v44)
          {
LABEL_107:
            v65 = 0;
            goto LABEL_2;
          }

LABEL_81:
          if (sub_27670AF08(a3, &v65))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v65;
}

unsigned __int8 *TSD::MovieFingerprintTrack::_InternalSerialize(TSD::MovieFingerprintTrack *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276727B88(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

LABEL_28:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v10 = *(this + 8);
      *v4 = 24;
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
          if ((v6 & 2) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v4[2] = v11;
          v4 += 3;
          if ((v6 & 2) != 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v4[1] = v10;
        v4 += 2;
        if ((v6 & 2) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_5:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 84);
  *v4 = 16;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  if ((v6 & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_39:
  v4 = sub_276727B88(a3, 4, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

LABEL_51:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v18 = *(this + 20);
    *v4 = 48;
    if (v18 > 0x7F)
    {
      v4[1] = v18 | 0x80;
      v19 = v18 >> 7;
      if (v18 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++v4;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(v4 - 1) = v20;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v4[2] = v19;
        v4 += 3;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      v4[1] = v18;
      v4 += 2;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_62;
      }
    }

LABEL_8:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 9);
  *v4 = 40;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    if (v14 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v4;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v4 - 1) = v16;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v4[2] = v15;
      v4 += 3;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    v4[1] = v14;
    v4 += 2;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_51;
    }
  }

LABEL_7:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_8;
  }

LABEL_62:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 85);
  *v4 = 56;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_9:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

LABEL_76:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v27 = *(this + 38);
    *v4 = 72;
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
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v4[2] = v28;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v4[1] = v27;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_87;
      }
    }

LABEL_11:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

LABEL_65:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 11);
  *v4 = 64;
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
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v4[2] = v24;
      v4 += 3;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_76;
      }
    }
  }

  else
  {
    v4[1] = v23;
    v4 += 2;
    if ((v6 & 0x80000) != 0)
    {
      goto LABEL_76;
    }
  }

LABEL_10:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_11;
  }

LABEL_87:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(this + 86);
  *v4 = 80;
  v4[1] = v31;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_90:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(this + 7);
  *v4 = 90;
  v33 = *(v32 + 5);
  if (v33 > 0x7F)
  {
    v4[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = v4 + 3;
      do
      {
        *(v34 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++v34;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(v34 - 1) = v36;
    }

    else
    {
      v4[2] = v35;
      v34 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v33;
    v34 = v4 + 2;
  }

  v4 = TSP::Size::_InternalSerialize(v32, v34, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_103;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v38 = *(this + 12);
  *v4 = 97;
  *(v4 + 1) = v38;
  v4 += 9;
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_106;
  }

LABEL_103:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v39 = *(this + 13);
  *v4 = 105;
  *(v4 + 1) = v39;
  v4 += 9;
  if ((v6 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_109;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v40 = *(this + 14);
  *v4 = 113;
  *(v4 + 1) = v40;
  v4 += 9;
  if ((v6 & 0x8000) == 0)
  {
LABEL_16:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_112;
  }

LABEL_109:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(this + 15);
  *v4 = 121;
  *(v4 + 1) = v41;
  v4 += 9;
  if ((v6 & 0x10000) == 0)
  {
LABEL_17:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_115;
  }

LABEL_112:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(this + 16);
  *v4 = 385;
  *(v4 + 2) = v42;
  v4 += 10;
  if ((v6 & 0x20000) == 0)
  {
LABEL_18:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_118;
  }

LABEL_115:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(this + 17);
  *v4 = 393;
  *(v4 + 2) = v43;
  v4 += 10;
  if ((v6 & 0x40000) == 0)
  {
LABEL_19:
    if ((v6 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_121;
  }

LABEL_118:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(this + 18);
  *v4 = 401;
  *(v4 + 2) = v44;
  v4 += 10;
  if ((v6 & 4) == 0)
  {
LABEL_20:
    if ((v6 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_121:
  v4 = sub_276727B88(a3, 19, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
LABEL_21:
    v4 = sub_276727B88(a3, 20, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_22:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}