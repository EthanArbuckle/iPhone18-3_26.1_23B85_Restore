unsigned __int8 *sub_2763B31FC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 20);
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

    a2 = sub_2763983D0(v5, v7, this);
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v11 = *(a1 + 832);
    *a2 = 16;
    a2[1] = v11;
    a2 += 2;
  }

  if ((*(a1 + 16) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v12 = *(a1 + 56);
    *a2 = 26;
    v13 = *(v12 + 20);
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

    a2 = sub_2763989B4(v12, v14, this);
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v18 = *(a1 + 833);
    *a2 = 32;
    a2[1] = v18;
    a2 += 2;
  }

  if ((*(a1 + 16) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v19 = *(a1 + 64);
    *a2 = 42;
    v20 = *(v19 + 20);
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

    a2 = sub_2763989B4(v19, v21, this);
  }

  if ((*(a1 + 28) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v25 = *(a1 + 834);
    *a2 = 48;
    a2[1] = v25;
    a2 += 2;
  }

  if ((*(a1 + 16) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v26 = *(a1 + 72);
    *a2 = 58;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v26, v28, this);
  }

  if ((*(a1 + 28) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v32 = *(a1 + 835);
    *a2 = 64;
    a2[1] = v32;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v33 = *(a1 + 80);
    *a2 = 74;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v33, v35, this);
  }

  if ((*(a1 + 28) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v39 = *(a1 + 836);
    *a2 = 80;
    a2[1] = v39;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v40 = *(a1 + 88);
    *a2 = 90;
    v41 = *(v40 + 20);
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

    a2 = sub_2763983D0(v40, v42, this);
  }

  if ((*(a1 + 28) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v46 = *(a1 + 837);
    *a2 = 96;
    a2[1] = v46;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v47 = *(a1 + 96);
    *a2 = 106;
    v48 = *(v47 + 20);
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

    a2 = sub_2763983D0(v47, v49, this);
  }

  if (*(a1 + 29))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v53 = *(a1 + 838);
    *a2 = 112;
    a2[1] = v53;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v54 = *(a1 + 104);
    *a2 = 122;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v54, v56, this);
  }

  if ((*(a1 + 29) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v60 = *(a1 + 839);
    *a2 = 384;
    a2[2] = v60;
    a2 += 3;
  }

  if (*(a1 + 17))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v61 = *(a1 + 112);
    *a2 = 394;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v61, v63, this);
  }

  if ((*(a1 + 29) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v67 = *(a1 + 840);
    *a2 = 400;
    a2[2] = v67;
    a2 += 3;
  }

  if ((*(a1 + 17) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v68 = *(a1 + 120);
    *a2 = 410;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v68, v70, this);
  }

  if ((*(a1 + 29) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v74 = *(a1 + 841);
    *a2 = 416;
    a2[2] = v74;
    a2 += 3;
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v75 = *(a1 + 128);
    *a2 = 426;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v75, v77, this);
  }

  if ((*(a1 + 29) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v81 = *(a1 + 842);
    *a2 = 432;
    a2[2] = v81;
    a2 += 3;
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v82 = *(a1 + 136);
    *a2 = 442;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v82, v84, this);
  }

  if ((*(a1 + 29) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v88 = *(a1 + 843);
    *a2 = 448;
    a2[2] = v88;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v89 = *(a1 + 144);
    *a2 = 458;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v89, v91, this);
  }

  if ((*(a1 + 29) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v95 = *(a1 + 844);
    *a2 = 464;
    a2[2] = v95;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v96 = *(a1 + 152);
    *a2 = 474;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v96, v98, this);
  }

  if ((*(a1 + 29) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v102 = *(a1 + 845);
    *a2 = 480;
    a2[2] = v102;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v103 = *(a1 + 160);
    *a2 = 490;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v103, v105, this);
  }

  if (*(a1 + 30))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v109 = *(a1 + 846);
    *a2 = 496;
    a2[2] = v109;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v110 = *(a1 + 168);
    *a2 = 506;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v110, v112, this);
  }

  if ((*(a1 + 30) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v116 = *(a1 + 847);
    *a2 = 640;
    a2[2] = v116;
    a2 += 3;
  }

  if (*(a1 + 18))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v117 = *(a1 + 176);
    *a2 = 650;
    v118 = *(v117 + 20);
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

    a2 = sub_276397858(v117, v119, this);
  }

  if ((*(a1 + 30) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v123 = *(a1 + 848);
    *a2 = 656;
    a2[2] = v123;
    a2 += 3;
  }

  if ((*(a1 + 18) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v124 = *(a1 + 184);
    *a2 = 666;
    v125 = *(v124 + 20);
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

    a2 = sub_276397858(v124, v126, this);
  }

  if ((*(a1 + 30) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v130 = *(a1 + 849);
    *a2 = 672;
    a2[2] = v130;
    a2 += 3;
  }

  if ((*(a1 + 18) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v131 = *(a1 + 192);
    *a2 = 682;
    v132 = *(v131 + 20);
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

    a2 = sub_276397858(v131, v133, this);
  }

  if ((*(a1 + 30) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v137 = *(a1 + 850);
    *a2 = 688;
    a2[2] = v137;
    a2 += 3;
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v138 = *(a1 + 200);
    *a2 = 698;
    v139 = *(v138 + 20);
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

    a2 = sub_276397858(v138, v140, this);
  }

  if ((*(a1 + 30) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v144 = *(a1 + 851);
    *a2 = 704;
    a2[2] = v144;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v145 = *(a1 + 208);
    *a2 = 714;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v145, v147, this);
  }

  if ((*(a1 + 30) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v151 = *(a1 + 852);
    *a2 = 720;
    a2[2] = v151;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v152 = *(a1 + 216);
    *a2 = 730;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v152, v154, this);
  }

  if ((*(a1 + 30) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v158 = *(a1 + 853);
    *a2 = 736;
    a2[2] = v158;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v159 = *(a1 + 224);
    *a2 = 746;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v159, v161, this);
  }

  if (*(a1 + 31))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v165 = *(a1 + 854);
    *a2 = 752;
    a2[2] = v165;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v166 = *(a1 + 232);
    *a2 = 762;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v166, v168, this);
  }

  if ((*(a1 + 31) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v172 = *(a1 + 855);
    *a2 = 896;
    a2[2] = v172;
    a2 += 3;
  }

  if (*(a1 + 19))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v173 = *(a1 + 240);
    *a2 = 906;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v173, v175, this);
  }

  if ((*(a1 + 31) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v179 = *(a1 + 856);
    *a2 = 912;
    a2[2] = v179;
    a2 += 3;
  }

  if ((*(a1 + 19) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v180 = *(a1 + 248);
    *a2 = 922;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v180, v182, this);
  }

  if ((*(a1 + 31) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v186 = *(a1 + 857);
    *a2 = 928;
    a2[2] = v186;
    a2 += 3;
  }

  if ((*(a1 + 19) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v187 = *(a1 + 256);
    *a2 = 938;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v187, v189, this);
  }

  if ((*(a1 + 31) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v193 = *(a1 + 858);
    *a2 = 944;
    a2[2] = v193;
    a2 += 3;
  }

  if ((*(a1 + 19) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v194 = *(a1 + 264);
    *a2 = 954;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v194, v196, this);
  }

  if ((*(a1 + 31) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v200 = *(a1 + 859);
    *a2 = 960;
    a2[2] = v200;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v201 = *(a1 + 272);
    *a2 = 970;
    v202 = *(v201 + 5);
    if (v202 > 0x7F)
    {
      a2[2] = v202 | 0x80;
      v204 = v202 >> 7;
      if (v202 >> 14)
      {
        v203 = a2 + 4;
        do
        {
          *(v203 - 1) = v204 | 0x80;
          v205 = v204 >> 7;
          ++v203;
          v206 = v204 >> 14;
          v204 >>= 7;
        }

        while (v206);
        *(v203 - 1) = v205;
      }

      else
      {
        a2[3] = v204;
        v203 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v202;
      v203 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v201, v203, this);
  }

  if ((*(a1 + 31) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v207 = *(a1 + 860);
    *a2 = 976;
    a2[2] = v207;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v208 = *(a1 + 280);
    *a2 = 986;
    v209 = *(v208 + 5);
    if (v209 > 0x7F)
    {
      a2[2] = v209 | 0x80;
      v211 = v209 >> 7;
      if (v209 >> 14)
      {
        v210 = a2 + 4;
        do
        {
          *(v210 - 1) = v211 | 0x80;
          v212 = v211 >> 7;
          ++v210;
          v213 = v211 >> 14;
          v211 >>= 7;
        }

        while (v213);
        *(v210 - 1) = v212;
      }

      else
      {
        a2[3] = v211;
        v210 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v209;
      v210 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v208, v210, this);
  }

  if ((*(a1 + 28) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v214 = *(a1 + 861);
    *a2 = 992;
    a2[2] = v214;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v215 = *(a1 + 288);
    *a2 = 1002;
    v216 = *(v215 + 5);
    if (v216 > 0x7F)
    {
      a2[2] = v216 | 0x80;
      v218 = v216 >> 7;
      if (v216 >> 14)
      {
        v217 = a2 + 4;
        do
        {
          *(v217 - 1) = v218 | 0x80;
          v219 = v218 >> 7;
          ++v217;
          v220 = v218 >> 14;
          v218 >>= 7;
        }

        while (v220);
        *(v217 - 1) = v219;
      }

      else
      {
        a2[3] = v218;
        v217 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v216;
      v217 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v215, v217, this);
  }

  if (*(a1 + 32))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v221 = *(a1 + 862);
    *a2 = 1008;
    a2[2] = v221;
    a2 += 3;
  }

  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v222 = *(a1 + 296);
    *a2 = 1018;
    v223 = *(v222 + 5);
    if (v223 > 0x7F)
    {
      a2[2] = v223 | 0x80;
      v225 = v223 >> 7;
      if (v223 >> 14)
      {
        v224 = a2 + 4;
        do
        {
          *(v224 - 1) = v225 | 0x80;
          v226 = v225 >> 7;
          ++v224;
          v227 = v225 >> 14;
          v225 >>= 7;
        }

        while (v227);
        *(v224 - 1) = v226;
      }

      else
      {
        a2[3] = v225;
        v224 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v223;
      v224 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v222, v224, this);
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v228 = *(a1 + 863);
    *a2 = 1152;
    a2[2] = v228;
    a2 += 3;
  }

  if (*(a1 + 20))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v229 = *(a1 + 304);
    *a2 = 1162;
    v230 = *(v229 + 5);
    if (v230 > 0x7F)
    {
      a2[2] = v230 | 0x80;
      v232 = v230 >> 7;
      if (v230 >> 14)
      {
        v231 = a2 + 4;
        do
        {
          *(v231 - 1) = v232 | 0x80;
          v233 = v232 >> 7;
          ++v231;
          v234 = v232 >> 14;
          v232 >>= 7;
        }

        while (v234);
        *(v231 - 1) = v233;
      }

      else
      {
        a2[3] = v232;
        v231 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v230;
      v231 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v229, v231, this);
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v235 = *(a1 + 864);
    *a2 = 1168;
    a2[2] = v235;
    a2 += 3;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v236 = *(a1 + 312);
    *a2 = 1178;
    v237 = *(v236 + 5);
    if (v237 > 0x7F)
    {
      a2[2] = v237 | 0x80;
      v239 = v237 >> 7;
      if (v237 >> 14)
      {
        v238 = a2 + 4;
        do
        {
          *(v238 - 1) = v239 | 0x80;
          v240 = v239 >> 7;
          ++v238;
          v241 = v239 >> 14;
          v239 >>= 7;
        }

        while (v241);
        *(v238 - 1) = v240;
      }

      else
      {
        a2[3] = v239;
        v238 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v237;
      v238 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v236, v238, this);
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v242 = *(a1 + 865);
    *a2 = 1184;
    a2[2] = v242;
    a2 += 3;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v243 = *(a1 + 320);
    *a2 = 1194;
    v244 = *(v243 + 5);
    if (v244 > 0x7F)
    {
      a2[2] = v244 | 0x80;
      v246 = v244 >> 7;
      if (v244 >> 14)
      {
        v245 = a2 + 4;
        do
        {
          *(v245 - 1) = v246 | 0x80;
          v247 = v246 >> 7;
          ++v245;
          v248 = v246 >> 14;
          v246 >>= 7;
        }

        while (v248);
        *(v245 - 1) = v247;
      }

      else
      {
        a2[3] = v246;
        v245 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v244;
      v245 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v243, v245, this);
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v249 = *(a1 + 866);
    *a2 = 1200;
    a2[2] = v249;
    a2 += 3;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v250 = *(a1 + 328);
    *a2 = 1210;
    v251 = *(v250 + 5);
    if (v251 > 0x7F)
    {
      a2[2] = v251 | 0x80;
      v253 = v251 >> 7;
      if (v251 >> 14)
      {
        v252 = a2 + 4;
        do
        {
          *(v252 - 1) = v253 | 0x80;
          v254 = v253 >> 7;
          ++v252;
          v255 = v253 >> 14;
          v253 >>= 7;
        }

        while (v255);
        *(v252 - 1) = v254;
      }

      else
      {
        a2[3] = v253;
        v252 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v251;
      v252 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v250, v252, this);
  }

  if ((*(a1 + 32) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v256 = *(a1 + 867);
    *a2 = 1216;
    a2[2] = v256;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v257 = *(a1 + 336);
    *a2 = 1226;
    v258 = *(v257 + 20);
    if (v258 > 0x7F)
    {
      a2[2] = v258 | 0x80;
      v260 = v258 >> 7;
      if (v258 >> 14)
      {
        v259 = a2 + 4;
        do
        {
          *(v259 - 1) = v260 | 0x80;
          v261 = v260 >> 7;
          ++v259;
          v262 = v260 >> 14;
          v260 >>= 7;
        }

        while (v262);
        *(v259 - 1) = v261;
      }

      else
      {
        a2[3] = v260;
        v259 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v258;
      v259 = a2 + 3;
    }

    a2 = sub_2763989B4(v257, v259, this);
  }

  if ((*(a1 + 32) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v263 = *(a1 + 868);
    *a2 = 1232;
    a2[2] = v263;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v264 = *(a1 + 344);
    *a2 = 1242;
    v265 = *(v264 + 20);
    if (v265 > 0x7F)
    {
      a2[2] = v265 | 0x80;
      v267 = v265 >> 7;
      if (v265 >> 14)
      {
        v266 = a2 + 4;
        do
        {
          *(v266 - 1) = v267 | 0x80;
          v268 = v267 >> 7;
          ++v266;
          v269 = v267 >> 14;
          v267 >>= 7;
        }

        while (v269);
        *(v266 - 1) = v268;
      }

      else
      {
        a2[3] = v267;
        v266 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v265;
      v266 = a2 + 3;
    }

    a2 = sub_2763989B4(v264, v266, this);
  }

  if ((*(a1 + 32) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v270 = *(a1 + 869);
    *a2 = 1248;
    a2[2] = v270;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v271 = *(a1 + 352);
    *a2 = 1258;
    v272 = *(v271 + 5);
    if (v272 > 0x7F)
    {
      a2[2] = v272 | 0x80;
      v274 = v272 >> 7;
      if (v272 >> 14)
      {
        v273 = a2 + 4;
        do
        {
          *(v273 - 1) = v274 | 0x80;
          v275 = v274 >> 7;
          ++v273;
          v276 = v274 >> 14;
          v274 >>= 7;
        }

        while (v276);
        *(v273 - 1) = v275;
      }

      else
      {
        a2[3] = v274;
        v273 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v272;
      v273 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v271, v273, this);
  }

  if (*(a1 + 33))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v277 = *(a1 + 870);
    *a2 = 1264;
    a2[2] = v277;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v278 = *(a1 + 360);
    *a2 = 1274;
    v279 = *(v278 + 5);
    if (v279 > 0x7F)
    {
      a2[2] = v279 | 0x80;
      v281 = v279 >> 7;
      if (v279 >> 14)
      {
        v280 = a2 + 4;
        do
        {
          *(v280 - 1) = v281 | 0x80;
          v282 = v281 >> 7;
          ++v280;
          v283 = v281 >> 14;
          v281 >>= 7;
        }

        while (v283);
        *(v280 - 1) = v282;
      }

      else
      {
        a2[3] = v281;
        v280 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v279;
      v280 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v278, v280, this);
  }

  if ((*(a1 + 33) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v284 = *(a1 + 871);
    *a2 = 1408;
    a2[2] = v284;
    a2 += 3;
  }

  if (*(a1 + 21))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v285 = *(a1 + 368);
    *a2 = 1418;
    v286 = *(v285 + 20);
    if (v286 > 0x7F)
    {
      a2[2] = v286 | 0x80;
      v288 = v286 >> 7;
      if (v286 >> 14)
      {
        v287 = a2 + 4;
        do
        {
          *(v287 - 1) = v288 | 0x80;
          v289 = v288 >> 7;
          ++v287;
          v290 = v288 >> 14;
          v288 >>= 7;
        }

        while (v290);
        *(v287 - 1) = v289;
      }

      else
      {
        a2[3] = v288;
        v287 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v286;
      v287 = a2 + 3;
    }

    a2 = sub_2763989B4(v285, v287, this);
  }

  if ((*(a1 + 33) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v291 = *(a1 + 872);
    *a2 = 1424;
    a2[2] = v291;
    a2 += 3;
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v292 = *(a1 + 376);
    *a2 = 1434;
    v293 = *(v292 + 5);
    if (v293 > 0x7F)
    {
      a2[2] = v293 | 0x80;
      v295 = v293 >> 7;
      if (v293 >> 14)
      {
        v294 = a2 + 4;
        do
        {
          *(v294 - 1) = v295 | 0x80;
          v296 = v295 >> 7;
          ++v294;
          v297 = v295 >> 14;
          v295 >>= 7;
        }

        while (v297);
        *(v294 - 1) = v296;
      }

      else
      {
        a2[3] = v295;
        v294 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v293;
      v294 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v292, v294, this);
  }

  if ((*(a1 + 33) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v298 = *(a1 + 873);
    *a2 = 1440;
    a2[2] = v298;
    a2 += 3;
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v299 = *(a1 + 384);
    *a2 = 1450;
    v300 = *(v299 + 5);
    if (v300 > 0x7F)
    {
      a2[2] = v300 | 0x80;
      v302 = v300 >> 7;
      if (v300 >> 14)
      {
        v301 = a2 + 4;
        do
        {
          *(v301 - 1) = v302 | 0x80;
          v303 = v302 >> 7;
          ++v301;
          v304 = v302 >> 14;
          v302 >>= 7;
        }

        while (v304);
        *(v301 - 1) = v303;
      }

      else
      {
        a2[3] = v302;
        v301 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v300;
      v301 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v299, v301, this);
  }

  if ((*(a1 + 33) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v305 = *(a1 + 874);
    *a2 = 1456;
    a2[2] = v305;
    a2 += 3;
  }

  if ((*(a1 + 21) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v306 = *(a1 + 392);
    *a2 = 1466;
    v307 = *(v306 + 5);
    if (v307 > 0x7F)
    {
      a2[2] = v307 | 0x80;
      v309 = v307 >> 7;
      if (v307 >> 14)
      {
        v308 = a2 + 4;
        do
        {
          *(v308 - 1) = v309 | 0x80;
          v310 = v309 >> 7;
          ++v308;
          v311 = v309 >> 14;
          v309 >>= 7;
        }

        while (v311);
        *(v308 - 1) = v310;
      }

      else
      {
        a2[3] = v309;
        v308 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v307;
      v308 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v306, v308, this);
  }

  if ((*(a1 + 33) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v312 = *(a1 + 875);
    *a2 = 1472;
    a2[2] = v312;
    a2 += 3;
  }

  if ((*(a1 + 21) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v313 = *(a1 + 400);
    *a2 = 1482;
    v314 = *(v313 + 5);
    if (v314 > 0x7F)
    {
      a2[2] = v314 | 0x80;
      v316 = v314 >> 7;
      if (v314 >> 14)
      {
        v315 = a2 + 4;
        do
        {
          *(v315 - 1) = v316 | 0x80;
          v317 = v316 >> 7;
          ++v315;
          v318 = v316 >> 14;
          v316 >>= 7;
        }

        while (v318);
        *(v315 - 1) = v317;
      }

      else
      {
        a2[3] = v316;
        v315 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v314;
      v315 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v313, v315, this);
  }

  if ((*(a1 + 33) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v319 = *(a1 + 876);
    *a2 = 1488;
    a2[2] = v319;
    a2 += 3;
  }

  if ((*(a1 + 21) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v320 = *(a1 + 408);
    *a2 = 1498;
    v321 = *(v320 + 5);
    if (v321 > 0x7F)
    {
      a2[2] = v321 | 0x80;
      v323 = v321 >> 7;
      if (v321 >> 14)
      {
        v322 = a2 + 4;
        do
        {
          *(v322 - 1) = v323 | 0x80;
          v324 = v323 >> 7;
          ++v322;
          v325 = v323 >> 14;
          v323 >>= 7;
        }

        while (v325);
        *(v322 - 1) = v324;
      }

      else
      {
        a2[3] = v323;
        v322 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v321;
      v322 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v320, v322, this);
  }

  if ((*(a1 + 33) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v326 = *(a1 + 877);
    *a2 = 1504;
    a2[2] = v326;
    a2 += 3;
  }

  if ((*(a1 + 21) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v327 = *(a1 + 416);
    *a2 = 1514;
    v328 = *(v327 + 5);
    if (v328 > 0x7F)
    {
      a2[2] = v328 | 0x80;
      v330 = v328 >> 7;
      if (v328 >> 14)
      {
        v329 = a2 + 4;
        do
        {
          *(v329 - 1) = v330 | 0x80;
          v331 = v330 >> 7;
          ++v329;
          v332 = v330 >> 14;
          v330 >>= 7;
        }

        while (v332);
        *(v329 - 1) = v331;
      }

      else
      {
        a2[3] = v330;
        v329 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v328;
      v329 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v327, v329, this);
  }

  if (*(a1 + 34))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v333 = *(a1 + 878);
    *a2 = 1520;
    a2[2] = v333;
    a2 += 3;
  }

  if ((*(a1 + 21) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v334 = *(a1 + 424);
    *a2 = 1530;
    v335 = *(v334 + 5);
    if (v335 > 0x7F)
    {
      a2[2] = v335 | 0x80;
      v337 = v335 >> 7;
      if (v335 >> 14)
      {
        v336 = a2 + 4;
        do
        {
          *(v336 - 1) = v337 | 0x80;
          v338 = v337 >> 7;
          ++v336;
          v339 = v337 >> 14;
          v337 >>= 7;
        }

        while (v339);
        *(v336 - 1) = v338;
      }

      else
      {
        a2[3] = v337;
        v336 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v335;
      v336 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v334, v336, this);
  }

  if ((*(a1 + 34) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v340 = *(a1 + 879);
    *a2 = 1664;
    a2[2] = v340;
    a2 += 3;
  }

  if (*(a1 + 22))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v341 = *(a1 + 432);
    *a2 = 1674;
    v342 = *(v341 + 5);
    if (v342 > 0x7F)
    {
      a2[2] = v342 | 0x80;
      v344 = v342 >> 7;
      if (v342 >> 14)
      {
        v343 = a2 + 4;
        do
        {
          *(v343 - 1) = v344 | 0x80;
          v345 = v344 >> 7;
          ++v343;
          v346 = v344 >> 14;
          v344 >>= 7;
        }

        while (v346);
        *(v343 - 1) = v345;
      }

      else
      {
        a2[3] = v344;
        v343 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v342;
      v343 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v341, v343, this);
  }

  if ((*(a1 + 34) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v347 = *(a1 + 880);
    *a2 = 1680;
    a2[2] = v347;
    a2 += 3;
  }

  if ((*(a1 + 22) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v348 = *(a1 + 440);
    *a2 = 1690;
    v349 = *(v348 + 5);
    if (v349 > 0x7F)
    {
      a2[2] = v349 | 0x80;
      v351 = v349 >> 7;
      if (v349 >> 14)
      {
        v350 = a2 + 4;
        do
        {
          *(v350 - 1) = v351 | 0x80;
          v352 = v351 >> 7;
          ++v350;
          v353 = v351 >> 14;
          v351 >>= 7;
        }

        while (v353);
        *(v350 - 1) = v352;
      }

      else
      {
        a2[3] = v351;
        v350 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v349;
      v350 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v348, v350, this);
  }

  if ((*(a1 + 34) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v354 = *(a1 + 881);
    *a2 = 1696;
    a2[2] = v354;
    a2 += 3;
  }

  if ((*(a1 + 22) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v355 = *(a1 + 448);
    *a2 = 1706;
    v356 = *(v355 + 5);
    if (v356 > 0x7F)
    {
      a2[2] = v356 | 0x80;
      v358 = v356 >> 7;
      if (v356 >> 14)
      {
        v357 = a2 + 4;
        do
        {
          *(v357 - 1) = v358 | 0x80;
          v359 = v358 >> 7;
          ++v357;
          v360 = v358 >> 14;
          v358 >>= 7;
        }

        while (v360);
        *(v357 - 1) = v359;
      }

      else
      {
        a2[3] = v358;
        v357 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v356;
      v357 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v355, v357, this);
  }

  if ((*(a1 + 34) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v361 = *(a1 + 882);
    *a2 = 1712;
    a2[2] = v361;
    a2 += 3;
  }

  if ((*(a1 + 22) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v362 = *(a1 + 456);
    *a2 = 1722;
    v363 = *(v362 + 5);
    if (v363 > 0x7F)
    {
      a2[2] = v363 | 0x80;
      v365 = v363 >> 7;
      if (v363 >> 14)
      {
        v364 = a2 + 4;
        do
        {
          *(v364 - 1) = v365 | 0x80;
          v366 = v365 >> 7;
          ++v364;
          v367 = v365 >> 14;
          v365 >>= 7;
        }

        while (v367);
        *(v364 - 1) = v366;
      }

      else
      {
        a2[3] = v365;
        v364 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v363;
      v364 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v362, v364, this);
  }

  if ((*(a1 + 34) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v368 = *(a1 + 883);
    *a2 = 1728;
    a2[2] = v368;
    a2 += 3;
  }

  if ((*(a1 + 22) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v369 = *(a1 + 464);
    *a2 = 1738;
    v370 = *(v369 + 5);
    if (v370 > 0x7F)
    {
      a2[2] = v370 | 0x80;
      v372 = v370 >> 7;
      if (v370 >> 14)
      {
        v371 = a2 + 4;
        do
        {
          *(v371 - 1) = v372 | 0x80;
          v373 = v372 >> 7;
          ++v371;
          v374 = v372 >> 14;
          v372 >>= 7;
        }

        while (v374);
        *(v371 - 1) = v373;
      }

      else
      {
        a2[3] = v372;
        v371 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v370;
      v371 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v369, v371, this);
  }

  if ((*(a1 + 34) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v375 = *(a1 + 884);
    *a2 = 1744;
    a2[2] = v375;
    a2 += 3;
  }

  if ((*(a1 + 22) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v376 = *(a1 + 472);
    *a2 = 1754;
    v377 = *(v376 + 5);
    if (v377 > 0x7F)
    {
      a2[2] = v377 | 0x80;
      v379 = v377 >> 7;
      if (v377 >> 14)
      {
        v378 = a2 + 4;
        do
        {
          *(v378 - 1) = v379 | 0x80;
          v380 = v379 >> 7;
          ++v378;
          v381 = v379 >> 14;
          v379 >>= 7;
        }

        while (v381);
        *(v378 - 1) = v380;
      }

      else
      {
        a2[3] = v379;
        v378 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v377;
      v378 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v376, v378, this);
  }

  if ((*(a1 + 34) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v382 = *(a1 + 885);
    *a2 = 1760;
    a2[2] = v382;
    a2 += 3;
  }

  if ((*(a1 + 22) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v383 = *(a1 + 480);
    *a2 = 1770;
    v384 = *(v383 + 5);
    if (v384 > 0x7F)
    {
      a2[2] = v384 | 0x80;
      v386 = v384 >> 7;
      if (v384 >> 14)
      {
        v385 = a2 + 4;
        do
        {
          *(v385 - 1) = v386 | 0x80;
          v387 = v386 >> 7;
          ++v385;
          v388 = v386 >> 14;
          v386 >>= 7;
        }

        while (v388);
        *(v385 - 1) = v387;
      }

      else
      {
        a2[3] = v386;
        v385 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v384;
      v385 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v383, v385, this);
  }

  if (*(a1 + 35))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v389 = *(a1 + 886);
    *a2 = 1776;
    a2[2] = v389;
    a2 += 3;
  }

  if ((*(a1 + 22) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v390 = *(a1 + 488);
    *a2 = 1786;
    v391 = *(v390 + 5);
    if (v391 > 0x7F)
    {
      a2[2] = v391 | 0x80;
      v393 = v391 >> 7;
      if (v391 >> 14)
      {
        v392 = a2 + 4;
        do
        {
          *(v392 - 1) = v393 | 0x80;
          v394 = v393 >> 7;
          ++v392;
          v395 = v393 >> 14;
          v393 >>= 7;
        }

        while (v395);
        *(v392 - 1) = v394;
      }

      else
      {
        a2[3] = v393;
        v392 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v391;
      v392 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v390, v392, this);
  }

  if ((*(a1 + 35) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v396 = *(a1 + 887);
    *a2 = 1920;
    a2[2] = v396;
    a2 += 3;
  }

  if (*(a1 + 23))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v397 = *(a1 + 496);
    *a2 = 1930;
    v398 = *(v397 + 5);
    if (v398 > 0x7F)
    {
      a2[2] = v398 | 0x80;
      v400 = v398 >> 7;
      if (v398 >> 14)
      {
        v399 = a2 + 4;
        do
        {
          *(v399 - 1) = v400 | 0x80;
          v401 = v400 >> 7;
          ++v399;
          v402 = v400 >> 14;
          v400 >>= 7;
        }

        while (v402);
        *(v399 - 1) = v401;
      }

      else
      {
        a2[3] = v400;
        v399 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v398;
      v399 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v397, v399, this);
  }

  if ((*(a1 + 35) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v403 = *(a1 + 888);
    *a2 = 1936;
    a2[2] = v403;
    a2 += 3;
  }

  if ((*(a1 + 23) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v404 = *(a1 + 504);
    *a2 = 1946;
    v405 = *(v404 + 5);
    if (v405 > 0x7F)
    {
      a2[2] = v405 | 0x80;
      v407 = v405 >> 7;
      if (v405 >> 14)
      {
        v406 = a2 + 4;
        do
        {
          *(v406 - 1) = v407 | 0x80;
          v408 = v407 >> 7;
          ++v406;
          v409 = v407 >> 14;
          v407 >>= 7;
        }

        while (v409);
        *(v406 - 1) = v408;
      }

      else
      {
        a2[3] = v407;
        v406 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v405;
      v406 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v404, v406, this);
  }

  if ((*(a1 + 35) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v410 = *(a1 + 889);
    *a2 = 1952;
    a2[2] = v410;
    a2 += 3;
  }

  if ((*(a1 + 23) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v411 = *(a1 + 512);
    *a2 = 1962;
    v412 = *(v411 + 5);
    if (v412 > 0x7F)
    {
      a2[2] = v412 | 0x80;
      v414 = v412 >> 7;
      if (v412 >> 14)
      {
        v413 = a2 + 4;
        do
        {
          *(v413 - 1) = v414 | 0x80;
          v415 = v414 >> 7;
          ++v413;
          v416 = v414 >> 14;
          v414 >>= 7;
        }

        while (v416);
        *(v413 - 1) = v415;
      }

      else
      {
        a2[3] = v414;
        v413 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v412;
      v413 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v411, v413, this);
  }

  if ((*(a1 + 35) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v417 = *(a1 + 890);
    *a2 = 1968;
    a2[2] = v417;
    a2 += 3;
  }

  if ((*(a1 + 23) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v418 = *(a1 + 520);
    *a2 = 1978;
    v419 = *(v418 + 5);
    if (v419 > 0x7F)
    {
      a2[2] = v419 | 0x80;
      v421 = v419 >> 7;
      if (v419 >> 14)
      {
        v420 = a2 + 4;
        do
        {
          *(v420 - 1) = v421 | 0x80;
          v422 = v421 >> 7;
          ++v420;
          v423 = v421 >> 14;
          v421 >>= 7;
        }

        while (v423);
        *(v420 - 1) = v422;
      }

      else
      {
        a2[3] = v421;
        v420 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v419;
      v420 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v418, v420, this);
  }

  if ((*(a1 + 35) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v424 = *(a1 + 891);
    *a2 = 1984;
    a2[2] = v424;
    a2 += 3;
  }

  if ((*(a1 + 23) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v425 = *(a1 + 528);
    *a2 = 1994;
    v426 = *(v425 + 5);
    if (v426 > 0x7F)
    {
      a2[2] = v426 | 0x80;
      v428 = v426 >> 7;
      if (v426 >> 14)
      {
        v427 = a2 + 4;
        do
        {
          *(v427 - 1) = v428 | 0x80;
          v429 = v428 >> 7;
          ++v427;
          v430 = v428 >> 14;
          v428 >>= 7;
        }

        while (v430);
        *(v427 - 1) = v429;
      }

      else
      {
        a2[3] = v428;
        v427 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v426;
      v427 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v425, v427, this);
  }

  if ((*(a1 + 35) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v431 = *(a1 + 892);
    *a2 = 2000;
    a2[2] = v431;
    a2 += 3;
  }

  if ((*(a1 + 23) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v432 = *(a1 + 536);
    *a2 = 2010;
    v433 = *(v432 + 5);
    if (v433 > 0x7F)
    {
      a2[2] = v433 | 0x80;
      v435 = v433 >> 7;
      if (v433 >> 14)
      {
        v434 = a2 + 4;
        do
        {
          *(v434 - 1) = v435 | 0x80;
          v436 = v435 >> 7;
          ++v434;
          v437 = v435 >> 14;
          v435 >>= 7;
        }

        while (v437);
        *(v434 - 1) = v436;
      }

      else
      {
        a2[3] = v435;
        v434 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v433;
      v434 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v432, v434, this);
  }

  if ((*(a1 + 32) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v438 = *(a1 + 893);
    *a2 = 2016;
    a2[2] = v438;
    a2 += 3;
  }

  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v439 = *(a1 + 544);
    *a2 = 2026;
    v440 = *(v439 + 5);
    if (v440 > 0x7F)
    {
      a2[2] = v440 | 0x80;
      v442 = v440 >> 7;
      if (v440 >> 14)
      {
        v441 = a2 + 4;
        do
        {
          *(v441 - 1) = v442 | 0x80;
          v443 = v442 >> 7;
          ++v441;
          v444 = v442 >> 14;
          v442 >>= 7;
        }

        while (v444);
        *(v441 - 1) = v443;
      }

      else
      {
        a2[3] = v442;
        v441 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v440;
      v441 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v439, v441, this);
  }

  if (*(a1 + 36))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v445 = *(a1 + 894);
    *a2 = 2032;
    a2[2] = v445;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v446 = *(a1 + 552);
    *a2 = 2042;
    v447 = *(v446 + 5);
    if (v447 > 0x7F)
    {
      a2[2] = v447 | 0x80;
      v449 = v447 >> 7;
      if (v447 >> 14)
      {
        v448 = a2 + 4;
        do
        {
          *(v448 - 1) = v449 | 0x80;
          v450 = v449 >> 7;
          ++v448;
          v451 = v449 >> 14;
          v449 >>= 7;
        }

        while (v451);
        *(v448 - 1) = v450;
      }

      else
      {
        a2[3] = v449;
        v448 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v447;
      v448 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v446, v448, this);
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v452 = *(a1 + 895);
    *a2 = 2176;
    a2[2] = v452;
    a2 += 3;
  }

  if (*(a1 + 24))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v453 = *(a1 + 560);
    *a2 = 2186;
    v454 = *(v453 + 5);
    if (v454 > 0x7F)
    {
      a2[2] = v454 | 0x80;
      v456 = v454 >> 7;
      if (v454 >> 14)
      {
        v455 = a2 + 4;
        do
        {
          *(v455 - 1) = v456 | 0x80;
          v457 = v456 >> 7;
          ++v455;
          v458 = v456 >> 14;
          v456 >>= 7;
        }

        while (v458);
        *(v455 - 1) = v457;
      }

      else
      {
        a2[3] = v456;
        v455 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v454;
      v455 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v453, v455, this);
  }

  if ((*(a1 + 36) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v459 = *(a1 + 896);
    *a2 = 2192;
    a2[2] = v459;
    a2 += 3;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v460 = *(a1 + 568);
    *a2 = 2202;
    v461 = *(v460 + 5);
    if (v461 > 0x7F)
    {
      a2[2] = v461 | 0x80;
      v463 = v461 >> 7;
      if (v461 >> 14)
      {
        v462 = a2 + 4;
        do
        {
          *(v462 - 1) = v463 | 0x80;
          v464 = v463 >> 7;
          ++v462;
          v465 = v463 >> 14;
          v463 >>= 7;
        }

        while (v465);
        *(v462 - 1) = v464;
      }

      else
      {
        a2[3] = v463;
        v462 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v461;
      v462 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v460, v462, this);
  }

  if ((*(a1 + 36) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v466 = *(a1 + 897);
    *a2 = 2208;
    a2[2] = v466;
    a2 += 3;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v467 = *(a1 + 576);
    *a2 = 2218;
    v468 = *(v467 + 5);
    if (v468 > 0x7F)
    {
      a2[2] = v468 | 0x80;
      v470 = v468 >> 7;
      if (v468 >> 14)
      {
        v469 = a2 + 4;
        do
        {
          *(v469 - 1) = v470 | 0x80;
          v471 = v470 >> 7;
          ++v469;
          v472 = v470 >> 14;
          v470 >>= 7;
        }

        while (v472);
        *(v469 - 1) = v471;
      }

      else
      {
        a2[3] = v470;
        v469 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v468;
      v469 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v467, v469, this);
  }

  if ((*(a1 + 36) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v473 = *(a1 + 898);
    *a2 = 2224;
    a2[2] = v473;
    a2 += 3;
  }

  if ((*(a1 + 24) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v474 = *(a1 + 584);
    *a2 = 2234;
    v475 = *(v474 + 5);
    if (v475 > 0x7F)
    {
      a2[2] = v475 | 0x80;
      v477 = v475 >> 7;
      if (v475 >> 14)
      {
        v476 = a2 + 4;
        do
        {
          *(v476 - 1) = v477 | 0x80;
          v478 = v477 >> 7;
          ++v476;
          v479 = v477 >> 14;
          v477 >>= 7;
        }

        while (v479);
        *(v476 - 1) = v478;
      }

      else
      {
        a2[3] = v477;
        v476 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v475;
      v476 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v474, v476, this);
  }

  if ((*(a1 + 36) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v480 = *(a1 + 899);
    *a2 = 2240;
    a2[2] = v480;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v481 = *(a1 + 592);
    *a2 = 2250;
    v482 = *(v481 + 5);
    if (v482 > 0x7F)
    {
      a2[2] = v482 | 0x80;
      v484 = v482 >> 7;
      if (v482 >> 14)
      {
        v483 = a2 + 4;
        do
        {
          *(v483 - 1) = v484 | 0x80;
          v485 = v484 >> 7;
          ++v483;
          v486 = v484 >> 14;
          v484 >>= 7;
        }

        while (v486);
        *(v483 - 1) = v485;
      }

      else
      {
        a2[3] = v484;
        v483 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v482;
      v483 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v481, v483, this);
  }

  if ((*(a1 + 36) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v487 = *(a1 + 900);
    *a2 = 2256;
    a2[2] = v487;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v488 = *(a1 + 600);
    *a2 = 2266;
    v489 = *(v488 + 5);
    if (v489 > 0x7F)
    {
      a2[2] = v489 | 0x80;
      v491 = v489 >> 7;
      if (v489 >> 14)
      {
        v490 = a2 + 4;
        do
        {
          *(v490 - 1) = v491 | 0x80;
          v492 = v491 >> 7;
          ++v490;
          v493 = v491 >> 14;
          v491 >>= 7;
        }

        while (v493);
        *(v490 - 1) = v492;
      }

      else
      {
        a2[3] = v491;
        v490 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v489;
      v490 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v488, v490, this);
  }

  if ((*(a1 + 36) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v494 = *(a1 + 901);
    *a2 = 2272;
    a2[2] = v494;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v495 = *(a1 + 608);
    *a2 = 2282;
    v496 = *(v495 + 5);
    if (v496 > 0x7F)
    {
      a2[2] = v496 | 0x80;
      v498 = v496 >> 7;
      if (v496 >> 14)
      {
        v497 = a2 + 4;
        do
        {
          *(v497 - 1) = v498 | 0x80;
          v499 = v498 >> 7;
          ++v497;
          v500 = v498 >> 14;
          v498 >>= 7;
        }

        while (v500);
        *(v497 - 1) = v499;
      }

      else
      {
        a2[3] = v498;
        v497 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v496;
      v497 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v495, v497, this);
  }

  if (*(a1 + 37))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v501 = *(a1 + 902);
    *a2 = 2288;
    a2[2] = v501;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v502 = *(a1 + 616);
    *a2 = 2298;
    v503 = *(v502 + 5);
    if (v503 > 0x7F)
    {
      a2[2] = v503 | 0x80;
      v505 = v503 >> 7;
      if (v503 >> 14)
      {
        v504 = a2 + 4;
        do
        {
          *(v504 - 1) = v505 | 0x80;
          v506 = v505 >> 7;
          ++v504;
          v507 = v505 >> 14;
          v505 >>= 7;
        }

        while (v507);
        *(v504 - 1) = v506;
      }

      else
      {
        a2[3] = v505;
        v504 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v503;
      v504 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v502, v504, this);
  }

  if ((*(a1 + 37) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v508 = *(a1 + 903);
    *a2 = 2432;
    a2[2] = v508;
    a2 += 3;
  }

  if (*(a1 + 25))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v509 = *(a1 + 624);
    *a2 = 2442;
    v510 = *(v509 + 5);
    if (v510 > 0x7F)
    {
      a2[2] = v510 | 0x80;
      v512 = v510 >> 7;
      if (v510 >> 14)
      {
        v511 = a2 + 4;
        do
        {
          *(v511 - 1) = v512 | 0x80;
          v513 = v512 >> 7;
          ++v511;
          v514 = v512 >> 14;
          v512 >>= 7;
        }

        while (v514);
        *(v511 - 1) = v513;
      }

      else
      {
        a2[3] = v512;
        v511 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v510;
      v511 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v509, v511, this);
  }

  if ((*(a1 + 37) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v515 = *(a1 + 904);
    *a2 = 2448;
    a2[2] = v515;
    a2 += 3;
  }

  if ((*(a1 + 25) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v516 = *(a1 + 632);
    *a2 = 2458;
    v517 = *(v516 + 5);
    if (v517 > 0x7F)
    {
      a2[2] = v517 | 0x80;
      v519 = v517 >> 7;
      if (v517 >> 14)
      {
        v518 = a2 + 4;
        do
        {
          *(v518 - 1) = v519 | 0x80;
          v520 = v519 >> 7;
          ++v518;
          v521 = v519 >> 14;
          v519 >>= 7;
        }

        while (v521);
        *(v518 - 1) = v520;
      }

      else
      {
        a2[3] = v519;
        v518 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v517;
      v518 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v516, v518, this);
  }

  if ((*(a1 + 37) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v522 = *(a1 + 905);
    *a2 = 2464;
    a2[2] = v522;
    a2 += 3;
  }

  if ((*(a1 + 25) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v523 = *(a1 + 640);
    *a2 = 2474;
    v524 = *(v523 + 5);
    if (v524 > 0x7F)
    {
      a2[2] = v524 | 0x80;
      v526 = v524 >> 7;
      if (v524 >> 14)
      {
        v525 = a2 + 4;
        do
        {
          *(v525 - 1) = v526 | 0x80;
          v527 = v526 >> 7;
          ++v525;
          v528 = v526 >> 14;
          v526 >>= 7;
        }

        while (v528);
        *(v525 - 1) = v527;
      }

      else
      {
        a2[3] = v526;
        v525 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v524;
      v525 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v523, v525, this);
  }

  if ((*(a1 + 37) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v529 = *(a1 + 906);
    *a2 = 2480;
    a2[2] = v529;
    a2 += 3;
  }

  if ((*(a1 + 25) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v530 = *(a1 + 648);
    *a2 = 2490;
    v531 = *(v530 + 5);
    if (v531 > 0x7F)
    {
      a2[2] = v531 | 0x80;
      v533 = v531 >> 7;
      if (v531 >> 14)
      {
        v532 = a2 + 4;
        do
        {
          *(v532 - 1) = v533 | 0x80;
          v534 = v533 >> 7;
          ++v532;
          v535 = v533 >> 14;
          v533 >>= 7;
        }

        while (v535);
        *(v532 - 1) = v534;
      }

      else
      {
        a2[3] = v533;
        v532 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v531;
      v532 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v530, v532, this);
  }

  if ((*(a1 + 37) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v536 = *(a1 + 907);
    *a2 = 2496;
    a2[2] = v536;
    a2 += 3;
  }

  if ((*(a1 + 25) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v537 = *(a1 + 656);
    *a2 = 2506;
    v538 = *(v537 + 5);
    if (v538 > 0x7F)
    {
      a2[2] = v538 | 0x80;
      v540 = v538 >> 7;
      if (v538 >> 14)
      {
        v539 = a2 + 4;
        do
        {
          *(v539 - 1) = v540 | 0x80;
          v541 = v540 >> 7;
          ++v539;
          v542 = v540 >> 14;
          v540 >>= 7;
        }

        while (v542);
        *(v539 - 1) = v541;
      }

      else
      {
        a2[3] = v540;
        v539 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v538;
      v539 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v537, v539, this);
  }

  if ((*(a1 + 37) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      v543 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    else
    {
      v543 = a2;
    }

    v544 = *(a1 + 908);
    *v543 = 2512;
    *(v543 + 2) = v544;
    a2 = (v543 + 3);
  }

  if ((*(a1 + 25) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v545 = *(a1 + 664);
    *a2 = 2522;
    v546 = *(v545 + 5);
    if (v546 > 0x7F)
    {
      a2[2] = v546 | 0x80;
      v548 = v546 >> 7;
      if (v546 >> 14)
      {
        v547 = a2 + 4;
        do
        {
          *(v547 - 1) = v548 | 0x80;
          v549 = v548 >> 7;
          ++v547;
          v550 = v548 >> 14;
          v548 >>= 7;
        }

        while (v550);
        *(v547 - 1) = v549;
      }

      else
      {
        a2[3] = v548;
        v547 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v546;
      v547 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v545, v547, this);
  }

  if ((*(a1 + 37) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v551 = *(a1 + 909);
    *a2 = 2528;
    a2[2] = v551;
    a2 += 3;
  }

  if ((*(a1 + 25) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v552 = *(a1 + 672);
    *a2 = 2538;
    v553 = *(v552 + 5);
    if (v553 > 0x7F)
    {
      a2[2] = v553 | 0x80;
      v555 = v553 >> 7;
      if (v553 >> 14)
      {
        v554 = a2 + 4;
        do
        {
          *(v554 - 1) = v555 | 0x80;
          v556 = v555 >> 7;
          ++v554;
          v557 = v555 >> 14;
          v555 >>= 7;
        }

        while (v557);
        *(v554 - 1) = v556;
      }

      else
      {
        a2[3] = v555;
        v554 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v553;
      v554 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v552, v554, this);
  }

  if (*(a1 + 38))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v558 = *(a1 + 910);
    *a2 = 2544;
    a2[2] = v558;
    a2 += 3;
  }

  if ((*(a1 + 25) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v559 = *(a1 + 680);
    *a2 = 2554;
    v560 = *(v559 + 5);
    if (v560 > 0x7F)
    {
      a2[2] = v560 | 0x80;
      v562 = v560 >> 7;
      if (v560 >> 14)
      {
        v561 = a2 + 4;
        do
        {
          *(v561 - 1) = v562 | 0x80;
          v563 = v562 >> 7;
          ++v561;
          v564 = v562 >> 14;
          v562 >>= 7;
        }

        while (v564);
        *(v561 - 1) = v563;
      }

      else
      {
        a2[3] = v562;
        v561 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v560;
      v561 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v559, v561, this);
  }

  if ((*(a1 + 38) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v565 = *(a1 + 911);
    *a2 = 2688;
    a2[2] = v565;
    a2 += 3;
  }

  if (*(a1 + 26))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v566 = *(a1 + 688);
    *a2 = 2698;
    v567 = *(v566 + 5);
    if (v567 > 0x7F)
    {
      a2[2] = v567 | 0x80;
      v569 = v567 >> 7;
      if (v567 >> 14)
      {
        v568 = a2 + 4;
        do
        {
          *(v568 - 1) = v569 | 0x80;
          v570 = v569 >> 7;
          ++v568;
          v571 = v569 >> 14;
          v569 >>= 7;
        }

        while (v571);
        *(v568 - 1) = v570;
      }

      else
      {
        a2[3] = v569;
        v568 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v567;
      v568 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v566, v568, this);
  }

  if ((*(a1 + 38) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v572 = *(a1 + 912);
    *a2 = 2704;
    a2[2] = v572;
    a2 += 3;
  }

  if ((*(a1 + 26) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v573 = *(a1 + 696);
    *a2 = 2714;
    v574 = *(v573 + 5);
    if (v574 > 0x7F)
    {
      a2[2] = v574 | 0x80;
      v576 = v574 >> 7;
      if (v574 >> 14)
      {
        v575 = a2 + 4;
        do
        {
          *(v575 - 1) = v576 | 0x80;
          v577 = v576 >> 7;
          ++v575;
          v578 = v576 >> 14;
          v576 >>= 7;
        }

        while (v578);
        *(v575 - 1) = v577;
      }

      else
      {
        a2[3] = v576;
        v575 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v574;
      v575 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v573, v575, this);
  }

  if ((*(a1 + 38) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v579 = *(a1 + 913);
    *a2 = 2720;
    a2[2] = v579;
    a2 += 3;
  }

  if ((*(a1 + 26) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v580 = *(a1 + 704);
    *a2 = 2730;
    v581 = *(v580 + 5);
    if (v581 > 0x7F)
    {
      a2[2] = v581 | 0x80;
      v583 = v581 >> 7;
      if (v581 >> 14)
      {
        v582 = a2 + 4;
        do
        {
          *(v582 - 1) = v583 | 0x80;
          v584 = v583 >> 7;
          ++v582;
          v585 = v583 >> 14;
          v583 >>= 7;
        }

        while (v585);
        *(v582 - 1) = v584;
      }

      else
      {
        a2[3] = v583;
        v582 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v581;
      v582 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v580, v582, this);
  }

  if ((*(a1 + 38) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v586 = *(a1 + 914);
    *a2 = 2736;
    a2[2] = v586;
    a2 += 3;
  }

  if ((*(a1 + 26) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v587 = *(a1 + 712);
    *a2 = 2746;
    v588 = *(v587 + 5);
    if (v588 > 0x7F)
    {
      a2[2] = v588 | 0x80;
      v590 = v588 >> 7;
      if (v588 >> 14)
      {
        v589 = a2 + 4;
        do
        {
          *(v589 - 1) = v590 | 0x80;
          v591 = v590 >> 7;
          ++v589;
          v592 = v590 >> 14;
          v590 >>= 7;
        }

        while (v592);
        *(v589 - 1) = v591;
      }

      else
      {
        a2[3] = v590;
        v589 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v588;
      v589 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v587, v589, this);
  }

  if ((*(a1 + 38) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v593 = *(a1 + 915);
    *a2 = 2752;
    a2[2] = v593;
    a2 += 3;
  }

  if ((*(a1 + 26) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v594 = *(a1 + 720);
    *a2 = 2762;
    v595 = *(v594 + 5);
    if (v595 > 0x7F)
    {
      a2[2] = v595 | 0x80;
      v597 = v595 >> 7;
      if (v595 >> 14)
      {
        v596 = a2 + 4;
        do
        {
          *(v596 - 1) = v597 | 0x80;
          v598 = v597 >> 7;
          ++v596;
          v599 = v597 >> 14;
          v597 >>= 7;
        }

        while (v599);
        *(v596 - 1) = v598;
      }

      else
      {
        a2[3] = v597;
        v596 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v595;
      v596 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v594, v596, this);
  }

  if ((*(a1 + 38) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v600 = *(a1 + 916);
    *a2 = 2768;
    a2[2] = v600;
    a2 += 3;
  }

  if ((*(a1 + 26) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v601 = *(a1 + 728);
    *a2 = 2778;
    v602 = *(v601 + 5);
    if (v602 > 0x7F)
    {
      a2[2] = v602 | 0x80;
      v604 = v602 >> 7;
      if (v602 >> 14)
      {
        v603 = a2 + 4;
        do
        {
          *(v603 - 1) = v604 | 0x80;
          v605 = v604 >> 7;
          ++v603;
          v606 = v604 >> 14;
          v604 >>= 7;
        }

        while (v606);
        *(v603 - 1) = v605;
      }

      else
      {
        a2[3] = v604;
        v603 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v602;
      v603 = a2 + 3;
    }

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v601, v603, this);
  }

  if ((*(a1 + 38) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v607 = *(a1 + 917);
    *a2 = 2784;
    a2[2] = v607;
    a2 += 3;
  }

  if ((*(a1 + 26) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v608 = *(a1 + 736);
    *a2 = 2794;
    v609 = *(v608 + 5);
    if (v609 > 0x7F)
    {
      a2[2] = v609 | 0x80;
      v611 = v609 >> 7;
      if (v609 >> 14)
      {
        v610 = a2 + 4;
        do
        {
          *(v610 - 1) = v611 | 0x80;
          v612 = v611 >> 7;
          ++v610;
          v613 = v611 >> 14;
          v611 >>= 7;
        }

        while (v613);
        *(v610 - 1) = v612;
      }

      else
      {
        a2[3] = v611;
        v610 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v609;
      v610 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v608, v610, this);
  }

  if (*(a1 + 39))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v614 = *(a1 + 918);
    *a2 = 2800;
    a2[2] = v614;
    a2 += 3;
  }

  if ((*(a1 + 26) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v615 = *(a1 + 744);
    *a2 = 2810;
    v616 = *(v615 + 5);
    if (v616 > 0x7F)
    {
      a2[2] = v616 | 0x80;
      v618 = v616 >> 7;
      if (v616 >> 14)
      {
        v617 = a2 + 4;
        do
        {
          *(v617 - 1) = v618 | 0x80;
          v619 = v618 >> 7;
          ++v617;
          v620 = v618 >> 14;
          v618 >>= 7;
        }

        while (v620);
        *(v617 - 1) = v619;
      }

      else
      {
        a2[3] = v618;
        v617 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v616;
      v617 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v615, v617, this);
  }

  if ((*(a1 + 39) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v621 = *(a1 + 919);
    *a2 = 2944;
    a2[2] = v621;
    a2 += 3;
  }

  if (*(a1 + 27))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v622 = *(a1 + 752);
    *a2 = 2954;
    v623 = *(v622 + 5);
    if (v623 > 0x7F)
    {
      a2[2] = v623 | 0x80;
      v625 = v623 >> 7;
      if (v623 >> 14)
      {
        v624 = a2 + 4;
        do
        {
          *(v624 - 1) = v625 | 0x80;
          v626 = v625 >> 7;
          ++v624;
          v627 = v625 >> 14;
          v625 >>= 7;
        }

        while (v627);
        *(v624 - 1) = v626;
      }

      else
      {
        a2[3] = v625;
        v624 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v623;
      v624 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v622, v624, this);
  }

  if ((*(a1 + 39) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v628 = *(a1 + 920);
    *a2 = 2960;
    a2[2] = v628;
    a2 += 3;
  }

  if ((*(a1 + 27) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v629 = *(a1 + 760);
    *a2 = 2970;
    v630 = *(v629 + 5);
    if (v630 > 0x7F)
    {
      a2[2] = v630 | 0x80;
      v632 = v630 >> 7;
      if (v630 >> 14)
      {
        v631 = a2 + 4;
        do
        {
          *(v631 - 1) = v632 | 0x80;
          v633 = v632 >> 7;
          ++v631;
          v634 = v632 >> 14;
          v632 >>= 7;
        }

        while (v634);
        *(v631 - 1) = v633;
      }

      else
      {
        a2[3] = v632;
        v631 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v630;
      v631 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v629, v631, this);
  }

  if ((*(a1 + 39) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v635 = *(a1 + 921);
    *a2 = 2976;
    a2[2] = v635;
    a2 += 3;
  }

  if ((*(a1 + 27) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v636 = *(a1 + 768);
    *a2 = 2986;
    v637 = *(v636 + 5);
    if (v637 > 0x7F)
    {
      a2[2] = v637 | 0x80;
      v639 = v637 >> 7;
      if (v637 >> 14)
      {
        v638 = a2 + 4;
        do
        {
          *(v638 - 1) = v639 | 0x80;
          v640 = v639 >> 7;
          ++v638;
          v641 = v639 >> 14;
          v639 >>= 7;
        }

        while (v641);
        *(v638 - 1) = v640;
      }

      else
      {
        a2[3] = v639;
        v638 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v637;
      v638 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v636, v638, this);
  }

  if ((*(a1 + 39) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v642 = *(a1 + 922);
    *a2 = 2992;
    a2[2] = v642;
    a2 += 3;
  }

  if ((*(a1 + 27) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v643 = *(a1 + 776);
    *a2 = 3002;
    v644 = *(v643 + 5);
    if (v644 > 0x7F)
    {
      a2[2] = v644 | 0x80;
      v646 = v644 >> 7;
      if (v644 >> 14)
      {
        v645 = a2 + 4;
        do
        {
          *(v645 - 1) = v646 | 0x80;
          v647 = v646 >> 7;
          ++v645;
          v648 = v646 >> 14;
          v646 >>= 7;
        }

        while (v648);
        *(v645 - 1) = v647;
      }

      else
      {
        a2[3] = v646;
        v645 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v644;
      v645 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v643, v645, this);
  }

  if ((*(a1 + 39) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v649 = *(a1 + 923);
    *a2 = 3008;
    a2[2] = v649;
    a2 += 3;
  }

  if ((*(a1 + 27) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v650 = *(a1 + 784);
    *a2 = 3018;
    v651 = *(v650 + 5);
    if (v651 > 0x7F)
    {
      a2[2] = v651 | 0x80;
      v653 = v651 >> 7;
      if (v651 >> 14)
      {
        v652 = a2 + 4;
        do
        {
          *(v652 - 1) = v653 | 0x80;
          v654 = v653 >> 7;
          ++v652;
          v655 = v653 >> 14;
          v653 >>= 7;
        }

        while (v655);
        *(v652 - 1) = v654;
      }

      else
      {
        a2[3] = v653;
        v652 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v651;
      v652 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v650, v652, this);
  }

  if ((*(a1 + 39) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v656 = *(a1 + 924);
    *a2 = 3024;
    a2[2] = v656;
    a2 += 3;
  }

  if ((*(a1 + 27) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v657 = *(a1 + 792);
    *a2 = 3034;
    v658 = *(v657 + 5);
    if (v658 > 0x7F)
    {
      a2[2] = v658 | 0x80;
      v660 = v658 >> 7;
      if (v658 >> 14)
      {
        v659 = a2 + 4;
        do
        {
          *(v659 - 1) = v660 | 0x80;
          v661 = v660 >> 7;
          ++v659;
          v662 = v660 >> 14;
          v660 >>= 7;
        }

        while (v662);
        *(v659 - 1) = v661;
      }

      else
      {
        a2[3] = v660;
        v659 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v658;
      v659 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v657, v659, this);
  }

  if ((*(a1 + 36) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v663 = *(a1 + 925);
    *a2 = 3040;
    a2[2] = v663;
    a2 += 3;
  }

  if ((*(a1 + 27) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v664 = *(a1 + 800);
    *a2 = 3050;
    v665 = *(v664 + 5);
    if (v665 > 0x7F)
    {
      a2[2] = v665 | 0x80;
      v667 = v665 >> 7;
      if (v665 >> 14)
      {
        v666 = a2 + 4;
        do
        {
          *(v666 - 1) = v667 | 0x80;
          v668 = v667 >> 7;
          ++v666;
          v669 = v667 >> 14;
          v667 >>= 7;
        }

        while (v669);
        *(v666 - 1) = v668;
      }

      else
      {
        a2[3] = v667;
        v666 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v665;
      v666 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v664, v666, this);
  }

  if (*(a1 + 40))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v670 = *(a1 + 926);
    *a2 = 3056;
    a2[2] = v670;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v671 = *(a1 + 808);
    *a2 = 3066;
    v672 = *(v671 + 5);
    if (v672 > 0x7F)
    {
      a2[2] = v672 | 0x80;
      v674 = v672 >> 7;
      if (v672 >> 14)
      {
        v673 = a2 + 4;
        do
        {
          *(v673 - 1) = v674 | 0x80;
          v675 = v674 >> 7;
          ++v673;
          v676 = v674 >> 14;
          v674 >>= 7;
        }

        while (v676);
        *(v673 - 1) = v675;
      }

      else
      {
        a2[3] = v674;
        v673 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v672;
      v673 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v671, v673, this);
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v677 = *(a1 + 927);
    *a2 = 3200;
    a2[2] = v677;
    a2 += 3;
  }

  if (*(a1 + 28))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v678 = *(a1 + 816);
    *a2 = 3210;
    v679 = *(v678 + 5);
    if (v679 > 0x7F)
    {
      a2[2] = v679 | 0x80;
      v681 = v679 >> 7;
      if (v679 >> 14)
      {
        v680 = a2 + 4;
        do
        {
          *(v680 - 1) = v681 | 0x80;
          v682 = v681 >> 7;
          ++v680;
          v683 = v681 >> 14;
          v681 >>= 7;
        }

        while (v683);
        *(v680 - 1) = v682;
      }

      else
      {
        a2[3] = v681;
        v680 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v679;
      v680 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v678, v680, this);
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v684 = *(a1 + 928);
    *a2 = 3216;
    a2[2] = v684;
    a2 += 3;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v685 = *(a1 + 824);
    *a2 = 3226;
    v686 = *(v685 + 5);
    if (v686 > 0x7F)
    {
      a2[2] = v686 | 0x80;
      v688 = v686 >> 7;
      if (v686 >> 14)
      {
        v687 = a2 + 4;
        do
        {
          *(v687 - 1) = v688 | 0x80;
          v689 = v688 >> 7;
          ++v687;
          v690 = v688 >> 14;
          v688 >>= 7;
        }

        while (v690);
        *(v687 - 1) = v689;
      }

      else
      {
        a2[3] = v688;
        v687 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v686;
      v687 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v685, v687, this);
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v691 = *(a1 + 929);
    *a2 = 3232;
    a2[2] = v691;
    a2 += 3;
  }

  v692 = *(a1 + 8);
  if ((v692 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v692 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2763B81F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_2763984C0(*(a1 + 48));
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
    v5 = sub_276398AA4(*(a1 + 56));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v37 = sub_276398AA4(*(a1 + 64));
    v3 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_338;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v38 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 72));
  v3 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_339;
  }

LABEL_338:
  v39 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 80));
  v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_340;
  }

LABEL_339:
  v40 = sub_2763984C0(*(a1 + 88));
  v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_340:
  v41 = sub_2763984C0(*(a1 + 96));
  v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 104));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v42 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 112));
    v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_344;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v43 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 120));
  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_345;
  }

LABEL_344:
  v44 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 128));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_346;
  }

LABEL_345:
  v45 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 136));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_347;
  }

LABEL_346:
  v46 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 144));
  v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_348;
  }

LABEL_347:
  v47 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 152));
  v3 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_348:
  v48 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 160));
  v3 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 168));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v49 = sub_276397948(*(a1 + 176));
    v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_352;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v50 = sub_276397948(*(a1 + 184));
  v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_353;
  }

LABEL_352:
  v51 = sub_276397948(*(a1 + 192));
  v3 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_354;
  }

LABEL_353:
  v52 = sub_276397948(*(a1 + 200));
  v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_355;
  }

LABEL_354:
  v53 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 208));
  v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_356;
  }

LABEL_355:
  v54 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 216));
  v3 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_356:
  v55 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 224));
  v3 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 232));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v2))
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v98 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 240));
    v3 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_408;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v99 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 248));
  v3 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_409;
  }

LABEL_408:
  v100 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 256));
  v3 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_410;
  }

LABEL_409:
  v101 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 264));
  v3 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_411;
  }

LABEL_410:
  v102 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 272));
  v3 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_412:
    v104 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 288));
    v3 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_413;
  }

LABEL_411:
  v103 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 280));
  v3 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_412;
  }

LABEL_43:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_413:
  v105 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 296));
  v3 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_44:
  v9 = *(a1 + 20);
  if (!v9)
  {
    goto LABEL_54;
  }

  if (v9)
  {
    v56 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 304));
    v3 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 2) == 0)
    {
LABEL_47:
      if ((v9 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_360;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_47;
  }

  v57 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 312));
  v3 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 4) == 0)
  {
LABEL_48:
    if ((v9 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_361;
  }

LABEL_360:
  v58 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 320));
  v3 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 8) == 0)
  {
LABEL_49:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_362;
  }

LABEL_361:
  v59 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 328));
  v3 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10) == 0)
  {
LABEL_50:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_363;
  }

LABEL_362:
  v60 = sub_276398AA4(*(a1 + 336));
  v3 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20) == 0)
  {
LABEL_51:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_364;
  }

LABEL_363:
  v61 = sub_276398AA4(*(a1 + 344));
  v3 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40) == 0)
  {
LABEL_52:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_364:
  v62 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 352));
  v3 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80) != 0)
  {
LABEL_53:
    v10 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 360));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_54:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v9 & 0x100) != 0)
  {
    v63 = sub_276398AA4(*(a1 + 368));
    v3 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x200) == 0)
    {
LABEL_57:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_368;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v64 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 376));
  v3 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400) == 0)
  {
LABEL_58:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_369;
  }

LABEL_368:
  v65 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 384));
  v3 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800) == 0)
  {
LABEL_59:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_370;
  }

LABEL_369:
  v66 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 392));
  v3 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x1000) == 0)
  {
LABEL_60:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_371;
  }

LABEL_370:
  v67 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 400));
  v3 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x2000) == 0)
  {
LABEL_61:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_372;
  }

LABEL_371:
  v68 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 408));
  v3 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x4000) == 0)
  {
LABEL_62:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_372:
  v69 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 416));
  v3 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x8000) != 0)
  {
LABEL_63:
    v11 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 424));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_64:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_74;
  }

  if ((v9 & 0x10000) != 0)
  {
    v70 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 432));
    v3 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x20000) == 0)
    {
LABEL_67:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_376;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v71 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 440));
  v3 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40000) == 0)
  {
LABEL_68:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_377;
  }

LABEL_376:
  v72 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 448));
  v3 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80000) == 0)
  {
LABEL_69:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_378;
  }

LABEL_377:
  v73 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 456));
  v3 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x100000) == 0)
  {
LABEL_70:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_379;
  }

LABEL_378:
  v74 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 464));
  v3 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x200000) == 0)
  {
LABEL_71:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_380;
  }

LABEL_379:
  v75 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 472));
  v3 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400000) == 0)
  {
LABEL_72:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_380:
  v76 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 480));
  v3 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800000) != 0)
  {
LABEL_73:
    v12 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 488));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_74:
  if (!HIBYTE(v9))
  {
    goto LABEL_83;
  }

  if ((v9 & 0x1000000) != 0)
  {
    v106 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 496));
    v3 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x2000000) == 0)
    {
LABEL_77:
      if ((v9 & 0x4000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_416;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_77;
  }

  v107 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 504));
  v3 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x4000000) == 0)
  {
LABEL_78:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_417;
  }

LABEL_416:
  v108 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 512));
  v3 += v108 + ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x8000000) == 0)
  {
LABEL_79:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_418;
  }

LABEL_417:
  v109 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 520));
  v3 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10000000) == 0)
  {
LABEL_80:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_419;
  }

LABEL_418:
  v110 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 528));
  v3 += v110 + ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20000000) == 0)
  {
LABEL_81:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_420:
    v112 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 544));
    v3 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_421;
  }

