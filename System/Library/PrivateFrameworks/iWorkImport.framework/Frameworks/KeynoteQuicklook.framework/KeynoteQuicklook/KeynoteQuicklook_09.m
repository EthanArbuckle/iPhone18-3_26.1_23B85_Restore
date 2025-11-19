unsigned __int8 *sub_275E44B80(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 48);
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v5, v7, a3);
  }

  if ((*(a1 + 29) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(a1 + 904);
    *a2 = 16;
    a2[1] = v11;
    a2 += 2;
  }

  if ((*(a1 + 16) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 56);
    *a2 = 26;
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v12, v14, a3);
  }

  if ((*(a1 + 29) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(a1 + 905);
    *a2 = 32;
    a2[1] = v18;
    a2 += 2;
  }

  if ((*(a1 + 16) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(a1 + 64);
    *a2 = 42;
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v19, v21, a3);
  }

  if ((*(a1 + 29) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(a1 + 906);
    *a2 = 48;
    a2[1] = v25;
    a2 += 2;
  }

  if ((*(a1 + 16) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v26, v28, a3);
  }

  if ((*(a1 + 29) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(a1 + 907);
    *a2 = 64;
    a2[1] = v32;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v33, v35, a3);
  }

  if ((*(a1 + 29) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(a1 + 908);
    *a2 = 80;
    a2[1] = v39;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(a1 + 88);
    *a2 = 90;
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

  if (*(a1 + 30))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(a1 + 909);
    *a2 = 96;
    a2[1] = v46;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v47 = *(a1 + 96);
    *a2 = 106;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v47, v49, a3);
  }

  if ((*(a1 + 30) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v53 = *(a1 + 910);
    *a2 = 112;
    a2[1] = v53;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v54, v56, a3);
  }

  if ((*(a1 + 30) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v60 = *(a1 + 911);
    *a2 = 384;
    a2[2] = v60;
    a2 += 3;
  }

  if (*(a1 + 17))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v61, v63, a3);
  }

  if ((*(a1 + 30) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(a1 + 912);
    *a2 = 400;
    a2[2] = v67;
    a2 += 3;
  }

  if ((*(a1 + 17) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v68, v70, a3);
  }

  if ((*(a1 + 30) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v74 = *(a1 + 913);
    *a2 = 416;
    a2[2] = v74;
    a2 += 3;
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v75, v77, a3);
  }

  if ((*(a1 + 30) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v81 = *(a1 + 914);
    *a2 = 432;
    a2[2] = v81;
    a2 += 3;
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v82, v84, a3);
  }

  if ((*(a1 + 30) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v88 = *(a1 + 915);
    *a2 = 448;
    a2[2] = v88;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v89, v91, a3);
  }

  if ((*(a1 + 30) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v95 = *(a1 + 916);
    *a2 = 464;
    a2[2] = v95;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v96, v98, a3);
  }

  if (*(a1 + 31))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v102 = *(a1 + 917);
    *a2 = 480;
    a2[2] = v102;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v103, v105, a3);
  }

  if ((*(a1 + 31) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v109 = *(a1 + 918);
    *a2 = 496;
    a2[2] = v109;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v110, v112, a3);
  }

  if ((*(a1 + 31) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v116 = *(a1 + 919);
    *a2 = 640;
    a2[2] = v116;
    a2 += 3;
  }

  if (*(a1 + 18))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v117 = *(a1 + 176);
    *a2 = 650;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v117, v119, a3);
  }

  if ((*(a1 + 31) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v123 = *(a1 + 920);
    *a2 = 656;
    a2[2] = v123;
    a2 += 3;
  }

  if ((*(a1 + 18) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v124 = *(a1 + 184);
    *a2 = 666;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v124, v126, a3);
  }

  if ((*(a1 + 31) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v130 = *(a1 + 921);
    *a2 = 672;
    a2[2] = v130;
    a2 += 3;
  }

  if ((*(a1 + 18) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v131 = *(a1 + 192);
    *a2 = 682;
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v131, v133, a3);
  }

  if ((*(a1 + 31) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v137 = *(a1 + 922);
    *a2 = 688;
    a2[2] = v137;
    a2 += 3;
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v138 = *(a1 + 200);
    *a2 = 698;
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

  if ((*(a1 + 31) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v144 = *(a1 + 923);
    *a2 = 704;
    a2[2] = v144;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v145, v147, a3);
  }

  if ((*(a1 + 28) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v151 = *(a1 + 924);
    *a2 = 720;
    a2[2] = v151;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v152, v154, a3);
  }

  if (*(a1 + 32))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v158 = *(a1 + 925);
    *a2 = 736;
    a2[2] = v158;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v159, v161, a3);
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v165 = *(a1 + 926);
    *a2 = 752;
    a2[2] = v165;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v166, v168, a3);
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v172 = *(a1 + 927);
    *a2 = 896;
    a2[2] = v172;
    a2 += 3;
  }

  if (*(a1 + 19))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v173, v175, a3);
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v179 = *(a1 + 928);
    *a2 = 912;
    a2[2] = v179;
    a2 += 3;
  }

  if ((*(a1 + 19) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v180, v182, a3);
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v186 = *(a1 + 929);
    *a2 = 928;
    a2[2] = v186;
    a2 += 3;
  }

  if ((*(a1 + 19) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v187, v189, a3);
  }

  if ((*(a1 + 32) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v193 = *(a1 + 930);
    *a2 = 944;
    a2[2] = v193;
    a2 += 3;
  }

  if ((*(a1 + 19) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v194, v196, a3);
  }

  if ((*(a1 + 32) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v200 = *(a1 + 931);
    *a2 = 960;
    a2[2] = v200;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v201, v203, a3);
  }

  if ((*(a1 + 32) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v207 = *(a1 + 932);
    *a2 = 976;
    a2[2] = v207;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v208, v210, a3);
  }

  if (*(a1 + 33))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v214 = *(a1 + 933);
    *a2 = 992;
    a2[2] = v214;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v215, v217, a3);
  }

  if ((*(a1 + 33) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v221 = *(a1 + 934);
    *a2 = 1008;
    a2[2] = v221;
    a2 += 3;
  }

  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v222, v224, a3);
  }

  if ((*(a1 + 33) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v228 = *(a1 + 935);
    *a2 = 1152;
    a2[2] = v228;
    a2 += 3;
  }

  if (*(a1 + 20))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v229, v231, a3);
  }

  if ((*(a1 + 33) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v235 = *(a1 + 936);
    *a2 = 1168;
    a2[2] = v235;
    a2 += 3;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v236, v238, a3);
  }

  if ((*(a1 + 33) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v242 = *(a1 + 937);
    *a2 = 1184;
    a2[2] = v242;
    a2 += 3;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v243, v245, a3);
  }

  if ((*(a1 + 33) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v249 = *(a1 + 938);
    *a2 = 1200;
    a2[2] = v249;
    a2 += 3;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v250, v252, a3);
  }

  if ((*(a1 + 33) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v256 = *(a1 + 939);
    *a2 = 1216;
    a2[2] = v256;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v257 = *(a1 + 336);
    *a2 = 1226;
    v258 = *(v257 + 5);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v257, v259, a3);
  }

  if ((*(a1 + 33) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v263 = *(a1 + 940);
    *a2 = 1232;
    a2[2] = v263;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v264 = *(a1 + 344);
    *a2 = 1242;
    v265 = *(v264 + 5);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v264, v266, a3);
  }

  if (*(a1 + 34))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v270 = *(a1 + 941);
    *a2 = 1248;
    a2[2] = v270;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v271, v273, a3);
  }

  if ((*(a1 + 34) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v277 = *(a1 + 942);
    *a2 = 1264;
    a2[2] = v277;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v278, v280, a3);
  }

  if ((*(a1 + 34) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v284 = *(a1 + 943);
    *a2 = 1408;
    a2[2] = v284;
    a2 += 3;
  }

  if (*(a1 + 21))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v285 = *(a1 + 368);
    *a2 = 1418;
    v286 = *(v285 + 5);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v285, v287, a3);
  }

  if ((*(a1 + 34) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v291 = *(a1 + 944);
    *a2 = 1424;
    a2[2] = v291;
    a2 += 3;
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v292, v294, a3);
  }

  if ((*(a1 + 34) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v298 = *(a1 + 945);
    *a2 = 1440;
    a2[2] = v298;
    a2 += 3;
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v299, v301, a3);
  }

  if ((*(a1 + 34) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v305 = *(a1 + 946);
    *a2 = 1456;
    a2[2] = v305;
    a2 += 3;
  }

  if ((*(a1 + 21) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v306, v308, a3);
  }

  if ((*(a1 + 34) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v312 = *(a1 + 947);
    *a2 = 1472;
    a2[2] = v312;
    a2 += 3;
  }

  if ((*(a1 + 21) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v313, v315, a3);
  }

  if ((*(a1 + 34) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v319 = *(a1 + 948);
    *a2 = 1488;
    a2[2] = v319;
    a2 += 3;
  }

  if ((*(a1 + 21) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v320, v322, a3);
  }

  if (*(a1 + 35))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v326 = *(a1 + 949);
    *a2 = 1504;
    a2[2] = v326;
    a2 += 3;
  }

  if ((*(a1 + 21) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v327, v329, a3);
  }

  if ((*(a1 + 35) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v333 = *(a1 + 950);
    *a2 = 1520;
    a2[2] = v333;
    a2 += 3;
  }

  if ((*(a1 + 21) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v334, v336, a3);
  }

  if ((*(a1 + 35) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v340 = *(a1 + 951);
    *a2 = 1664;
    a2[2] = v340;
    a2 += 3;
  }

  if (*(a1 + 22))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v341, v343, a3);
  }

  if ((*(a1 + 35) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v347 = *(a1 + 952);
    *a2 = 1680;
    a2[2] = v347;
    a2 += 3;
  }

  if ((*(a1 + 22) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v348, v350, a3);
  }

  if ((*(a1 + 35) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v354 = *(a1 + 953);
    *a2 = 1696;
    a2[2] = v354;
    a2 += 3;
  }

  if ((*(a1 + 22) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v355, v357, a3);
  }

  if ((*(a1 + 35) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v361 = *(a1 + 954);
    *a2 = 1712;
    a2[2] = v361;
    a2 += 3;
  }

  if ((*(a1 + 22) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v362, v364, a3);
  }

  if ((*(a1 + 35) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v368 = *(a1 + 955);
    *a2 = 1728;
    a2[2] = v368;
    a2 += 3;
  }

  if ((*(a1 + 22) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v369, v371, a3);
  }

  if ((*(a1 + 32) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v375 = *(a1 + 956);
    *a2 = 1744;
    a2[2] = v375;
    a2 += 3;
  }

  if ((*(a1 + 22) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v376, v378, a3);
  }

  if (*(a1 + 36))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v382 = *(a1 + 957);
    *a2 = 1760;
    a2[2] = v382;
    a2 += 3;
  }

  if ((*(a1 + 22) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v383, v385, a3);
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v389 = *(a1 + 958);
    *a2 = 1776;
    a2[2] = v389;
    a2 += 3;
  }

  if ((*(a1 + 22) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v390, v392, a3);
  }

  if ((*(a1 + 36) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v396 = *(a1 + 959);
    *a2 = 1920;
    a2[2] = v396;
    a2 += 3;
  }

  if (*(a1 + 23))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v397, v399, a3);
  }

  if ((*(a1 + 36) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v403 = *(a1 + 960);
    *a2 = 1936;
    a2[2] = v403;
    a2 += 3;
  }

  if ((*(a1 + 23) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v404, v406, a3);
  }

  if ((*(a1 + 36) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v410 = *(a1 + 961);
    *a2 = 1952;
    a2[2] = v410;
    a2 += 3;
  }

  if ((*(a1 + 23) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v411, v413, a3);
  }

  if ((*(a1 + 36) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v417 = *(a1 + 962);
    *a2 = 1968;
    a2[2] = v417;
    a2 += 3;
  }

  if ((*(a1 + 23) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v418, v420, a3);
  }

  if ((*(a1 + 36) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v424 = *(a1 + 963);
    *a2 = 1984;
    a2[2] = v424;
    a2 += 3;
  }

  if ((*(a1 + 23) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v425, v427, a3);
  }

  if ((*(a1 + 36) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v431 = *(a1 + 964);
    *a2 = 2000;
    a2[2] = v431;
    a2 += 3;
  }

  if ((*(a1 + 23) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v432, v434, a3);
  }

  if (*(a1 + 37))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v438 = *(a1 + 965);
    *a2 = 2016;
    a2[2] = v438;
    a2 += 3;
  }

  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v439, v441, a3);
  }

  if ((*(a1 + 37) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v445 = *(a1 + 966);
    *a2 = 2032;
    a2[2] = v445;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v446, v448, a3);
  }

  if ((*(a1 + 37) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v452 = *(a1 + 967);
    *a2 = 2176;
    a2[2] = v452;
    a2 += 3;
  }

  if (*(a1 + 24))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v453, v455, a3);
  }

  if ((*(a1 + 37) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v459 = *(a1 + 968);
    *a2 = 2192;
    a2[2] = v459;
    a2 += 3;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v460, v462, a3);
  }

  if ((*(a1 + 37) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v466 = *(a1 + 969);
    *a2 = 2208;
    a2[2] = v466;
    a2 += 3;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v467, v469, a3);
  }

  if ((*(a1 + 37) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v473 = *(a1 + 970);
    *a2 = 2224;
    a2[2] = v473;
    a2 += 3;
  }

  if ((*(a1 + 24) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v474, v476, a3);
  }

  if ((*(a1 + 37) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v480 = *(a1 + 971);
    *a2 = 2240;
    a2[2] = v480;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v481, v483, a3);
  }

  if ((*(a1 + 37) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v487 = *(a1 + 972);
    *a2 = 2256;
    a2[2] = v487;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v488, v490, a3);
  }

  if (*(a1 + 38))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v494 = *(a1 + 973);
    *a2 = 2272;
    a2[2] = v494;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v495, v497, a3);
  }

  if ((*(a1 + 38) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v501 = *(a1 + 974);
    *a2 = 2288;
    a2[2] = v501;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v502, v504, a3);
  }

  if ((*(a1 + 38) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v508 = *(a1 + 975);
    *a2 = 2432;
    a2[2] = v508;
    a2 += 3;
  }

  if (*(a1 + 25))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v509, v511, a3);
  }

  if ((*(a1 + 38) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v515 = *(a1 + 976);
    *a2 = 2448;
    a2[2] = v515;
    a2 += 3;
  }

  if ((*(a1 + 25) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v516, v518, a3);
  }

  if ((*(a1 + 38) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v522 = *(a1 + 977);
    *a2 = 2464;
    a2[2] = v522;
    a2 += 3;
  }

  if ((*(a1 + 25) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v523, v525, a3);
  }

  if ((*(a1 + 38) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v529 = *(a1 + 978);
    *a2 = 2480;
    a2[2] = v529;
    a2 += 3;
  }

  if ((*(a1 + 25) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v530, v532, a3);
  }

  if ((*(a1 + 38) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v536 = *(a1 + 979);
    *a2 = 2496;
    a2[2] = v536;
    a2 += 3;
  }

  if ((*(a1 + 25) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v537, v539, a3);
  }

  if ((*(a1 + 38) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      v543 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    else
    {
      v543 = a2;
    }

    v544 = *(a1 + 980);
    *v543 = 2512;
    *(v543 + 2) = v544;
    a2 = (v543 + 3);
  }

  if ((*(a1 + 25) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v545, v547, a3);
  }

  if (*(a1 + 39))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v551 = *(a1 + 981);
    *a2 = 2528;
    a2[2] = v551;
    a2 += 3;
  }

  if ((*(a1 + 25) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v552, v554, a3);
  }

  if ((*(a1 + 39) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v558 = *(a1 + 982);
    *a2 = 2544;
    a2[2] = v558;
    a2 += 3;
  }

  if ((*(a1 + 25) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v559, v561, a3);
  }

  if ((*(a1 + 39) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v565 = *(a1 + 983);
    *a2 = 2688;
    a2[2] = v565;
    a2 += 3;
  }

  if (*(a1 + 26))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v566, v568, a3);
  }

  if ((*(a1 + 39) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v572 = *(a1 + 984);
    *a2 = 2704;
    a2[2] = v572;
    a2 += 3;
  }

  if ((*(a1 + 26) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v573, v575, a3);
  }

  if ((*(a1 + 39) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v579 = *(a1 + 985);
    *a2 = 2720;
    a2[2] = v579;
    a2 += 3;
  }

  if ((*(a1 + 26) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v580, v582, a3);
  }

  if ((*(a1 + 39) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v586 = *(a1 + 986);
    *a2 = 2736;
    a2[2] = v586;
    a2 += 3;
  }

  if ((*(a1 + 26) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v587, v589, a3);
  }

  if ((*(a1 + 39) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v593 = *(a1 + 987);
    *a2 = 2752;
    a2[2] = v593;
    a2 += 3;
  }

  if ((*(a1 + 26) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v594, v596, a3);
  }

  if ((*(a1 + 36) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v600 = *(a1 + 988);
    *a2 = 2768;
    a2[2] = v600;
    a2 += 3;
  }

  if ((*(a1 + 26) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v601, v603, a3);
  }

  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v607 = *(a1 + 989);
    *a2 = 2784;
    a2[2] = v607;
    a2 += 3;
  }

  if ((*(a1 + 26) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v608, v610, a3);
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v614 = *(a1 + 990);
    *a2 = 2800;
    a2[2] = v614;
    a2 += 3;
  }

  if ((*(a1 + 26) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v615, v617, a3);
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v621 = *(a1 + 991);
    *a2 = 2944;
    a2[2] = v621;
    a2 += 3;
  }

  if (*(a1 + 27))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v622, v624, a3);
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v628 = *(a1 + 992);
    *a2 = 2960;
    a2[2] = v628;
    a2 += 3;
  }

  if ((*(a1 + 27) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v629, v631, a3);
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v635 = *(a1 + 993);
    *a2 = 2976;
    a2[2] = v635;
    a2 += 3;
  }

  if ((*(a1 + 27) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v636, v638, a3);
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v642 = *(a1 + 994);
    *a2 = 2992;
    a2[2] = v642;
    a2 += 3;
  }

  if ((*(a1 + 27) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v643, v645, a3);
  }

  if ((*(a1 + 40) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v649 = *(a1 + 995);
    *a2 = 3008;
    a2[2] = v649;
    a2 += 3;
  }

  if ((*(a1 + 27) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v650, v652, a3);
  }

  if ((*(a1 + 40) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v656 = *(a1 + 996);
    *a2 = 3024;
    a2[2] = v656;
    a2 += 3;
  }

  if ((*(a1 + 27) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v657, v659, a3);
  }

  if (*(a1 + 41))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v663 = *(a1 + 997);
    *a2 = 3040;
    a2[2] = v663;
    a2 += 3;
  }

  if ((*(a1 + 27) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v664, v666, a3);
  }

  if ((*(a1 + 41) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v670 = *(a1 + 998);
    *a2 = 3056;
    a2[2] = v670;
    a2 += 3;
  }

  if ((*(a1 + 24) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v671, v673, a3);
  }

  if ((*(a1 + 41) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v677 = *(a1 + 999);
    *a2 = 3200;
    a2[2] = v677;
    a2 += 3;
  }

  if (*(a1 + 28))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v678, v680, a3);
  }

  if ((*(a1 + 41) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v684 = *(a1 + 1000);
    *a2 = 3216;
    a2[2] = v684;
    a2 += 3;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v685, v687, a3);
  }

  if ((*(a1 + 41) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v691 = *(a1 + 1001);
    *a2 = 3232;
    a2[2] = v691;
    a2 += 3;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v692 = *(a1 + 832);
    *a2 = 3242;
    v693 = *(v692 + 5);
    if (v693 > 0x7F)
    {
      a2[2] = v693 | 0x80;
      v695 = v693 >> 7;
      if (v693 >> 14)
      {
        v694 = a2 + 4;
        do
        {
          *(v694 - 1) = v695 | 0x80;
          v696 = v695 >> 7;
          ++v694;
          v697 = v695 >> 14;
          v695 >>= 7;
        }

        while (v697);
        *(v694 - 1) = v696;
      }

      else
      {
        a2[3] = v695;
        v694 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v693;
      v694 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v692, v694, a3);
  }

  if ((*(a1 + 41) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v698 = *(a1 + 1002);
    *a2 = 3248;
    a2[2] = v698;
    a2 += 3;
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v699 = *(a1 + 840);
    *a2 = 3258;
    v700 = *(v699 + 5);
    if (v700 > 0x7F)
    {
      a2[2] = v700 | 0x80;
      v702 = v700 >> 7;
      if (v700 >> 14)
      {
        v701 = a2 + 4;
        do
        {
          *(v701 - 1) = v702 | 0x80;
          v703 = v702 >> 7;
          ++v701;
          v704 = v702 >> 14;
          v702 >>= 7;
        }

        while (v704);
        *(v701 - 1) = v703;
      }

      else
      {
        a2[3] = v702;
        v701 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v700;
      v701 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v699, v701, a3);
  }

  if ((*(a1 + 41) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v705 = *(a1 + 1003);
    *a2 = 3264;
    a2[2] = v705;
    a2 += 3;
  }

  if ((*(a1 + 28) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v706 = *(a1 + 848);
    *a2 = 3274;
    v707 = *(v706 + 5);
    if (v707 > 0x7F)
    {
      a2[2] = v707 | 0x80;
      v709 = v707 >> 7;
      if (v707 >> 14)
      {
        v708 = a2 + 4;
        do
        {
          *(v708 - 1) = v709 | 0x80;
          v710 = v709 >> 7;
          ++v708;
          v711 = v709 >> 14;
          v709 >>= 7;
        }

        while (v711);
        *(v708 - 1) = v710;
      }

      else
      {
        a2[3] = v709;
        v708 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v707;
      v708 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v706, v708, a3);
  }

  if ((*(a1 + 41) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v712 = *(a1 + 1004);
    *a2 = 3280;
    a2[2] = v712;
    a2 += 3;
  }

  if ((*(a1 + 28) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v713 = *(a1 + 856);
    *a2 = 3290;
    v714 = *(v713 + 5);
    if (v714 > 0x7F)
    {
      a2[2] = v714 | 0x80;
      v716 = v714 >> 7;
      if (v714 >> 14)
      {
        v715 = a2 + 4;
        do
        {
          *(v715 - 1) = v716 | 0x80;
          v717 = v716 >> 7;
          ++v715;
          v718 = v716 >> 14;
          v716 >>= 7;
        }

        while (v718);
        *(v715 - 1) = v717;
      }

      else
      {
        a2[3] = v716;
        v715 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v714;
      v715 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v713, v715, a3);
  }

  if (*(a1 + 42))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v719 = *(a1 + 1005);
    *a2 = 3296;
    a2[2] = v719;
    a2 += 3;
  }

  if ((*(a1 + 28) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v720 = *(a1 + 864);
    *a2 = 3306;
    v721 = *(v720 + 5);
    if (v721 > 0x7F)
    {
      a2[2] = v721 | 0x80;
      v723 = v721 >> 7;
      if (v721 >> 14)
      {
        v722 = a2 + 4;
        do
        {
          *(v722 - 1) = v723 | 0x80;
          v724 = v723 >> 7;
          ++v722;
          v725 = v723 >> 14;
          v723 >>= 7;
        }

        while (v725);
        *(v722 - 1) = v724;
      }

      else
      {
        a2[3] = v723;
        v722 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v721;
      v722 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v720, v722, a3);
  }

  if ((*(a1 + 42) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v726 = *(a1 + 1006);
    *a2 = 3312;
    a2[2] = v726;
    a2 += 3;
  }

  if ((*(a1 + 28) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v727 = *(a1 + 872);
    *a2 = 3322;
    v728 = *(v727 + 5);
    if (v728 > 0x7F)
    {
      a2[2] = v728 | 0x80;
      v730 = v728 >> 7;
      if (v728 >> 14)
      {
        v729 = a2 + 4;
        do
        {
          *(v729 - 1) = v730 | 0x80;
          v731 = v730 >> 7;
          ++v729;
          v732 = v730 >> 14;
          v730 >>= 7;
        }

        while (v732);
        *(v729 - 1) = v731;
      }

      else
      {
        a2[3] = v730;
        v729 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v728;
      v729 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v727, v729, a3);
  }

  if ((*(a1 + 42) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v733 = *(a1 + 1007);
    *a2 = 3456;
    a2[2] = v733;
    a2 += 3;
  }

  if (*(a1 + 29))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v734 = *(a1 + 880);
    *a2 = 3466;
    v735 = *(v734 + 5);
    if (v735 > 0x7F)
    {
      a2[2] = v735 | 0x80;
      v737 = v735 >> 7;
      if (v735 >> 14)
      {
        v736 = a2 + 4;
        do
        {
          *(v736 - 1) = v737 | 0x80;
          v738 = v737 >> 7;
          ++v736;
          v739 = v737 >> 14;
          v737 >>= 7;
        }

        while (v739);
        *(v736 - 1) = v738;
      }

      else
      {
        a2[3] = v737;
        v736 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v735;
      v736 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v734, v736, a3);
  }

  if ((*(a1 + 42) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v740 = *(a1 + 1008);
    *a2 = 3472;
    a2[2] = v740;
    a2 += 3;
  }

  if ((*(a1 + 29) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v741 = *(a1 + 888);
    *a2 = 3482;
    v742 = *(v741 + 5);
    if (v742 > 0x7F)
    {
      a2[2] = v742 | 0x80;
      v744 = v742 >> 7;
      if (v742 >> 14)
      {
        v743 = a2 + 4;
        do
        {
          *(v743 - 1) = v744 | 0x80;
          v745 = v744 >> 7;
          ++v743;
          v746 = v744 >> 14;
          v744 >>= 7;
        }

        while (v746);
        *(v743 - 1) = v745;
      }

      else
      {
        a2[3] = v744;
        v743 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v742;
      v743 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v741, v743, a3);
  }

  if ((*(a1 + 42) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v747 = *(a1 + 1009);
    *a2 = 3488;
    a2[2] = v747;
    a2 += 3;
  }

  if ((*(a1 + 29) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v748 = *(a1 + 896);
    *a2 = 3498;
    v749 = *(v748 + 5);
    if (v749 > 0x7F)
    {
      a2[2] = v749 | 0x80;
      v751 = v749 >> 7;
      if (v749 >> 14)
      {
        v750 = a2 + 4;
        do
        {
          *(v750 - 1) = v751 | 0x80;
          v752 = v751 >> 7;
          ++v750;
          v753 = v751 >> 14;
          v751 >>= 7;
        }

        while (v753);
        *(v750 - 1) = v752;
      }

      else
      {
        a2[3] = v751;
        v750 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v749;
      v750 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v748, v750, a3);
  }

  if ((*(a1 + 42) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v754 = *(a1 + 1010);
    *a2 = 3504;
    a2[2] = v754;
    a2 += 3;
  }

  v755 = *(a1 + 8);
  if ((v755 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v755 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E4A2C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 48));
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
    v5 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 56));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v38 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 64));
    v3 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_368;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v39 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 72));
  v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_369;
  }

LABEL_368:
  v40 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 80));
  v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_370;
  }

LABEL_369:
  v41 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 88));
  v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_370:
  v42 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 96));
  v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 104));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v43 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 112));
    v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_374;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v44 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 120));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_375;
  }

LABEL_374:
  v45 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 128));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_376;
  }

LABEL_375:
  v46 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 136));
  v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_377;
  }

LABEL_376:
  v47 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 144));
  v3 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_378;
  }

LABEL_377:
  v48 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 152));
  v3 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_378:
  v49 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 160));
  v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 168));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v50 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 176));
    v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_382;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v51 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 184));
  v3 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_383;
  }