LABEL_419:
  v111 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 536));
  v3 += v111 + ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_420;
  }

LABEL_82:
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_421:
  v113 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 552));
  v3 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_83:
  v13 = *(a1 + 24);
  if (!v13)
  {
    goto LABEL_93;
  }

  if (v13)
  {
    v77 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 560));
    v3 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 2) == 0)
    {
LABEL_86:
      if ((v13 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_384;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_86;
  }

  v78 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 568));
  v3 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 4) == 0)
  {
LABEL_87:
    if ((v13 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_385;
  }

LABEL_384:
  v79 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 576));
  v3 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 8) == 0)
  {
LABEL_88:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_386;
  }

LABEL_385:
  v80 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 584));
  v3 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x10) == 0)
  {
LABEL_89:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_387;
  }

LABEL_386:
  v81 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 592));
  v3 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x20) == 0)
  {
LABEL_90:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_388;
  }

LABEL_387:
  v82 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 600));
  v3 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40) == 0)
  {
LABEL_91:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_388:
  v83 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 608));
  v3 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x80) != 0)
  {
LABEL_92:
    v14 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 616));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_93:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v13 & 0x100) != 0)
  {
    v84 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 624));
    v3 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x200) == 0)
    {
LABEL_96:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_392;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_96;
  }

  v85 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 632));
  v3 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x400) == 0)
  {
LABEL_97:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_393;
  }

LABEL_392:
  v86 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 640));
  v3 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x800) == 0)
  {
LABEL_98:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_394;
  }

LABEL_393:
  v87 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 648));
  v3 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x1000) == 0)
  {
LABEL_99:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_395;
  }

LABEL_394:
  v88 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 656));
  v3 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x2000) == 0)
  {
LABEL_100:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_396;
  }

LABEL_395:
  v89 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 664));
  v3 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x4000) == 0)
  {
LABEL_101:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_396:
  v90 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 672));
  v3 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x8000) != 0)
  {
LABEL_102:
    v15 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 680));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_103:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_113;
  }

  if ((v13 & 0x10000) != 0)
  {
    v91 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 688));
    v3 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x20000) == 0)
    {
LABEL_106:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_400;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  v92 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 696));
  v3 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40000) == 0)
  {
LABEL_107:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_401;
  }

LABEL_400:
  v93 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 704));
  v3 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x80000) == 0)
  {
LABEL_108:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_402;
  }

LABEL_401:
  v94 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 712));
  v3 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x100000) == 0)
  {
LABEL_109:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_403;
  }

LABEL_402:
  v95 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 720));
  v3 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x200000) == 0)
  {
LABEL_110:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_404;
  }

LABEL_403:
  v96 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 728));
  v3 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x400000) == 0)
  {
LABEL_111:
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_404:
  v97 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 736));
  v3 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x800000) != 0)
  {
LABEL_112:
    v16 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 744));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_113:
  if (!HIBYTE(v13))
  {
    goto LABEL_122;
  }

  if ((v13 & 0x1000000) != 0)
  {
    v114 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 752));
    v3 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x2000000) == 0)
    {
LABEL_116:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_424;
    }
  }

  else if ((v13 & 0x2000000) == 0)
  {
    goto LABEL_116;
  }

  v115 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 760));
  v3 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x4000000) == 0)
  {
LABEL_117:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_425;
  }