LABEL_382:
  v52 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 192));
  v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_384;
  }

LABEL_383:
  v53 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 200));
  v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_385;
  }

LABEL_384:
  v54 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 208));
  v3 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_386;
  }

LABEL_385:
  v55 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 216));
  v3 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_386:
  v56 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 224));
  v3 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 232));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v2))
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v108 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 240));
    v3 += v108 + ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_449;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v109 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 248));
  v3 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_450;
  }

LABEL_449:
  v110 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 256));
  v3 += v110 + ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_451;
  }

LABEL_450:
  v111 = TSSSOS::SpecColorArchive::ByteSizeLong(*(a1 + 264));
  v3 += v111 + ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_452;
  }

LABEL_451:
  v112 = TSSSOS::SpecColorArchive::ByteSizeLong(*(a1 + 272));
  v3 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_453:
    v114 = TSSSOS::SpecColorArchive::ByteSizeLong(*(a1 + 288));
    v3 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_454;
  }

LABEL_452:
  v113 = TSSSOS::SpecColorArchive::ByteSizeLong(*(a1 + 280));
  v3 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_453;
  }

LABEL_43:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_454:
  v115 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 296));
  v3 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_44:
  v9 = *(a1 + 20);
  if (!v9)
  {
    goto LABEL_54;
  }

  if (v9)
  {
    v57 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 304));
    v3 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 2) == 0)
    {
LABEL_47:
      if ((v9 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_390;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_47;
  }

  v58 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 312));
  v3 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 4) == 0)
  {
LABEL_48:
    if ((v9 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_391;
  }

LABEL_390:
  v59 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 320));
  v3 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 8) == 0)
  {
LABEL_49:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_392;
  }

LABEL_391:
  v60 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 328));
  v3 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10) == 0)
  {
LABEL_50:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_393;
  }

LABEL_392:
  v61 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 336));
  v3 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20) == 0)
  {
LABEL_51:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_394;
  }

LABEL_393:
  v62 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 344));
  v3 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40) == 0)
  {
LABEL_52:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_394:
  v63 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 352));
  v3 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80) != 0)
  {
LABEL_53:
    v10 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 360));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_54:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v9 & 0x100) != 0)
  {
    v64 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 368));
    v3 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x200) == 0)
    {
LABEL_57:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_398;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v65 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 376));
  v3 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400) == 0)
  {
LABEL_58:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_399;
  }

LABEL_398:
  v66 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 384));
  v3 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800) == 0)
  {
LABEL_59:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_400;
  }

LABEL_399:
  v67 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 392));
  v3 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x1000) == 0)
  {
LABEL_60:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_401;
  }

LABEL_400:
  v68 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 400));
  v3 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x2000) == 0)
  {
LABEL_61:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_402;
  }

LABEL_401:
  v69 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 408));
  v3 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x4000) == 0)
  {
LABEL_62:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_402:
  v70 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 416));
  v3 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x8000) != 0)
  {
LABEL_63:
    v11 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 424));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_64:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_74;
  }

  if ((v9 & 0x10000) != 0)
  {
    v71 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 432));
    v3 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x20000) == 0)
    {
LABEL_67:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_406;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v72 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 440));
  v3 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40000) == 0)
  {
LABEL_68:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_407;
  }

LABEL_406:
  v73 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 448));
  v3 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80000) == 0)
  {
LABEL_69:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_408;
  }

LABEL_407:
  v74 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 456));
  v3 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x100000) == 0)
  {
LABEL_70:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_409;
  }

LABEL_408:
  v75 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 464));
  v3 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x200000) == 0)
  {
LABEL_71:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_410;
  }

LABEL_409:
  v76 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 472));
  v3 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400000) == 0)
  {
LABEL_72:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_410:
  v77 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 480));
  v3 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800000) != 0)
  {
LABEL_73:
    v12 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 488));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_74:
  if (!HIBYTE(v9))
  {
    goto LABEL_83;
  }

  if ((v9 & 0x1000000) != 0)
  {
    v116 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 496));
    v3 += v116 + ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x2000000) == 0)
    {
LABEL_77:
      if ((v9 & 0x4000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_457;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_77;
  }

  v117 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 504));
  v3 += v117 + ((9 * (__clz(v117 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x4000000) == 0)
  {
LABEL_78:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_458;
  }

LABEL_457:
  v118 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 512));
  v3 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x8000000) == 0)
  {
LABEL_79:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_459;
  }

LABEL_458:
  v119 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 520));
  v3 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10000000) == 0)
  {
LABEL_80:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_460;
  }

LABEL_459:
  v120 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 528));
  v3 += v120 + ((9 * (__clz(v120 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20000000) == 0)
  {
LABEL_81:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_461:
    v122 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 544));
    v3 += v122 + ((9 * (__clz(v122 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_462;
  }

LABEL_460:
  v121 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 536));
  v3 += v121 + ((9 * (__clz(v121 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_461;
  }

LABEL_82:
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_462:
  v123 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 552));
  v3 += v123 + ((9 * (__clz(v123 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_83:
  v13 = *(a1 + 24);
  if (!v13)
  {
    goto LABEL_93;
  }

  if (v13)
  {
    v78 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 560));
    v3 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 2) == 0)
    {
LABEL_86:
      if ((v13 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_414;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_86;
  }

  v79 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 568));
  v3 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 4) == 0)
  {
LABEL_87:
    if ((v13 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_415;
  }

LABEL_414:
  v80 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 576));
  v3 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 8) == 0)
  {
LABEL_88:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_416;
  }

LABEL_415:
  v81 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 584));
  v3 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x10) == 0)
  {
LABEL_89:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_417;
  }

LABEL_416:
  v82 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 592));
  v3 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x20) == 0)
  {
LABEL_90:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_418;
  }

LABEL_417:
  v83 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 600));
  v3 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40) == 0)
  {
LABEL_91:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_418:
  v84 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 608));
  v3 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x80) != 0)
  {
LABEL_92:
    v14 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 616));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_93:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v13 & 0x100) != 0)
  {
    v85 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 624));
    v3 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x200) == 0)
    {
LABEL_96:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_422;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_96;
  }

  v86 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 632));
  v3 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x400) == 0)
  {
LABEL_97:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_423;
  }

LABEL_422:
  v87 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 640));
  v3 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x800) == 0)
  {
LABEL_98:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_424;
  }

LABEL_423:
  v88 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 648));
  v3 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x1000) == 0)
  {
LABEL_99:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_425;
  }

LABEL_424:
  v89 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 656));
  v3 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x2000) == 0)
  {
LABEL_100:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_426;
  }

LABEL_425:
  v90 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 664));
  v3 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x4000) == 0)
  {
LABEL_101:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_426:
  v91 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 672));
  v3 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x8000) != 0)
  {
LABEL_102:
    v15 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 680));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_103:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_113;
  }

  if ((v13 & 0x10000) != 0)
  {
    v92 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 688));
    v3 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x20000) == 0)
    {
LABEL_106:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_430;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  v93 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 696));
  v3 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40000) == 0)
  {
LABEL_107:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_431;
  }