LABEL_424:
  v116 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 768));
  v3 += v116 + ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x8000000) == 0)
  {
LABEL_118:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_426;
  }

LABEL_425:
  v117 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 776));
  v3 += v117 + ((9 * (__clz(v117 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x10000000) == 0)
  {
LABEL_119:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_427;
  }

LABEL_426:
  v118 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 784));
  v3 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x20000000) == 0)
  {
LABEL_120:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_121;
    }

LABEL_428:
    v120 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 800));
    v3 += v120 + ((9 * (__clz(v120 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_429;
  }

LABEL_427:
  v119 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 792));
  v3 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_428;
  }

LABEL_121:
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

LABEL_429:
  v121 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 808));
  v3 += v121 + ((9 * (__clz(v121 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_122:
  v17 = *(a1 + 28);
  if (*(a1 + 28))
  {
    if (v17)
    {
      v18 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 816));
      v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v17 & 2) != 0)
    {
      v19 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 824));
      v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v20.i64[0] = 0x200000002;
    v20.i64[1] = 0x200000002;
    v3 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v17), xmmword_2764D71A0), v20)) + ((v17 >> 5) & 2) + ((v17 >> 6) & 2);
  }

  if ((v17 & 0xFF00) != 0)
  {
    v21 = v3 + ((v17 >> 7) & 2);
    if ((v17 & 0x200) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x400) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x800) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x1000) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x2000) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x4000) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x8000) != 0)
    {
      v3 = v21 + 3;
    }

    else
    {
      v3 = v21;
    }
  }

  if ((v17 & 0xFF0000) != 0)
  {
    v22 = v3 + 3;
    if ((v17 & 0x10000) == 0)
    {
      v22 = v3;
    }

    if ((v17 & 0x20000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x40000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x80000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x100000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x200000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x400000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x800000) != 0)
    {
      v3 = v22 + 3;
    }

    else
    {
      v3 = v22;
    }
  }

  if (BYTE3(v17))
  {
    v23 = v3 + 3;
    if ((v17 & 0x1000000) == 0)
    {
      v23 = v3;
    }

    if ((v17 & 0x2000000) != 0)
    {
      v23 += 3;
    }

    if ((v17 & 0x4000000) != 0)
    {
      v23 += 3;
    }

    if ((v17 & 0x8000000) != 0)
    {
      v23 += 3;
    }

    if ((v17 & 0x10000000) != 0)
    {
      v23 += 3;
    }

    if ((v17 & 0x20000000) != 0)
    {
      v23 += 3;
    }

    if ((v17 & 0x40000000) != 0)
    {
      v23 += 3;
    }

    if ((v17 & 0x80000000) == 0)
    {
      v3 = v23;
    }

    else
    {
      v3 = v23 + 3;
    }
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = v3 + 3;
    if ((v24 & 1) == 0)
    {
      v25 = v3;
    }

    if ((v24 & 2) != 0)
    {
      v25 += 3;
    }

    if ((v24 & 4) != 0)
    {
      v25 += 3;
    }

    if ((v24 & 8) != 0)
    {
      v25 += 3;
    }

    if ((v24 & 0x10) != 0)
    {
      v25 += 3;
    }

    if ((v24 & 0x20) != 0)
    {
      v25 += 3;
    }

    if ((v24 & 0x40) != 0)
    {
      v25 += 3;
    }

    if ((v24 & 0x80) != 0)
    {
      v3 = v25 + 3;
    }

    else
    {
      v3 = v25;
    }
  }

  if ((v24 & 0xFF00) != 0)
  {
    v26 = v3 + 3;
    if ((v24 & 0x100) == 0)
    {
      v26 = v3;
    }

    if ((v24 & 0x200) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x400) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x800) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x1000) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x2000) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x4000) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x8000) != 0)
    {
      v3 = v26 + 3;
    }

    else
    {
      v3 = v26;
    }
  }

  if ((v24 & 0xFF0000) != 0)
  {
    v27 = v3 + 3;
    if ((v24 & 0x10000) == 0)
    {
      v27 = v3;
    }

    if ((v24 & 0x20000) != 0)
    {
      v27 += 3;
    }

    if ((v24 & 0x40000) != 0)
    {
      v27 += 3;
    }

    if ((v24 & 0x80000) != 0)
    {
      v27 += 3;
    }

    if ((v24 & 0x100000) != 0)
    {
      v27 += 3;
    }

    if ((v24 & 0x200000) != 0)
    {
      v27 += 3;
    }

    if ((v24 & 0x400000) != 0)
    {
      v27 += 3;
    }

    if ((v24 & 0x800000) != 0)
    {
      v3 = v27 + 3;
    }

    else
    {
      v3 = v27;
    }
  }

  if (HIBYTE(v24))
  {
    v28 = v3 + 3;
    if ((v24 & 0x1000000) == 0)
    {
      v28 = v3;
    }

    if ((v24 & 0x2000000) != 0)
    {
      v28 += 3;
    }

    if ((v24 & 0x4000000) != 0)
    {
      v28 += 3;
    }

    if ((v24 & 0x8000000) != 0)
    {
      v28 += 3;
    }

    if ((v24 & 0x10000000) != 0)
    {
      v28 += 3;
    }

    if ((v24 & 0x20000000) != 0)
    {
      v28 += 3;
    }

    if ((v24 & 0x40000000) != 0)
    {
      v28 += 3;
    }

    if (v24 >= 0)
    {
      v3 = v28;
    }

    else
    {
      v3 = v28 + 3;
    }
  }

  v29 = *(a1 + 36);
  if (v29)
  {
    v30 = v3 + 3;
    if ((v29 & 1) == 0)
    {
      v30 = v3;
    }

    if ((v29 & 2) != 0)
    {
      v30 += 3;
    }

    if ((v29 & 4) != 0)
    {
      v30 += 3;
    }

    if ((v29 & 8) != 0)
    {
      v30 += 3;
    }

    if ((v29 & 0x10) != 0)
    {
      v30 += 3;
    }

    if ((v29 & 0x20) != 0)
    {
      v30 += 3;
    }

    if ((v29 & 0x40) != 0)
    {
      v30 += 3;
    }

    if ((v29 & 0x80) != 0)
    {
      v3 = v30 + 3;
    }

    else
    {
      v3 = v30;
    }
  }

  if ((v29 & 0xFF00) != 0)
  {
    v31 = v3 + 3;
    if ((v29 & 0x100) == 0)
    {
      v31 = v3;
    }

    if ((v29 & 0x200) != 0)
    {
      v31 += 3;
    }

    if ((v29 & 0x400) != 0)
    {
      v31 += 3;
    }

    if ((v29 & 0x800) != 0)
    {
      v31 += 3;
    }

    if ((v29 & 0x1000) != 0)
    {
      v31 += 3;
    }

    if ((v29 & 0x2000) != 0)
    {
      v31 += 3;
    }

    if ((v29 & 0x4000) != 0)
    {
      v31 += 3;
    }

    if ((v29 & 0x8000) != 0)
    {
      v3 = v31 + 3;
    }

    else
    {
      v3 = v31;
    }
  }

  if ((v29 & 0xFF0000) != 0)
  {
    v32 = v3 + 3;
    if ((v29 & 0x10000) == 0)
    {
      v32 = v3;
    }

    if ((v29 & 0x20000) != 0)
    {
      v32 += 3;
    }

    if ((v29 & 0x40000) != 0)
    {
      v32 += 3;
    }

    if ((v29 & 0x80000) != 0)
    {
      v32 += 3;
    }

    if ((v29 & 0x100000) != 0)
    {
      v32 += 3;
    }

    if ((v29 & 0x200000) != 0)
    {
      v32 += 3;
    }

    if ((v29 & 0x400000) != 0)
    {
      v32 += 3;
    }

    if ((v29 & 0x800000) != 0)
    {
      v3 = v32 + 3;
    }

    else
    {
      v3 = v32;
    }
  }

  if (HIBYTE(v29))
  {
    v33 = v3 + 3;
    if ((v29 & 0x1000000) == 0)
    {
      v33 = v3;
    }

    if ((v29 & 0x2000000) != 0)
    {
      v33 += 3;
    }

    if ((v29 & 0x4000000) != 0)
    {
      v33 += 3;
    }

    if ((v29 & 0x8000000) != 0)
    {
      v33 += 3;
    }

    if ((v29 & 0x10000000) != 0)
    {
      v33 += 3;
    }

    if ((v29 & 0x20000000) != 0)
    {
      v33 += 3;
    }

    if ((v29 & 0x40000000) != 0)
    {
      v33 += 3;
    }

    if (v29 >= 0)
    {
      v3 = v33;
    }

    else
    {
      v3 = v33 + 3;
    }
  }

  v34 = *(a1 + 40);
  if ((v34 & 0xF) != 0)
  {
    v35 = v3 + 3;
    if ((v34 & 1) == 0)
    {
      v35 = v3;
    }

    if ((v34 & 2) != 0)
    {
      v35 += 3;
    }

    if ((v34 & 4) != 0)
    {
      v35 += 3;
    }

    if ((v34 & 8) != 0)
    {
      v3 = v35 + 3;
    }

    else
    {
      v3 = v35;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 44) = v3;
    return v3;
  }
}