LABEL_430:
  v94 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 704));
  v3 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x80000) == 0)
  {
LABEL_108:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_432;
  }

LABEL_431:
  v95 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 712));
  v3 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x100000) == 0)
  {
LABEL_109:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_433;
  }

LABEL_432:
  v96 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 720));
  v3 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x200000) == 0)
  {
LABEL_110:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_434;
  }

LABEL_433:
  v97 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 728));
  v3 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x400000) == 0)
  {
LABEL_111:
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_434:
  v98 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 736));
  v3 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x800000) != 0)
  {
LABEL_112:
    v16 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 744));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_113:
  if (!HIBYTE(v13))
  {
    goto LABEL_122;
  }

  if ((v13 & 0x1000000) != 0)
  {
    v124 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 752));
    v3 += v124 + ((9 * (__clz(v124 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x2000000) == 0)
    {
LABEL_116:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_465;
    }
  }

  else if ((v13 & 0x2000000) == 0)
  {
    goto LABEL_116;
  }

  v125 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 760));
  v3 += v125 + ((9 * (__clz(v125 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x4000000) == 0)
  {
LABEL_117:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_466;
  }

LABEL_465:
  v126 = TSSSOS::SpecColorArchive::ByteSizeLong(*(a1 + 768));
  v3 += v126 + ((9 * (__clz(v126 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x8000000) == 0)
  {
LABEL_118:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_467;
  }

LABEL_466:
  v127 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 776));
  v3 += v127 + ((9 * (__clz(v127 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x10000000) == 0)
  {
LABEL_119:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_468;
  }

LABEL_467:
  v128 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 784));
  v3 += v128 + ((9 * (__clz(v128 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x20000000) == 0)
  {
LABEL_120:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_121;
    }

LABEL_469:
    v130 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 800));
    v3 += v130 + ((9 * (__clz(v130 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_470;
  }

LABEL_468:
  v129 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 792));
  v3 += v129 + ((9 * (__clz(v129 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_469;
  }

LABEL_121:
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

LABEL_470:
  v131 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 808));
  v3 += v131 + ((9 * (__clz(v131 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_122:
  v17 = *(a1 + 28);
  if (!v17)
  {
    goto LABEL_132;
  }

  if (v17)
  {
    v99 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 816));
    v3 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 2) == 0)
    {
LABEL_125:
      if ((v17 & 4) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_438;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_125;
  }

  v100 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 824));
  v3 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 4) == 0)
  {
LABEL_126:
    if ((v17 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_439;
  }

LABEL_438:
  v101 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 832));
  v3 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 8) == 0)
  {
LABEL_127:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_440;
  }

LABEL_439:
  v102 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 840));
  v3 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x10) == 0)
  {
LABEL_128:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_441;
  }

LABEL_440:
  v103 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 848));
  v3 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x20) == 0)
  {
LABEL_129:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_442;
  }

LABEL_441:
  v104 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 856));
  v3 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x40) == 0)
  {
LABEL_130:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_131;
  }

LABEL_442:
  v105 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 864));
  v3 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x80) != 0)
  {
LABEL_131:
    v18 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 872));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_132:
  if ((v17 & 0xFF00) == 0)
  {
    goto LABEL_138;
  }

  if ((v17 & 0x100) == 0)
  {
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_135;
    }

LABEL_445:
    v107 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 888));
    v3 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  v106 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 880));
  v3 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x200) != 0)
  {
    goto LABEL_445;
  }

LABEL_135:
  if ((v17 & 0x400) != 0)
  {
LABEL_136:
    v19 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 896));
    v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_137:
  v20.i64[0] = 0x200000002;
  v20.i64[1] = 0x200000002;
  v3 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v17), xmmword_275E79260), v20)) + ((v17 >> 14) & 2);
LABEL_138:
  if ((v17 & 0xFF0000) != 0)
  {
    v21 = v3 + (HIWORD(v17) & 2) + ((v17 >> 15) & 2);
    if ((v17 & 0x40000) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x80000) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x100000) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x200000) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x400000) != 0)
    {
      v21 += 3;
    }

    if ((v17 & 0x800000) != 0)
    {
      v3 = v21 + 3;
    }

    else
    {
      v3 = v21;
    }
  }

  if (HIBYTE(v17))
  {
    v22 = v3 + 3;
    if ((v17 & 0x1000000) == 0)
    {
      v22 = v3;
    }

    if ((v17 & 0x2000000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x4000000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x8000000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x10000000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x20000000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x40000000) != 0)
    {
      v22 += 3;
    }

    if ((v17 & 0x80000000) == 0)
    {
      v3 = v22;
    }

    else
    {
      v3 = v22 + 3;
    }
  }

  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = v3 + 3;
    if ((v23 & 1) == 0)
    {
      v24 = v3;
    }

    if ((v23 & 2) != 0)
    {
      v24 += 3;
    }

    if ((v23 & 4) != 0)
    {
      v24 += 3;
    }

    if ((v23 & 8) != 0)
    {
      v24 += 3;
    }

    if ((v23 & 0x10) != 0)
    {
      v24 += 3;
    }

    if ((v23 & 0x20) != 0)
    {
      v24 += 3;
    }

    if ((v23 & 0x40) != 0)
    {
      v24 += 3;
    }

    if ((v23 & 0x80) != 0)
    {
      v3 = v24 + 3;
    }

    else
    {
      v3 = v24;
    }
  }

  if ((v23 & 0xFF00) != 0)
  {
    v25 = v3 + 3;
    if ((v23 & 0x100) == 0)
    {
      v25 = v3;
    }

    if ((v23 & 0x200) != 0)
    {
      v25 += 3;
    }

    if ((v23 & 0x400) != 0)
    {
      v25 += 3;
    }

    if ((v23 & 0x800) != 0)
    {
      v25 += 3;
    }

    if ((v23 & 0x1000) != 0)
    {
      v25 += 3;
    }

    if ((v23 & 0x2000) != 0)
    {
      v25 += 3;
    }

    if ((v23 & 0x4000) != 0)
    {
      v25 += 3;
    }

    if ((v23 & 0x8000) != 0)
    {
      v3 = v25 + 3;
    }

    else
    {
      v3 = v25;
    }
  }

  if ((v23 & 0xFF0000) != 0)
  {
    v26 = v3 + 3;
    if ((v23 & 0x10000) == 0)
    {
      v26 = v3;
    }

    if ((v23 & 0x20000) != 0)
    {
      v26 += 3;
    }

    if ((v23 & 0x40000) != 0)
    {
      v26 += 3;
    }

    if ((v23 & 0x80000) != 0)
    {
      v26 += 3;
    }

    if ((v23 & 0x100000) != 0)
    {
      v26 += 3;
    }

    if ((v23 & 0x200000) != 0)
    {
      v26 += 3;
    }

    if ((v23 & 0x400000) != 0)
    {
      v26 += 3;
    }

    if ((v23 & 0x800000) != 0)
    {
      v3 = v26 + 3;
    }

    else
    {
      v3 = v26;
    }
  }

  if (HIBYTE(v23))
  {
    v27 = v3 + 3;
    if ((v23 & 0x1000000) == 0)
    {
      v27 = v3;
    }

    if ((v23 & 0x2000000) != 0)
    {
      v27 += 3;
    }

    if ((v23 & 0x4000000) != 0)
    {
      v27 += 3;
    }

    if ((v23 & 0x8000000) != 0)
    {
      v27 += 3;
    }

    if ((v23 & 0x10000000) != 0)
    {
      v27 += 3;
    }

    if ((v23 & 0x20000000) != 0)
    {
      v27 += 3;
    }

    if ((v23 & 0x40000000) != 0)
    {
      v27 += 3;
    }

    if (v23 >= 0)
    {
      v3 = v27;
    }

    else
    {
      v3 = v27 + 3;
    }
  }

  v28 = *(a1 + 36);
  if (v28)
  {
    v29 = v3 + 3;
    if ((v28 & 1) == 0)
    {
      v29 = v3;
    }

    if ((v28 & 2) != 0)
    {
      v29 += 3;
    }

    if ((v28 & 4) != 0)
    {
      v29 += 3;
    }

    if ((v28 & 8) != 0)
    {
      v29 += 3;
    }

    if ((v28 & 0x10) != 0)
    {
      v29 += 3;
    }

    if ((v28 & 0x20) != 0)
    {
      v29 += 3;
    }

    if ((v28 & 0x40) != 0)
    {
      v29 += 3;
    }

    if ((v28 & 0x80) != 0)
    {
      v3 = v29 + 3;
    }

    else
    {
      v3 = v29;
    }
  }

  if ((v28 & 0xFF00) != 0)
  {
    v30 = v3 + 3;
    if ((v28 & 0x100) == 0)
    {
      v30 = v3;
    }

    if ((v28 & 0x200) != 0)
    {
      v30 += 3;
    }

    if ((v28 & 0x400) != 0)
    {
      v30 += 3;
    }

    if ((v28 & 0x800) != 0)
    {
      v30 += 3;
    }

    if ((v28 & 0x1000) != 0)
    {
      v30 += 3;
    }

    if ((v28 & 0x2000) != 0)
    {
      v30 += 3;
    }

    if ((v28 & 0x4000) != 0)
    {
      v30 += 3;
    }

    if ((v28 & 0x8000) != 0)
    {
      v3 = v30 + 3;
    }

    else
    {
      v3 = v30;
    }
  }

  if ((v28 & 0xFF0000) != 0)
  {
    v31 = v3 + 3;
    if ((v28 & 0x10000) == 0)
    {
      v31 = v3;
    }

    if ((v28 & 0x20000) != 0)
    {
      v31 += 3;
    }

    if ((v28 & 0x40000) != 0)
    {
      v31 += 3;
    }

    if ((v28 & 0x80000) != 0)
    {
      v31 += 3;
    }

    if ((v28 & 0x100000) != 0)
    {
      v31 += 3;
    }

    if ((v28 & 0x200000) != 0)
    {
      v31 += 3;
    }

    if ((v28 & 0x400000) != 0)
    {
      v31 += 3;
    }

    if ((v28 & 0x800000) != 0)
    {
      v3 = v31 + 3;
    }

    else
    {
      v3 = v31;
    }
  }

  if (HIBYTE(v28))
  {
    v32 = v3 + 3;
    if ((v28 & 0x1000000) == 0)
    {
      v32 = v3;
    }

    if ((v28 & 0x2000000) != 0)
    {
      v32 += 3;
    }

    if ((v28 & 0x4000000) != 0)
    {
      v32 += 3;
    }

    if ((v28 & 0x8000000) != 0)
    {
      v32 += 3;
    }

    if ((v28 & 0x10000000) != 0)
    {
      v32 += 3;
    }

    if ((v28 & 0x20000000) != 0)
    {
      v32 += 3;
    }

    if ((v28 & 0x40000000) != 0)
    {
      v32 += 3;
    }

    if (v28 >= 0)
    {
      v3 = v32;
    }

    else
    {
      v3 = v32 + 3;
    }
  }

  v33 = *(a1 + 40);
  if (v33)
  {
    v34 = v3 + 3;
    if ((v33 & 1) == 0)
    {
      v34 = v3;
    }

    if ((v33 & 2) != 0)
    {
      v34 += 3;
    }

    if ((v33 & 4) != 0)
    {
      v34 += 3;
    }

    if ((v33 & 8) != 0)
    {
      v34 += 3;
    }

    if ((v33 & 0x10) != 0)
    {
      v34 += 3;
    }

    if ((v33 & 0x20) != 0)
    {
      v34 += 3;
    }

    if ((v33 & 0x40) != 0)
    {
      v34 += 3;
    }

    if ((v33 & 0x80) != 0)
    {
      v3 = v34 + 3;
    }

    else
    {
      v3 = v34;
    }
  }

  if ((v33 & 0xFF00) != 0)
  {
    v35 = v3 + 3;
    if ((v33 & 0x100) == 0)
    {
      v35 = v3;
    }

    if ((v33 & 0x200) != 0)
    {
      v35 += 3;
    }

    if ((v33 & 0x400) != 0)
    {
      v35 += 3;
    }

    if ((v33 & 0x800) != 0)
    {
      v35 += 3;
    }

    if ((v33 & 0x1000) != 0)
    {
      v35 += 3;
    }

    if ((v33 & 0x2000) != 0)
    {
      v35 += 3;
    }

    if ((v33 & 0x4000) != 0)
    {
      v35 += 3;
    }

    if ((v33 & 0x8000) != 0)
    {
      v3 = v35 + 3;
    }

    else
    {
      v3 = v35;
    }
  }

  if ((v33 & 0x3F0000) != 0)
  {
    v36 = v3 + 3;
    if ((v33 & 0x10000) == 0)
    {
      v36 = v3;
    }

    if ((v33 & 0x20000) != 0)
    {
      v36 += 3;
    }

    if ((v33 & 0x40000) != 0)
    {
      v36 += 3;
    }

    if ((v33 & 0x80000) != 0)
    {
      v36 += 3;
    }

    if ((v33 & 0x100000) != 0)
    {
      v36 += 3;
    }

    if ((v33 & 0x200000) != 0)
    {
      v3 = v36 + 3;
    }

    else
    {
      v3 = v36;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 44);
  }

  else
  {
    *(a1 + 44) = v3;
    return v3;
  }
}

uint64_t sub_275E4BEDC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D88C8, 0);
  if (v4)
  {

    return sub_275E4BF84(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E4BF84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = MEMORY[0x277D80C10];
  if (v5)
  {
    *(v3 + 16) |= 1u;
    v7 = *(v3 + 48);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C8F140](v8);
      *(v3 + 48) = v7;
    }

    if (*(a2 + 48))
    {
      v9 = *(a2 + 48);
    }

    else
    {
      v9 = v6;
    }

    result = TSSSOS::SpecStringArchive::MergeFrom(v7, v9);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(v3 + 16) |= 2u;
  v10 = *(v3 + 56);
  if (!v10)
  {
    v11 = *(v3 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C8F140](v11);
    *(v3 + 56) = v10;
  }

  if (*(a2 + 56))
  {
    v12 = *(a2 + 56);
  }

  else
  {
    v12 = v6;
  }

  result = TSSSOS::SpecStringArchive::MergeFrom(v10, v12);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

LABEL_25:
  *(v3 + 16) |= 4u;
  v13 = *(v3 + 64);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x277C8F100](v14);
    *(v3 + 64) = v13;
  }

  if (*(a2 + 64))
  {
    v15 = *(a2 + 64);
  }

  else
  {
    v15 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v13, v15);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 72);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C8F150](v17);
      *(v3 + 72) = v16;
    }

    if (*(a2 + 72))
    {
      v18 = *(a2 + 72);
    }

    else
    {
      v18 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v16, v18);
  }

LABEL_41:
  v19 = MEMORY[0x277D80C08];
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_43;
    }

LABEL_54:
    *(v3 + 16) |= 0x20u;
    v23 = *(v3 + 88);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C8F130](v24);
      *(v3 + 88) = v23;
    }

    if (*(a2 + 88))
    {
      v25 = *(a2 + 88);
    }

    else
    {
      v25 = v19;
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v23, v25);
    if ((v5 & 0x40) == 0)
    {
LABEL_44:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }

    goto LABEL_62;
  }

  *(v3 + 16) |= 0x10u;
  v20 = *(v3 + 80);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x277C8F130](v21);
    *(v3 + 80) = v20;
  }

  if (*(a2 + 80))
  {
    v22 = *(a2 + 80);
  }

  else
  {
    v22 = v19;
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v20, v22);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_43:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_62:
  *(v3 + 16) |= 0x40u;
  v26 = *(v3 + 96);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = MEMORY[0x277C8F130](v27);
    *(v3 + 96) = v26;
  }

  if (*(a2 + 96))
  {
    v28 = *(a2 + 96);
  }

  else
  {
    v28 = v19;
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v26, v28);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v29 = *(v3 + 104);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C8F130](v30);
      *(v3 + 104) = v29;
    }

    if (*(a2 + 104))
    {
      v31 = *(a2 + 104);
    }

    else
    {
      v31 = v19;
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v29, v31);
  }

LABEL_78:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v32 = *(v3 + 112);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C8F130](v33);
      *(v3 + 112) = v32;
    }

    if (*(a2 + 112))
    {
      v34 = *(a2 + 112);
    }

    else
    {
      v34 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v32, v34);
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
  v35 = *(v3 + 120);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x277C8F130](v36);
    *(v3 + 120) = v35;
  }

  if (*(a2 + 120))
  {
    v37 = *(a2 + 120);
  }

  else
  {
    v37 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v35, v37);
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
  v38 = *(v3 + 128);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x277C8F130](v39);
    *(v3 + 128) = v38;
  }

  if (*(a2 + 128))
  {
    v40 = *(a2 + 128);
  }

  else
  {
    v40 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v38, v40);
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
  v41 = *(v3 + 136);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x277C8F130](v42);
    *(v3 + 136) = v41;
  }

  if (*(a2 + 136))
  {
    v43 = *(a2 + 136);
  }

  else
  {
    v43 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v41, v43);
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
  v44 = *(v3 + 144);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C8F130](v45);
    *(v3 + 144) = v44;
  }

  if (*(a2 + 144))
  {
    v46 = *(a2 + 144);
  }

  else
  {
    v46 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v44, v46);
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
  v47 = *(v3 + 152);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x277C8F130](v48);
    *(v3 + 152) = v47;
  }

  if (*(a2 + 152))
  {
    v49 = *(a2 + 152);
  }

  else
  {
    v49 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v47, v49);
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
  v50 = *(v3 + 160);
  if (!v50)
  {
    v51 = *(v3 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C8F130](v51);
    *(v3 + 160) = v50;
  }

  if (*(a2 + 160))
  {
    v52 = *(a2 + 160);
  }

  else
  {
    v52 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v50, v52);
  if ((v5 & 0x8000) != 0)
  {
LABEL_144:
    *(v3 + 16) |= 0x8000u;
    v53 = *(v3 + 168);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C8F130](v54);
      *(v3 + 168) = v53;
    }

    if (*(a2 + 168))
    {
      v55 = *(a2 + 168);
    }

    else
    {
      v55 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v53, v55);
  }