uint64_t sub_2763B9BB0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885200D8, 0);
  if (v4)
  {

    return sub_2763B9C58(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763B9C58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_77;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 48);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2763D414C(v7);
      *(v3 + 48) = v6;
    }

    if (*(a2 + 48))
    {
      v8 = *(a2 + 48);
    }

    else
    {
      v8 = &qword_2812EE7E0;
    }

    result = sub_2763985F4(v6, v8);
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 56);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_2763D4218(v10);
      *(v3 + 56) = v9;
    }

    if (*(a2 + 56))
    {
      v11 = *(a2 + 56);
    }

    else
    {
      v11 = &qword_2812EE800;
    }

    result = sub_276398BD8(v9, v11);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 64);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_2763D4218(v13);
      *(v3 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v14 = *(a2 + 64);
    }

    else
    {
      v14 = &qword_2812EE800;
    }

    result = sub_276398BD8(v12, v14);
  }

  v15 = MEMORY[0x277D80C08];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 72);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C97C40](v17);
      *(v3 + 72) = v16;
    }

    if (*(a2 + 72))
    {
      v18 = *(a2 + 72);
    }

    else
    {
      v18 = v15;
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_33:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_34;
      }

LABEL_53:
      *(v3 + 16) |= 0x20u;
      v22 = *(v3 + 88);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = sub_2763D414C(v23);
        *(v3 + 88) = v22;
      }

      if (*(a2 + 88))
      {
        v24 = *(a2 + 88);
      }

      else
      {
        v24 = &qword_2812EE7E0;
      }

      result = sub_2763985F4(v22, v24);
      if ((v5 & 0x40) == 0)
      {
LABEL_35:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_69;
      }

      goto LABEL_61;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  *(v3 + 16) |= 0x10u;
  v19 = *(v3 + 80);
  if (!v19)
  {
    v20 = *(v3 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277C97C40](v20);
    *(v3 + 80) = v19;
  }

  if (*(a2 + 80))
  {
    v21 = *(a2 + 80);
  }

  else
  {
    v21 = v15;
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v19, v21);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_34:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v25 = *(v3 + 96);
  if (!v25)
  {
    v26 = *(v3 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = sub_2763D414C(v26);
    *(v3 + 96) = v25;
  }

  if (*(a2 + 96))
  {
    v27 = *(a2 + 96);
  }

  else
  {
    v27 = &qword_2812EE7E0;
  }

  result = sub_2763985F4(v25, v27);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v28 = *(v3 + 104);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C97C60](v29);
      *(v3 + 104) = v28;
    }

    if (*(a2 + 104))
    {
      v30 = *(a2 + 104);
    }

    else
    {
      v30 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v28, v30);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 112);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C97C60](v32);
      *(v3 + 112) = v31;
    }

    if (*(a2 + 112))
    {
      v33 = *(a2 + 112);
    }

    else
    {
      v33 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v31, v33);
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
  v34 = *(v3 + 120);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x277C97C60](v35);
    *(v3 + 120) = v34;
  }

  if (*(a2 + 120))
  {
    v36 = *(a2 + 120);
  }

  else
  {
    v36 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v34, v36);
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
  v37 = *(v3 + 128);
  if (!v37)
  {
    v38 = *(v3 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x277C97C60](v38);
    *(v3 + 128) = v37;
  }

  if (*(a2 + 128))
  {
    v39 = *(a2 + 128);
  }

  else
  {
    v39 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v37, v39);
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
  v40 = *(v3 + 136);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x277C97C60](v41);
    *(v3 + 136) = v40;
  }

  if (*(a2 + 136))
  {
    v42 = *(a2 + 136);
  }

  else
  {
    v42 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v40, v42);
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
  v43 = *(v3 + 144);
  if (!v43)
  {
    v44 = *(v3 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x277C97C60](v44);
    *(v3 + 144) = v43;
  }

  if (*(a2 + 144))
  {
    v45 = *(a2 + 144);
  }

  else
  {
    v45 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v43, v45);
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
  v46 = *(v3 + 152);
  if (!v46)
  {
    v47 = *(v3 + 8);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x277C97C60](v47);
    *(v3 + 152) = v46;
  }

  if (*(a2 + 152))
  {
    v48 = *(a2 + 152);
  }

  else
  {
    v48 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v46, v48);
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
  v49 = *(v3 + 160);
  if (!v49)
  {
    v50 = *(v3 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x277C97C60](v50);
    *(v3 + 160) = v49;
  }

  if (*(a2 + 160))
  {
    v51 = *(a2 + 160);
  }

  else
  {
    v51 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v49, v51);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v52 = *(v3 + 168);
    if (!v52)
    {
      v53 = *(v3 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x277C97C60](v53);
      *(v3 + 168) = v52;
    }

    if (*(a2 + 168))
    {
      v54 = *(a2 + 168);
    }

    else
    {
      v54 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v52, v54);
  }

LABEL_151:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_225;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v55 = *(v3 + 176);
    if (!v55)
    {
      v56 = *(v3 + 8);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = sub_2763D3FB4(v56);
      *(v3 + 176) = v55;
    }

    if (*(a2 + 176))
    {
      v57 = *(a2 + 176);
    }

    else
    {
      v57 = &qword_2812EE7A0;
    }

    result = sub_276397A7C(v55, v57);
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
  v58 = *(v3 + 184);
  if (!v58)
  {
    v59 = *(v3 + 8);
    if (v59)
    {
      v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = sub_2763D3FB4(v59);
    *(v3 + 184) = v58;
  }

  if (*(a2 + 184))
  {
    v60 = *(a2 + 184);
  }

  else
  {
    v60 = &qword_2812EE7A0;
  }

  result = sub_276397A7C(v58, v60);
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
  v61 = *(v3 + 192);
  if (!v61)
  {
    v62 = *(v3 + 8);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = sub_2763D3FB4(v62);
    *(v3 + 192) = v61;
  }

  if (*(a2 + 192))
  {
    v63 = *(a2 + 192);
  }

  else
  {
    v63 = &qword_2812EE7A0;
  }

  result = sub_276397A7C(v61, v63);
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
  v64 = *(v3 + 200);
  if (!v64)
  {
    v65 = *(v3 + 8);
    if (v65)
    {
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
    }

    v64 = sub_2763D3FB4(v65);
    *(v3 + 200) = v64;
  }

  if (*(a2 + 200))
  {
    v66 = *(a2 + 200);
  }

  else
  {
    v66 = &qword_2812EE7A0;
  }

  result = sub_276397A7C(v64, v66);
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
  v67 = *(v3 + 208);
  if (!v67)
  {
    v68 = *(v3 + 8);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x277C97C40](v68);
    *(v3 + 208) = v67;
  }

  if (*(a2 + 208))
  {
    v69 = *(a2 + 208);
  }

  else
  {
    v69 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v67, v69);
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
  v70 = *(v3 + 216);
  if (!v70)
  {
    v71 = *(v3 + 8);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = MEMORY[0x277C97C40](v71);
    *(v3 + 216) = v70;
  }

  if (*(a2 + 216))
  {
    v72 = *(a2 + 216);
  }

  else
  {
    v72 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v70, v72);
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
  v73 = *(v3 + 224);
  if (!v73)
  {
    v74 = *(v3 + 8);
    if (v74)
    {
      v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
    }

    v73 = MEMORY[0x277C97C40](v74);
    *(v3 + 224) = v73;
  }

  if (*(a2 + 224))
  {
    v75 = *(a2 + 224);
  }

  else
  {
    v75 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v73, v75);
  if ((v5 & 0x800000) != 0)
  {
LABEL_217:
    *(v3 + 16) |= 0x800000u;
    v76 = *(v3 + 232);
    if (!v76)
    {
      v77 = *(v3 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x277C97C40](v77);
      *(v3 + 232) = v76;
    }

    if (*(a2 + 232))
    {
      v78 = *(a2 + 232);
    }

    else
    {
      v78 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v76, v78);
  }

LABEL_225:
  if (!HIBYTE(v5))
  {
    goto LABEL_299;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v79 = *(v3 + 240);
    if (!v79)
    {
      v80 = *(v3 + 8);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = MEMORY[0x277C97C60](v80);
      *(v3 + 240) = v79;
    }

    if (*(a2 + 240))
    {
      v81 = *(a2 + 240);
    }

    else
    {
      v81 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v79, v81);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_228:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_251;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_228;
  }

  *(v3 + 16) |= 0x2000000u;
  v82 = *(v3 + 248);
  if (!v82)
  {
    v83 = *(v3 + 8);
    if (v83)
    {
      v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
    }

    v82 = MEMORY[0x277C97C60](v83);
    *(v3 + 248) = v82;
  }

  if (*(a2 + 248))
  {
    v84 = *(a2 + 248);
  }

  else
  {
    v84 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v82, v84);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_229:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_259;
  }

LABEL_251:
  *(v3 + 16) |= 0x4000000u;
  v85 = *(v3 + 256);
  if (!v85)
  {
    v86 = *(v3 + 8);
    if (v86)
    {
      v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
    }

    v85 = MEMORY[0x277C97C40](v86);
    *(v3 + 256) = v85;
  }

  if (*(a2 + 256))
  {
    v87 = *(a2 + 256);
  }

  else
  {
    v87 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v85, v87);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_267;
  }

LABEL_259:
  *(v3 + 16) |= 0x8000000u;
  v88 = *(v3 + 264);
  if (!v88)
  {
    v89 = *(v3 + 8);
    if (v89)
    {
      v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
    }

    v88 = MEMORY[0x277C97C40](v89);
    *(v3 + 264) = v88;
  }

  if (*(a2 + 264))
  {
    v90 = *(a2 + 264);
  }

  else
  {
    v90 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v88, v90);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_275;
  }

LABEL_267:
  *(v3 + 16) |= 0x10000000u;
  v91 = *(v3 + 272);
  if (!v91)
  {
    v92 = *(v3 + 8);
    if (v92)
    {
      v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
    }

    v91 = MEMORY[0x277C97C60](v92);
    *(v3 + 272) = v91;
  }

  if (*(a2 + 272))
  {
    v93 = *(a2 + 272);
  }

  else
  {
    v93 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v91, v93);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_283;
  }

LABEL_275:
  *(v3 + 16) |= 0x20000000u;
  v94 = *(v3 + 280);
  if (!v94)
  {
    v95 = *(v3 + 8);
    if (v95)
    {
      v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
    }

    v94 = MEMORY[0x277C97C60](v95);
    *(v3 + 280) = v94;
  }

  if (*(a2 + 280))
  {
    v96 = *(a2 + 280);
  }

  else
  {
    v96 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v94, v96);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_233:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_291;
  }

LABEL_283:
  *(v3 + 16) |= 0x40000000u;
  v97 = *(v3 + 288);
  if (!v97)
  {
    v98 = *(v3 + 8);
    if (v98)
    {
      v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
    }

    v97 = MEMORY[0x277C97C40](v98);
    *(v3 + 288) = v97;
  }

  if (*(a2 + 288))
  {
    v99 = *(a2 + 288);
  }

  else
  {
    v99 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v97, v99);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_291:
    *(v3 + 16) |= 0x80000000;
    v100 = *(v3 + 296);
    if (!v100)
    {
      v101 = *(v3 + 8);
      if (v101)
      {
        v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
      }

      v100 = MEMORY[0x277C97C60](v101);
      *(v3 + 296) = v100;
    }

    if (*(a2 + 296))
    {
      v102 = *(a2 + 296);
    }

    else
    {
      v102 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v100, v102);
  }