LABEL_152:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_226;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v56 = *(v3 + 176);
    if (!v56)
    {
      v57 = *(v3 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = MEMORY[0x277C8F130](v57);
      *(v3 + 176) = v56;
    }

    if (*(a2 + 176))
    {
      v58 = *(a2 + 176);
    }

    else
    {
      v58 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v56, v58);
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
  v59 = *(v3 + 184);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x277C8F130](v60);
    *(v3 + 184) = v59;
  }

  if (*(a2 + 184))
  {
    v61 = *(a2 + 184);
  }

  else
  {
    v61 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v59, v61);
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
  v62 = *(v3 + 192);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x277C8F130](v63);
    *(v3 + 192) = v62;
  }

  if (*(a2 + 192))
  {
    v64 = *(a2 + 192);
  }

  else
  {
    v64 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v62, v64);
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
  v65 = *(v3 + 200);
  if (!v65)
  {
    v66 = *(v3 + 8);
    if (v66)
    {
      v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
    }

    v65 = MEMORY[0x277C8F130](v66);
    *(v3 + 200) = v65;
  }

  if (*(a2 + 200))
  {
    v67 = *(a2 + 200);
  }

  else
  {
    v67 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v65, v67);
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
  v68 = *(v3 + 208);
  if (!v68)
  {
    v69 = *(v3 + 8);
    if (v69)
    {
      v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
    }

    v68 = MEMORY[0x277C8F150](v69);
    *(v3 + 208) = v68;
  }

  if (*(a2 + 208))
  {
    v70 = *(a2 + 208);
  }

  else
  {
    v70 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v68, v70);
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
  v71 = *(v3 + 216);
  if (!v71)
  {
    v72 = *(v3 + 8);
    if (v72)
    {
      v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
    }

    v71 = MEMORY[0x277C8F130](v72);
    *(v3 + 216) = v71;
  }

  if (*(a2 + 216))
  {
    v73 = *(a2 + 216);
  }

  else
  {
    v73 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v71, v73);
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
  v74 = *(v3 + 224);
  if (!v74)
  {
    v75 = *(v3 + 8);
    if (v75)
    {
      v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
    }

    v74 = MEMORY[0x277C8F110](v75);
    *(v3 + 224) = v74;
  }

  if (*(a2 + 224))
  {
    v76 = *(a2 + 224);
  }

  else
  {
    v76 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v74, v76);
  if ((v5 & 0x800000) != 0)
  {
LABEL_218:
    *(v3 + 16) |= 0x800000u;
    v77 = *(v3 + 232);
    if (!v77)
    {
      v78 = *(v3 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x277C8F140](v78);
      *(v3 + 232) = v77;
    }

    if (*(a2 + 232))
    {
      v79 = *(a2 + 232);
    }

    else
    {
      v79 = MEMORY[0x277D80C10];
    }

    result = TSSSOS::SpecStringArchive::MergeFrom(v77, v79);
  }

LABEL_226:
  if (!HIBYTE(v5))
  {
    goto LABEL_301;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v80 = *(v3 + 240);
    if (!v80)
    {
      v81 = *(v3 + 8);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = MEMORY[0x277C8F140](v81);
      *(v3 + 240) = v80;
    }

    if (*(a2 + 240))
    {
      v82 = *(a2 + 240);
    }

    else
    {
      v82 = MEMORY[0x277D80C10];
    }

    result = TSSSOS::SpecStringArchive::MergeFrom(v80, v82);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_229:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_255;
      }

      goto LABEL_247;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_229;
  }

  *(v3 + 16) |= 0x2000000u;
  v83 = *(v3 + 248);
  if (!v83)
  {
    v84 = *(v3 + 8);
    if (v84)
    {
      v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
    }

    v83 = MEMORY[0x277C8F140](v84);
    *(v3 + 248) = v83;
  }

  if (*(a2 + 248))
  {
    v85 = *(a2 + 248);
  }

  else
  {
    v85 = MEMORY[0x277D80C10];
  }

  result = TSSSOS::SpecStringArchive::MergeFrom(v83, v85);
  if ((v5 & 0x4000000) != 0)
  {
LABEL_247:
    *(v3 + 16) |= 0x4000000u;
    v86 = *(v3 + 256);
    if (!v86)
    {
      v87 = *(v3 + 8);
      if (v87)
      {
        v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
      }

      v86 = MEMORY[0x277C8F140](v87);
      *(v3 + 256) = v86;
    }

    if (*(a2 + 256))
    {
      v88 = *(a2 + 256);
    }

    else
    {
      v88 = MEMORY[0x277D80C10];
    }

    result = TSSSOS::SpecStringArchive::MergeFrom(v86, v88);
  }

LABEL_255:
  v89 = MEMORY[0x277D80C00];
  if ((v5 & 0x8000000) != 0)
  {
    *(v3 + 16) |= 0x8000000u;
    v90 = *(v3 + 264);
    if (!v90)
    {
      v91 = *(v3 + 8);
      if (v91)
      {
        v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
      }

      v90 = MEMORY[0x277C8F120](v91);
      *(v3 + 264) = v90;
    }

    if (*(a2 + 264))
    {
      v92 = *(a2 + 264);
    }

    else
    {
      v92 = v89;
    }

    result = TSSSOS::SpecColorArchive::MergeFrom(v90, v92);
    if ((v5 & 0x10000000) == 0)
    {
LABEL_257:
      if ((v5 & 0x20000000) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_277;
    }
  }

  else if ((v5 & 0x10000000) == 0)
  {
    goto LABEL_257;
  }

  *(v3 + 16) |= 0x10000000u;
  v93 = *(v3 + 272);
  if (!v93)
  {
    v94 = *(v3 + 8);
    if (v94)
    {
      v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
    }

    v93 = MEMORY[0x277C8F120](v94);
    *(v3 + 272) = v93;
  }

  if (*(a2 + 272))
  {
    v95 = *(a2 + 272);
  }

  else
  {
    v95 = v89;
  }

  result = TSSSOS::SpecColorArchive::MergeFrom(v93, v95);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_258:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_285;
  }

LABEL_277:
  *(v3 + 16) |= 0x20000000u;
  v96 = *(v3 + 280);
  if (!v96)
  {
    v97 = *(v3 + 8);
    if (v97)
    {
      v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
    }

    v96 = MEMORY[0x277C8F120](v97);
    *(v3 + 280) = v96;
  }

  if (*(a2 + 280))
  {
    v98 = *(a2 + 280);
  }

  else
  {
    v98 = v89;
  }

  result = TSSSOS::SpecColorArchive::MergeFrom(v96, v98);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_259:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_293;
  }

LABEL_285:
  *(v3 + 16) |= 0x40000000u;
  v99 = *(v3 + 288);
  if (!v99)
  {
    v100 = *(v3 + 8);
    if (v100)
    {
      v100 = *(v100 & 0xFFFFFFFFFFFFFFFELL);
    }

    v99 = MEMORY[0x277C8F120](v100);
    *(v3 + 288) = v99;
  }

  if (*(a2 + 288))
  {
    v101 = *(a2 + 288);
  }

  else
  {
    v101 = v89;
  }

  result = TSSSOS::SpecColorArchive::MergeFrom(v99, v101);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_293:
    *(v3 + 16) |= 0x80000000;
    v102 = *(v3 + 296);
    if (!v102)
    {
      v103 = *(v3 + 8);
      if (v103)
      {
        v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
      }

      v102 = MEMORY[0x277C8F130](v103);
      *(v3 + 296) = v102;
    }

    if (*(a2 + 296))
    {
      v104 = *(a2 + 296);
    }

    else
    {
      v104 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v102, v104);
  }