LABEL_299:
  v103 = *(a2 + 20);
  if (!v103)
  {
    goto LABEL_373;
  }

  if (v103)
  {
    *(v3 + 20) |= 1u;
    v104 = *(v3 + 304);
    if (!v104)
    {
      v105 = *(v3 + 8);
      if (v105)
      {
        v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
      }

      v104 = MEMORY[0x277C97C60](v105);
      *(v3 + 304) = v104;
    }

    if (*(a2 + 304))
    {
      v106 = *(a2 + 304);
    }

    else
    {
      v106 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v104, v106);
    if ((v103 & 2) == 0)
    {
LABEL_302:
      if ((v103 & 4) == 0)
      {
        goto LABEL_303;
      }

      goto LABEL_325;
    }
  }

  else if ((v103 & 2) == 0)
  {
    goto LABEL_302;
  }

  *(v3 + 20) |= 2u;
  v107 = *(v3 + 312);
  if (!v107)
  {
    v108 = *(v3 + 8);
    if (v108)
    {
      v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
    }

    v107 = MEMORY[0x277C97C60](v108);
    *(v3 + 312) = v107;
  }

  if (*(a2 + 312))
  {
    v109 = *(a2 + 312);
  }

  else
  {
    v109 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v107, v109);
  if ((v103 & 4) == 0)
  {
LABEL_303:
    if ((v103 & 8) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_333;
  }

LABEL_325:
  *(v3 + 20) |= 4u;
  v110 = *(v3 + 320);
  if (!v110)
  {
    v111 = *(v3 + 8);
    if (v111)
    {
      v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
    }

    v110 = MEMORY[0x277C97C60](v111);
    *(v3 + 320) = v110;
  }

  if (*(a2 + 320))
  {
    v112 = *(a2 + 320);
  }

  else
  {
    v112 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v110, v112);
  if ((v103 & 8) == 0)
  {
LABEL_304:
    if ((v103 & 0x10) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_341;
  }

LABEL_333:
  *(v3 + 20) |= 8u;
  v113 = *(v3 + 328);
  if (!v113)
  {
    v114 = *(v3 + 8);
    if (v114)
    {
      v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
    }

    v113 = MEMORY[0x277C97C60](v114);
    *(v3 + 328) = v113;
  }

  if (*(a2 + 328))
  {
    v115 = *(a2 + 328);
  }

  else
  {
    v115 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v113, v115);
  if ((v103 & 0x10) == 0)
  {
LABEL_305:
    if ((v103 & 0x20) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_349;
  }

LABEL_341:
  *(v3 + 20) |= 0x10u;
  v116 = *(v3 + 336);
  if (!v116)
  {
    v117 = *(v3 + 8);
    if (v117)
    {
      v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
    }

    v116 = sub_2763D4218(v117);
    *(v3 + 336) = v116;
  }

  if (*(a2 + 336))
  {
    v118 = *(a2 + 336);
  }

  else
  {
    v118 = &qword_2812EE800;
  }

  result = sub_276398BD8(v116, v118);
  if ((v103 & 0x20) == 0)
  {
LABEL_306:
    if ((v103 & 0x40) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_357;
  }

LABEL_349:
  *(v3 + 20) |= 0x20u;
  v119 = *(v3 + 344);
  if (!v119)
  {
    v120 = *(v3 + 8);
    if (v120)
    {
      v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
    }

    v119 = sub_2763D4218(v120);
    *(v3 + 344) = v119;
  }

  if (*(a2 + 344))
  {
    v121 = *(a2 + 344);
  }

  else
  {
    v121 = &qword_2812EE800;
  }

  result = sub_276398BD8(v119, v121);
  if ((v103 & 0x40) == 0)
  {
LABEL_307:
    if ((v103 & 0x80) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_365;
  }

LABEL_357:
  *(v3 + 20) |= 0x40u;
  v122 = *(v3 + 352);
  if (!v122)
  {
    v123 = *(v3 + 8);
    if (v123)
    {
      v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
    }

    v122 = MEMORY[0x277C97C60](v123);
    *(v3 + 352) = v122;
  }

  if (*(a2 + 352))
  {
    v124 = *(a2 + 352);
  }

  else
  {
    v124 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v122, v124);
  if ((v103 & 0x80) != 0)
  {
LABEL_365:
    *(v3 + 20) |= 0x80u;
    v125 = *(v3 + 360);
    if (!v125)
    {
      v126 = *(v3 + 8);
      if (v126)
      {
        v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
      }

      v125 = MEMORY[0x277C97C60](v126);
      *(v3 + 360) = v125;
    }

    if (*(a2 + 360))
    {
      v127 = *(a2 + 360);
    }

    else
    {
      v127 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v125, v127);
  }

LABEL_373:
  if ((v103 & 0xFF00) == 0)
  {
    goto LABEL_447;
  }

  if ((v103 & 0x100) != 0)
  {
    *(v3 + 20) |= 0x100u;
    v128 = *(v3 + 368);
    if (!v128)
    {
      v129 = *(v3 + 8);
      if (v129)
      {
        v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
      }

      v128 = sub_2763D4218(v129);
      *(v3 + 368) = v128;
    }

    if (*(a2 + 368))
    {
      v130 = *(a2 + 368);
    }

    else
    {
      v130 = &qword_2812EE800;
    }

    result = sub_276398BD8(v128, v130);
  }

  if ((v103 & 0x200) != 0)
  {
    *(v3 + 20) |= 0x200u;
    v131 = *(v3 + 376);
    if (!v131)
    {
      v132 = *(v3 + 8);
      if (v132)
      {
        v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
      }

      v131 = MEMORY[0x277C97C60](v132);
      *(v3 + 376) = v131;
    }

    if (*(a2 + 376))
    {
      v133 = *(a2 + 376);
    }

    else
    {
      v133 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v131, v133);
  }

  v134 = MEMORY[0x277D80BF8];
  if ((v103 & 0x400) != 0)
  {
    *(v3 + 20) |= 0x400u;
    v135 = *(v3 + 384);
    if (!v135)
    {
      v136 = *(v3 + 8);
      if (v136)
      {
        v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
      }

      v135 = MEMORY[0x277C97C20](v136);
      *(v3 + 384) = v135;
    }

    if (*(a2 + 384))
    {
      v137 = *(a2 + 384);
    }

    else
    {
      v137 = v134;
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v135, v137);
    if ((v103 & 0x800) == 0)
    {
LABEL_394:
      if ((v103 & 0x1000) == 0)
      {
        goto LABEL_395;
      }

      goto LABEL_415;
    }
  }

  else if ((v103 & 0x800) == 0)
  {
    goto LABEL_394;
  }

  *(v3 + 20) |= 0x800u;
  v138 = *(v3 + 392);
  if (!v138)
  {
    v139 = *(v3 + 8);
    if (v139)
    {
      v139 = *(v139 & 0xFFFFFFFFFFFFFFFELL);
    }

    v138 = MEMORY[0x277C97C20](v139);
    *(v3 + 392) = v138;
  }

  if (*(a2 + 392))
  {
    v140 = *(a2 + 392);
  }

  else
  {
    v140 = v134;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v138, v140);
  if ((v103 & 0x1000) == 0)
  {
LABEL_395:
    if ((v103 & 0x2000) == 0)
    {
      goto LABEL_396;
    }

    goto LABEL_423;
  }

LABEL_415:
  *(v3 + 20) |= 0x1000u;
  v141 = *(v3 + 400);
  if (!v141)
  {
    v142 = *(v3 + 8);
    if (v142)
    {
      v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
    }

    v141 = MEMORY[0x277C97C20](v142);
    *(v3 + 400) = v141;
  }

  if (*(a2 + 400))
  {
    v143 = *(a2 + 400);
  }

  else
  {
    v143 = v134;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v141, v143);
  if ((v103 & 0x2000) == 0)
  {
LABEL_396:
    if ((v103 & 0x4000) == 0)
    {
      goto LABEL_397;
    }

    goto LABEL_431;
  }

LABEL_423:
  *(v3 + 20) |= 0x2000u;
  v144 = *(v3 + 408);
  if (!v144)
  {
    v145 = *(v3 + 8);
    if (v145)
    {
      v145 = *(v145 & 0xFFFFFFFFFFFFFFFELL);
    }

    v144 = MEMORY[0x277C97C20](v145);
    *(v3 + 408) = v144;
  }

  if (*(a2 + 408))
  {
    v146 = *(a2 + 408);
  }

  else
  {
    v146 = v134;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v144, v146);
  if ((v103 & 0x4000) == 0)
  {
LABEL_397:
    if ((v103 & 0x8000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_439;
  }

LABEL_431:
  *(v3 + 20) |= 0x4000u;
  v147 = *(v3 + 416);
  if (!v147)
  {
    v148 = *(v3 + 8);
    if (v148)
    {
      v148 = *(v148 & 0xFFFFFFFFFFFFFFFELL);
    }

    v147 = MEMORY[0x277C97C20](v148);
    *(v3 + 416) = v147;
  }

  if (*(a2 + 416))
  {
    v149 = *(a2 + 416);
  }

  else
  {
    v149 = v134;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v147, v149);
  if ((v103 & 0x8000) != 0)
  {
LABEL_439:
    *(v3 + 20) |= 0x8000u;
    v150 = *(v3 + 424);
    if (!v150)
    {
      v151 = *(v3 + 8);
      if (v151)
      {
        v151 = *(v151 & 0xFFFFFFFFFFFFFFFELL);
      }

      v150 = MEMORY[0x277C97C20](v151);
      *(v3 + 424) = v150;
    }

    if (*(a2 + 424))
    {
      v152 = *(a2 + 424);
    }

    else
    {
      v152 = v134;
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v150, v152);
  }

LABEL_447:
  if ((v103 & 0xFF0000) == 0)
  {
    goto LABEL_521;
  }

  if ((v103 & 0x10000) != 0)
  {
    *(v3 + 20) |= 0x10000u;
    v153 = *(v3 + 432);
    if (!v153)
    {
      v154 = *(v3 + 8);
      if (v154)
      {
        v154 = *(v154 & 0xFFFFFFFFFFFFFFFELL);
      }

      v153 = MEMORY[0x277C97C20](v154);
      *(v3 + 432) = v153;
    }

    if (*(a2 + 432))
    {
      v155 = *(a2 + 432);
    }

    else
    {
      v155 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v153, v155);
    if ((v103 & 0x20000) == 0)
    {
LABEL_450:
      if ((v103 & 0x40000) == 0)
      {
        goto LABEL_451;
      }

      goto LABEL_473;
    }
  }

  else if ((v103 & 0x20000) == 0)
  {
    goto LABEL_450;
  }

  *(v3 + 20) |= 0x20000u;
  v156 = *(v3 + 440);
  if (!v156)
  {
    v157 = *(v3 + 8);
    if (v157)
    {
      v157 = *(v157 & 0xFFFFFFFFFFFFFFFELL);
    }

    v156 = MEMORY[0x277C97C20](v157);
    *(v3 + 440) = v156;
  }

  if (*(a2 + 440))
  {
    v158 = *(a2 + 440);
  }

  else
  {
    v158 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v156, v158);
  if ((v103 & 0x40000) == 0)
  {
LABEL_451:
    if ((v103 & 0x80000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_481;
  }

LABEL_473:
  *(v3 + 20) |= 0x40000u;
  v159 = *(v3 + 448);
  if (!v159)
  {
    v160 = *(v3 + 8);
    if (v160)
    {
      v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
    }

    v159 = MEMORY[0x277C97C20](v160);
    *(v3 + 448) = v159;
  }

  if (*(a2 + 448))
  {
    v161 = *(a2 + 448);
  }

  else
  {
    v161 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v159, v161);
  if ((v103 & 0x80000) == 0)
  {
LABEL_452:
    if ((v103 & 0x100000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_489;
  }

LABEL_481:
  *(v3 + 20) |= 0x80000u;
  v162 = *(v3 + 456);
  if (!v162)
  {
    v163 = *(v3 + 8);
    if (v163)
    {
      v163 = *(v163 & 0xFFFFFFFFFFFFFFFELL);
    }

    v162 = MEMORY[0x277C97C20](v163);
    *(v3 + 456) = v162;
  }

  if (*(a2 + 456))
  {
    v164 = *(a2 + 456);
  }

  else
  {
    v164 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v162, v164);
  if ((v103 & 0x100000) == 0)
  {
LABEL_453:
    if ((v103 & 0x200000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_497;
  }

LABEL_489:
  *(v3 + 20) |= 0x100000u;
  v165 = *(v3 + 464);
  if (!v165)
  {
    v166 = *(v3 + 8);
    if (v166)
    {
      v166 = *(v166 & 0xFFFFFFFFFFFFFFFELL);
    }

    v165 = MEMORY[0x277C97C20](v166);
    *(v3 + 464) = v165;
  }

  if (*(a2 + 464))
  {
    v167 = *(a2 + 464);
  }

  else
  {
    v167 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v165, v167);
  if ((v103 & 0x200000) == 0)
  {
LABEL_454:
    if ((v103 & 0x400000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_505;
  }

LABEL_497:
  *(v3 + 20) |= 0x200000u;
  v168 = *(v3 + 472);
  if (!v168)
  {
    v169 = *(v3 + 8);
    if (v169)
    {
      v169 = *(v169 & 0xFFFFFFFFFFFFFFFELL);
    }

    v168 = MEMORY[0x277C97C20](v169);
    *(v3 + 472) = v168;
  }

  if (*(a2 + 472))
  {
    v170 = *(a2 + 472);
  }

  else
  {
    v170 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v168, v170);
  if ((v103 & 0x400000) == 0)
  {
LABEL_455:
    if ((v103 & 0x800000) == 0)
    {
      goto LABEL_521;
    }

    goto LABEL_513;
  }

LABEL_505:
  *(v3 + 20) |= 0x400000u;
  v171 = *(v3 + 480);
  if (!v171)
  {
    v172 = *(v3 + 8);
    if (v172)
    {
      v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
    }

    v171 = MEMORY[0x277C97C20](v172);
    *(v3 + 480) = v171;
  }

  if (*(a2 + 480))
  {
    v173 = *(a2 + 480);
  }

  else
  {
    v173 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v171, v173);
  if ((v103 & 0x800000) != 0)
  {
LABEL_513:
    *(v3 + 20) |= 0x800000u;
    v174 = *(v3 + 488);
    if (!v174)
    {
      v175 = *(v3 + 8);
      if (v175)
      {
        v175 = *(v175 & 0xFFFFFFFFFFFFFFFELL);
      }

      v174 = MEMORY[0x277C97C20](v175);
      *(v3 + 488) = v174;
    }

    if (*(a2 + 488))
    {
      v176 = *(a2 + 488);
    }

    else
    {
      v176 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v174, v176);
  }

LABEL_521:
  if (!HIBYTE(v103))
  {
    goto LABEL_595;
  }

  if ((v103 & 0x1000000) != 0)
  {
    *(v3 + 20) |= 0x1000000u;
    v177 = *(v3 + 496);
    if (!v177)
    {
      v178 = *(v3 + 8);
      if (v178)
      {
        v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
      }

      v177 = MEMORY[0x277C97C20](v178);
      *(v3 + 496) = v177;
    }

    if (*(a2 + 496))
    {
      v179 = *(a2 + 496);
    }

    else
    {
      v179 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v177, v179);
    if ((v103 & 0x2000000) == 0)
    {
LABEL_524:
      if ((v103 & 0x4000000) == 0)
      {
        goto LABEL_525;
      }

      goto LABEL_547;
    }
  }

  else if ((v103 & 0x2000000) == 0)
  {
    goto LABEL_524;
  }

  *(v3 + 20) |= 0x2000000u;
  v180 = *(v3 + 504);
  if (!v180)
  {
    v181 = *(v3 + 8);
    if (v181)
    {
      v181 = *(v181 & 0xFFFFFFFFFFFFFFFELL);
    }

    v180 = MEMORY[0x277C97C20](v181);
    *(v3 + 504) = v180;
  }

  if (*(a2 + 504))
  {
    v182 = *(a2 + 504);
  }

  else
  {
    v182 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v180, v182);
  if ((v103 & 0x4000000) == 0)
  {
LABEL_525:
    if ((v103 & 0x8000000) == 0)
    {
      goto LABEL_526;
    }

    goto LABEL_555;
  }

LABEL_547:
  *(v3 + 20) |= 0x4000000u;
  v183 = *(v3 + 512);
  if (!v183)
  {
    v184 = *(v3 + 8);
    if (v184)
    {
      v184 = *(v184 & 0xFFFFFFFFFFFFFFFELL);
    }

    v183 = MEMORY[0x277C97C20](v184);
    *(v3 + 512) = v183;
  }

  if (*(a2 + 512))
  {
    v185 = *(a2 + 512);
  }

  else
  {
    v185 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v183, v185);
  if ((v103 & 0x8000000) == 0)
  {
LABEL_526:
    if ((v103 & 0x10000000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_563;
  }

LABEL_555:
  *(v3 + 20) |= 0x8000000u;
  v186 = *(v3 + 520);
  if (!v186)
  {
    v187 = *(v3 + 8);
    if (v187)
    {
      v187 = *(v187 & 0xFFFFFFFFFFFFFFFELL);
    }

    v186 = MEMORY[0x277C97C20](v187);
    *(v3 + 520) = v186;
  }

  if (*(a2 + 520))
  {
    v188 = *(a2 + 520);
  }

  else
  {
    v188 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v186, v188);
  if ((v103 & 0x10000000) == 0)
  {
LABEL_527:
    if ((v103 & 0x20000000) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_571;
  }

LABEL_563:
  *(v3 + 20) |= 0x10000000u;
  v189 = *(v3 + 528);
  if (!v189)
  {
    v190 = *(v3 + 8);
    if (v190)
    {
      v190 = *(v190 & 0xFFFFFFFFFFFFFFFELL);
    }

    v189 = MEMORY[0x277C97C20](v190);
    *(v3 + 528) = v189;
  }

  if (*(a2 + 528))
  {
    v191 = *(a2 + 528);
  }

  else
  {
    v191 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v189, v191);
  if ((v103 & 0x20000000) == 0)
  {
LABEL_528:
    if ((v103 & 0x40000000) == 0)
    {
      goto LABEL_529;
    }

    goto LABEL_579;
  }

LABEL_571:
  *(v3 + 20) |= 0x20000000u;
  v192 = *(v3 + 536);
  if (!v192)
  {
    v193 = *(v3 + 8);
    if (v193)
    {
      v193 = *(v193 & 0xFFFFFFFFFFFFFFFELL);
    }

    v192 = MEMORY[0x277C97C20](v193);
    *(v3 + 536) = v192;
  }

  if (*(a2 + 536))
  {
    v194 = *(a2 + 536);
  }

  else
  {
    v194 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v192, v194);
  if ((v103 & 0x40000000) == 0)
  {
LABEL_529:
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_595;
    }

    goto LABEL_587;
  }

LABEL_579:
  *(v3 + 20) |= 0x40000000u;
  v195 = *(v3 + 544);
  if (!v195)
  {
    v196 = *(v3 + 8);
    if (v196)
    {
      v196 = *(v196 & 0xFFFFFFFFFFFFFFFELL);
    }

    v195 = MEMORY[0x277C97C20](v196);
    *(v3 + 544) = v195;
  }

  if (*(a2 + 544))
  {
    v197 = *(a2 + 544);
  }

  else
  {
    v197 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v195, v197);
  if ((v103 & 0x80000000) != 0)
  {
LABEL_587:
    *(v3 + 20) |= 0x80000000;
    v198 = *(v3 + 552);
    if (!v198)
    {
      v199 = *(v3 + 8);
      if (v199)
      {
        v199 = *(v199 & 0xFFFFFFFFFFFFFFFELL);
      }

      v198 = MEMORY[0x277C97C20](v199);
      *(v3 + 552) = v198;
    }

    if (*(a2 + 552))
    {
      v200 = *(a2 + 552);
    }

    else
    {
      v200 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v198, v200);
  }

LABEL_595:
  v201 = *(a2 + 24);
  if (!v201)
  {
    goto LABEL_669;
  }

  if (v201)
  {
    *(v3 + 24) |= 1u;
    v202 = *(v3 + 560);
    if (!v202)
    {
      v203 = *(v3 + 8);
      if (v203)
      {
        v203 = *(v203 & 0xFFFFFFFFFFFFFFFELL);
      }

      v202 = MEMORY[0x277C97C20](v203);
      *(v3 + 560) = v202;
    }

    if (*(a2 + 560))
    {
      v204 = *(a2 + 560);
    }

    else
    {
      v204 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v202, v204);
    if ((v201 & 2) == 0)
    {
LABEL_598:
      if ((v201 & 4) == 0)
      {
        goto LABEL_599;
      }

      goto LABEL_621;
    }
  }

  else if ((v201 & 2) == 0)
  {
    goto LABEL_598;
  }

  *(v3 + 24) |= 2u;
  v205 = *(v3 + 568);
  if (!v205)
  {
    v206 = *(v3 + 8);
    if (v206)
    {
      v206 = *(v206 & 0xFFFFFFFFFFFFFFFELL);
    }

    v205 = MEMORY[0x277C97C20](v206);
    *(v3 + 568) = v205;
  }

  if (*(a2 + 568))
  {
    v207 = *(a2 + 568);
  }

  else
  {
    v207 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v205, v207);
  if ((v201 & 4) == 0)
  {
LABEL_599:
    if ((v201 & 8) == 0)
    {
      goto LABEL_600;
    }

    goto LABEL_629;
  }

LABEL_621:
  *(v3 + 24) |= 4u;
  v208 = *(v3 + 576);
  if (!v208)
  {
    v209 = *(v3 + 8);
    if (v209)
    {
      v209 = *(v209 & 0xFFFFFFFFFFFFFFFELL);
    }

    v208 = MEMORY[0x277C97C20](v209);
    *(v3 + 576) = v208;
  }

  if (*(a2 + 576))
  {
    v210 = *(a2 + 576);
  }

  else
  {
    v210 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v208, v210);
  if ((v201 & 8) == 0)
  {
LABEL_600:
    if ((v201 & 0x10) == 0)
    {
      goto LABEL_601;
    }

    goto LABEL_637;
  }

LABEL_629:
  *(v3 + 24) |= 8u;
  v211 = *(v3 + 584);
  if (!v211)
  {
    v212 = *(v3 + 8);
    if (v212)
    {
      v212 = *(v212 & 0xFFFFFFFFFFFFFFFELL);
    }

    v211 = MEMORY[0x277C97C60](v212);
    *(v3 + 584) = v211;
  }

  if (*(a2 + 584))
  {
    v213 = *(a2 + 584);
  }

  else
  {
    v213 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v211, v213);
  if ((v201 & 0x10) == 0)
  {
LABEL_601:
    if ((v201 & 0x20) == 0)
    {
      goto LABEL_602;
    }

    goto LABEL_645;
  }

LABEL_637:
  *(v3 + 24) |= 0x10u;
  v214 = *(v3 + 592);
  if (!v214)
  {
    v215 = *(v3 + 8);
    if (v215)
    {
      v215 = *(v215 & 0xFFFFFFFFFFFFFFFELL);
    }

    v214 = MEMORY[0x277C97C20](v215);
    *(v3 + 592) = v214;
  }

  if (*(a2 + 592))
  {
    v216 = *(a2 + 592);
  }

  else
  {
    v216 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v214, v216);
  if ((v201 & 0x20) == 0)
  {
LABEL_602:
    if ((v201 & 0x40) == 0)
    {
      goto LABEL_603;
    }

    goto LABEL_653;
  }

LABEL_645:
  *(v3 + 24) |= 0x20u;
  v217 = *(v3 + 600);
  if (!v217)
  {
    v218 = *(v3 + 8);
    if (v218)
    {
      v218 = *(v218 & 0xFFFFFFFFFFFFFFFELL);
    }

    v217 = MEMORY[0x277C97C20](v218);
    *(v3 + 600) = v217;
  }

  if (*(a2 + 600))
  {
    v219 = *(a2 + 600);
  }

  else
  {
    v219 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v217, v219);
  if ((v201 & 0x40) == 0)
  {
LABEL_603:
    if ((v201 & 0x80) == 0)
    {
      goto LABEL_669;
    }

    goto LABEL_661;
  }

LABEL_653:
  *(v3 + 24) |= 0x40u;
  v220 = *(v3 + 608);
  if (!v220)
  {
    v221 = *(v3 + 8);
    if (v221)
    {
      v221 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
    }

    v220 = MEMORY[0x277C97C20](v221);
    *(v3 + 608) = v220;
  }

  if (*(a2 + 608))
  {
    v222 = *(a2 + 608);
  }

  else
  {
    v222 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v220, v222);
  if ((v201 & 0x80) != 0)
  {
LABEL_661:
    *(v3 + 24) |= 0x80u;
    v223 = *(v3 + 616);
    if (!v223)
    {
      v224 = *(v3 + 8);
      if (v224)
      {
        v224 = *(v224 & 0xFFFFFFFFFFFFFFFELL);
      }

      v223 = MEMORY[0x277C97C20](v224);
      *(v3 + 616) = v223;
    }

    if (*(a2 + 616))
    {
      v225 = *(a2 + 616);
    }

    else
    {
      v225 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v223, v225);
  }

LABEL_669:
  if ((v201 & 0xFF00) == 0)
  {
    goto LABEL_743;
  }

  if ((v201 & 0x100) != 0)
  {
    *(v3 + 24) |= 0x100u;
    v226 = *(v3 + 624);
    if (!v226)
    {
      v227 = *(v3 + 8);
      if (v227)
      {
        v227 = *(v227 & 0xFFFFFFFFFFFFFFFELL);
      }

      v226 = MEMORY[0x277C97C20](v227);
      *(v3 + 624) = v226;
    }

    if (*(a2 + 624))
    {
      v228 = *(a2 + 624);
    }

    else
    {
      v228 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v226, v228);
    if ((v201 & 0x200) == 0)
    {
LABEL_672:
      if ((v201 & 0x400) == 0)
      {
        goto LABEL_673;
      }

      goto LABEL_695;
    }
  }

  else if ((v201 & 0x200) == 0)
  {
    goto LABEL_672;
  }

  *(v3 + 24) |= 0x200u;
  v229 = *(v3 + 632);
  if (!v229)
  {
    v230 = *(v3 + 8);
    if (v230)
    {
      v230 = *(v230 & 0xFFFFFFFFFFFFFFFELL);
    }

    v229 = MEMORY[0x277C97C20](v230);
    *(v3 + 632) = v229;
  }

  if (*(a2 + 632))
  {
    v231 = *(a2 + 632);
  }

  else
  {
    v231 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v229, v231);
  if ((v201 & 0x400) == 0)
  {
LABEL_673:
    if ((v201 & 0x800) == 0)
    {
      goto LABEL_674;
    }

    goto LABEL_703;
  }

LABEL_695:
  *(v3 + 24) |= 0x400u;
  v232 = *(v3 + 640);
  if (!v232)
  {
    v233 = *(v3 + 8);
    if (v233)
    {
      v233 = *(v233 & 0xFFFFFFFFFFFFFFFELL);
    }

    v232 = MEMORY[0x277C97C20](v233);
    *(v3 + 640) = v232;
  }

  if (*(a2 + 640))
  {
    v234 = *(a2 + 640);
  }

  else
  {
    v234 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v232, v234);
  if ((v201 & 0x800) == 0)
  {
LABEL_674:
    if ((v201 & 0x1000) == 0)
    {
      goto LABEL_675;
    }

    goto LABEL_711;
  }

LABEL_703:
  *(v3 + 24) |= 0x800u;
  v235 = *(v3 + 648);
  if (!v235)
  {
    v236 = *(v3 + 8);
    if (v236)
    {
      v236 = *(v236 & 0xFFFFFFFFFFFFFFFELL);
    }

    v235 = MEMORY[0x277C97C20](v236);
    *(v3 + 648) = v235;
  }

  if (*(a2 + 648))
  {
    v237 = *(a2 + 648);
  }

  else
  {
    v237 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v235, v237);
  if ((v201 & 0x1000) == 0)
  {
LABEL_675:
    if ((v201 & 0x2000) == 0)
    {
      goto LABEL_676;
    }

    goto LABEL_719;
  }

LABEL_711:
  *(v3 + 24) |= 0x1000u;
  v238 = *(v3 + 656);
  if (!v238)
  {
    v239 = *(v3 + 8);
    if (v239)
    {
      v239 = *(v239 & 0xFFFFFFFFFFFFFFFELL);
    }

    v238 = MEMORY[0x277C97C20](v239);
    *(v3 + 656) = v238;
  }

  if (*(a2 + 656))
  {
    v240 = *(a2 + 656);
  }

  else
  {
    v240 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v238, v240);
  if ((v201 & 0x2000) == 0)
  {
LABEL_676:
    if ((v201 & 0x4000) == 0)
    {
      goto LABEL_677;
    }

    goto LABEL_727;
  }

LABEL_719:
  *(v3 + 24) |= 0x2000u;
  v241 = *(v3 + 664);
  if (!v241)
  {
    v242 = *(v3 + 8);
    if (v242)
    {
      v242 = *(v242 & 0xFFFFFFFFFFFFFFFELL);
    }

    v241 = MEMORY[0x277C97C60](v242);
    *(v3 + 664) = v241;
  }

  if (*(a2 + 664))
  {
    v243 = *(a2 + 664);
  }

  else
  {
    v243 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v241, v243);
  if ((v201 & 0x4000) == 0)
  {
LABEL_677:
    if ((v201 & 0x8000) == 0)
    {
      goto LABEL_743;
    }

    goto LABEL_735;
  }

LABEL_727:
  *(v3 + 24) |= 0x4000u;
  v244 = *(v3 + 672);
  if (!v244)
  {
    v245 = *(v3 + 8);
    if (v245)
    {
      v245 = *(v245 & 0xFFFFFFFFFFFFFFFELL);
    }

    v244 = MEMORY[0x277C97C60](v245);
    *(v3 + 672) = v244;
  }

  if (*(a2 + 672))
  {
    v246 = *(a2 + 672);
  }

  else
  {
    v246 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v244, v246);
  if ((v201 & 0x8000) != 0)
  {
LABEL_735:
    *(v3 + 24) |= 0x8000u;
    v247 = *(v3 + 680);
    if (!v247)
    {
      v248 = *(v3 + 8);
      if (v248)
      {
        v248 = *(v248 & 0xFFFFFFFFFFFFFFFELL);
      }

      v247 = MEMORY[0x277C97C60](v248);
      *(v3 + 680) = v247;
    }

    if (*(a2 + 680))
    {
      v249 = *(a2 + 680);
    }

    else
    {
      v249 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v247, v249);
  }

LABEL_743:
  if ((v201 & 0xFF0000) == 0)
  {
    goto LABEL_817;
  }

  if ((v201 & 0x10000) != 0)
  {
    *(v3 + 24) |= 0x10000u;
    v250 = *(v3 + 688);
    if (!v250)
    {
      v251 = *(v3 + 8);
      if (v251)
      {
        v251 = *(v251 & 0xFFFFFFFFFFFFFFFELL);
      }

      v250 = MEMORY[0x277C97C60](v251);
      *(v3 + 688) = v250;
    }

    if (*(a2 + 688))
    {
      v252 = *(a2 + 688);
    }

    else
    {
      v252 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v250, v252);
    if ((v201 & 0x20000) == 0)
    {
LABEL_746:
      if ((v201 & 0x40000) == 0)
      {
        goto LABEL_747;
      }

      goto LABEL_769;
    }
  }

  else if ((v201 & 0x20000) == 0)
  {
    goto LABEL_746;
  }

  *(v3 + 24) |= 0x20000u;
  v253 = *(v3 + 696);
  if (!v253)
  {
    v254 = *(v3 + 8);
    if (v254)
    {
      v254 = *(v254 & 0xFFFFFFFFFFFFFFFELL);
    }

    v253 = MEMORY[0x277C97C60](v254);
    *(v3 + 696) = v253;
  }

  if (*(a2 + 696))
  {
    v255 = *(a2 + 696);
  }

  else
  {
    v255 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v253, v255);
  if ((v201 & 0x40000) == 0)
  {
LABEL_747:
    if ((v201 & 0x80000) == 0)
    {
      goto LABEL_748;
    }

    goto LABEL_777;
  }

LABEL_769:
  *(v3 + 24) |= 0x40000u;
  v256 = *(v3 + 704);
  if (!v256)
  {
    v257 = *(v3 + 8);
    if (v257)
    {
      v257 = *(v257 & 0xFFFFFFFFFFFFFFFELL);
    }

    v256 = MEMORY[0x277C97C60](v257);
    *(v3 + 704) = v256;
  }

  if (*(a2 + 704))
  {
    v258 = *(a2 + 704);
  }

  else
  {
    v258 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v256, v258);
  if ((v201 & 0x80000) == 0)
  {
LABEL_748:
    if ((v201 & 0x100000) == 0)
    {
      goto LABEL_749;
    }

    goto LABEL_785;
  }

LABEL_777:
  *(v3 + 24) |= 0x80000u;
  v259 = *(v3 + 712);
  if (!v259)
  {
    v260 = *(v3 + 8);
    if (v260)
    {
      v260 = *(v260 & 0xFFFFFFFFFFFFFFFELL);
    }

    v259 = MEMORY[0x277C97C40](v260);
    *(v3 + 712) = v259;
  }

  if (*(a2 + 712))
  {
    v261 = *(a2 + 712);
  }

  else
  {
    v261 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v259, v261);
  if ((v201 & 0x100000) == 0)
  {
LABEL_749:
    if ((v201 & 0x200000) == 0)
    {
      goto LABEL_750;
    }

    goto LABEL_793;
  }

LABEL_785:
  *(v3 + 24) |= 0x100000u;
  v262 = *(v3 + 720);
  if (!v262)
  {
    v263 = *(v3 + 8);
    if (v263)
    {
      v263 = *(v263 & 0xFFFFFFFFFFFFFFFELL);
    }

    v262 = MEMORY[0x277C97C40](v263);
    *(v3 + 720) = v262;
  }

  if (*(a2 + 720))
  {
    v264 = *(a2 + 720);
  }

  else
  {
    v264 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v262, v264);
  if ((v201 & 0x200000) == 0)
  {
LABEL_750:
    if ((v201 & 0x400000) == 0)
    {
      goto LABEL_751;
    }

    goto LABEL_801;
  }

LABEL_793:
  *(v3 + 24) |= 0x200000u;
  v265 = *(v3 + 728);
  if (!v265)
  {
    v266 = *(v3 + 8);
    if (v266)
    {
      v266 = *(v266 & 0xFFFFFFFFFFFFFFFELL);
    }

    v265 = MEMORY[0x277C97C50](v266);
    *(v3 + 728) = v265;
  }

  if (*(a2 + 728))
  {
    v267 = *(a2 + 728);
  }

  else
  {
    v267 = MEMORY[0x277D80C10];
  }

  result = TSSSOS::SpecStringArchive::MergeFrom(v265, v267);
  if ((v201 & 0x400000) == 0)
  {
LABEL_751:
    if ((v201 & 0x800000) == 0)
    {
      goto LABEL_817;
    }

    goto LABEL_809;
  }

LABEL_801:
  *(v3 + 24) |= 0x400000u;
  v268 = *(v3 + 736);
  if (!v268)
  {
    v269 = *(v3 + 8);
    if (v269)
    {
      v269 = *(v269 & 0xFFFFFFFFFFFFFFFELL);
    }

    v268 = MEMORY[0x277C97C60](v269);
    *(v3 + 736) = v268;
  }

  if (*(a2 + 736))
  {
    v270 = *(a2 + 736);
  }

  else
  {
    v270 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v268, v270);
  if ((v201 & 0x800000) != 0)
  {
LABEL_809:
    *(v3 + 24) |= 0x800000u;
    v271 = *(v3 + 744);
    if (!v271)
    {
      v272 = *(v3 + 8);
      if (v272)
      {
        v272 = *(v272 & 0xFFFFFFFFFFFFFFFELL);
      }

      v271 = MEMORY[0x277C97C60](v272);
      *(v3 + 744) = v271;
    }

    if (*(a2 + 744))
    {
      v273 = *(a2 + 744);
    }

    else
    {
      v273 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v271, v273);
  }

LABEL_817:
  if (!HIBYTE(v201))
  {
    goto LABEL_891;
  }

  if ((v201 & 0x1000000) != 0)
  {
    *(v3 + 24) |= 0x1000000u;
    v274 = *(v3 + 752);
    if (!v274)
    {
      v275 = *(v3 + 8);
      if (v275)
      {
        v275 = *(v275 & 0xFFFFFFFFFFFFFFFELL);
      }

      v274 = MEMORY[0x277C97C40](v275);
      *(v3 + 752) = v274;
    }

    if (*(a2 + 752))
    {
      v276 = *(a2 + 752);
    }

    else
    {
      v276 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v274, v276);
    if ((v201 & 0x2000000) == 0)
    {
LABEL_820:
      if ((v201 & 0x4000000) == 0)
      {
        goto LABEL_821;
      }

      goto LABEL_843;
    }
  }

  else if ((v201 & 0x2000000) == 0)
  {
    goto LABEL_820;
  }

  *(v3 + 24) |= 0x2000000u;
  v277 = *(v3 + 760);
  if (!v277)
  {
    v278 = *(v3 + 8);
    if (v278)
    {
      v278 = *(v278 & 0xFFFFFFFFFFFFFFFELL);
    }

    v277 = MEMORY[0x277C97C40](v278);
    *(v3 + 760) = v277;
  }

  if (*(a2 + 760))
  {
    v279 = *(a2 + 760);
  }

  else
  {
    v279 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v277, v279);
  if ((v201 & 0x4000000) == 0)
  {
LABEL_821:
    if ((v201 & 0x8000000) == 0)
    {
      goto LABEL_822;
    }

    goto LABEL_851;
  }

LABEL_843:
  *(v3 + 24) |= 0x4000000u;
  v280 = *(v3 + 768);
  if (!v280)
  {
    v281 = *(v3 + 8);
    if (v281)
    {
      v281 = *(v281 & 0xFFFFFFFFFFFFFFFELL);
    }

    v280 = MEMORY[0x277C97C20](v281);
    *(v3 + 768) = v280;
  }

  if (*(a2 + 768))
  {
    v282 = *(a2 + 768);
  }

  else
  {
    v282 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v280, v282);
  if ((v201 & 0x8000000) == 0)
  {
LABEL_822:
    if ((v201 & 0x10000000) == 0)
    {
      goto LABEL_823;
    }

    goto LABEL_859;
  }

LABEL_851:
  *(v3 + 24) |= 0x8000000u;
  v283 = *(v3 + 776);
  if (!v283)
  {
    v284 = *(v3 + 8);
    if (v284)
    {
      v284 = *(v284 & 0xFFFFFFFFFFFFFFFELL);
    }

    v283 = MEMORY[0x277C97C20](v284);
    *(v3 + 776) = v283;
  }

  if (*(a2 + 776))
  {
    v285 = *(a2 + 776);
  }

  else
  {
    v285 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v283, v285);
  if ((v201 & 0x10000000) == 0)
  {
LABEL_823:
    if ((v201 & 0x20000000) == 0)
    {
      goto LABEL_824;
    }

    goto LABEL_867;
  }

LABEL_859:
  *(v3 + 24) |= 0x10000000u;
  v286 = *(v3 + 784);
  if (!v286)
  {
    v287 = *(v3 + 8);
    if (v287)
    {
      v287 = *(v287 & 0xFFFFFFFFFFFFFFFELL);
    }

    v286 = MEMORY[0x277C97C20](v287);
    *(v3 + 784) = v286;
  }

  if (*(a2 + 784))
  {
    v288 = *(a2 + 784);
  }

  else
  {
    v288 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v286, v288);
  if ((v201 & 0x20000000) == 0)
  {
LABEL_824:
    if ((v201 & 0x40000000) == 0)
    {
      goto LABEL_825;
    }

    goto LABEL_875;
  }

LABEL_867:
  *(v3 + 24) |= 0x20000000u;
  v289 = *(v3 + 792);
  if (!v289)
  {
    v290 = *(v3 + 8);
    if (v290)
    {
      v290 = *(v290 & 0xFFFFFFFFFFFFFFFELL);
    }

    v289 = MEMORY[0x277C97C60](v290);
    *(v3 + 792) = v289;
  }

  if (*(a2 + 792))
  {
    v291 = *(a2 + 792);
  }

  else
  {
    v291 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v289, v291);
  if ((v201 & 0x40000000) == 0)
  {
LABEL_825:
    if ((v201 & 0x80000000) == 0)
    {
      goto LABEL_891;
    }

    goto LABEL_883;
  }

LABEL_875:
  *(v3 + 24) |= 0x40000000u;
  v292 = *(v3 + 800);
  if (!v292)
  {
    v293 = *(v3 + 8);
    if (v293)
    {
      v293 = *(v293 & 0xFFFFFFFFFFFFFFFELL);
    }

    v292 = MEMORY[0x277C97C60](v293);
    *(v3 + 800) = v292;
  }

  if (*(a2 + 800))
  {
    v294 = *(a2 + 800);
  }

  else
  {
    v294 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v292, v294);
  if ((v201 & 0x80000000) != 0)
  {
LABEL_883:
    *(v3 + 24) |= 0x80000000;
    v295 = *(v3 + 808);
    if (!v295)
    {
      v296 = *(v3 + 8);
      if (v296)
      {
        v296 = *(v296 & 0xFFFFFFFFFFFFFFFELL);
      }

      v295 = MEMORY[0x277C97C60](v296);
      *(v3 + 808) = v295;
    }

    if (*(a2 + 808))
    {
      v297 = *(a2 + 808);
    }

    else
    {
      v297 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v295, v297);
  }

LABEL_891:
  v298 = *(a2 + 28);
  if (!v298)
  {
    goto LABEL_902;
  }

  if (v298)
  {
    *(v3 + 28) |= 1u;
    v302 = *(v3 + 816);
    if (!v302)
    {
      v303 = *(v3 + 8);
      if (v303)
      {
        v303 = *(v303 & 0xFFFFFFFFFFFFFFFELL);
      }

      v302 = MEMORY[0x277C97C40](v303);
      *(v3 + 816) = v302;
    }

    if (*(a2 + 816))
    {
      v304 = *(a2 + 816);
    }

    else
    {
      v304 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v302, v304);
    if ((v298 & 2) == 0)
    {
LABEL_894:
      if ((v298 & 4) == 0)
      {
        goto LABEL_895;
      }

      goto LABEL_1044;
    }
  }

  else if ((v298 & 2) == 0)
  {
    goto LABEL_894;
  }

  *(v3 + 28) |= 2u;
  v305 = *(v3 + 824);
  if (!v305)
  {
    v306 = *(v3 + 8);
    if (v306)
    {
      v306 = *(v306 & 0xFFFFFFFFFFFFFFFELL);
    }

    v305 = MEMORY[0x277C97C60](v306);
    *(v3 + 824) = v305;
  }

  if (*(a2 + 824))
  {
    v307 = *(a2 + 824);
  }

  else
  {
    v307 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v305, v307);
  if ((v298 & 4) == 0)
  {
LABEL_895:
    if ((v298 & 8) == 0)
    {
      goto LABEL_896;
    }

    goto LABEL_1045;
  }

LABEL_1044:
  *(v3 + 832) = *(a2 + 832);
  if ((v298 & 8) == 0)
  {
LABEL_896:
    if ((v298 & 0x10) == 0)
    {
      goto LABEL_897;
    }

    goto LABEL_1046;
  }

LABEL_1045:
  *(v3 + 833) = *(a2 + 833);
  if ((v298 & 0x10) == 0)
  {
LABEL_897:
    if ((v298 & 0x20) == 0)
    {
      goto LABEL_898;
    }

    goto LABEL_1047;
  }

LABEL_1046:
  *(v3 + 834) = *(a2 + 834);
  if ((v298 & 0x20) == 0)
  {
LABEL_898:
    if ((v298 & 0x40) == 0)
    {
      goto LABEL_899;
    }

LABEL_1048:
    *(v3 + 836) = *(a2 + 836);
    if ((v298 & 0x80) == 0)
    {
      goto LABEL_901;
    }

    goto LABEL_900;
  }

LABEL_1047:
  *(v3 + 835) = *(a2 + 835);
  if ((v298 & 0x40) != 0)
  {
    goto LABEL_1048;
  }

LABEL_899:
  if ((v298 & 0x80) != 0)
  {
LABEL_900:
    *(v3 + 837) = *(a2 + 837);
  }

LABEL_901:
  *(v3 + 28) |= v298;
LABEL_902:
  if ((v298 & 0xFF00) == 0)
  {
    goto LABEL_913;
  }

  if ((v298 & 0x100) != 0)
  {
    *(v3 + 838) = *(a2 + 838);
    if ((v298 & 0x200) == 0)
    {
LABEL_905:
      if ((v298 & 0x400) == 0)
      {
        goto LABEL_906;
      }

      goto LABEL_1052;
    }
  }

  else if ((v298 & 0x200) == 0)
  {
    goto LABEL_905;
  }

  *(v3 + 839) = *(a2 + 839);
  if ((v298 & 0x400) == 0)
  {
LABEL_906:
    if ((v298 & 0x800) == 0)
    {
      goto LABEL_907;
    }

    goto LABEL_1053;
  }

LABEL_1052:
  *(v3 + 840) = *(a2 + 840);
  if ((v298 & 0x800) == 0)
  {
LABEL_907:
    if ((v298 & 0x1000) == 0)
    {
      goto LABEL_908;
    }

    goto LABEL_1054;
  }

LABEL_1053:
  *(v3 + 841) = *(a2 + 841);
  if ((v298 & 0x1000) == 0)
  {
LABEL_908:
    if ((v298 & 0x2000) == 0)
    {
      goto LABEL_909;
    }

    goto LABEL_1055;
  }

LABEL_1054:
  *(v3 + 842) = *(a2 + 842);
  if ((v298 & 0x2000) == 0)
  {
LABEL_909:
    if ((v298 & 0x4000) == 0)
    {
      goto LABEL_910;
    }

LABEL_1056:
    *(v3 + 844) = *(a2 + 844);
    if ((v298 & 0x8000) == 0)
    {
      goto LABEL_912;
    }

    goto LABEL_911;
  }

LABEL_1055:
  *(v3 + 843) = *(a2 + 843);
  if ((v298 & 0x4000) != 0)
  {
    goto LABEL_1056;
  }

LABEL_910:
  if ((v298 & 0x8000) != 0)
  {
LABEL_911:
    *(v3 + 845) = *(a2 + 845);
  }

LABEL_912:
  *(v3 + 28) |= v298;
LABEL_913:
  if ((v298 & 0xFF0000) == 0)
  {
    goto LABEL_924;
  }

  if ((v298 & 0x10000) != 0)
  {
    *(v3 + 846) = *(a2 + 846);
    if ((v298 & 0x20000) == 0)
    {
LABEL_916:
      if ((v298 & 0x40000) == 0)
      {
        goto LABEL_917;
      }

      goto LABEL_1060;
    }
  }

  else if ((v298 & 0x20000) == 0)
  {
    goto LABEL_916;
  }

  *(v3 + 847) = *(a2 + 847);
  if ((v298 & 0x40000) == 0)
  {
LABEL_917:
    if ((v298 & 0x80000) == 0)
    {
      goto LABEL_918;
    }

    goto LABEL_1061;
  }

LABEL_1060:
  *(v3 + 848) = *(a2 + 848);
  if ((v298 & 0x80000) == 0)
  {
LABEL_918:
    if ((v298 & 0x100000) == 0)
    {
      goto LABEL_919;
    }

    goto LABEL_1062;
  }

LABEL_1061:
  *(v3 + 849) = *(a2 + 849);
  if ((v298 & 0x100000) == 0)
  {
LABEL_919:
    if ((v298 & 0x200000) == 0)
    {
      goto LABEL_920;
    }

    goto LABEL_1063;
  }

LABEL_1062:
  *(v3 + 850) = *(a2 + 850);
  if ((v298 & 0x200000) == 0)
  {
LABEL_920:
    if ((v298 & 0x400000) == 0)
    {
      goto LABEL_921;
    }

LABEL_1064:
    *(v3 + 852) = *(a2 + 852);
    if ((v298 & 0x800000) == 0)
    {
      goto LABEL_923;
    }

    goto LABEL_922;
  }

LABEL_1063:
  *(v3 + 851) = *(a2 + 851);
  if ((v298 & 0x400000) != 0)
  {
    goto LABEL_1064;
  }

LABEL_921:
  if ((v298 & 0x800000) != 0)
  {
LABEL_922:
    *(v3 + 853) = *(a2 + 853);
  }

LABEL_923:
  *(v3 + 28) |= v298;
LABEL_924:
  if (!HIBYTE(v298))
  {
    goto LABEL_934;
  }

  if ((v298 & 0x1000000) != 0)
  {
    *(v3 + 854) = *(a2 + 854);
    if ((v298 & 0x2000000) == 0)
    {
LABEL_927:
      if ((v298 & 0x4000000) == 0)
      {
        goto LABEL_928;
      }

      goto LABEL_1120;
    }
  }

  else if ((v298 & 0x2000000) == 0)
  {
    goto LABEL_927;
  }

  *(v3 + 855) = *(a2 + 855);
  if ((v298 & 0x4000000) == 0)
  {
LABEL_928:
    if ((v298 & 0x8000000) == 0)
    {
      goto LABEL_929;
    }

    goto LABEL_1121;
  }

LABEL_1120:
  *(v3 + 856) = *(a2 + 856);
  if ((v298 & 0x8000000) == 0)
  {
LABEL_929:
    if ((v298 & 0x10000000) == 0)
    {
      goto LABEL_930;
    }

    goto LABEL_1122;
  }

LABEL_1121:
  *(v3 + 857) = *(a2 + 857);
  if ((v298 & 0x10000000) == 0)
  {
LABEL_930:
    if ((v298 & 0x20000000) == 0)
    {
      goto LABEL_931;
    }

    goto LABEL_1123;
  }

LABEL_1122:
  *(v3 + 858) = *(a2 + 858);
  if ((v298 & 0x20000000) == 0)
  {
LABEL_931:
    if ((v298 & 0x40000000) == 0)
    {
      goto LABEL_932;
    }

LABEL_1124:
    *(v3 + 860) = *(a2 + 860);
    if ((v298 & 0x80000000) == 0)
    {
      goto LABEL_933;
    }

LABEL_1125:
    *(v3 + 861) = *(a2 + 861);
    goto LABEL_933;
  }

LABEL_1123:
  *(v3 + 859) = *(a2 + 859);
  if ((v298 & 0x40000000) != 0)
  {
    goto LABEL_1124;
  }

LABEL_932:
  if ((v298 & 0x80000000) != 0)
  {
    goto LABEL_1125;
  }

LABEL_933:
  *(v3 + 28) |= v298;
LABEL_934:
  v299 = *(a2 + 32);
  if (!v299)
  {
    goto LABEL_945;
  }

  if (v299)
  {
    *(v3 + 862) = *(a2 + 862);
    if ((v299 & 2) == 0)
    {
LABEL_937:
      if ((v299 & 4) == 0)
      {
        goto LABEL_938;
      }

      goto LABEL_1068;
    }
  }

  else if ((v299 & 2) == 0)
  {
    goto LABEL_937;
  }

  *(v3 + 863) = *(a2 + 863);
  if ((v299 & 4) == 0)
  {
LABEL_938:
    if ((v299 & 8) == 0)
    {
      goto LABEL_939;
    }

    goto LABEL_1069;
  }

LABEL_1068:
  *(v3 + 864) = *(a2 + 864);
  if ((v299 & 8) == 0)
  {
LABEL_939:
    if ((v299 & 0x10) == 0)
    {
      goto LABEL_940;
    }

    goto LABEL_1070;
  }

LABEL_1069:
  *(v3 + 865) = *(a2 + 865);
  if ((v299 & 0x10) == 0)
  {
LABEL_940:
    if ((v299 & 0x20) == 0)
    {
      goto LABEL_941;
    }

    goto LABEL_1071;
  }

LABEL_1070:
  *(v3 + 866) = *(a2 + 866);
  if ((v299 & 0x20) == 0)
  {
LABEL_941:
    if ((v299 & 0x40) == 0)
    {
      goto LABEL_942;
    }

LABEL_1072:
    *(v3 + 868) = *(a2 + 868);
    if ((v299 & 0x80) == 0)
    {
      goto LABEL_944;
    }

    goto LABEL_943;
  }

LABEL_1071:
  *(v3 + 867) = *(a2 + 867);
  if ((v299 & 0x40) != 0)
  {
    goto LABEL_1072;
  }

LABEL_942:
  if ((v299 & 0x80) != 0)
  {
LABEL_943:
    *(v3 + 869) = *(a2 + 869);
  }

LABEL_944:
  *(v3 + 32) |= v299;
LABEL_945:
  if ((v299 & 0xFF00) == 0)
  {
    goto LABEL_956;
  }

  if ((v299 & 0x100) != 0)
  {
    *(v3 + 870) = *(a2 + 870);
    if ((v299 & 0x200) == 0)
    {
LABEL_948:
      if ((v299 & 0x400) == 0)
      {
        goto LABEL_949;
      }

      goto LABEL_1076;
    }
  }

  else if ((v299 & 0x200) == 0)
  {
    goto LABEL_948;
  }

  *(v3 + 871) = *(a2 + 871);
  if ((v299 & 0x400) == 0)
  {
LABEL_949:
    if ((v299 & 0x800) == 0)
    {
      goto LABEL_950;
    }

    goto LABEL_1077;
  }

LABEL_1076:
  *(v3 + 872) = *(a2 + 872);
  if ((v299 & 0x800) == 0)
  {
LABEL_950:
    if ((v299 & 0x1000) == 0)
    {
      goto LABEL_951;
    }

    goto LABEL_1078;
  }

LABEL_1077:
  *(v3 + 873) = *(a2 + 873);
  if ((v299 & 0x1000) == 0)
  {
LABEL_951:
    if ((v299 & 0x2000) == 0)
    {
      goto LABEL_952;
    }

    goto LABEL_1079;
  }

LABEL_1078:
  *(v3 + 874) = *(a2 + 874);
  if ((v299 & 0x2000) == 0)
  {
LABEL_952:
    if ((v299 & 0x4000) == 0)
    {
      goto LABEL_953;
    }

LABEL_1080:
    *(v3 + 876) = *(a2 + 876);
    if ((v299 & 0x8000) == 0)
    {
      goto LABEL_955;
    }

    goto LABEL_954;
  }

LABEL_1079:
  *(v3 + 875) = *(a2 + 875);
  if ((v299 & 0x4000) != 0)
  {
    goto LABEL_1080;
  }

LABEL_953:
  if ((v299 & 0x8000) != 0)
  {
LABEL_954:
    *(v3 + 877) = *(a2 + 877);
  }

LABEL_955:
  *(v3 + 32) |= v299;
LABEL_956:
  if ((v299 & 0xFF0000) == 0)
  {
    goto LABEL_967;
  }

  if ((v299 & 0x10000) != 0)
  {
    *(v3 + 878) = *(a2 + 878);
    if ((v299 & 0x20000) == 0)
    {
LABEL_959:
      if ((v299 & 0x40000) == 0)
      {
        goto LABEL_960;
      }

      goto LABEL_1084;
    }
  }

  else if ((v299 & 0x20000) == 0)
  {
    goto LABEL_959;
  }

  *(v3 + 879) = *(a2 + 879);
  if ((v299 & 0x40000) == 0)
  {
LABEL_960:
    if ((v299 & 0x80000) == 0)
    {
      goto LABEL_961;
    }

    goto LABEL_1085;
  }

LABEL_1084:
  *(v3 + 880) = *(a2 + 880);
  if ((v299 & 0x80000) == 0)
  {
LABEL_961:
    if ((v299 & 0x100000) == 0)
    {
      goto LABEL_962;
    }

    goto LABEL_1086;
  }

LABEL_1085:
  *(v3 + 881) = *(a2 + 881);
  if ((v299 & 0x100000) == 0)
  {
LABEL_962:
    if ((v299 & 0x200000) == 0)
    {
      goto LABEL_963;
    }

    goto LABEL_1087;
  }

LABEL_1086:
  *(v3 + 882) = *(a2 + 882);
  if ((v299 & 0x200000) == 0)
  {
LABEL_963:
    if ((v299 & 0x400000) == 0)
    {
      goto LABEL_964;
    }

LABEL_1088:
    *(v3 + 884) = *(a2 + 884);
    if ((v299 & 0x800000) == 0)
    {
      goto LABEL_966;
    }

    goto LABEL_965;
  }

LABEL_1087:
  *(v3 + 883) = *(a2 + 883);
  if ((v299 & 0x400000) != 0)
  {
    goto LABEL_1088;
  }

LABEL_964:
  if ((v299 & 0x800000) != 0)
  {
LABEL_965:
    *(v3 + 885) = *(a2 + 885);
  }

LABEL_966:
  *(v3 + 32) |= v299;
LABEL_967:
  if (!HIBYTE(v299))
  {
    goto LABEL_977;
  }

  if ((v299 & 0x1000000) != 0)
  {
    *(v3 + 886) = *(a2 + 886);
    if ((v299 & 0x2000000) == 0)
    {
LABEL_970:
      if ((v299 & 0x4000000) == 0)
      {
        goto LABEL_971;
      }

      goto LABEL_1128;
    }
  }

  else if ((v299 & 0x2000000) == 0)
  {
    goto LABEL_970;
  }

  *(v3 + 887) = *(a2 + 887);
  if ((v299 & 0x4000000) == 0)
  {
LABEL_971:
    if ((v299 & 0x8000000) == 0)
    {
      goto LABEL_972;
    }

    goto LABEL_1129;
  }

LABEL_1128:
  *(v3 + 888) = *(a2 + 888);
  if ((v299 & 0x8000000) == 0)
  {
LABEL_972:
    if ((v299 & 0x10000000) == 0)
    {
      goto LABEL_973;
    }

    goto LABEL_1130;
  }

LABEL_1129:
  *(v3 + 889) = *(a2 + 889);
  if ((v299 & 0x10000000) == 0)
  {
LABEL_973:
    if ((v299 & 0x20000000) == 0)
    {
      goto LABEL_974;
    }

    goto LABEL_1131;
  }

LABEL_1130:
  *(v3 + 890) = *(a2 + 890);
  if ((v299 & 0x20000000) == 0)
  {
LABEL_974:
    if ((v299 & 0x40000000) == 0)
    {
      goto LABEL_975;
    }

LABEL_1132:
    *(v3 + 892) = *(a2 + 892);
    if ((v299 & 0x80000000) == 0)
    {
      goto LABEL_976;
    }

LABEL_1133:
    *(v3 + 893) = *(a2 + 893);
    goto LABEL_976;
  }

LABEL_1131:
  *(v3 + 891) = *(a2 + 891);
  if ((v299 & 0x40000000) != 0)
  {
    goto LABEL_1132;
  }

LABEL_975:
  if ((v299 & 0x80000000) != 0)
  {
    goto LABEL_1133;
  }

LABEL_976:
  *(v3 + 32) |= v299;
LABEL_977:
  v300 = *(a2 + 36);
  if (!v300)
  {
    goto LABEL_988;
  }

  if (v300)
  {
    *(v3 + 894) = *(a2 + 894);
    if ((v300 & 2) == 0)
    {
LABEL_980:
      if ((v300 & 4) == 0)
      {
        goto LABEL_981;
      }

      goto LABEL_1092;
    }
  }

  else if ((v300 & 2) == 0)
  {
    goto LABEL_980;
  }

  *(v3 + 895) = *(a2 + 895);
  if ((v300 & 4) == 0)
  {
LABEL_981:
    if ((v300 & 8) == 0)
    {
      goto LABEL_982;
    }

    goto LABEL_1093;
  }

LABEL_1092:
  *(v3 + 896) = *(a2 + 896);
  if ((v300 & 8) == 0)
  {
LABEL_982:
    if ((v300 & 0x10) == 0)
    {
      goto LABEL_983;
    }

    goto LABEL_1094;
  }

LABEL_1093:
  *(v3 + 897) = *(a2 + 897);
  if ((v300 & 0x10) == 0)
  {
LABEL_983:
    if ((v300 & 0x20) == 0)
    {
      goto LABEL_984;
    }

    goto LABEL_1095;
  }

LABEL_1094:
  *(v3 + 898) = *(a2 + 898);
  if ((v300 & 0x20) == 0)
  {
LABEL_984:
    if ((v300 & 0x40) == 0)
    {
      goto LABEL_985;
    }

LABEL_1096:
    *(v3 + 900) = *(a2 + 900);
    if ((v300 & 0x80) == 0)
    {
      goto LABEL_987;
    }

    goto LABEL_986;
  }

LABEL_1095:
  *(v3 + 899) = *(a2 + 899);
  if ((v300 & 0x40) != 0)
  {
    goto LABEL_1096;
  }

LABEL_985:
  if ((v300 & 0x80) != 0)
  {
LABEL_986:
    *(v3 + 901) = *(a2 + 901);
  }

LABEL_987:
  *(v3 + 36) |= v300;
LABEL_988:
  if ((v300 & 0xFF00) == 0)
  {
    goto LABEL_999;
  }

  if ((v300 & 0x100) != 0)
  {
    *(v3 + 902) = *(a2 + 902);
    if ((v300 & 0x200) == 0)
    {
LABEL_991:
      if ((v300 & 0x400) == 0)
      {
        goto LABEL_992;
      }

      goto LABEL_1100;
    }
  }

  else if ((v300 & 0x200) == 0)
  {
    goto LABEL_991;
  }

  *(v3 + 903) = *(a2 + 903);
  if ((v300 & 0x400) == 0)
  {
LABEL_992:
    if ((v300 & 0x800) == 0)
    {
      goto LABEL_993;
    }

    goto LABEL_1101;
  }

LABEL_1100:
  *(v3 + 904) = *(a2 + 904);
  if ((v300 & 0x800) == 0)
  {
LABEL_993:
    if ((v300 & 0x1000) == 0)
    {
      goto LABEL_994;
    }

    goto LABEL_1102;
  }

LABEL_1101:
  *(v3 + 905) = *(a2 + 905);
  if ((v300 & 0x1000) == 0)
  {
LABEL_994:
    if ((v300 & 0x2000) == 0)
    {
      goto LABEL_995;
    }

    goto LABEL_1103;
  }

LABEL_1102:
  *(v3 + 906) = *(a2 + 906);
  if ((v300 & 0x2000) == 0)
  {
LABEL_995:
    if ((v300 & 0x4000) == 0)
    {
      goto LABEL_996;
    }

LABEL_1104:
    *(v3 + 908) = *(a2 + 908);
    if ((v300 & 0x8000) == 0)
    {
      goto LABEL_998;
    }

    goto LABEL_997;
  }

LABEL_1103:
  *(v3 + 907) = *(a2 + 907);
  if ((v300 & 0x4000) != 0)
  {
    goto LABEL_1104;
  }

LABEL_996:
  if ((v300 & 0x8000) != 0)
  {
LABEL_997:
    *(v3 + 909) = *(a2 + 909);
  }

LABEL_998:
  *(v3 + 36) |= v300;
LABEL_999:
  if ((v300 & 0xFF0000) == 0)
  {
    goto LABEL_1010;
  }

  if ((v300 & 0x10000) != 0)
  {
    *(v3 + 910) = *(a2 + 910);
    if ((v300 & 0x20000) == 0)
    {
LABEL_1002:
      if ((v300 & 0x40000) == 0)
      {
        goto LABEL_1003;
      }

      goto LABEL_1108;
    }
  }

  else if ((v300 & 0x20000) == 0)
  {
    goto LABEL_1002;
  }

  *(v3 + 911) = *(a2 + 911);
  if ((v300 & 0x40000) == 0)
  {
LABEL_1003:
    if ((v300 & 0x80000) == 0)
    {
      goto LABEL_1004;
    }

    goto LABEL_1109;
  }

LABEL_1108:
  *(v3 + 912) = *(a2 + 912);
  if ((v300 & 0x80000) == 0)
  {
LABEL_1004:
    if ((v300 & 0x100000) == 0)
    {
      goto LABEL_1005;
    }

    goto LABEL_1110;
  }

LABEL_1109:
  *(v3 + 913) = *(a2 + 913);
  if ((v300 & 0x100000) == 0)
  {
LABEL_1005:
    if ((v300 & 0x200000) == 0)
    {
      goto LABEL_1006;
    }

    goto LABEL_1111;
  }

LABEL_1110:
  *(v3 + 914) = *(a2 + 914);
  if ((v300 & 0x200000) == 0)
  {
LABEL_1006:
    if ((v300 & 0x400000) == 0)
    {
      goto LABEL_1007;
    }

LABEL_1112:
    *(v3 + 916) = *(a2 + 916);
    if ((v300 & 0x800000) == 0)
    {
      goto LABEL_1009;
    }

    goto LABEL_1008;
  }

LABEL_1111:
  *(v3 + 915) = *(a2 + 915);
  if ((v300 & 0x400000) != 0)
  {
    goto LABEL_1112;
  }

LABEL_1007:
  if ((v300 & 0x800000) != 0)
  {
LABEL_1008:
    *(v3 + 917) = *(a2 + 917);
  }

LABEL_1009:
  *(v3 + 36) |= v300;
LABEL_1010:
  if (!HIBYTE(v300))
  {
    goto LABEL_1020;
  }

  if ((v300 & 0x1000000) != 0)
  {
    *(v3 + 918) = *(a2 + 918);
    if ((v300 & 0x2000000) == 0)
    {
LABEL_1013:
      if ((v300 & 0x4000000) == 0)
      {
        goto LABEL_1014;
      }

      goto LABEL_1136;
    }
  }

  else if ((v300 & 0x2000000) == 0)
  {
    goto LABEL_1013;
  }

  *(v3 + 919) = *(a2 + 919);
  if ((v300 & 0x4000000) == 0)
  {
LABEL_1014:
    if ((v300 & 0x8000000) == 0)
    {
      goto LABEL_1015;
    }

    goto LABEL_1137;
  }

LABEL_1136:
  *(v3 + 920) = *(a2 + 920);
  if ((v300 & 0x8000000) == 0)
  {
LABEL_1015:
    if ((v300 & 0x10000000) == 0)
    {
      goto LABEL_1016;
    }

    goto LABEL_1138;
  }

LABEL_1137:
  *(v3 + 921) = *(a2 + 921);
  if ((v300 & 0x10000000) == 0)
  {
LABEL_1016:
    if ((v300 & 0x20000000) == 0)
    {
      goto LABEL_1017;
    }

    goto LABEL_1139;
  }

LABEL_1138:
  *(v3 + 922) = *(a2 + 922);
  if ((v300 & 0x20000000) == 0)
  {
LABEL_1017:
    if ((v300 & 0x40000000) == 0)
    {
      goto LABEL_1018;
    }

LABEL_1140:
    *(v3 + 924) = *(a2 + 924);
    if ((v300 & 0x80000000) == 0)
    {
      goto LABEL_1019;
    }

LABEL_1141:
    *(v3 + 925) = *(a2 + 925);
    goto LABEL_1019;
  }

LABEL_1139:
  *(v3 + 923) = *(a2 + 923);
  if ((v300 & 0x40000000) != 0)
  {
    goto LABEL_1140;
  }

LABEL_1018:
  if ((v300 & 0x80000000) != 0)
  {
    goto LABEL_1141;
  }

LABEL_1019:
  *(v3 + 36) |= v300;
LABEL_1020:
  v301 = *(a2 + 40);
  if ((v301 & 0xF) == 0)
  {
    return result;
  }

  if (v301)
  {
    *(v3 + 926) = *(a2 + 926);
    if ((v301 & 2) == 0)
    {
LABEL_1023:
      if ((v301 & 4) == 0)
      {
        goto LABEL_1024;
      }

LABEL_1116:
      *(v3 + 928) = *(a2 + 928);
      if ((v301 & 8) == 0)
      {
        goto LABEL_1026;
      }

      goto LABEL_1025;
    }
  }

  else if ((v301 & 2) == 0)
  {
    goto LABEL_1023;
  }

  *(v3 + 927) = *(a2 + 927);
  if ((v301 & 4) != 0)
  {
    goto LABEL_1116;
  }

LABEL_1024:
  if ((v301 & 8) != 0)
  {
LABEL_1025:
    *(v3 + 929) = *(a2 + 929);
  }

LABEL_1026:
  *(v3 + 40) |= v301;
  return result;
}