LABEL_301:
  v105 = *(a2 + 20);
  if (!v105)
  {
    goto LABEL_375;
  }

  if (v105)
  {
    *(v3 + 20) |= 1u;
    v106 = *(v3 + 304);
    if (!v106)
    {
      v107 = *(v3 + 8);
      if (v107)
      {
        v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
      }

      v106 = MEMORY[0x277C8F130](v107);
      *(v3 + 304) = v106;
    }

    if (*(a2 + 304))
    {
      v108 = *(a2 + 304);
    }

    else
    {
      v108 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v106, v108);
    if ((v105 & 2) == 0)
    {
LABEL_304:
      if ((v105 & 4) == 0)
      {
        goto LABEL_305;
      }

      goto LABEL_327;
    }
  }

  else if ((v105 & 2) == 0)
  {
    goto LABEL_304;
  }

  *(v3 + 20) |= 2u;
  v109 = *(v3 + 312);
  if (!v109)
  {
    v110 = *(v3 + 8);
    if (v110)
    {
      v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
    }

    v109 = MEMORY[0x277C8F130](v110);
    *(v3 + 312) = v109;
  }

  if (*(a2 + 312))
  {
    v111 = *(a2 + 312);
  }

  else
  {
    v111 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v109, v111);
  if ((v105 & 4) == 0)
  {
LABEL_305:
    if ((v105 & 8) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_335;
  }

LABEL_327:
  *(v3 + 20) |= 4u;
  v112 = *(v3 + 320);
  if (!v112)
  {
    v113 = *(v3 + 8);
    if (v113)
    {
      v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
    }

    v112 = MEMORY[0x277C8F130](v113);
    *(v3 + 320) = v112;
  }

  if (*(a2 + 320))
  {
    v114 = *(a2 + 320);
  }

  else
  {
    v114 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v112, v114);
  if ((v105 & 8) == 0)
  {
LABEL_306:
    if ((v105 & 0x10) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_343;
  }

LABEL_335:
  *(v3 + 20) |= 8u;
  v115 = *(v3 + 328);
  if (!v115)
  {
    v116 = *(v3 + 8);
    if (v116)
    {
      v116 = *(v116 & 0xFFFFFFFFFFFFFFFELL);
    }

    v115 = MEMORY[0x277C8F130](v116);
    *(v3 + 328) = v115;
  }

  if (*(a2 + 328))
  {
    v117 = *(a2 + 328);
  }

  else
  {
    v117 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v115, v117);
  if ((v105 & 0x10) == 0)
  {
LABEL_307:
    if ((v105 & 0x20) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_351;
  }

LABEL_343:
  *(v3 + 20) |= 0x10u;
  v118 = *(v3 + 336);
  if (!v118)
  {
    v119 = *(v3 + 8);
    if (v119)
    {
      v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
    }

    v118 = MEMORY[0x277C8F130](v119);
    *(v3 + 336) = v118;
  }

  if (*(a2 + 336))
  {
    v120 = *(a2 + 336);
  }

  else
  {
    v120 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v118, v120);
  if ((v105 & 0x20) == 0)
  {
LABEL_308:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_359;
  }

LABEL_351:
  *(v3 + 20) |= 0x20u;
  v121 = *(v3 + 344);
  if (!v121)
  {
    v122 = *(v3 + 8);
    if (v122)
    {
      v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
    }

    v121 = MEMORY[0x277C8F130](v122);
    *(v3 + 344) = v121;
  }

  if (*(a2 + 344))
  {
    v123 = *(a2 + 344);
  }

  else
  {
    v123 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v121, v123);
  if ((v105 & 0x40) == 0)
  {
LABEL_309:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_375;
    }

    goto LABEL_367;
  }

LABEL_359:
  *(v3 + 20) |= 0x40u;
  v124 = *(v3 + 352);
  if (!v124)
  {
    v125 = *(v3 + 8);
    if (v125)
    {
      v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
    }

    v124 = MEMORY[0x277C8F130](v125);
    *(v3 + 352) = v124;
  }

  if (*(a2 + 352))
  {
    v126 = *(a2 + 352);
  }

  else
  {
    v126 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v124, v126);
  if ((v105 & 0x80) != 0)
  {
LABEL_367:
    *(v3 + 20) |= 0x80u;
    v127 = *(v3 + 360);
    if (!v127)
    {
      v128 = *(v3 + 8);
      if (v128)
      {
        v128 = *(v128 & 0xFFFFFFFFFFFFFFFELL);
      }

      v127 = MEMORY[0x277C8F130](v128);
      *(v3 + 360) = v127;
    }

    if (*(a2 + 360))
    {
      v129 = *(a2 + 360);
    }

    else
    {
      v129 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v127, v129);
  }

LABEL_375:
  if ((v105 & 0xFF00) == 0)
  {
    goto LABEL_449;
  }

  if ((v105 & 0x100) != 0)
  {
    *(v3 + 20) |= 0x100u;
    v130 = *(v3 + 368);
    if (!v130)
    {
      v131 = *(v3 + 8);
      if (v131)
      {
        v131 = *(v131 & 0xFFFFFFFFFFFFFFFELL);
      }

      v130 = MEMORY[0x277C8F130](v131);
      *(v3 + 368) = v130;
    }

    if (*(a2 + 368))
    {
      v132 = *(a2 + 368);
    }

    else
    {
      v132 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v130, v132);
    if ((v105 & 0x200) == 0)
    {
LABEL_378:
      if ((v105 & 0x400) == 0)
      {
        goto LABEL_379;
      }

      goto LABEL_401;
    }
  }

  else if ((v105 & 0x200) == 0)
  {
    goto LABEL_378;
  }

  *(v3 + 20) |= 0x200u;
  v133 = *(v3 + 376);
  if (!v133)
  {
    v134 = *(v3 + 8);
    if (v134)
    {
      v134 = *(v134 & 0xFFFFFFFFFFFFFFFELL);
    }

    v133 = MEMORY[0x277C8F130](v134);
    *(v3 + 376) = v133;
  }

  if (*(a2 + 376))
  {
    v135 = *(a2 + 376);
  }

  else
  {
    v135 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v133, v135);
  if ((v105 & 0x400) == 0)
  {
LABEL_379:
    if ((v105 & 0x800) == 0)
    {
      goto LABEL_380;
    }

    goto LABEL_409;
  }

LABEL_401:
  *(v3 + 20) |= 0x400u;
  v136 = *(v3 + 384);
  if (!v136)
  {
    v137 = *(v3 + 8);
    if (v137)
    {
      v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
    }

    v136 = MEMORY[0x277C8F130](v137);
    *(v3 + 384) = v136;
  }

  if (*(a2 + 384))
  {
    v138 = *(a2 + 384);
  }

  else
  {
    v138 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v136, v138);
  if ((v105 & 0x800) == 0)
  {
LABEL_380:
    if ((v105 & 0x1000) == 0)
    {
      goto LABEL_381;
    }

    goto LABEL_417;
  }

LABEL_409:
  *(v3 + 20) |= 0x800u;
  v139 = *(v3 + 392);
  if (!v139)
  {
    v140 = *(v3 + 8);
    if (v140)
    {
      v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
    }

    v139 = MEMORY[0x277C8F130](v140);
    *(v3 + 392) = v139;
  }

  if (*(a2 + 392))
  {
    v141 = *(a2 + 392);
  }

  else
  {
    v141 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v139, v141);
  if ((v105 & 0x1000) == 0)
  {
LABEL_381:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_425;
  }

LABEL_417:
  *(v3 + 20) |= 0x1000u;
  v142 = *(v3 + 400);
  if (!v142)
  {
    v143 = *(v3 + 8);
    if (v143)
    {
      v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
    }

    v142 = MEMORY[0x277C8F130](v143);
    *(v3 + 400) = v142;
  }

  if (*(a2 + 400))
  {
    v144 = *(a2 + 400);
  }

  else
  {
    v144 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v142, v144);
  if ((v105 & 0x2000) == 0)
  {
LABEL_382:
    if ((v105 & 0x4000) == 0)
    {
      goto LABEL_383;
    }

    goto LABEL_433;
  }

LABEL_425:
  *(v3 + 20) |= 0x2000u;
  v145 = *(v3 + 408);
  if (!v145)
  {
    v146 = *(v3 + 8);
    if (v146)
    {
      v146 = *(v146 & 0xFFFFFFFFFFFFFFFELL);
    }

    v145 = MEMORY[0x277C8F130](v146);
    *(v3 + 408) = v145;
  }

  if (*(a2 + 408))
  {
    v147 = *(a2 + 408);
  }

  else
  {
    v147 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v145, v147);
  if ((v105 & 0x4000) == 0)
  {
LABEL_383:
    if ((v105 & 0x8000) == 0)
    {
      goto LABEL_449;
    }

    goto LABEL_441;
  }

LABEL_433:
  *(v3 + 20) |= 0x4000u;
  v148 = *(v3 + 416);
  if (!v148)
  {
    v149 = *(v3 + 8);
    if (v149)
    {
      v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
    }

    v148 = MEMORY[0x277C8F130](v149);
    *(v3 + 416) = v148;
  }

  if (*(a2 + 416))
  {
    v150 = *(a2 + 416);
  }

  else
  {
    v150 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v148, v150);
  if ((v105 & 0x8000) != 0)
  {
LABEL_441:
    *(v3 + 20) |= 0x8000u;
    v151 = *(v3 + 424);
    if (!v151)
    {
      v152 = *(v3 + 8);
      if (v152)
      {
        v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
      }

      v151 = MEMORY[0x277C8F130](v152);
      *(v3 + 424) = v151;
    }

    if (*(a2 + 424))
    {
      v153 = *(a2 + 424);
    }

    else
    {
      v153 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v151, v153);
  }

LABEL_449:
  if ((v105 & 0xFF0000) == 0)
  {
    goto LABEL_523;
  }

  if ((v105 & 0x10000) != 0)
  {
    *(v3 + 20) |= 0x10000u;
    v154 = *(v3 + 432);
    if (!v154)
    {
      v155 = *(v3 + 8);
      if (v155)
      {
        v155 = *(v155 & 0xFFFFFFFFFFFFFFFELL);
      }

      v154 = MEMORY[0x277C8F130](v155);
      *(v3 + 432) = v154;
    }

    if (*(a2 + 432))
    {
      v156 = *(a2 + 432);
    }

    else
    {
      v156 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v154, v156);
    if ((v105 & 0x20000) == 0)
    {
LABEL_452:
      if ((v105 & 0x40000) == 0)
      {
        goto LABEL_453;
      }

      goto LABEL_475;
    }
  }

  else if ((v105 & 0x20000) == 0)
  {
    goto LABEL_452;
  }

  *(v3 + 20) |= 0x20000u;
  v157 = *(v3 + 440);
  if (!v157)
  {
    v158 = *(v3 + 8);
    if (v158)
    {
      v158 = *(v158 & 0xFFFFFFFFFFFFFFFELL);
    }

    v157 = MEMORY[0x277C8F130](v158);
    *(v3 + 440) = v157;
  }

  if (*(a2 + 440))
  {
    v159 = *(a2 + 440);
  }

  else
  {
    v159 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v157, v159);
  if ((v105 & 0x40000) == 0)
  {
LABEL_453:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_483;
  }

LABEL_475:
  *(v3 + 20) |= 0x40000u;
  v160 = *(v3 + 448);
  if (!v160)
  {
    v161 = *(v3 + 8);
    if (v161)
    {
      v161 = *(v161 & 0xFFFFFFFFFFFFFFFELL);
    }

    v160 = MEMORY[0x277C8F130](v161);
    *(v3 + 448) = v160;
  }

  if (*(a2 + 448))
  {
    v162 = *(a2 + 448);
  }

  else
  {
    v162 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v160, v162);
  if ((v105 & 0x80000) == 0)
  {
LABEL_454:
    if ((v105 & 0x100000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_491;
  }

LABEL_483:
  *(v3 + 20) |= 0x80000u;
  v163 = *(v3 + 456);
  if (!v163)
  {
    v164 = *(v3 + 8);
    if (v164)
    {
      v164 = *(v164 & 0xFFFFFFFFFFFFFFFELL);
    }

    v163 = MEMORY[0x277C8F130](v164);
    *(v3 + 456) = v163;
  }

  if (*(a2 + 456))
  {
    v165 = *(a2 + 456);
  }

  else
  {
    v165 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v163, v165);
  if ((v105 & 0x100000) == 0)
  {
LABEL_455:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_456;
    }

    goto LABEL_499;
  }

LABEL_491:
  *(v3 + 20) |= 0x100000u;
  v166 = *(v3 + 464);
  if (!v166)
  {
    v167 = *(v3 + 8);
    if (v167)
    {
      v167 = *(v167 & 0xFFFFFFFFFFFFFFFELL);
    }

    v166 = MEMORY[0x277C8F130](v167);
    *(v3 + 464) = v166;
  }

  if (*(a2 + 464))
  {
    v168 = *(a2 + 464);
  }

  else
  {
    v168 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v166, v168);
  if ((v105 & 0x200000) == 0)
  {
LABEL_456:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_457;
    }

    goto LABEL_507;
  }

LABEL_499:
  *(v3 + 20) |= 0x200000u;
  v169 = *(v3 + 472);
  if (!v169)
  {
    v170 = *(v3 + 8);
    if (v170)
    {
      v170 = *(v170 & 0xFFFFFFFFFFFFFFFELL);
    }

    v169 = MEMORY[0x277C8F130](v170);
    *(v3 + 472) = v169;
  }

  if (*(a2 + 472))
  {
    v171 = *(a2 + 472);
  }

  else
  {
    v171 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v169, v171);
  if ((v105 & 0x400000) == 0)
  {
LABEL_457:
    if ((v105 & 0x800000) == 0)
    {
      goto LABEL_523;
    }

    goto LABEL_515;
  }

LABEL_507:
  *(v3 + 20) |= 0x400000u;
  v172 = *(v3 + 480);
  if (!v172)
  {
    v173 = *(v3 + 8);
    if (v173)
    {
      v173 = *(v173 & 0xFFFFFFFFFFFFFFFELL);
    }

    v172 = MEMORY[0x277C8F130](v173);
    *(v3 + 480) = v172;
  }

  if (*(a2 + 480))
  {
    v174 = *(a2 + 480);
  }

  else
  {
    v174 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v172, v174);
  if ((v105 & 0x800000) != 0)
  {
LABEL_515:
    *(v3 + 20) |= 0x800000u;
    v175 = *(v3 + 488);
    if (!v175)
    {
      v176 = *(v3 + 8);
      if (v176)
      {
        v176 = *(v176 & 0xFFFFFFFFFFFFFFFELL);
      }

      v175 = MEMORY[0x277C8F130](v176);
      *(v3 + 488) = v175;
    }

    if (*(a2 + 488))
    {
      v177 = *(a2 + 488);
    }

    else
    {
      v177 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v175, v177);
  }

LABEL_523:
  if (!HIBYTE(v105))
  {
    goto LABEL_597;
  }

  if ((v105 & 0x1000000) != 0)
  {
    *(v3 + 20) |= 0x1000000u;
    v178 = *(v3 + 496);
    if (!v178)
    {
      v179 = *(v3 + 8);
      if (v179)
      {
        v179 = *(v179 & 0xFFFFFFFFFFFFFFFELL);
      }

      v178 = MEMORY[0x277C8F130](v179);
      *(v3 + 496) = v178;
    }

    if (*(a2 + 496))
    {
      v180 = *(a2 + 496);
    }

    else
    {
      v180 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v178, v180);
    if ((v105 & 0x2000000) == 0)
    {
LABEL_526:
      if ((v105 & 0x4000000) == 0)
      {
        goto LABEL_527;
      }

      goto LABEL_549;
    }
  }

  else if ((v105 & 0x2000000) == 0)
  {
    goto LABEL_526;
  }

  *(v3 + 20) |= 0x2000000u;
  v181 = *(v3 + 504);
  if (!v181)
  {
    v182 = *(v3 + 8);
    if (v182)
    {
      v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
    }

    v181 = MEMORY[0x277C8F130](v182);
    *(v3 + 504) = v181;
  }

  if (*(a2 + 504))
  {
    v183 = *(a2 + 504);
  }

  else
  {
    v183 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v181, v183);
  if ((v105 & 0x4000000) == 0)
  {
LABEL_527:
    if ((v105 & 0x8000000) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_557;
  }

LABEL_549:
  *(v3 + 20) |= 0x4000000u;
  v184 = *(v3 + 512);
  if (!v184)
  {
    v185 = *(v3 + 8);
    if (v185)
    {
      v185 = *(v185 & 0xFFFFFFFFFFFFFFFELL);
    }

    v184 = MEMORY[0x277C8F130](v185);
    *(v3 + 512) = v184;
  }

  if (*(a2 + 512))
  {
    v186 = *(a2 + 512);
  }

  else
  {
    v186 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v184, v186);
  if ((v105 & 0x8000000) == 0)
  {
LABEL_528:
    if ((v105 & 0x10000000) == 0)
    {
      goto LABEL_529;
    }

    goto LABEL_565;
  }

LABEL_557:
  *(v3 + 20) |= 0x8000000u;
  v187 = *(v3 + 520);
  if (!v187)
  {
    v188 = *(v3 + 8);
    if (v188)
    {
      v188 = *(v188 & 0xFFFFFFFFFFFFFFFELL);
    }

    v187 = MEMORY[0x277C8F130](v188);
    *(v3 + 520) = v187;
  }

  if (*(a2 + 520))
  {
    v189 = *(a2 + 520);
  }

  else
  {
    v189 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v187, v189);
  if ((v105 & 0x10000000) == 0)
  {
LABEL_529:
    if ((v105 & 0x20000000) == 0)
    {
      goto LABEL_530;
    }

    goto LABEL_573;
  }

LABEL_565:
  *(v3 + 20) |= 0x10000000u;
  v190 = *(v3 + 528);
  if (!v190)
  {
    v191 = *(v3 + 8);
    if (v191)
    {
      v191 = *(v191 & 0xFFFFFFFFFFFFFFFELL);
    }

    v190 = MEMORY[0x277C8F130](v191);
    *(v3 + 528) = v190;
  }

  if (*(a2 + 528))
  {
    v192 = *(a2 + 528);
  }

  else
  {
    v192 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v190, v192);
  if ((v105 & 0x20000000) == 0)
  {
LABEL_530:
    if ((v105 & 0x40000000) == 0)
    {
      goto LABEL_531;
    }

    goto LABEL_581;
  }

LABEL_573:
  *(v3 + 20) |= 0x20000000u;
  v193 = *(v3 + 536);
  if (!v193)
  {
    v194 = *(v3 + 8);
    if (v194)
    {
      v194 = *(v194 & 0xFFFFFFFFFFFFFFFELL);
    }

    v193 = MEMORY[0x277C8F130](v194);
    *(v3 + 536) = v193;
  }

  if (*(a2 + 536))
  {
    v195 = *(a2 + 536);
  }

  else
  {
    v195 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v193, v195);
  if ((v105 & 0x40000000) == 0)
  {
LABEL_531:
    if ((v105 & 0x80000000) == 0)
    {
      goto LABEL_597;
    }

    goto LABEL_589;
  }

LABEL_581:
  *(v3 + 20) |= 0x40000000u;
  v196 = *(v3 + 544);
  if (!v196)
  {
    v197 = *(v3 + 8);
    if (v197)
    {
      v197 = *(v197 & 0xFFFFFFFFFFFFFFFELL);
    }

    v196 = MEMORY[0x277C8F130](v197);
    *(v3 + 544) = v196;
  }

  if (*(a2 + 544))
  {
    v198 = *(a2 + 544);
  }

  else
  {
    v198 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v196, v198);
  if ((v105 & 0x80000000) != 0)
  {
LABEL_589:
    *(v3 + 20) |= 0x80000000;
    v199 = *(v3 + 552);
    if (!v199)
    {
      v200 = *(v3 + 8);
      if (v200)
      {
        v200 = *(v200 & 0xFFFFFFFFFFFFFFFELL);
      }

      v199 = MEMORY[0x277C8F130](v200);
      *(v3 + 552) = v199;
    }

    if (*(a2 + 552))
    {
      v201 = *(a2 + 552);
    }

    else
    {
      v201 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v199, v201);
  }

LABEL_597:
  v202 = *(a2 + 24);
  if (!v202)
  {
    goto LABEL_671;
  }

  if (v202)
  {
    *(v3 + 24) |= 1u;
    v203 = *(v3 + 560);
    if (!v203)
    {
      v204 = *(v3 + 8);
      if (v204)
      {
        v204 = *(v204 & 0xFFFFFFFFFFFFFFFELL);
      }

      v203 = MEMORY[0x277C8F130](v204);
      *(v3 + 560) = v203;
    }

    if (*(a2 + 560))
    {
      v205 = *(a2 + 560);
    }

    else
    {
      v205 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v203, v205);
    if ((v202 & 2) == 0)
    {
LABEL_600:
      if ((v202 & 4) == 0)
      {
        goto LABEL_601;
      }

      goto LABEL_623;
    }
  }

  else if ((v202 & 2) == 0)
  {
    goto LABEL_600;
  }

  *(v3 + 24) |= 2u;
  v206 = *(v3 + 568);
  if (!v206)
  {
    v207 = *(v3 + 8);
    if (v207)
    {
      v207 = *(v207 & 0xFFFFFFFFFFFFFFFELL);
    }

    v206 = MEMORY[0x277C8F130](v207);
    *(v3 + 568) = v206;
  }

  if (*(a2 + 568))
  {
    v208 = *(a2 + 568);
  }

  else
  {
    v208 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v206, v208);
  if ((v202 & 4) == 0)
  {
LABEL_601:
    if ((v202 & 8) == 0)
    {
      goto LABEL_602;
    }

    goto LABEL_631;
  }

LABEL_623:
  *(v3 + 24) |= 4u;
  v209 = *(v3 + 576);
  if (!v209)
  {
    v210 = *(v3 + 8);
    if (v210)
    {
      v210 = *(v210 & 0xFFFFFFFFFFFFFFFELL);
    }

    v209 = MEMORY[0x277C8F130](v210);
    *(v3 + 576) = v209;
  }

  if (*(a2 + 576))
  {
    v211 = *(a2 + 576);
  }

  else
  {
    v211 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v209, v211);
  if ((v202 & 8) == 0)
  {
LABEL_602:
    if ((v202 & 0x10) == 0)
    {
      goto LABEL_603;
    }

    goto LABEL_639;
  }

LABEL_631:
  *(v3 + 24) |= 8u;
  v212 = *(v3 + 584);
  if (!v212)
  {
    v213 = *(v3 + 8);
    if (v213)
    {
      v213 = *(v213 & 0xFFFFFFFFFFFFFFFELL);
    }

    v212 = MEMORY[0x277C8F130](v213);
    *(v3 + 584) = v212;
  }

  if (*(a2 + 584))
  {
    v214 = *(a2 + 584);
  }

  else
  {
    v214 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v212, v214);
  if ((v202 & 0x10) == 0)
  {
LABEL_603:
    if ((v202 & 0x20) == 0)
    {
      goto LABEL_604;
    }

    goto LABEL_647;
  }

LABEL_639:
  *(v3 + 24) |= 0x10u;
  v215 = *(v3 + 592);
  if (!v215)
  {
    v216 = *(v3 + 8);
    if (v216)
    {
      v216 = *(v216 & 0xFFFFFFFFFFFFFFFELL);
    }

    v215 = MEMORY[0x277C8F130](v216);
    *(v3 + 592) = v215;
  }

  if (*(a2 + 592))
  {
    v217 = *(a2 + 592);
  }

  else
  {
    v217 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v215, v217);
  if ((v202 & 0x20) == 0)
  {
LABEL_604:
    if ((v202 & 0x40) == 0)
    {
      goto LABEL_605;
    }

    goto LABEL_655;
  }

LABEL_647:
  *(v3 + 24) |= 0x20u;
  v218 = *(v3 + 600);
  if (!v218)
  {
    v219 = *(v3 + 8);
    if (v219)
    {
      v219 = *(v219 & 0xFFFFFFFFFFFFFFFELL);
    }

    v218 = MEMORY[0x277C8F130](v219);
    *(v3 + 600) = v218;
  }

  if (*(a2 + 600))
  {
    v220 = *(a2 + 600);
  }

  else
  {
    v220 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v218, v220);
  if ((v202 & 0x40) == 0)
  {
LABEL_605:
    if ((v202 & 0x80) == 0)
    {
      goto LABEL_671;
    }

    goto LABEL_663;
  }

LABEL_655:
  *(v3 + 24) |= 0x40u;
  v221 = *(v3 + 608);
  if (!v221)
  {
    v222 = *(v3 + 8);
    if (v222)
    {
      v222 = *(v222 & 0xFFFFFFFFFFFFFFFELL);
    }

    v221 = MEMORY[0x277C8F130](v222);
    *(v3 + 608) = v221;
  }

  if (*(a2 + 608))
  {
    v223 = *(a2 + 608);
  }

  else
  {
    v223 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v221, v223);
  if ((v202 & 0x80) != 0)
  {
LABEL_663:
    *(v3 + 24) |= 0x80u;
    v224 = *(v3 + 616);
    if (!v224)
    {
      v225 = *(v3 + 8);
      if (v225)
      {
        v225 = *(v225 & 0xFFFFFFFFFFFFFFFELL);
      }

      v224 = MEMORY[0x277C8F130](v225);
      *(v3 + 616) = v224;
    }

    if (*(a2 + 616))
    {
      v226 = *(a2 + 616);
    }

    else
    {
      v226 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v224, v226);
  }

LABEL_671:
  if ((v202 & 0xFF00) == 0)
  {
    goto LABEL_745;
  }

  if ((v202 & 0x100) != 0)
  {
    *(v3 + 24) |= 0x100u;
    v227 = *(v3 + 624);
    if (!v227)
    {
      v228 = *(v3 + 8);
      if (v228)
      {
        v228 = *(v228 & 0xFFFFFFFFFFFFFFFELL);
      }

      v227 = MEMORY[0x277C8F130](v228);
      *(v3 + 624) = v227;
    }

    if (*(a2 + 624))
    {
      v229 = *(a2 + 624);
    }

    else
    {
      v229 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v227, v229);
    if ((v202 & 0x200) == 0)
    {
LABEL_674:
      if ((v202 & 0x400) == 0)
      {
        goto LABEL_675;
      }

      goto LABEL_697;
    }
  }

  else if ((v202 & 0x200) == 0)
  {
    goto LABEL_674;
  }

  *(v3 + 24) |= 0x200u;
  v230 = *(v3 + 632);
  if (!v230)
  {
    v231 = *(v3 + 8);
    if (v231)
    {
      v231 = *(v231 & 0xFFFFFFFFFFFFFFFELL);
    }

    v230 = MEMORY[0x277C8F130](v231);
    *(v3 + 632) = v230;
  }

  if (*(a2 + 632))
  {
    v232 = *(a2 + 632);
  }

  else
  {
    v232 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v230, v232);
  if ((v202 & 0x400) == 0)
  {
LABEL_675:
    if ((v202 & 0x800) == 0)
    {
      goto LABEL_676;
    }

    goto LABEL_705;
  }

LABEL_697:
  *(v3 + 24) |= 0x400u;
  v233 = *(v3 + 640);
  if (!v233)
  {
    v234 = *(v3 + 8);
    if (v234)
    {
      v234 = *(v234 & 0xFFFFFFFFFFFFFFFELL);
    }

    v233 = MEMORY[0x277C8F130](v234);
    *(v3 + 640) = v233;
  }

  if (*(a2 + 640))
  {
    v235 = *(a2 + 640);
  }

  else
  {
    v235 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v233, v235);
  if ((v202 & 0x800) == 0)
  {
LABEL_676:
    if ((v202 & 0x1000) == 0)
    {
      goto LABEL_677;
    }

    goto LABEL_713;
  }

LABEL_705:
  *(v3 + 24) |= 0x800u;
  v236 = *(v3 + 648);
  if (!v236)
  {
    v237 = *(v3 + 8);
    if (v237)
    {
      v237 = *(v237 & 0xFFFFFFFFFFFFFFFELL);
    }

    v236 = MEMORY[0x277C8F130](v237);
    *(v3 + 648) = v236;
  }

  if (*(a2 + 648))
  {
    v238 = *(a2 + 648);
  }

  else
  {
    v238 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v236, v238);
  if ((v202 & 0x1000) == 0)
  {
LABEL_677:
    if ((v202 & 0x2000) == 0)
    {
      goto LABEL_678;
    }

    goto LABEL_721;
  }

LABEL_713:
  *(v3 + 24) |= 0x1000u;
  v239 = *(v3 + 656);
  if (!v239)
  {
    v240 = *(v3 + 8);
    if (v240)
    {
      v240 = *(v240 & 0xFFFFFFFFFFFFFFFELL);
    }

    v239 = MEMORY[0x277C8F130](v240);
    *(v3 + 656) = v239;
  }

  if (*(a2 + 656))
  {
    v241 = *(a2 + 656);
  }

  else
  {
    v241 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v239, v241);
  if ((v202 & 0x2000) == 0)
  {
LABEL_678:
    if ((v202 & 0x4000) == 0)
    {
      goto LABEL_679;
    }

    goto LABEL_729;
  }

LABEL_721:
  *(v3 + 24) |= 0x2000u;
  v242 = *(v3 + 664);
  if (!v242)
  {
    v243 = *(v3 + 8);
    if (v243)
    {
      v243 = *(v243 & 0xFFFFFFFFFFFFFFFELL);
    }

    v242 = MEMORY[0x277C8F130](v243);
    *(v3 + 664) = v242;
  }

  if (*(a2 + 664))
  {
    v244 = *(a2 + 664);
  }

  else
  {
    v244 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v242, v244);
  if ((v202 & 0x4000) == 0)
  {
LABEL_679:
    if ((v202 & 0x8000) == 0)
    {
      goto LABEL_745;
    }

    goto LABEL_737;
  }

LABEL_729:
  *(v3 + 24) |= 0x4000u;
  v245 = *(v3 + 672);
  if (!v245)
  {
    v246 = *(v3 + 8);
    if (v246)
    {
      v246 = *(v246 & 0xFFFFFFFFFFFFFFFELL);
    }

    v245 = MEMORY[0x277C8F110](v246);
    *(v3 + 672) = v245;
  }

  if (*(a2 + 672))
  {
    v247 = *(a2 + 672);
  }

  else
  {
    v247 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v245, v247);
  if ((v202 & 0x8000) != 0)
  {
LABEL_737:
    *(v3 + 24) |= 0x8000u;
    v248 = *(v3 + 680);
    if (!v248)
    {
      v249 = *(v3 + 8);
      if (v249)
      {
        v249 = *(v249 & 0xFFFFFFFFFFFFFFFELL);
      }

      v248 = MEMORY[0x277C8F110](v249);
      *(v3 + 680) = v248;
    }

    if (*(a2 + 680))
    {
      v250 = *(a2 + 680);
    }

    else
    {
      v250 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v248, v250);
  }

LABEL_745:
  if ((v202 & 0xFF0000) == 0)
  {
    goto LABEL_819;
  }

  if ((v202 & 0x10000) != 0)
  {
    *(v3 + 24) |= 0x10000u;
    v251 = *(v3 + 688);
    if (!v251)
    {
      v252 = *(v3 + 8);
      if (v252)
      {
        v252 = *(v252 & 0xFFFFFFFFFFFFFFFELL);
      }

      v251 = MEMORY[0x277C8F110](v252);
      *(v3 + 688) = v251;
    }

    if (*(a2 + 688))
    {
      v253 = *(a2 + 688);
    }

    else
    {
      v253 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v251, v253);
    if ((v202 & 0x20000) == 0)
    {
LABEL_748:
      if ((v202 & 0x40000) == 0)
      {
        goto LABEL_749;
      }

      goto LABEL_771;
    }
  }

  else if ((v202 & 0x20000) == 0)
  {
    goto LABEL_748;
  }

  *(v3 + 24) |= 0x20000u;
  v254 = *(v3 + 696);
  if (!v254)
  {
    v255 = *(v3 + 8);
    if (v255)
    {
      v255 = *(v255 & 0xFFFFFFFFFFFFFFFELL);
    }

    v254 = MEMORY[0x277C8F150](v255);
    *(v3 + 696) = v254;
  }

  if (*(a2 + 696))
  {
    v256 = *(a2 + 696);
  }

  else
  {
    v256 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v254, v256);
  if ((v202 & 0x40000) == 0)
  {
LABEL_749:
    if ((v202 & 0x80000) == 0)
    {
      goto LABEL_750;
    }

    goto LABEL_779;
  }

LABEL_771:
  *(v3 + 24) |= 0x40000u;
  v257 = *(v3 + 704);
  if (!v257)
  {
    v258 = *(v3 + 8);
    if (v258)
    {
      v258 = *(v258 & 0xFFFFFFFFFFFFFFFELL);
    }

    v257 = MEMORY[0x277C8F110](v258);
    *(v3 + 704) = v257;
  }

  if (*(a2 + 704))
  {
    v259 = *(a2 + 704);
  }

  else
  {
    v259 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v257, v259);
  if ((v202 & 0x80000) == 0)
  {
LABEL_750:
    if ((v202 & 0x100000) == 0)
    {
      goto LABEL_751;
    }

    goto LABEL_787;
  }

LABEL_779:
  *(v3 + 24) |= 0x80000u;
  v260 = *(v3 + 712);
  if (!v260)
  {
    v261 = *(v3 + 8);
    if (v261)
    {
      v261 = *(v261 & 0xFFFFFFFFFFFFFFFELL);
    }

    v260 = MEMORY[0x277C8F110](v261);
    *(v3 + 712) = v260;
  }

  if (*(a2 + 712))
  {
    v262 = *(a2 + 712);
  }

  else
  {
    v262 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v260, v262);
  if ((v202 & 0x100000) == 0)
  {
LABEL_751:
    if ((v202 & 0x200000) == 0)
    {
      goto LABEL_752;
    }

    goto LABEL_795;
  }

LABEL_787:
  *(v3 + 24) |= 0x100000u;
  v263 = *(v3 + 720);
  if (!v263)
  {
    v264 = *(v3 + 8);
    if (v264)
    {
      v264 = *(v264 & 0xFFFFFFFFFFFFFFFELL);
    }

    v263 = MEMORY[0x277C8F130](v264);
    *(v3 + 720) = v263;
  }

  if (*(a2 + 720))
  {
    v265 = *(a2 + 720);
  }

  else
  {
    v265 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v263, v265);
  if ((v202 & 0x200000) == 0)
  {
LABEL_752:
    if ((v202 & 0x400000) == 0)
    {
      goto LABEL_753;
    }

    goto LABEL_803;
  }

LABEL_795:
  *(v3 + 24) |= 0x200000u;
  v266 = *(v3 + 728);
  if (!v266)
  {
    v267 = *(v3 + 8);
    if (v267)
    {
      v267 = *(v267 & 0xFFFFFFFFFFFFFFFELL);
    }

    v266 = MEMORY[0x277C8F130](v267);
    *(v3 + 728) = v266;
  }

  if (*(a2 + 728))
  {
    v268 = *(a2 + 728);
  }

  else
  {
    v268 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v266, v268);
  if ((v202 & 0x400000) == 0)
  {
LABEL_753:
    if ((v202 & 0x800000) == 0)
    {
      goto LABEL_819;
    }

    goto LABEL_811;
  }

LABEL_803:
  *(v3 + 24) |= 0x400000u;
  v269 = *(v3 + 736);
  if (!v269)
  {
    v270 = *(v3 + 8);
    if (v270)
    {
      v270 = *(v270 & 0xFFFFFFFFFFFFFFFELL);
    }

    v269 = MEMORY[0x277C8F130](v270);
    *(v3 + 736) = v269;
  }

  if (*(a2 + 736))
  {
    v271 = *(a2 + 736);
  }

  else
  {
    v271 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v269, v271);
  if ((v202 & 0x800000) != 0)
  {
LABEL_811:
    *(v3 + 24) |= 0x800000u;
    v272 = *(v3 + 744);
    if (!v272)
    {
      v273 = *(v3 + 8);
      if (v273)
      {
        v273 = *(v273 & 0xFFFFFFFFFFFFFFFELL);
      }

      v272 = MEMORY[0x277C8F130](v273);
      *(v3 + 744) = v272;
    }

    if (*(a2 + 744))
    {
      v274 = *(a2 + 744);
    }

    else
    {
      v274 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v272, v274);
  }

LABEL_819:
  if (!HIBYTE(v202))
  {
    goto LABEL_893;
  }

  if ((v202 & 0x1000000) != 0)
  {
    *(v3 + 24) |= 0x1000000u;
    v275 = *(v3 + 752);
    if (!v275)
    {
      v276 = *(v3 + 8);
      if (v276)
      {
        v276 = *(v276 & 0xFFFFFFFFFFFFFFFELL);
      }

      v275 = MEMORY[0x277C8F130](v276);
      *(v3 + 752) = v275;
    }

    if (*(a2 + 752))
    {
      v277 = *(a2 + 752);
    }

    else
    {
      v277 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v275, v277);
    if ((v202 & 0x2000000) == 0)
    {
LABEL_822:
      if ((v202 & 0x4000000) == 0)
      {
        goto LABEL_823;
      }

      goto LABEL_845;
    }
  }

  else if ((v202 & 0x2000000) == 0)
  {
    goto LABEL_822;
  }

  *(v3 + 24) |= 0x2000000u;
  v278 = *(v3 + 760);
  if (!v278)
  {
    v279 = *(v3 + 8);
    if (v279)
    {
      v279 = *(v279 & 0xFFFFFFFFFFFFFFFELL);
    }

    v278 = MEMORY[0x277C8F130](v279);
    *(v3 + 760) = v278;
  }

  if (*(a2 + 760))
  {
    v280 = *(a2 + 760);
  }

  else
  {
    v280 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v278, v280);
  if ((v202 & 0x4000000) == 0)
  {
LABEL_823:
    if ((v202 & 0x8000000) == 0)
    {
      goto LABEL_824;
    }

    goto LABEL_853;
  }

LABEL_845:
  *(v3 + 24) |= 0x4000000u;
  v281 = *(v3 + 768);
  if (!v281)
  {
    v282 = *(v3 + 8);
    if (v282)
    {
      v282 = *(v282 & 0xFFFFFFFFFFFFFFFELL);
    }

    v281 = MEMORY[0x277C8F120](v282);
    *(v3 + 768) = v281;
  }

  if (*(a2 + 768))
  {
    v283 = *(a2 + 768);
  }

  else
  {
    v283 = MEMORY[0x277D80C00];
  }

  result = TSSSOS::SpecColorArchive::MergeFrom(v281, v283);
  if ((v202 & 0x8000000) == 0)
  {
LABEL_824:
    if ((v202 & 0x10000000) == 0)
    {
      goto LABEL_825;
    }

    goto LABEL_861;
  }

LABEL_853:
  *(v3 + 24) |= 0x8000000u;
  v284 = *(v3 + 776);
  if (!v284)
  {
    v285 = *(v3 + 8);
    if (v285)
    {
      v285 = *(v285 & 0xFFFFFFFFFFFFFFFELL);
    }

    v284 = MEMORY[0x277C8F130](v285);
    *(v3 + 776) = v284;
  }

  if (*(a2 + 776))
  {
    v286 = *(a2 + 776);
  }

  else
  {
    v286 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v284, v286);
  if ((v202 & 0x10000000) == 0)
  {
LABEL_825:
    if ((v202 & 0x20000000) == 0)
    {
      goto LABEL_826;
    }

    goto LABEL_869;
  }

LABEL_861:
  *(v3 + 24) |= 0x10000000u;
  v287 = *(v3 + 784);
  if (!v287)
  {
    v288 = *(v3 + 8);
    if (v288)
    {
      v288 = *(v288 & 0xFFFFFFFFFFFFFFFELL);
    }

    v287 = MEMORY[0x277C8F130](v288);
    *(v3 + 784) = v287;
  }

  if (*(a2 + 784))
  {
    v289 = *(a2 + 784);
  }

  else
  {
    v289 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v287, v289);
  if ((v202 & 0x20000000) == 0)
  {
LABEL_826:
    if ((v202 & 0x40000000) == 0)
    {
      goto LABEL_827;
    }

    goto LABEL_877;
  }

LABEL_869:
  *(v3 + 24) |= 0x20000000u;
  v290 = *(v3 + 792);
  if (!v290)
  {
    v291 = *(v3 + 8);
    if (v291)
    {
      v291 = *(v291 & 0xFFFFFFFFFFFFFFFELL);
    }

    v290 = MEMORY[0x277C8F130](v291);
    *(v3 + 792) = v290;
  }

  if (*(a2 + 792))
  {
    v292 = *(a2 + 792);
  }

  else
  {
    v292 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v290, v292);
  if ((v202 & 0x40000000) == 0)
  {
LABEL_827:
    if ((v202 & 0x80000000) == 0)
    {
      goto LABEL_893;
    }

    goto LABEL_885;
  }

LABEL_877:
  *(v3 + 24) |= 0x40000000u;
  v293 = *(v3 + 800);
  if (!v293)
  {
    v294 = *(v3 + 8);
    if (v294)
    {
      v294 = *(v294 & 0xFFFFFFFFFFFFFFFELL);
    }

    v293 = MEMORY[0x277C8F130](v294);
    *(v3 + 800) = v293;
  }

  if (*(a2 + 800))
  {
    v295 = *(a2 + 800);
  }

  else
  {
    v295 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v293, v295);
  if ((v202 & 0x80000000) != 0)
  {
LABEL_885:
    *(v3 + 24) |= 0x80000000;
    v296 = *(v3 + 808);
    if (!v296)
    {
      v297 = *(v3 + 8);
      if (v297)
      {
        v297 = *(v297 & 0xFFFFFFFFFFFFFFFELL);
      }

      v296 = MEMORY[0x277C8F130](v297);
      *(v3 + 808) = v296;
    }

    if (*(a2 + 808))
    {
      v298 = *(a2 + 808);
    }

    else
    {
      v298 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v296, v298);
  }

LABEL_893:
  v299 = *(a2 + 28);
  if (!v299)
  {
    goto LABEL_967;
  }

  if (v299)
  {
    *(v3 + 28) |= 1u;
    v300 = *(v3 + 816);
    if (!v300)
    {
      v301 = *(v3 + 8);
      if (v301)
      {
        v301 = *(v301 & 0xFFFFFFFFFFFFFFFELL);
      }

      v300 = MEMORY[0x277C8F150](v301);
      *(v3 + 816) = v300;
    }

    if (*(a2 + 816))
    {
      v302 = *(a2 + 816);
    }

    else
    {
      v302 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v300, v302);
    if ((v299 & 2) == 0)
    {
LABEL_896:
      if ((v299 & 4) == 0)
      {
        goto LABEL_897;
      }

      goto LABEL_919;
    }
  }

  else if ((v299 & 2) == 0)
  {
    goto LABEL_896;
  }

  *(v3 + 28) |= 2u;
  v303 = *(v3 + 824);
  if (!v303)
  {
    v304 = *(v3 + 8);
    if (v304)
    {
      v304 = *(v304 & 0xFFFFFFFFFFFFFFFELL);
    }

    v303 = MEMORY[0x277C8F130](v304);
    *(v3 + 824) = v303;
  }

  if (*(a2 + 824))
  {
    v305 = *(a2 + 824);
  }

  else
  {
    v305 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v303, v305);
  if ((v299 & 4) == 0)
  {
LABEL_897:
    if ((v299 & 8) == 0)
    {
      goto LABEL_898;
    }

    goto LABEL_927;
  }

LABEL_919:
  *(v3 + 28) |= 4u;
  v306 = *(v3 + 832);
  if (!v306)
  {
    v307 = *(v3 + 8);
    if (v307)
    {
      v307 = *(v307 & 0xFFFFFFFFFFFFFFFELL);
    }

    v306 = MEMORY[0x277C8F130](v307);
    *(v3 + 832) = v306;
  }

  if (*(a2 + 832))
  {
    v308 = *(a2 + 832);
  }

  else
  {
    v308 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v306, v308);
  if ((v299 & 8) == 0)
  {
LABEL_898:
    if ((v299 & 0x10) == 0)
    {
      goto LABEL_899;
    }

    goto LABEL_935;
  }

LABEL_927:
  *(v3 + 28) |= 8u;
  v309 = *(v3 + 840);
  if (!v309)
  {
    v310 = *(v3 + 8);
    if (v310)
    {
      v310 = *(v310 & 0xFFFFFFFFFFFFFFFELL);
    }

    v309 = MEMORY[0x277C8F130](v310);
    *(v3 + 840) = v309;
  }

  if (*(a2 + 840))
  {
    v311 = *(a2 + 840);
  }

  else
  {
    v311 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v309, v311);
  if ((v299 & 0x10) == 0)
  {
LABEL_899:
    if ((v299 & 0x20) == 0)
    {
      goto LABEL_900;
    }

    goto LABEL_943;
  }

LABEL_935:
  *(v3 + 28) |= 0x10u;
  v312 = *(v3 + 848);
  if (!v312)
  {
    v313 = *(v3 + 8);
    if (v313)
    {
      v313 = *(v313 & 0xFFFFFFFFFFFFFFFELL);
    }

    v312 = MEMORY[0x277C8F130](v313);
    *(v3 + 848) = v312;
  }

  if (*(a2 + 848))
  {
    v314 = *(a2 + 848);
  }

  else
  {
    v314 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v312, v314);
  if ((v299 & 0x20) == 0)
  {
LABEL_900:
    if ((v299 & 0x40) == 0)
    {
      goto LABEL_901;
    }

    goto LABEL_951;
  }

LABEL_943:
  *(v3 + 28) |= 0x20u;
  v315 = *(v3 + 856);
  if (!v315)
  {
    v316 = *(v3 + 8);
    if (v316)
    {
      v316 = *(v316 & 0xFFFFFFFFFFFFFFFELL);
    }

    v315 = MEMORY[0x277C8F130](v316);
    *(v3 + 856) = v315;
  }

  if (*(a2 + 856))
  {
    v317 = *(a2 + 856);
  }

  else
  {
    v317 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v315, v317);
  if ((v299 & 0x40) == 0)
  {
LABEL_901:
    if ((v299 & 0x80) == 0)
    {
      goto LABEL_967;
    }

    goto LABEL_959;
  }

LABEL_951:
  *(v3 + 28) |= 0x40u;
  v318 = *(v3 + 864);
  if (!v318)
  {
    v319 = *(v3 + 8);
    if (v319)
    {
      v319 = *(v319 & 0xFFFFFFFFFFFFFFFELL);
    }

    v318 = MEMORY[0x277C8F130](v319);
    *(v3 + 864) = v318;
  }

  if (*(a2 + 864))
  {
    v320 = *(a2 + 864);
  }

  else
  {
    v320 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v318, v320);
  if ((v299 & 0x80) != 0)
  {
LABEL_959:
    *(v3 + 28) |= 0x80u;
    v321 = *(v3 + 872);
    if (!v321)
    {
      v322 = *(v3 + 8);
      if (v322)
      {
        v322 = *(v322 & 0xFFFFFFFFFFFFFFFELL);
      }

      v321 = MEMORY[0x277C8F130](v322);
      *(v3 + 872) = v321;
    }

    if (*(a2 + 872))
    {
      v323 = *(a2 + 872);
    }

    else
    {
      v323 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v321, v323);
  }

LABEL_967:
  if ((v299 & 0xFF00) == 0)
  {
    goto LABEL_978;
  }

  if ((v299 & 0x100) != 0)
  {
    *(v3 + 28) |= 0x100u;
    v327 = *(v3 + 880);
    if (!v327)
    {
      v328 = *(v3 + 8);
      if (v328)
      {
        v328 = *(v328 & 0xFFFFFFFFFFFFFFFELL);
      }

      v327 = MEMORY[0x277C8F130](v328);
      *(v3 + 880) = v327;
    }

    if (*(a2 + 880))
    {
      v329 = *(a2 + 880);
    }

    else
    {
      v329 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v327, v329);
    if ((v299 & 0x200) == 0)
    {
LABEL_970:
      if ((v299 & 0x400) == 0)
      {
        goto LABEL_971;
      }

      goto LABEL_1133;
    }
  }

  else if ((v299 & 0x200) == 0)
  {
    goto LABEL_970;
  }

  *(v3 + 28) |= 0x200u;
  v330 = *(v3 + 888);
  if (!v330)
  {
    v331 = *(v3 + 8);
    if (v331)
    {
      v331 = *(v331 & 0xFFFFFFFFFFFFFFFELL);
    }

    v330 = MEMORY[0x277C8F130](v331);
    *(v3 + 888) = v330;
  }

  if (*(a2 + 888))
  {
    v332 = *(a2 + 888);
  }

  else
  {
    v332 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v330, v332);
  if ((v299 & 0x400) == 0)
  {
LABEL_971:
    if ((v299 & 0x800) == 0)
    {
      goto LABEL_972;
    }

    goto LABEL_1141;
  }

LABEL_1133:
  *(v3 + 28) |= 0x400u;
  v333 = *(v3 + 896);
  if (!v333)
  {
    v334 = *(v3 + 8);
    if (v334)
    {
      v334 = *(v334 & 0xFFFFFFFFFFFFFFFELL);
    }

    v333 = MEMORY[0x277C8F150](v334);
    *(v3 + 896) = v333;
  }

  if (*(a2 + 896))
  {
    v335 = *(a2 + 896);
  }

  else
  {
    v335 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v333, v335);
  if ((v299 & 0x800) == 0)
  {
LABEL_972:
    if ((v299 & 0x1000) == 0)
    {
      goto LABEL_973;
    }

    goto LABEL_1142;
  }

LABEL_1141:
  *(v3 + 904) = *(a2 + 904);
  if ((v299 & 0x1000) == 0)
  {
LABEL_973:
    if ((v299 & 0x2000) == 0)
    {
      goto LABEL_974;
    }

    goto LABEL_1143;
  }

LABEL_1142:
  *(v3 + 905) = *(a2 + 905);
  if ((v299 & 0x2000) == 0)
  {
LABEL_974:
    if ((v299 & 0x4000) == 0)
    {
      goto LABEL_975;
    }

LABEL_1144:
    *(v3 + 907) = *(a2 + 907);
    if ((v299 & 0x8000) == 0)
    {
      goto LABEL_977;
    }

    goto LABEL_976;
  }

LABEL_1143:
  *(v3 + 906) = *(a2 + 906);
  if ((v299 & 0x4000) != 0)
  {
    goto LABEL_1144;
  }

LABEL_975:
  if ((v299 & 0x8000) != 0)
  {
LABEL_976:
    *(v3 + 908) = *(a2 + 908);
  }

LABEL_977:
  *(v3 + 28) |= v299;
LABEL_978:
  if ((v299 & 0xFF0000) == 0)
  {
    goto LABEL_989;
  }

  if ((v299 & 0x10000) != 0)
  {
    *(v3 + 909) = *(a2 + 909);
    if ((v299 & 0x20000) == 0)
    {
LABEL_981:
      if ((v299 & 0x40000) == 0)
      {
        goto LABEL_982;
      }

      goto LABEL_1148;
    }
  }

  else if ((v299 & 0x20000) == 0)
  {
    goto LABEL_981;
  }

  *(v3 + 910) = *(a2 + 910);
  if ((v299 & 0x40000) == 0)
  {
LABEL_982:
    if ((v299 & 0x80000) == 0)
    {
      goto LABEL_983;
    }

    goto LABEL_1149;
  }

LABEL_1148:
  *(v3 + 911) = *(a2 + 911);
  if ((v299 & 0x80000) == 0)
  {
LABEL_983:
    if ((v299 & 0x100000) == 0)
    {
      goto LABEL_984;
    }

    goto LABEL_1150;
  }

LABEL_1149:
  *(v3 + 912) = *(a2 + 912);
  if ((v299 & 0x100000) == 0)
  {
LABEL_984:
    if ((v299 & 0x200000) == 0)
    {
      goto LABEL_985;
    }

    goto LABEL_1151;
  }

LABEL_1150:
  *(v3 + 913) = *(a2 + 913);
  if ((v299 & 0x200000) == 0)
  {
LABEL_985:
    if ((v299 & 0x400000) == 0)
    {
      goto LABEL_986;
    }

LABEL_1152:
    *(v3 + 915) = *(a2 + 915);
    if ((v299 & 0x800000) == 0)
    {
      goto LABEL_988;
    }

    goto LABEL_987;
  }

LABEL_1151:
  *(v3 + 914) = *(a2 + 914);
  if ((v299 & 0x400000) != 0)
  {
    goto LABEL_1152;
  }

LABEL_986:
  if ((v299 & 0x800000) != 0)
  {
LABEL_987:
    *(v3 + 916) = *(a2 + 916);
  }

LABEL_988:
  *(v3 + 28) |= v299;
LABEL_989:
  if (!HIBYTE(v299))
  {
    goto LABEL_999;
  }

  if ((v299 & 0x1000000) != 0)
  {
    *(v3 + 917) = *(a2 + 917);
    if ((v299 & 0x2000000) == 0)
    {
LABEL_992:
      if ((v299 & 0x4000000) == 0)
      {
        goto LABEL_993;
      }

      goto LABEL_1226;
    }
  }

  else if ((v299 & 0x2000000) == 0)
  {
    goto LABEL_992;
  }

  *(v3 + 918) = *(a2 + 918);
  if ((v299 & 0x4000000) == 0)
  {
LABEL_993:
    if ((v299 & 0x8000000) == 0)
    {
      goto LABEL_994;
    }

    goto LABEL_1227;
  }

LABEL_1226:
  *(v3 + 919) = *(a2 + 919);
  if ((v299 & 0x8000000) == 0)
  {
LABEL_994:
    if ((v299 & 0x10000000) == 0)
    {
      goto LABEL_995;
    }

    goto LABEL_1228;
  }

LABEL_1227:
  *(v3 + 920) = *(a2 + 920);
  if ((v299 & 0x10000000) == 0)
  {
LABEL_995:
    if ((v299 & 0x20000000) == 0)
    {
      goto LABEL_996;
    }

    goto LABEL_1229;
  }

LABEL_1228:
  *(v3 + 921) = *(a2 + 921);
  if ((v299 & 0x20000000) == 0)
  {
LABEL_996:
    if ((v299 & 0x40000000) == 0)
    {
      goto LABEL_997;
    }

LABEL_1230:
    *(v3 + 923) = *(a2 + 923);
    if ((v299 & 0x80000000) == 0)
    {
      goto LABEL_998;
    }

LABEL_1231:
    *(v3 + 924) = *(a2 + 924);
    goto LABEL_998;
  }

LABEL_1229:
  *(v3 + 922) = *(a2 + 922);
  if ((v299 & 0x40000000) != 0)
  {
    goto LABEL_1230;
  }

LABEL_997:
  if ((v299 & 0x80000000) != 0)
  {
    goto LABEL_1231;
  }

LABEL_998:
  *(v3 + 28) |= v299;
LABEL_999:
  v324 = *(a2 + 32);
  if (!v324)
  {
    goto LABEL_1010;
  }

  if (v324)
  {
    *(v3 + 925) = *(a2 + 925);
    if ((v324 & 2) == 0)
    {
LABEL_1002:
      if ((v324 & 4) == 0)
      {
        goto LABEL_1003;
      }

      goto LABEL_1156;
    }
  }

  else if ((v324 & 2) == 0)
  {
    goto LABEL_1002;
  }

  *(v3 + 926) = *(a2 + 926);
  if ((v324 & 4) == 0)
  {
LABEL_1003:
    if ((v324 & 8) == 0)
    {
      goto LABEL_1004;
    }

    goto LABEL_1157;
  }

LABEL_1156:
  *(v3 + 927) = *(a2 + 927);
  if ((v324 & 8) == 0)
  {
LABEL_1004:
    if ((v324 & 0x10) == 0)
    {
      goto LABEL_1005;
    }

    goto LABEL_1158;
  }

LABEL_1157:
  *(v3 + 928) = *(a2 + 928);
  if ((v324 & 0x10) == 0)
  {
LABEL_1005:
    if ((v324 & 0x20) == 0)
    {
      goto LABEL_1006;
    }

    goto LABEL_1159;
  }

LABEL_1158:
  *(v3 + 929) = *(a2 + 929);
  if ((v324 & 0x20) == 0)
  {
LABEL_1006:
    if ((v324 & 0x40) == 0)
    {
      goto LABEL_1007;
    }

LABEL_1160:
    *(v3 + 931) = *(a2 + 931);
    if ((v324 & 0x80) == 0)
    {
      goto LABEL_1009;
    }

    goto LABEL_1008;
  }

LABEL_1159:
  *(v3 + 930) = *(a2 + 930);
  if ((v324 & 0x40) != 0)
  {
    goto LABEL_1160;
  }

LABEL_1007:
  if ((v324 & 0x80) != 0)
  {
LABEL_1008:
    *(v3 + 932) = *(a2 + 932);
  }

LABEL_1009:
  *(v3 + 32) |= v324;
LABEL_1010:
  if ((v324 & 0xFF00) == 0)
  {
    goto LABEL_1021;
  }

  if ((v324 & 0x100) != 0)
  {
    *(v3 + 933) = *(a2 + 933);
    if ((v324 & 0x200) == 0)
    {
LABEL_1013:
      if ((v324 & 0x400) == 0)
      {
        goto LABEL_1014;
      }

      goto LABEL_1164;
    }
  }

  else if ((v324 & 0x200) == 0)
  {
    goto LABEL_1013;
  }

  *(v3 + 934) = *(a2 + 934);
  if ((v324 & 0x400) == 0)
  {
LABEL_1014:
    if ((v324 & 0x800) == 0)
    {
      goto LABEL_1015;
    }

    goto LABEL_1165;
  }

LABEL_1164:
  *(v3 + 935) = *(a2 + 935);
  if ((v324 & 0x800) == 0)
  {
LABEL_1015:
    if ((v324 & 0x1000) == 0)
    {
      goto LABEL_1016;
    }

    goto LABEL_1166;
  }

LABEL_1165:
  *(v3 + 936) = *(a2 + 936);
  if ((v324 & 0x1000) == 0)
  {
LABEL_1016:
    if ((v324 & 0x2000) == 0)
    {
      goto LABEL_1017;
    }

    goto LABEL_1167;
  }

LABEL_1166:
  *(v3 + 937) = *(a2 + 937);
  if ((v324 & 0x2000) == 0)
  {
LABEL_1017:
    if ((v324 & 0x4000) == 0)
    {
      goto LABEL_1018;
    }

LABEL_1168:
    *(v3 + 939) = *(a2 + 939);
    if ((v324 & 0x8000) == 0)
    {
      goto LABEL_1020;
    }

    goto LABEL_1019;
  }

LABEL_1167:
  *(v3 + 938) = *(a2 + 938);
  if ((v324 & 0x4000) != 0)
  {
    goto LABEL_1168;
  }

LABEL_1018:
  if ((v324 & 0x8000) != 0)
  {
LABEL_1019:
    *(v3 + 940) = *(a2 + 940);
  }

LABEL_1020:
  *(v3 + 32) |= v324;
LABEL_1021:
  if ((v324 & 0xFF0000) == 0)
  {
    goto LABEL_1032;
  }

  if ((v324 & 0x10000) != 0)
  {
    *(v3 + 941) = *(a2 + 941);
    if ((v324 & 0x20000) == 0)
    {
LABEL_1024:
      if ((v324 & 0x40000) == 0)
      {
        goto LABEL_1025;
      }

      goto LABEL_1172;
    }
  }

  else if ((v324 & 0x20000) == 0)
  {
    goto LABEL_1024;
  }

  *(v3 + 942) = *(a2 + 942);
  if ((v324 & 0x40000) == 0)
  {
LABEL_1025:
    if ((v324 & 0x80000) == 0)
    {
      goto LABEL_1026;
    }

    goto LABEL_1173;
  }

LABEL_1172:
  *(v3 + 943) = *(a2 + 943);
  if ((v324 & 0x80000) == 0)
  {
LABEL_1026:
    if ((v324 & 0x100000) == 0)
    {
      goto LABEL_1027;
    }

    goto LABEL_1174;
  }

LABEL_1173:
  *(v3 + 944) = *(a2 + 944);
  if ((v324 & 0x100000) == 0)
  {
LABEL_1027:
    if ((v324 & 0x200000) == 0)
    {
      goto LABEL_1028;
    }

    goto LABEL_1175;
  }

LABEL_1174:
  *(v3 + 945) = *(a2 + 945);
  if ((v324 & 0x200000) == 0)
  {
LABEL_1028:
    if ((v324 & 0x400000) == 0)
    {
      goto LABEL_1029;
    }

LABEL_1176:
    *(v3 + 947) = *(a2 + 947);
    if ((v324 & 0x800000) == 0)
    {
      goto LABEL_1031;
    }

    goto LABEL_1030;
  }

LABEL_1175:
  *(v3 + 946) = *(a2 + 946);
  if ((v324 & 0x400000) != 0)
  {
    goto LABEL_1176;
  }

LABEL_1029:
  if ((v324 & 0x800000) != 0)
  {
LABEL_1030:
    *(v3 + 948) = *(a2 + 948);
  }

LABEL_1031:
  *(v3 + 32) |= v324;
LABEL_1032:
  if (!HIBYTE(v324))
  {
    goto LABEL_1042;
  }

  if ((v324 & 0x1000000) != 0)
  {
    *(v3 + 949) = *(a2 + 949);
    if ((v324 & 0x2000000) == 0)
    {
LABEL_1035:
      if ((v324 & 0x4000000) == 0)
      {
        goto LABEL_1036;
      }

      goto LABEL_1234;
    }
  }

  else if ((v324 & 0x2000000) == 0)
  {
    goto LABEL_1035;
  }

  *(v3 + 950) = *(a2 + 950);
  if ((v324 & 0x4000000) == 0)
  {
LABEL_1036:
    if ((v324 & 0x8000000) == 0)
    {
      goto LABEL_1037;
    }

    goto LABEL_1235;
  }

LABEL_1234:
  *(v3 + 951) = *(a2 + 951);
  if ((v324 & 0x8000000) == 0)
  {
LABEL_1037:
    if ((v324 & 0x10000000) == 0)
    {
      goto LABEL_1038;
    }

    goto LABEL_1236;
  }

LABEL_1235:
  *(v3 + 952) = *(a2 + 952);
  if ((v324 & 0x10000000) == 0)
  {
LABEL_1038:
    if ((v324 & 0x20000000) == 0)
    {
      goto LABEL_1039;
    }

    goto LABEL_1237;
  }

LABEL_1236:
  *(v3 + 953) = *(a2 + 953);
  if ((v324 & 0x20000000) == 0)
  {
LABEL_1039:
    if ((v324 & 0x40000000) == 0)
    {
      goto LABEL_1040;
    }

LABEL_1238:
    *(v3 + 955) = *(a2 + 955);
    if ((v324 & 0x80000000) == 0)
    {
      goto LABEL_1041;
    }

LABEL_1239:
    *(v3 + 956) = *(a2 + 956);
    goto LABEL_1041;
  }

LABEL_1237:
  *(v3 + 954) = *(a2 + 954);
  if ((v324 & 0x40000000) != 0)
  {
    goto LABEL_1238;
  }

LABEL_1040:
  if ((v324 & 0x80000000) != 0)
  {
    goto LABEL_1239;
  }

LABEL_1041:
  *(v3 + 32) |= v324;
LABEL_1042:
  v325 = *(a2 + 36);
  if (!v325)
  {
    goto LABEL_1053;
  }

  if (v325)
  {
    *(v3 + 957) = *(a2 + 957);
    if ((v325 & 2) == 0)
    {
LABEL_1045:
      if ((v325 & 4) == 0)
      {
        goto LABEL_1046;
      }

      goto LABEL_1180;
    }
  }

  else if ((v325 & 2) == 0)
  {
    goto LABEL_1045;
  }

  *(v3 + 958) = *(a2 + 958);
  if ((v325 & 4) == 0)
  {
LABEL_1046:
    if ((v325 & 8) == 0)
    {
      goto LABEL_1047;
    }

    goto LABEL_1181;
  }

LABEL_1180:
  *(v3 + 959) = *(a2 + 959);
  if ((v325 & 8) == 0)
  {
LABEL_1047:
    if ((v325 & 0x10) == 0)
    {
      goto LABEL_1048;
    }

    goto LABEL_1182;
  }

LABEL_1181:
  *(v3 + 960) = *(a2 + 960);
  if ((v325 & 0x10) == 0)
  {
LABEL_1048:
    if ((v325 & 0x20) == 0)
    {
      goto LABEL_1049;
    }

    goto LABEL_1183;
  }

LABEL_1182:
  *(v3 + 961) = *(a2 + 961);
  if ((v325 & 0x20) == 0)
  {
LABEL_1049:
    if ((v325 & 0x40) == 0)
    {
      goto LABEL_1050;
    }

LABEL_1184:
    *(v3 + 963) = *(a2 + 963);
    if ((v325 & 0x80) == 0)
    {
      goto LABEL_1052;
    }

    goto LABEL_1051;
  }

LABEL_1183:
  *(v3 + 962) = *(a2 + 962);
  if ((v325 & 0x40) != 0)
  {
    goto LABEL_1184;
  }

LABEL_1050:
  if ((v325 & 0x80) != 0)
  {
LABEL_1051:
    *(v3 + 964) = *(a2 + 964);
  }

LABEL_1052:
  *(v3 + 36) |= v325;
LABEL_1053:
  if ((v325 & 0xFF00) == 0)
  {
    goto LABEL_1064;
  }

  if ((v325 & 0x100) != 0)
  {
    *(v3 + 965) = *(a2 + 965);
    if ((v325 & 0x200) == 0)
    {
LABEL_1056:
      if ((v325 & 0x400) == 0)
      {
        goto LABEL_1057;
      }

      goto LABEL_1188;
    }
  }

  else if ((v325 & 0x200) == 0)
  {
    goto LABEL_1056;
  }

  *(v3 + 966) = *(a2 + 966);
  if ((v325 & 0x400) == 0)
  {
LABEL_1057:
    if ((v325 & 0x800) == 0)
    {
      goto LABEL_1058;
    }

    goto LABEL_1189;
  }

LABEL_1188:
  *(v3 + 967) = *(a2 + 967);
  if ((v325 & 0x800) == 0)
  {
LABEL_1058:
    if ((v325 & 0x1000) == 0)
    {
      goto LABEL_1059;
    }

    goto LABEL_1190;
  }

LABEL_1189:
  *(v3 + 968) = *(a2 + 968);
  if ((v325 & 0x1000) == 0)
  {
LABEL_1059:
    if ((v325 & 0x2000) == 0)
    {
      goto LABEL_1060;
    }

    goto LABEL_1191;
  }

LABEL_1190:
  *(v3 + 969) = *(a2 + 969);
  if ((v325 & 0x2000) == 0)
  {
LABEL_1060:
    if ((v325 & 0x4000) == 0)
    {
      goto LABEL_1061;
    }

LABEL_1192:
    *(v3 + 971) = *(a2 + 971);
    if ((v325 & 0x8000) == 0)
    {
      goto LABEL_1063;
    }

    goto LABEL_1062;
  }

LABEL_1191:
  *(v3 + 970) = *(a2 + 970);
  if ((v325 & 0x4000) != 0)
  {
    goto LABEL_1192;
  }

LABEL_1061:
  if ((v325 & 0x8000) != 0)
  {
LABEL_1062:
    *(v3 + 972) = *(a2 + 972);
  }

LABEL_1063:
  *(v3 + 36) |= v325;
LABEL_1064:
  if ((v325 & 0xFF0000) == 0)
  {
    goto LABEL_1075;
  }

  if ((v325 & 0x10000) != 0)
  {
    *(v3 + 973) = *(a2 + 973);
    if ((v325 & 0x20000) == 0)
    {
LABEL_1067:
      if ((v325 & 0x40000) == 0)
      {
        goto LABEL_1068;
      }

      goto LABEL_1196;
    }
  }

  else if ((v325 & 0x20000) == 0)
  {
    goto LABEL_1067;
  }

  *(v3 + 974) = *(a2 + 974);
  if ((v325 & 0x40000) == 0)
  {
LABEL_1068:
    if ((v325 & 0x80000) == 0)
    {
      goto LABEL_1069;
    }

    goto LABEL_1197;
  }

LABEL_1196:
  *(v3 + 975) = *(a2 + 975);
  if ((v325 & 0x80000) == 0)
  {
LABEL_1069:
    if ((v325 & 0x100000) == 0)
    {
      goto LABEL_1070;
    }

    goto LABEL_1198;
  }

LABEL_1197:
  *(v3 + 976) = *(a2 + 976);
  if ((v325 & 0x100000) == 0)
  {
LABEL_1070:
    if ((v325 & 0x200000) == 0)
    {
      goto LABEL_1071;
    }

    goto LABEL_1199;
  }

LABEL_1198:
  *(v3 + 977) = *(a2 + 977);
  if ((v325 & 0x200000) == 0)
  {
LABEL_1071:
    if ((v325 & 0x400000) == 0)
    {
      goto LABEL_1072;
    }

LABEL_1200:
    *(v3 + 979) = *(a2 + 979);
    if ((v325 & 0x800000) == 0)
    {
      goto LABEL_1074;
    }

    goto LABEL_1073;
  }

LABEL_1199:
  *(v3 + 978) = *(a2 + 978);
  if ((v325 & 0x400000) != 0)
  {
    goto LABEL_1200;
  }

LABEL_1072:
  if ((v325 & 0x800000) != 0)
  {
LABEL_1073:
    *(v3 + 980) = *(a2 + 980);
  }

LABEL_1074:
  *(v3 + 36) |= v325;
LABEL_1075:
  if (!HIBYTE(v325))
  {
    goto LABEL_1085;
  }

  if ((v325 & 0x1000000) != 0)
  {
    *(v3 + 981) = *(a2 + 981);
    if ((v325 & 0x2000000) == 0)
    {
LABEL_1078:
      if ((v325 & 0x4000000) == 0)
      {
        goto LABEL_1079;
      }

      goto LABEL_1242;
    }
  }

  else if ((v325 & 0x2000000) == 0)
  {
    goto LABEL_1078;
  }

  *(v3 + 982) = *(a2 + 982);
  if ((v325 & 0x4000000) == 0)
  {
LABEL_1079:
    if ((v325 & 0x8000000) == 0)
    {
      goto LABEL_1080;
    }

    goto LABEL_1243;
  }

LABEL_1242:
  *(v3 + 983) = *(a2 + 983);
  if ((v325 & 0x8000000) == 0)
  {
LABEL_1080:
    if ((v325 & 0x10000000) == 0)
    {
      goto LABEL_1081;
    }

    goto LABEL_1244;
  }

LABEL_1243:
  *(v3 + 984) = *(a2 + 984);
  if ((v325 & 0x10000000) == 0)
  {
LABEL_1081:
    if ((v325 & 0x20000000) == 0)
    {
      goto LABEL_1082;
    }

    goto LABEL_1245;
  }

LABEL_1244:
  *(v3 + 985) = *(a2 + 985);
  if ((v325 & 0x20000000) == 0)
  {
LABEL_1082:
    if ((v325 & 0x40000000) == 0)
    {
      goto LABEL_1083;
    }

LABEL_1246:
    *(v3 + 987) = *(a2 + 987);
    if ((v325 & 0x80000000) == 0)
    {
      goto LABEL_1084;
    }

LABEL_1247:
    *(v3 + 988) = *(a2 + 988);
    goto LABEL_1084;
  }

LABEL_1245:
  *(v3 + 986) = *(a2 + 986);
  if ((v325 & 0x40000000) != 0)
  {
    goto LABEL_1246;
  }

LABEL_1083:
  if ((v325 & 0x80000000) != 0)
  {
    goto LABEL_1247;
  }

LABEL_1084:
  *(v3 + 36) |= v325;
LABEL_1085:
  v326 = *(a2 + 40);
  if (!v326)
  {
    goto LABEL_1096;
  }

  if (v326)
  {
    *(v3 + 989) = *(a2 + 989);
    if ((v326 & 2) == 0)
    {
LABEL_1088:
      if ((v326 & 4) == 0)
      {
        goto LABEL_1089;
      }

      goto LABEL_1204;
    }
  }

  else if ((v326 & 2) == 0)
  {
    goto LABEL_1088;
  }

  *(v3 + 990) = *(a2 + 990);
  if ((v326 & 4) == 0)
  {
LABEL_1089:
    if ((v326 & 8) == 0)
    {
      goto LABEL_1090;
    }

    goto LABEL_1205;
  }

LABEL_1204:
  *(v3 + 991) = *(a2 + 991);
  if ((v326 & 8) == 0)
  {
LABEL_1090:
    if ((v326 & 0x10) == 0)
    {
      goto LABEL_1091;
    }

    goto LABEL_1206;
  }

LABEL_1205:
  *(v3 + 992) = *(a2 + 992);
  if ((v326 & 0x10) == 0)
  {
LABEL_1091:
    if ((v326 & 0x20) == 0)
    {
      goto LABEL_1092;
    }

    goto LABEL_1207;
  }

LABEL_1206:
  *(v3 + 993) = *(a2 + 993);
  if ((v326 & 0x20) == 0)
  {
LABEL_1092:
    if ((v326 & 0x40) == 0)
    {
      goto LABEL_1093;
    }

LABEL_1208:
    *(v3 + 995) = *(a2 + 995);
    if ((v326 & 0x80) == 0)
    {
      goto LABEL_1095;
    }

    goto LABEL_1094;
  }

LABEL_1207:
  *(v3 + 994) = *(a2 + 994);
  if ((v326 & 0x40) != 0)
  {
    goto LABEL_1208;
  }

LABEL_1093:
  if ((v326 & 0x80) != 0)
  {
LABEL_1094:
    *(v3 + 996) = *(a2 + 996);
  }

LABEL_1095:
  *(v3 + 40) |= v326;
LABEL_1096:
  if ((v326 & 0xFF00) == 0)
  {
    goto LABEL_1107;
  }

  if ((v326 & 0x100) != 0)
  {
    *(v3 + 997) = *(a2 + 997);
    if ((v326 & 0x200) == 0)
    {
LABEL_1099:
      if ((v326 & 0x400) == 0)
      {
        goto LABEL_1100;
      }

      goto LABEL_1212;
    }
  }

  else if ((v326 & 0x200) == 0)
  {
    goto LABEL_1099;
  }

  *(v3 + 998) = *(a2 + 998);
  if ((v326 & 0x400) == 0)
  {
LABEL_1100:
    if ((v326 & 0x800) == 0)
    {
      goto LABEL_1101;
    }

    goto LABEL_1213;
  }

LABEL_1212:
  *(v3 + 999) = *(a2 + 999);
  if ((v326 & 0x800) == 0)
  {
LABEL_1101:
    if ((v326 & 0x1000) == 0)
    {
      goto LABEL_1102;
    }

    goto LABEL_1214;
  }

LABEL_1213:
  *(v3 + 1000) = *(a2 + 1000);
  if ((v326 & 0x1000) == 0)
  {
LABEL_1102:
    if ((v326 & 0x2000) == 0)
    {
      goto LABEL_1103;
    }

    goto LABEL_1215;
  }

LABEL_1214:
  *(v3 + 1001) = *(a2 + 1001);
  if ((v326 & 0x2000) == 0)
  {
LABEL_1103:
    if ((v326 & 0x4000) == 0)
    {
      goto LABEL_1104;
    }

LABEL_1216:
    *(v3 + 1003) = *(a2 + 1003);
    if ((v326 & 0x8000) == 0)
    {
      goto LABEL_1106;
    }

    goto LABEL_1105;
  }

LABEL_1215:
  *(v3 + 1002) = *(a2 + 1002);
  if ((v326 & 0x4000) != 0)
  {
    goto LABEL_1216;
  }

LABEL_1104:
  if ((v326 & 0x8000) != 0)
  {
LABEL_1105:
    *(v3 + 1004) = *(a2 + 1004);
  }

LABEL_1106:
  *(v3 + 40) |= v326;
LABEL_1107:
  if ((v326 & 0x3F0000) == 0)
  {
    return result;
  }

  if ((v326 & 0x10000) != 0)
  {
    *(v3 + 1005) = *(a2 + 1005);
    if ((v326 & 0x20000) == 0)
    {
LABEL_1110:
      if ((v326 & 0x40000) == 0)
      {
        goto LABEL_1111;
      }

      goto LABEL_1220;
    }
  }

  else if ((v326 & 0x20000) == 0)
  {
    goto LABEL_1110;
  }

  *(v3 + 1006) = *(a2 + 1006);
  if ((v326 & 0x40000) == 0)
  {
LABEL_1111:
    if ((v326 & 0x80000) == 0)
    {
      goto LABEL_1112;
    }

    goto LABEL_1221;
  }

LABEL_1220:
  *(v3 + 1007) = *(a2 + 1007);
  if ((v326 & 0x80000) == 0)
  {
LABEL_1112:
    if ((v326 & 0x100000) == 0)
    {
      goto LABEL_1113;
    }

LABEL_1222:
    *(v3 + 1009) = *(a2 + 1009);
    if ((v326 & 0x200000) == 0)
    {
      goto LABEL_1115;
    }

    goto LABEL_1114;
  }

LABEL_1221:
  *(v3 + 1008) = *(a2 + 1008);
  if ((v326 & 0x100000) != 0)
  {
    goto LABEL_1222;
  }

LABEL_1113:
  if ((v326 & 0x200000) != 0)
  {
LABEL_1114:
    *(v3 + 1010) = *(a2 + 1010);
  }

LABEL_1115:
  *(v3 + 40) |= v326;
  return result;
}