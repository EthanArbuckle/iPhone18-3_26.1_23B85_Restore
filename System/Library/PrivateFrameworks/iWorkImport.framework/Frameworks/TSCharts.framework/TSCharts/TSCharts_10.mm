unsigned __int8 *sub_2763C3814(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 56);
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

    a2 = TSDSOS::SpecLineEndArchive::_InternalSerialize(v5, v7, a3);
  }

  if ((*(a1 + 30) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(a1 + 1000);
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

    v12 = *(a1 + 64);
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

    a2 = TSDSOS::SpecLineEndArchive::_InternalSerialize(v12, v14, a3);
  }

  if ((*(a1 + 30) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(a1 + 1001);
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

    v19 = *(a1 + 72);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v19, v21, a3);
  }

  if (*(a1 + 31))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(a1 + 1002);
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

    v26 = *(a1 + 80);
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

    a2 = TSDSOS::SpecLineEndArchive::_InternalSerialize(v26, v28, a3);
  }

  if ((*(a1 + 31) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(a1 + 1003);
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

    v33 = *(a1 + 88);
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

    a2 = TSDSOS::SpecLineEndArchive::_InternalSerialize(v33, v35, a3);
  }

  if ((*(a1 + 31) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(a1 + 1004);
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

    v40 = *(a1 + 96);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v40, v42, a3);
  }

  if ((*(a1 + 31) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(a1 + 1005);
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

    v47 = *(a1 + 104);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v47, v49, a3);
  }

  if ((*(a1 + 31) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v53 = *(a1 + 1006);
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

    v54 = *(a1 + 112);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v54, v56, a3);
  }

  if ((*(a1 + 31) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v60 = *(a1 + 1007);
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

    v61 = *(a1 + 120);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v61, v63, a3);
  }

  if ((*(a1 + 31) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(a1 + 1008);
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

    v68 = *(a1 + 128);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v68, v70, a3);
  }

  if ((*(a1 + 28) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v74 = *(a1 + 1009);
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

    v75 = *(a1 + 136);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v75, v77, a3);
  }

  if (*(a1 + 32))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v81 = *(a1 + 1010);
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

    v82 = *(a1 + 144);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v82, v84, a3);
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v88 = *(a1 + 1011);
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

    v89 = *(a1 + 152);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v89, v91, a3);
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v95 = *(a1 + 1012);
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

    v96 = *(a1 + 160);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v96, v98, a3);
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v102 = *(a1 + 1013);
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

    v103 = *(a1 + 168);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v103, v105, a3);
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v109 = *(a1 + 1014);
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

    v110 = *(a1 + 176);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v110, v112, a3);
  }

  if ((*(a1 + 32) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v116 = *(a1 + 1015);
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

    v117 = *(a1 + 184);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v117, v119, a3);
  }

  if ((*(a1 + 32) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v123 = *(a1 + 1016);
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

    v124 = *(a1 + 192);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v124, v126, a3);
  }

  if ((*(a1 + 32) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v130 = *(a1 + 1017);
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

    v131 = *(a1 + 200);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v131, v133, a3);
  }

  if (*(a1 + 33))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v137 = *(a1 + 1018);
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

    v138 = *(a1 + 208);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v138, v140, a3);
  }

  if ((*(a1 + 33) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v144 = *(a1 + 1019);
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

    v145 = *(a1 + 216);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v145, v147, a3);
  }

  if ((*(a1 + 33) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v151 = *(a1 + 1020);
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

    v152 = *(a1 + 224);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v152, v154, a3);
  }

  if ((*(a1 + 33) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v158 = *(a1 + 1021);
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

    v159 = *(a1 + 232);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v159, v161, a3);
  }

  if ((*(a1 + 33) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v165 = *(a1 + 1022);
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

    v166 = *(a1 + 240);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v166, v168, a3);
  }

  if ((*(a1 + 33) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v172 = *(a1 + 1023);
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

    v173 = *(a1 + 248);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v173, v175, a3);
  }

  if ((*(a1 + 33) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v179 = *(a1 + 1024);
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

    v180 = *(a1 + 256);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v180, v182, a3);
  }

  if ((*(a1 + 33) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v186 = *(a1 + 1025);
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

    v187 = *(a1 + 264);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v187, v189, a3);
  }

  if (*(a1 + 34))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v193 = *(a1 + 1026);
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

    v194 = *(a1 + 272);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v194, v196, a3);
  }

  if ((*(a1 + 34) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v200 = *(a1 + 1027);
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

    v201 = *(a1 + 280);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v201, v203, a3);
  }

  if ((*(a1 + 34) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v207 = *(a1 + 1028);
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

    v208 = *(a1 + 288);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v208, v210, a3);
  }

  if ((*(a1 + 34) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v214 = *(a1 + 1029);
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

    v215 = *(a1 + 296);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v215, v217, a3);
  }

  if ((*(a1 + 34) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v221 = *(a1 + 1030);
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

    v222 = *(a1 + 304);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v222, v224, a3);
  }

  if ((*(a1 + 34) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v228 = *(a1 + 1031);
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

    v229 = *(a1 + 312);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v229, v231, a3);
  }

  if ((*(a1 + 34) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v235 = *(a1 + 1032);
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

    v236 = *(a1 + 320);
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

  if ((*(a1 + 34) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v242 = *(a1 + 1033);
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

    v243 = *(a1 + 328);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v243, v245, a3);
  }

  if (*(a1 + 35))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v249 = *(a1 + 1034);
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

    v250 = *(a1 + 336);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v250, v252, a3);
  }

  if ((*(a1 + 35) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v256 = *(a1 + 1035);
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

    v257 = *(a1 + 344);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v257, v259, a3);
  }

  if ((*(a1 + 35) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v263 = *(a1 + 1036);
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

    v264 = *(a1 + 352);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v264, v266, a3);
  }

  if ((*(a1 + 35) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v270 = *(a1 + 1037);
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

    v271 = *(a1 + 360);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v271, v273, a3);
  }

  if ((*(a1 + 35) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v277 = *(a1 + 1038);
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

    v278 = *(a1 + 368);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v278, v280, a3);
  }

  if ((*(a1 + 35) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v284 = *(a1 + 1039);
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

    v285 = *(a1 + 376);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v285, v287, a3);
  }

  if ((*(a1 + 35) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v291 = *(a1 + 1040);
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

    v292 = *(a1 + 384);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v292, v294, a3);
  }

  if ((*(a1 + 32) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v298 = *(a1 + 1041);
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

    v299 = *(a1 + 392);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v299, v301, a3);
  }

  if (*(a1 + 36))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v305 = *(a1 + 1042);
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

    v306 = *(a1 + 400);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v306, v308, a3);
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v312 = *(a1 + 1043);
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

    v313 = *(a1 + 408);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v313, v315, a3);
  }

  if ((*(a1 + 36) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v319 = *(a1 + 1044);
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

    v320 = *(a1 + 416);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v320, v322, a3);
  }

  if ((*(a1 + 36) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v326 = *(a1 + 1045);
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

    v327 = *(a1 + 424);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v327, v329, a3);
  }

  if ((*(a1 + 36) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v333 = *(a1 + 1046);
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

    v334 = *(a1 + 432);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v334, v336, a3);
  }

  if ((*(a1 + 36) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v340 = *(a1 + 1047);
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

    v341 = *(a1 + 440);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v341, v343, a3);
  }

  if ((*(a1 + 36) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v347 = *(a1 + 1048);
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

    v348 = *(a1 + 448);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v348, v350, a3);
  }

  if ((*(a1 + 36) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v354 = *(a1 + 1049);
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

    v355 = *(a1 + 456);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v355, v357, a3);
  }

  if (*(a1 + 37))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v361 = *(a1 + 1050);
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

    v362 = *(a1 + 464);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v362, v364, a3);
  }

  if ((*(a1 + 37) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v368 = *(a1 + 1051);
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

    v369 = *(a1 + 472);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v369, v371, a3);
  }

  if ((*(a1 + 37) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v375 = *(a1 + 1052);
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

    v376 = *(a1 + 480);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v376, v378, a3);
  }

  if ((*(a1 + 37) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v382 = *(a1 + 1053);
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

    v383 = *(a1 + 488);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v383, v385, a3);
  }

  if ((*(a1 + 37) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v389 = *(a1 + 1054);
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

    v390 = *(a1 + 496);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v390, v392, a3);
  }

  if ((*(a1 + 37) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v396 = *(a1 + 1055);
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

    v397 = *(a1 + 504);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v397, v399, a3);
  }

  if ((*(a1 + 37) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v403 = *(a1 + 1056);
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

    v404 = *(a1 + 512);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v404, v406, a3);
  }

  if ((*(a1 + 37) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v410 = *(a1 + 1057);
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

    v411 = *(a1 + 520);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v411, v413, a3);
  }

  if (*(a1 + 38))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v417 = *(a1 + 1058);
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

    v418 = *(a1 + 528);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v418, v420, a3);
  }

  if ((*(a1 + 38) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v424 = *(a1 + 1059);
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

    v425 = *(a1 + 536);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v425, v427, a3);
  }

  if ((*(a1 + 38) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v431 = *(a1 + 1060);
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

    v432 = *(a1 + 544);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v432, v434, a3);
  }

  if ((*(a1 + 38) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v438 = *(a1 + 1061);
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

    v439 = *(a1 + 552);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v439, v441, a3);
  }

  if ((*(a1 + 38) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v445 = *(a1 + 1062);
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

    v446 = *(a1 + 560);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v446, v448, a3);
  }

  if ((*(a1 + 38) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v452 = *(a1 + 1063);
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

    v453 = *(a1 + 568);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v453, v455, a3);
  }

  if ((*(a1 + 38) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v459 = *(a1 + 1064);
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

    v460 = *(a1 + 576);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v460, v462, a3);
  }

  if ((*(a1 + 38) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v466 = *(a1 + 1065);
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

    v467 = *(a1 + 584);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v467, v469, a3);
  }

  if (*(a1 + 39))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v473 = *(a1 + 1066);
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

    v474 = *(a1 + 592);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v474, v476, a3);
  }

  if ((*(a1 + 39) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v480 = *(a1 + 1067);
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

    v481 = *(a1 + 600);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v481, v483, a3);
  }

  if ((*(a1 + 39) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v487 = *(a1 + 1068);
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

    v488 = *(a1 + 608);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v488, v490, a3);
  }

  if ((*(a1 + 39) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v494 = *(a1 + 1069);
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

    v495 = *(a1 + 616);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v495, v497, a3);
  }

  if ((*(a1 + 39) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v501 = *(a1 + 1070);
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

    v502 = *(a1 + 624);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v502, v504, a3);
  }

  if ((*(a1 + 39) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v508 = *(a1 + 1071);
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

    v509 = *(a1 + 632);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v509, v511, a3);
  }

  if ((*(a1 + 39) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v515 = *(a1 + 1072);
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

    v516 = *(a1 + 640);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v516, v518, a3);
  }

  if ((*(a1 + 36) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v522 = *(a1 + 1073);
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

    v523 = *(a1 + 648);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v523, v525, a3);
  }

  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v529 = *(a1 + 1074);
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

    v530 = *(a1 + 656);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v530, v532, a3);
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v536 = *(a1 + 1075);
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

    v537 = *(a1 + 664);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v537, v539, a3);
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v543 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    else
    {
      v543 = a2;
    }

    v544 = *(a1 + 1076);
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

    v545 = *(a1 + 672);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v545, v547, a3);
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v551 = *(a1 + 1077);
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

    v552 = *(a1 + 680);
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

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v558 = *(a1 + 1078);
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

    v559 = *(a1 + 688);
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

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v565 = *(a1 + 1079);
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

    v566 = *(a1 + 696);
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

  if ((*(a1 + 40) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v572 = *(a1 + 1080);
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

    v573 = *(a1 + 704);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v573, v575, a3);
  }

  if ((*(a1 + 40) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v579 = *(a1 + 1081);
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

    v580 = *(a1 + 712);
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

  if (*(a1 + 41))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v586 = *(a1 + 1082);
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

    v587 = *(a1 + 720);
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

  if ((*(a1 + 41) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v593 = *(a1 + 1083);
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

    v594 = *(a1 + 728);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v594, v596, a3);
  }

  if ((*(a1 + 41) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v600 = *(a1 + 1084);
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

    v601 = *(a1 + 736);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v601, v603, a3);
  }

  if ((*(a1 + 41) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v607 = *(a1 + 1085);
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

    v608 = *(a1 + 744);
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

  if ((*(a1 + 41) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v614 = *(a1 + 1086);
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

    v615 = *(a1 + 752);
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

  if ((*(a1 + 41) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v621 = *(a1 + 1087);
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

    v622 = *(a1 + 760);
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

  if ((*(a1 + 41) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v628 = *(a1 + 1088);
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

    v629 = *(a1 + 768);
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

  if ((*(a1 + 41) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v635 = *(a1 + 1089);
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

    v636 = *(a1 + 776);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v636, v638, a3);
  }

  if (*(a1 + 42))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v642 = *(a1 + 1090);
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

    v643 = *(a1 + 784);
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

  if ((*(a1 + 42) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v649 = *(a1 + 1091);
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

    v650 = *(a1 + 792);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v650, v652, a3);
  }

  if ((*(a1 + 42) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v656 = *(a1 + 1092);
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

    v657 = *(a1 + 800);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v657, v659, a3);
  }

  if ((*(a1 + 42) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v663 = *(a1 + 1093);
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

    v664 = *(a1 + 808);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v664, v666, a3);
  }

  if ((*(a1 + 42) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v670 = *(a1 + 1094);
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

    v671 = *(a1 + 816);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v671, v673, a3);
  }

  if ((*(a1 + 42) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v677 = *(a1 + 1095);
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

    v678 = *(a1 + 824);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v678, v680, a3);
  }

  if ((*(a1 + 42) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v684 = *(a1 + 1096);
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

    v685 = *(a1 + 832);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v685, v687, a3);
  }

  if ((*(a1 + 42) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v691 = *(a1 + 1097);
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

    v692 = *(a1 + 840);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v692, v694, a3);
  }

  if (*(a1 + 43))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v698 = *(a1 + 1098);
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

    v699 = *(a1 + 848);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v699, v701, a3);
  }

  if ((*(a1 + 43) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v705 = *(a1 + 1099);
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

    v706 = *(a1 + 856);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v706, v708, a3);
  }

  if ((*(a1 + 43) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v712 = *(a1 + 1100);
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

    v713 = *(a1 + 864);
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

  if ((*(a1 + 43) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v719 = *(a1 + 1101);
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

    v720 = *(a1 + 872);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v720, v722, a3);
  }

  if ((*(a1 + 43) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v726 = *(a1 + 1102);
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

    v727 = *(a1 + 880);
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

  if ((*(a1 + 43) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v733 = *(a1 + 1103);
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

    v734 = *(a1 + 888);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v734, v736, a3);
  }

  if ((*(a1 + 43) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v740 = *(a1 + 1104);
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

    v741 = *(a1 + 896);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v741, v743, a3);
  }

  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v747 = *(a1 + 1105);
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

    v748 = *(a1 + 904);
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

  if (*(a1 + 44))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v754 = *(a1 + 1106);
    *a2 = 3504;
    a2[2] = v754;
    a2 += 3;
  }

  if ((*(a1 + 29) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v755 = *(a1 + 912);
    *a2 = 3514;
    v756 = *(v755 + 5);
    if (v756 > 0x7F)
    {
      a2[2] = v756 | 0x80;
      v758 = v756 >> 7;
      if (v756 >> 14)
      {
        v757 = a2 + 4;
        do
        {
          *(v757 - 1) = v758 | 0x80;
          v759 = v758 >> 7;
          ++v757;
          v760 = v758 >> 14;
          v758 >>= 7;
        }

        while (v760);
        *(v757 - 1) = v759;
      }

      else
      {
        a2[3] = v758;
        v757 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v756;
      v757 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v755, v757, a3);
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v761 = *(a1 + 1107);
    *a2 = 3520;
    a2[2] = v761;
    a2 += 3;
  }

  if ((*(a1 + 29) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v762 = *(a1 + 920);
    *a2 = 3530;
    v763 = *(v762 + 5);
    if (v763 > 0x7F)
    {
      a2[2] = v763 | 0x80;
      v765 = v763 >> 7;
      if (v763 >> 14)
      {
        v764 = a2 + 4;
        do
        {
          *(v764 - 1) = v765 | 0x80;
          v766 = v765 >> 7;
          ++v764;
          v767 = v765 >> 14;
          v765 >>= 7;
        }

        while (v767);
        *(v764 - 1) = v766;
      }

      else
      {
        a2[3] = v765;
        v764 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v763;
      v764 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v762, v764, a3);
  }

  if ((*(a1 + 44) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v768 = *(a1 + 1108);
    *a2 = 3536;
    a2[2] = v768;
    a2 += 3;
  }

  if ((*(a1 + 29) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v769 = *(a1 + 928);
    *a2 = 3546;
    v770 = *(v769 + 5);
    if (v770 > 0x7F)
    {
      a2[2] = v770 | 0x80;
      v772 = v770 >> 7;
      if (v770 >> 14)
      {
        v771 = a2 + 4;
        do
        {
          *(v771 - 1) = v772 | 0x80;
          v773 = v772 >> 7;
          ++v771;
          v774 = v772 >> 14;
          v772 >>= 7;
        }

        while (v774);
        *(v771 - 1) = v773;
      }

      else
      {
        a2[3] = v772;
        v771 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v770;
      v771 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v769, v771, a3);
  }

  if ((*(a1 + 44) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v775 = *(a1 + 1109);
    *a2 = 3552;
    a2[2] = v775;
    a2 += 3;
  }

  if ((*(a1 + 29) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v776 = *(a1 + 936);
    *a2 = 3562;
    v777 = *(v776 + 5);
    if (v777 > 0x7F)
    {
      a2[2] = v777 | 0x80;
      v779 = v777 >> 7;
      if (v777 >> 14)
      {
        v778 = a2 + 4;
        do
        {
          *(v778 - 1) = v779 | 0x80;
          v780 = v779 >> 7;
          ++v778;
          v781 = v779 >> 14;
          v779 >>= 7;
        }

        while (v781);
        *(v778 - 1) = v780;
      }

      else
      {
        a2[3] = v779;
        v778 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v777;
      v778 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v776, v778, a3);
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v782 = *(a1 + 1110);
    *a2 = 3568;
    a2[2] = v782;
    a2 += 3;
  }

  if ((*(a1 + 29) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v783 = *(a1 + 944);
    *a2 = 3578;
    v784 = *(v783 + 5);
    if (v784 > 0x7F)
    {
      a2[2] = v784 | 0x80;
      v786 = v784 >> 7;
      if (v784 >> 14)
      {
        v785 = a2 + 4;
        do
        {
          *(v785 - 1) = v786 | 0x80;
          v787 = v786 >> 7;
          ++v785;
          v788 = v786 >> 14;
          v786 >>= 7;
        }

        while (v788);
        *(v785 - 1) = v787;
      }

      else
      {
        a2[3] = v786;
        v785 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v784;
      v785 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v783, v785, a3);
  }

  if ((*(a1 + 44) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v789 = *(a1 + 1111);
    *a2 = 3712;
    a2[2] = v789;
    a2 += 3;
  }

  if (*(a1 + 30))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v790 = *(a1 + 952);
    *a2 = 3722;
    v791 = *(v790 + 5);
    if (v791 > 0x7F)
    {
      a2[2] = v791 | 0x80;
      v793 = v791 >> 7;
      if (v791 >> 14)
      {
        v792 = a2 + 4;
        do
        {
          *(v792 - 1) = v793 | 0x80;
          v794 = v793 >> 7;
          ++v792;
          v795 = v793 >> 14;
          v793 >>= 7;
        }

        while (v795);
        *(v792 - 1) = v794;
      }

      else
      {
        a2[3] = v793;
        v792 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v791;
      v792 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v790, v792, a3);
  }

  if ((*(a1 + 44) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v796 = *(a1 + 1112);
    *a2 = 3728;
    a2[2] = v796;
    a2 += 3;
  }

  if ((*(a1 + 30) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v797 = *(a1 + 960);
    *a2 = 3738;
    v798 = *(v797 + 5);
    if (v798 > 0x7F)
    {
      a2[2] = v798 | 0x80;
      v800 = v798 >> 7;
      if (v798 >> 14)
      {
        v799 = a2 + 4;
        do
        {
          *(v799 - 1) = v800 | 0x80;
          v801 = v800 >> 7;
          ++v799;
          v802 = v800 >> 14;
          v800 >>= 7;
        }

        while (v802);
        *(v799 - 1) = v801;
      }

      else
      {
        a2[3] = v800;
        v799 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v798;
      v799 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v797, v799, a3);
  }

  if ((*(a1 + 44) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v803 = *(a1 + 1113);
    *a2 = 3744;
    a2[2] = v803;
    a2 += 3;
  }

  if ((*(a1 + 30) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v804 = *(a1 + 968);
    *a2 = 3754;
    v805 = *(v804 + 5);
    if (v805 > 0x7F)
    {
      a2[2] = v805 | 0x80;
      v807 = v805 >> 7;
      if (v805 >> 14)
      {
        v806 = a2 + 4;
        do
        {
          *(v806 - 1) = v807 | 0x80;
          v808 = v807 >> 7;
          ++v806;
          v809 = v807 >> 14;
          v807 >>= 7;
        }

        while (v809);
        *(v806 - 1) = v808;
      }

      else
      {
        a2[3] = v807;
        v806 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v805;
      v806 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v804, v806, a3);
  }

  if (*(a1 + 45))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v810 = *(a1 + 1114);
    *a2 = 3760;
    a2[2] = v810;
    a2 += 3;
  }

  if ((*(a1 + 30) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v811 = *(a1 + 976);
    *a2 = 3770;
    v812 = *(v811 + 5);
    if (v812 > 0x7F)
    {
      a2[2] = v812 | 0x80;
      v814 = v812 >> 7;
      if (v812 >> 14)
      {
        v813 = a2 + 4;
        do
        {
          *(v813 - 1) = v814 | 0x80;
          v815 = v814 >> 7;
          ++v813;
          v816 = v814 >> 14;
          v814 >>= 7;
        }

        while (v816);
        *(v813 - 1) = v815;
      }

      else
      {
        a2[3] = v814;
        v813 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v812;
      v813 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v811, v813, a3);
  }

  if ((*(a1 + 45) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v817 = *(a1 + 1115);
    *a2 = 3776;
    a2[2] = v817;
    a2 += 3;
  }

  if ((*(a1 + 30) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v818 = *(a1 + 984);
    *a2 = 3786;
    v819 = *(v818 + 5);
    if (v819 > 0x7F)
    {
      a2[2] = v819 | 0x80;
      v821 = v819 >> 7;
      if (v819 >> 14)
      {
        v820 = a2 + 4;
        do
        {
          *(v820 - 1) = v821 | 0x80;
          v822 = v821 >> 7;
          ++v820;
          v823 = v821 >> 14;
          v821 >>= 7;
        }

        while (v823);
        *(v820 - 1) = v822;
      }

      else
      {
        a2[3] = v821;
        v820 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v819;
      v820 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v818, v820, a3);
  }

  if ((*(a1 + 45) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v824 = *(a1 + 1116);
    *a2 = 3792;
    a2[2] = v824;
    a2 += 3;
  }

  if ((*(a1 + 30) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v825 = *(a1 + 992);
    *a2 = 3802;
    v826 = *(v825 + 5);
    if (v826 > 0x7F)
    {
      a2[2] = v826 | 0x80;
      v828 = v826 >> 7;
      if (v826 >> 14)
      {
        v827 = a2 + 4;
        do
        {
          *(v827 - 1) = v828 | 0x80;
          v829 = v828 >> 7;
          ++v827;
          v830 = v828 >> 14;
          v828 >>= 7;
        }

        while (v830);
        *(v827 - 1) = v829;
      }

      else
      {
        a2[3] = v828;
        v827 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v826;
      v827 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v825, v827, a3);
  }

  if ((*(a1 + 45) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v831 = *(a1 + 1117);
    *a2 = 3808;
    a2[2] = v831;
    a2 += 3;
  }

  v832 = *(a1 + 8);
  if ((v832 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v832 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2763C984C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSDSOS::SpecLineEndArchive::ByteSizeLong(*(a1 + 56));
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
    v5 = TSDSOS::SpecLineEndArchive::ByteSizeLong(*(a1 + 64));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v42 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 72));
    v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_407;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v43 = TSDSOS::SpecLineEndArchive::ByteSizeLong(*(a1 + 80));
  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_408;
  }

LABEL_407:
  v44 = TSDSOS::SpecLineEndArchive::ByteSizeLong(*(a1 + 88));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_409;
  }

LABEL_408:
  v45 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 96));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_409:
  v46 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 104));
  v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 112));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v47 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 120));
    v3 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_413;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v48 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 128));
  v3 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_414;
  }

LABEL_413:
  v49 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 136));
  v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_415;
  }

LABEL_414:
  v50 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 144));
  v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_416;
  }

LABEL_415:
  v51 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 152));
  v3 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_417;
  }

LABEL_416:
  v52 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 160));
  v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_417:
  v53 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 168));
  v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 176));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v54 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 184));
    v3 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_421;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v55 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 192));
  v3 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_422;
  }

LABEL_421:
  v56 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 200));
  v3 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_423;
  }

LABEL_422:
  v57 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 208));
  v3 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_424;
  }

LABEL_423:
  v58 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 216));
  v3 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_425;
  }

LABEL_424:
  v59 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 224));
  v3 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_425:
  v60 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 232));
  v3 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 240));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v2))
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v122 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 248));
    v3 += v122 + ((9 * (__clz(v122 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_499;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v123 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 256));
  v3 += v123 + ((9 * (__clz(v123 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_500;
  }

LABEL_499:
  v124 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 264));
  v3 += v124 + ((9 * (__clz(v124 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_501;
  }

LABEL_500:
  v125 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 272));
  v3 += v125 + ((9 * (__clz(v125 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_502;
  }

LABEL_501:
  v126 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 280));
  v3 += v126 + ((9 * (__clz(v126 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_503:
    v128 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 296));
    v3 += v128 + ((9 * (__clz(v128 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_504;
  }

LABEL_502:
  v127 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 288));
  v3 += v127 + ((9 * (__clz(v127 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_503;
  }

LABEL_43:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_504:
  v129 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 304));
  v3 += v129 + ((9 * (__clz(v129 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_44:
  v9 = *(a1 + 20);
  if (!v9)
  {
    goto LABEL_54;
  }

  if (v9)
  {
    v61 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 312));
    v3 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 2) == 0)
    {
LABEL_47:
      if ((v9 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_429;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_47;
  }

  v62 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 320));
  v3 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 4) == 0)
  {
LABEL_48:
    if ((v9 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_430;
  }

LABEL_429:
  v63 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 328));
  v3 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 8) == 0)
  {
LABEL_49:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_431;
  }

LABEL_430:
  v64 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 336));
  v3 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10) == 0)
  {
LABEL_50:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_432;
  }

LABEL_431:
  v65 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 344));
  v3 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20) == 0)
  {
LABEL_51:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_433;
  }

LABEL_432:
  v66 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 352));
  v3 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40) == 0)
  {
LABEL_52:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_433:
  v67 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 360));
  v3 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80) != 0)
  {
LABEL_53:
    v10 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 368));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_54:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v9 & 0x100) != 0)
  {
    v68 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 376));
    v3 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x200) == 0)
    {
LABEL_57:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_437;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v69 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 384));
  v3 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400) == 0)
  {
LABEL_58:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_438;
  }

LABEL_437:
  v70 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 392));
  v3 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800) == 0)
  {
LABEL_59:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_439;
  }

LABEL_438:
  v71 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 400));
  v3 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x1000) == 0)
  {
LABEL_60:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_440;
  }

LABEL_439:
  v72 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 408));
  v3 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x2000) == 0)
  {
LABEL_61:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_441;
  }

LABEL_440:
  v73 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 416));
  v3 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x4000) == 0)
  {
LABEL_62:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_441:
  v74 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 424));
  v3 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x8000) != 0)
  {
LABEL_63:
    v11 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 432));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_64:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_74;
  }

  if ((v9 & 0x10000) != 0)
  {
    v75 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 440));
    v3 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x20000) == 0)
    {
LABEL_67:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_445;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v76 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 448));
  v3 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40000) == 0)
  {
LABEL_68:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_446;
  }

LABEL_445:
  v77 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 456));
  v3 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80000) == 0)
  {
LABEL_69:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_447;
  }

LABEL_446:
  v78 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 464));
  v3 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x100000) == 0)
  {
LABEL_70:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_448;
  }

LABEL_447:
  v79 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 472));
  v3 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x200000) == 0)
  {
LABEL_71:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_449;
  }

LABEL_448:
  v80 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 480));
  v3 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400000) == 0)
  {
LABEL_72:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_449:
  v81 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 488));
  v3 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800000) != 0)
  {
LABEL_73:
    v12 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 496));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_74:
  if (!HIBYTE(v9))
  {
    goto LABEL_83;
  }

  if ((v9 & 0x1000000) != 0)
  {
    v130 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 504));
    v3 += v130 + ((9 * (__clz(v130 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x2000000) == 0)
    {
LABEL_77:
      if ((v9 & 0x4000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_507;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_77;
  }

  v131 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 512));
  v3 += v131 + ((9 * (__clz(v131 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x4000000) == 0)
  {
LABEL_78:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_508;
  }

LABEL_507:
  v132 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 520));
  v3 += v132 + ((9 * (__clz(v132 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x8000000) == 0)
  {
LABEL_79:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_509;
  }

LABEL_508:
  v133 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 528));
  v3 += v133 + ((9 * (__clz(v133 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10000000) == 0)
  {
LABEL_80:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_510;
  }

LABEL_509:
  v134 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 536));
  v3 += v134 + ((9 * (__clz(v134 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20000000) == 0)
  {
LABEL_81:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_511:
    v136 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 552));
    v3 += v136 + ((9 * (__clz(v136 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_512;
  }

LABEL_510:
  v135 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 544));
  v3 += v135 + ((9 * (__clz(v135 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_511;
  }

LABEL_82:
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_512:
  v137 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 560));
  v3 += v137 + ((9 * (__clz(v137 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_83:
  v13 = *(a1 + 24);
  if (!v13)
  {
    goto LABEL_93;
  }

  if (v13)
  {
    v82 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 568));
    v3 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 2) == 0)
    {
LABEL_86:
      if ((v13 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_453;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_86;
  }

  v83 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 576));
  v3 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 4) == 0)
  {
LABEL_87:
    if ((v13 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_454;
  }

LABEL_453:
  v84 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 584));
  v3 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 8) == 0)
  {
LABEL_88:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_455;
  }

LABEL_454:
  v85 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 592));
  v3 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x10) == 0)
  {
LABEL_89:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_456;
  }

LABEL_455:
  v86 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 600));
  v3 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x20) == 0)
  {
LABEL_90:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_457;
  }

LABEL_456:
  v87 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 608));
  v3 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40) == 0)
  {
LABEL_91:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_457:
  v88 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 616));
  v3 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x80) != 0)
  {
LABEL_92:
    v14 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 624));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_93:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v13 & 0x100) != 0)
  {
    v89 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 632));
    v3 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x200) == 0)
    {
LABEL_96:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_461;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_96;
  }

  v90 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 640));
  v3 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x400) == 0)
  {
LABEL_97:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_462;
  }

LABEL_461:
  v91 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 648));
  v3 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x800) == 0)
  {
LABEL_98:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_463;
  }

LABEL_462:
  v92 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 656));
  v3 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x1000) == 0)
  {
LABEL_99:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_464;
  }

LABEL_463:
  v93 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 664));
  v3 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x2000) == 0)
  {
LABEL_100:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_465;
  }

LABEL_464:
  v94 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 672));
  v3 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x4000) == 0)
  {
LABEL_101:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_465:
  v95 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 680));
  v3 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x8000) != 0)
  {
LABEL_102:
    v15 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 688));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_103:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_113;
  }

  if ((v13 & 0x10000) != 0)
  {
    v96 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 696));
    v3 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x20000) == 0)
    {
LABEL_106:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_469;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  v97 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 704));
  v3 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40000) == 0)
  {
LABEL_107:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_470;
  }

LABEL_469:
  v98 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 712));
  v3 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x80000) == 0)
  {
LABEL_108:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_471;
  }

LABEL_470:
  v99 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 720));
  v3 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x100000) == 0)
  {
LABEL_109:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_472;
  }

LABEL_471:
  v100 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 728));
  v3 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x200000) == 0)
  {
LABEL_110:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_473;
  }

LABEL_472:
  v101 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 736));
  v3 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x400000) == 0)
  {
LABEL_111:
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_473:
  v102 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 744));
  v3 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x800000) != 0)
  {
LABEL_112:
    v16 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 752));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_113:
  if (!HIBYTE(v13))
  {
    goto LABEL_122;
  }

  if ((v13 & 0x1000000) != 0)
  {
    v138 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 760));
    v3 += v138 + ((9 * (__clz(v138 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x2000000) == 0)
    {
LABEL_116:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_515;
    }
  }

  else if ((v13 & 0x2000000) == 0)
  {
    goto LABEL_116;
  }

  v139 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 768));
  v3 += v139 + ((9 * (__clz(v139 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x4000000) == 0)
  {
LABEL_117:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_516;
  }

LABEL_515:
  v140 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 776));
  v3 += v140 + ((9 * (__clz(v140 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x8000000) == 0)
  {
LABEL_118:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_517;
  }

LABEL_516:
  v141 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 784));
  v3 += v141 + ((9 * (__clz(v141 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x10000000) == 0)
  {
LABEL_119:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_518;
  }

LABEL_517:
  v142 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 792));
  v3 += v142 + ((9 * (__clz(v142 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x20000000) == 0)
  {
LABEL_120:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_121;
    }

LABEL_519:
    v144 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 808));
    v3 += v144 + ((9 * (__clz(v144 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_520;
  }

LABEL_518:
  v143 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 800));
  v3 += v143 + ((9 * (__clz(v143 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_519;
  }

LABEL_121:
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

LABEL_520:
  v145 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 816));
  v3 += v145 + ((9 * (__clz(v145 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_122:
  v17 = *(a1 + 28);
  if (!v17)
  {
    goto LABEL_132;
  }

  if (v17)
  {
    v103 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 824));
    v3 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 2) == 0)
    {
LABEL_125:
      if ((v17 & 4) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_477;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_125;
  }

  v104 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 832));
  v3 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 4) == 0)
  {
LABEL_126:
    if ((v17 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_478;
  }

LABEL_477:
  v105 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 840));
  v3 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 8) == 0)
  {
LABEL_127:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_479;
  }

LABEL_478:
  v106 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 848));
  v3 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x10) == 0)
  {
LABEL_128:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_480;
  }

LABEL_479:
  v107 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 856));
  v3 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x20) == 0)
  {
LABEL_129:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_481;
  }

LABEL_480:
  v108 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 864));
  v3 += v108 + ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x40) == 0)
  {
LABEL_130:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_131;
  }

LABEL_481:
  v109 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 872));
  v3 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x80) != 0)
  {
LABEL_131:
    v18 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 880));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_132:
  if ((v17 & 0xFF00) == 0)
  {
    goto LABEL_142;
  }

  if ((v17 & 0x100) != 0)
  {
    v110 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 888));
    v3 += v110 + ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 0x200) == 0)
    {
LABEL_135:
      if ((v17 & 0x400) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_485;
    }
  }

  else if ((v17 & 0x200) == 0)
  {
    goto LABEL_135;
  }

  v111 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 896));
  v3 += v111 + ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x400) == 0)
  {
LABEL_136:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_486;
  }

LABEL_485:
  v112 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 904));
  v3 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x800) == 0)
  {
LABEL_137:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_487;
  }

LABEL_486:
  v113 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 912));
  v3 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x1000) == 0)
  {
LABEL_138:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_488;
  }

LABEL_487:
  v114 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 920));
  v3 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x2000) == 0)
  {
LABEL_139:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_489;
  }

LABEL_488:
  v115 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 928));
  v3 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x4000) == 0)
  {
LABEL_140:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_489:
  v116 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 936));
  v3 += v116 + ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x8000) != 0)
  {
LABEL_141:
    v19 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 944));
    v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_142:
  if ((v17 & 0xFF0000) == 0)
  {
    goto LABEL_151;
  }

  if ((v17 & 0x10000) != 0)
  {
    v117 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 952));
    v3 += v117 + ((9 * (__clz(v117 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 0x20000) == 0)
    {
LABEL_145:
      if ((v17 & 0x40000) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_493;
    }
  }

  else if ((v17 & 0x20000) == 0)
  {
    goto LABEL_145;
  }

  v118 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 960));
  v3 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x40000) == 0)
  {
LABEL_146:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_494;
  }

LABEL_493:
  v119 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 968));
  v3 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x80000) == 0)
  {
LABEL_147:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_148;
    }

LABEL_495:
    v121 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 984));
    v3 += v121 + ((9 * (__clz(v121 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_494:
  v120 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 976));
  v3 += v120 + ((9 * (__clz(v120 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x100000) != 0)
  {
    goto LABEL_495;
  }

LABEL_148:
  if ((v17 & 0x200000) != 0)
  {
LABEL_149:
    v20 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 992));
    v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_150:
  v3 += ((v17 >> 22) & 2) + ((v17 >> 21) & 2);
LABEL_151:
  if (HIBYTE(v17))
  {
    v21.i64[0] = 0x200000002;
    v21.i64[1] = 0x200000002;
    v22 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v17), xmmword_2764D7160), v21)) + ((v17 >> 27) & 2);
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

  if ((v33 & 0xFF0000) != 0)
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
      v36 += 3;
    }

    if ((v33 & 0x400000) != 0)
    {
      v36 += 3;
    }

    if ((v33 & 0x800000) != 0)
    {
      v3 = v36 + 3;
    }

    else
    {
      v3 = v36;
    }
  }

  if (HIBYTE(v33))
  {
    v37 = v3 + 3;
    if ((v33 & 0x1000000) == 0)
    {
      v37 = v3;
    }

    if ((v33 & 0x2000000) != 0)
    {
      v37 += 3;
    }

    if ((v33 & 0x4000000) != 0)
    {
      v37 += 3;
    }

    if ((v33 & 0x8000000) != 0)
    {
      v37 += 3;
    }

    if ((v33 & 0x10000000) != 0)
    {
      v37 += 3;
    }

    if ((v33 & 0x20000000) != 0)
    {
      v37 += 3;
    }

    if ((v33 & 0x40000000) != 0)
    {
      v37 += 3;
    }

    if (v33 >= 0)
    {
      v3 = v37;
    }

    else
    {
      v3 = v37 + 3;
    }
  }

  v38 = *(a1 + 44);
  if (v38)
  {
    v39 = v3 + 3;
    if ((v38 & 1) == 0)
    {
      v39 = v3;
    }

    if ((v38 & 2) != 0)
    {
      v39 += 3;
    }

    if ((v38 & 4) != 0)
    {
      v39 += 3;
    }

    if ((v38 & 8) != 0)
    {
      v39 += 3;
    }

    if ((v38 & 0x10) != 0)
    {
      v39 += 3;
    }

    if ((v38 & 0x20) != 0)
    {
      v39 += 3;
    }

    if ((v38 & 0x40) != 0)
    {
      v39 += 3;
    }

    if ((v38 & 0x80) != 0)
    {
      v3 = v39 + 3;
    }

    else
    {
      v3 = v39;
    }
  }

  if ((v38 & 0xF00) != 0)
  {
    v40 = v3 + 3;
    if ((v38 & 0x100) == 0)
    {
      v40 = v3;
    }

    if ((v38 & 0x200) != 0)
    {
      v40 += 3;
    }

    if ((v38 & 0x400) != 0)
    {
      v40 += 3;
    }

    if ((v38 & 0x800) != 0)
    {
      v3 = v40 + 3;
    }

    else
    {
      v3 = v40;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 48) = v3;
    return v3;
  }
}

uint64_t sub_2763CB73C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885200F0, 0);
  if (v4)
  {

    return sub_2763CB7E4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763CB7E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = MEMORY[0x277D80548];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 56);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C97C10](v8);
        *(v3 + 56) = v7;
      }

      if (*(a2 + 56))
      {
        v9 = *(a2 + 56);
      }

      else
      {
        v9 = v6;
      }

      result = TSDSOS::SpecLineEndArchive::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 64);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97C10](v11);
      *(v3 + 64) = v10;
    }

    if (*(a2 + 64))
    {
      v12 = *(a2 + 64);
    }

    else
    {
      v12 = v6;
    }

    result = TSDSOS::SpecLineEndArchive::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_35;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 72);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C97C00](v14);
      *(v3 + 72) = v13;
    }

    if (*(a2 + 72))
    {
      v15 = *(a2 + 72);
    }

    else
    {
      v15 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 80);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C97C10](v17);
      *(v3 + 80) = v16;
    }

    if (*(a2 + 80))
    {
      v18 = *(a2 + 80);
    }

    else
    {
      v18 = v6;
    }

    result = TSDSOS::SpecLineEndArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_59:
        v25 = MEMORY[0x277D80C18];
        if ((v5 & 0x40) != 0)
        {
          *(v3 + 16) |= 0x40u;
          v26 = *(v3 + 104);
          if (!v26)
          {
            v27 = *(v3 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277C97C60](v27);
            *(v3 + 104) = v26;
          }

          if (*(a2 + 104))
          {
            v28 = *(a2 + 104);
          }

          else
          {
            v28 = v25;
          }

          result = TSSSOS::SpecIntegerArchive::MergeFrom(v26, v28);
        }

        if ((v5 & 0x80) != 0)
        {
          *(v3 + 16) |= 0x80u;
          v29 = *(v3 + 112);
          if (!v29)
          {
            v30 = *(v3 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = MEMORY[0x277C97C60](v30);
            *(v3 + 112) = v29;
          }

          if (*(a2 + 112))
          {
            v31 = *(a2 + 112);
          }

          else
          {
            v31 = v25;
          }

          result = TSSSOS::SpecIntegerArchive::MergeFrom(v29, v31);
        }

        goto LABEL_77;
      }

LABEL_51:
      *(v3 + 16) |= 0x20u;
      v22 = *(v3 + 96);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C97BF0](v23);
        *(v3 + 96) = v22;
      }

      if (*(a2 + 96))
      {
        v24 = *(a2 + 96);
      }

      else
      {
        v24 = MEMORY[0x277D80538];
      }

      result = TSDSOS::SpecShadowArchive::MergeFrom(v22, v24);
      goto LABEL_59;
    }

LABEL_43:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 88);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C97C10](v20);
      *(v3 + 88) = v19;
    }

    if (*(a2 + 88))
    {
      v21 = *(a2 + 88);
    }

    else
    {
      v21 = v6;
    }

    result = TSDSOS::SpecLineEndArchive::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_51;
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v32 = *(v3 + 120);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C97C00](v33);
      *(v3 + 120) = v32;
    }

    if (*(a2 + 120))
    {
      v34 = *(a2 + 120);
    }

    else
    {
      v34 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v32, v34);
  }

  if ((v5 & 0x200) != 0)
  {
    *(v3 + 16) |= 0x200u;
    v35 = *(v3 + 128);
    if (!v35)
    {
      v36 = *(v3 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C97C00](v36);
      *(v3 + 128) = v35;
    }

    if (*(a2 + 128))
    {
      v37 = *(a2 + 128);
    }

    else
    {
      v37 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v35, v37);
  }

  v38 = MEMORY[0x277D80530];
  if ((v5 & 0x400) != 0)
  {
    *(v3 + 16) |= 0x400u;
    v39 = *(v3 + 136);
    if (!v39)
    {
      v40 = *(v3 + 8);
      if (v40)
      {
        v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      v39 = MEMORY[0x277C97BE0](v40);
      *(v3 + 136) = v39;
    }

    if (*(a2 + 136))
    {
      v41 = *(a2 + 136);
    }

    else
    {
      v41 = v38;
    }

    result = TSDSOS::SpecFillArchive::MergeFrom(v39, v41);
    if ((v5 & 0x800) == 0)
    {
LABEL_98:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_119;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_98;
  }

  *(v3 + 16) |= 0x800u;
  v42 = *(v3 + 144);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277C97BE0](v43);
    *(v3 + 144) = v42;
  }

  if (*(a2 + 144))
  {
    v44 = *(a2 + 144);
  }

  else
  {
    v44 = v38;
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v42, v44);
  if ((v5 & 0x1000) == 0)
  {
LABEL_99:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(v3 + 16) |= 0x1000u;
  v45 = *(v3 + 152);
  if (!v45)
  {
    v46 = *(v3 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x277C97BE0](v46);
    *(v3 + 152) = v45;
  }

  if (*(a2 + 152))
  {
    v47 = *(a2 + 152);
  }

  else
  {
    v47 = v38;
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v45, v47);
  if ((v5 & 0x2000) == 0)
  {
LABEL_100:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(v3 + 16) |= 0x2000u;
  v48 = *(v3 + 160);
  if (!v48)
  {
    v49 = *(v3 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = MEMORY[0x277C97BE0](v49);
    *(v3 + 160) = v48;
  }

  if (*(a2 + 160))
  {
    v50 = *(a2 + 160);
  }

  else
  {
    v50 = v38;
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v48, v50);
  if ((v5 & 0x4000) == 0)
  {
LABEL_101:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(v3 + 16) |= 0x4000u;
  v51 = *(v3 + 168);
  if (!v51)
  {
    v52 = *(v3 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    v51 = MEMORY[0x277C97BE0](v52);
    *(v3 + 168) = v51;
  }

  if (*(a2 + 168))
  {
    v53 = *(a2 + 168);
  }

  else
  {
    v53 = v38;
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v51, v53);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v54 = *(v3 + 176);
    if (!v54)
    {
      v55 = *(v3 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = MEMORY[0x277C97BE0](v55);
      *(v3 + 176) = v54;
    }

    if (*(a2 + 176))
    {
      v56 = *(a2 + 176);
    }

    else
    {
      v56 = v38;
    }

    result = TSDSOS::SpecFillArchive::MergeFrom(v54, v56);
  }

LABEL_151:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_225;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v57 = *(v3 + 184);
    if (!v57)
    {
      v58 = *(v3 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = MEMORY[0x277C97BE0](v58);
      *(v3 + 184) = v57;
    }

    if (*(a2 + 184))
    {
      v59 = *(a2 + 184);
    }

    else
    {
      v59 = MEMORY[0x277D80530];
    }

    result = TSDSOS::SpecFillArchive::MergeFrom(v57, v59);
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
  v60 = *(v3 + 192);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = MEMORY[0x277C97BE0](v61);
    *(v3 + 192) = v60;
  }

  if (*(a2 + 192))
  {
    v62 = *(a2 + 192);
  }

  else
  {
    v62 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v60, v62);
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
  v63 = *(v3 + 200);
  if (!v63)
  {
    v64 = *(v3 + 8);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = MEMORY[0x277C97BE0](v64);
    *(v3 + 200) = v63;
  }

  if (*(a2 + 200))
  {
    v65 = *(a2 + 200);
  }

  else
  {
    v65 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v63, v65);
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
  v66 = *(v3 + 208);
  if (!v66)
  {
    v67 = *(v3 + 8);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = MEMORY[0x277C97BE0](v67);
    *(v3 + 208) = v66;
  }

  if (*(a2 + 208))
  {
    v68 = *(a2 + 208);
  }

  else
  {
    v68 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v66, v68);
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
  v69 = *(v3 + 216);
  if (!v69)
  {
    v70 = *(v3 + 8);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = MEMORY[0x277C97BE0](v70);
    *(v3 + 216) = v69;
  }

  if (*(a2 + 216))
  {
    v71 = *(a2 + 216);
  }

  else
  {
    v71 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v69, v71);
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
  v72 = *(v3 + 224);
  if (!v72)
  {
    v73 = *(v3 + 8);
    if (v73)
    {
      v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
    }

    v72 = MEMORY[0x277C97BE0](v73);
    *(v3 + 224) = v72;
  }

  if (*(a2 + 224))
  {
    v74 = *(a2 + 224);
  }

  else
  {
    v74 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v72, v74);
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
  v75 = *(v3 + 232);
  if (!v75)
  {
    v76 = *(v3 + 8);
    if (v76)
    {
      v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
    }

    v75 = MEMORY[0x277C97BE0](v76);
    *(v3 + 232) = v75;
  }

  if (*(a2 + 232))
  {
    v77 = *(a2 + 232);
  }

  else
  {
    v77 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v75, v77);
  if ((v5 & 0x800000) != 0)
  {
LABEL_217:
    *(v3 + 16) |= 0x800000u;
    v78 = *(v3 + 240);
    if (!v78)
    {
      v79 = *(v3 + 8);
      if (v79)
      {
        v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
      }

      v78 = MEMORY[0x277C97C40](v79);
      *(v3 + 240) = v78;
    }

    if (*(a2 + 240))
    {
      v80 = *(a2 + 240);
    }

    else
    {
      v80 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v78, v80);
  }

LABEL_225:
  if (!HIBYTE(v5))
  {
    goto LABEL_299;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v81 = *(v3 + 248);
    if (!v81)
    {
      v82 = *(v3 + 8);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81 = MEMORY[0x277C97C20](v82);
      *(v3 + 248) = v81;
    }

    if (*(a2 + 248))
    {
      v83 = *(a2 + 248);
    }

    else
    {
      v83 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v81, v83);
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
  v84 = *(v3 + 256);
  if (!v84)
  {
    v85 = *(v3 + 8);
    if (v85)
    {
      v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
    }

    v84 = MEMORY[0x277C97C60](v85);
    *(v3 + 256) = v84;
  }

  if (*(a2 + 256))
  {
    v86 = *(a2 + 256);
  }

  else
  {
    v86 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v84, v86);
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
  v87 = *(v3 + 264);
  if (!v87)
  {
    v88 = *(v3 + 8);
    if (v88)
    {
      v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    }

    v87 = MEMORY[0x277C97C60](v88);
    *(v3 + 264) = v87;
  }

  if (*(a2 + 264))
  {
    v89 = *(a2 + 264);
  }

  else
  {
    v89 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v87, v89);
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
  v90 = *(v3 + 272);
  if (!v90)
  {
    v91 = *(v3 + 8);
    if (v91)
    {
      v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
    }

    v90 = MEMORY[0x277C97C60](v91);
    *(v3 + 272) = v90;
  }

  if (*(a2 + 272))
  {
    v92 = *(a2 + 272);
  }

  else
  {
    v92 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v90, v92);
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
  v93 = *(v3 + 280);
  if (!v93)
  {
    v94 = *(v3 + 8);
    if (v94)
    {
      v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
    }

    v93 = MEMORY[0x277C97C60](v94);
    *(v3 + 280) = v93;
  }

  if (*(a2 + 280))
  {
    v95 = *(a2 + 280);
  }

  else
  {
    v95 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v93, v95);
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
  v96 = *(v3 + 288);
  if (!v96)
  {
    v97 = *(v3 + 8);
    if (v97)
    {
      v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
    }

    v96 = MEMORY[0x277C97C60](v97);
    *(v3 + 288) = v96;
  }

  if (*(a2 + 288))
  {
    v98 = *(a2 + 288);
  }

  else
  {
    v98 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v96, v98);
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
  v99 = *(v3 + 296);
  if (!v99)
  {
    v100 = *(v3 + 8);
    if (v100)
    {
      v100 = *(v100 & 0xFFFFFFFFFFFFFFFELL);
    }

    v99 = MEMORY[0x277C97C60](v100);
    *(v3 + 296) = v99;
  }

  if (*(a2 + 296))
  {
    v101 = *(a2 + 296);
  }

  else
  {
    v101 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v99, v101);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_291:
    *(v3 + 16) |= 0x80000000;
    v102 = *(v3 + 304);
    if (!v102)
    {
      v103 = *(v3 + 8);
      if (v103)
      {
        v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
      }

      v102 = MEMORY[0x277C97C60](v103);
      *(v3 + 304) = v102;
    }

    if (*(a2 + 304))
    {
      v104 = *(a2 + 304);
    }

    else
    {
      v104 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v102, v104);
  }

LABEL_299:
  v105 = *(a2 + 20);
  if (!v105)
  {
    goto LABEL_373;
  }

  if (v105)
  {
    *(v3 + 20) |= 1u;
    v106 = *(v3 + 312);
    if (!v106)
    {
      v107 = *(v3 + 8);
      if (v107)
      {
        v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
      }

      v106 = MEMORY[0x277C97C60](v107);
      *(v3 + 312) = v106;
    }

    if (*(a2 + 312))
    {
      v108 = *(a2 + 312);
    }

    else
    {
      v108 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v106, v108);
    if ((v105 & 2) == 0)
    {
LABEL_302:
      if ((v105 & 4) == 0)
      {
        goto LABEL_303;
      }

      goto LABEL_325;
    }
  }

  else if ((v105 & 2) == 0)
  {
    goto LABEL_302;
  }

  *(v3 + 20) |= 2u;
  v109 = *(v3 + 320);
  if (!v109)
  {
    v110 = *(v3 + 8);
    if (v110)
    {
      v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
    }

    v109 = MEMORY[0x277C97C40](v110);
    *(v3 + 320) = v109;
  }

  if (*(a2 + 320))
  {
    v111 = *(a2 + 320);
  }

  else
  {
    v111 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v109, v111);
  if ((v105 & 4) == 0)
  {
LABEL_303:
    if ((v105 & 8) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_333;
  }

LABEL_325:
  *(v3 + 20) |= 4u;
  v112 = *(v3 + 328);
  if (!v112)
  {
    v113 = *(v3 + 8);
    if (v113)
    {
      v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
    }

    v112 = MEMORY[0x277C97C60](v113);
    *(v3 + 328) = v112;
  }

  if (*(a2 + 328))
  {
    v114 = *(a2 + 328);
  }

  else
  {
    v114 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v112, v114);
  if ((v105 & 8) == 0)
  {
LABEL_304:
    if ((v105 & 0x10) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_341;
  }

LABEL_333:
  *(v3 + 20) |= 8u;
  v115 = *(v3 + 336);
  if (!v115)
  {
    v116 = *(v3 + 8);
    if (v116)
    {
      v116 = *(v116 & 0xFFFFFFFFFFFFFFFELL);
    }

    v115 = MEMORY[0x277C97C60](v116);
    *(v3 + 336) = v115;
  }

  if (*(a2 + 336))
  {
    v117 = *(a2 + 336);
  }

  else
  {
    v117 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v115, v117);
  if ((v105 & 0x10) == 0)
  {
LABEL_305:
    if ((v105 & 0x20) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_349;
  }

LABEL_341:
  *(v3 + 20) |= 0x10u;
  v118 = *(v3 + 344);
  if (!v118)
  {
    v119 = *(v3 + 8);
    if (v119)
    {
      v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
    }

    v118 = MEMORY[0x277C97C60](v119);
    *(v3 + 344) = v118;
  }

  if (*(a2 + 344))
  {
    v120 = *(a2 + 344);
  }

  else
  {
    v120 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v118, v120);
  if ((v105 & 0x20) == 0)
  {
LABEL_306:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_357;
  }

LABEL_349:
  *(v3 + 20) |= 0x20u;
  v121 = *(v3 + 352);
  if (!v121)
  {
    v122 = *(v3 + 8);
    if (v122)
    {
      v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
    }

    v121 = MEMORY[0x277C97C60](v122);
    *(v3 + 352) = v121;
  }

  if (*(a2 + 352))
  {
    v123 = *(a2 + 352);
  }

  else
  {
    v123 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v121, v123);
  if ((v105 & 0x40) == 0)
  {
LABEL_307:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_365;
  }

LABEL_357:
  *(v3 + 20) |= 0x40u;
  v124 = *(v3 + 360);
  if (!v124)
  {
    v125 = *(v3 + 8);
    if (v125)
    {
      v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
    }

    v124 = MEMORY[0x277C97C60](v125);
    *(v3 + 360) = v124;
  }

  if (*(a2 + 360))
  {
    v126 = *(a2 + 360);
  }

  else
  {
    v126 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v124, v126);
  if ((v105 & 0x80) != 0)
  {
LABEL_365:
    *(v3 + 20) |= 0x80u;
    v127 = *(v3 + 368);
    if (!v127)
    {
      v128 = *(v3 + 8);
      if (v128)
      {
        v128 = *(v128 & 0xFFFFFFFFFFFFFFFELL);
      }

      v127 = MEMORY[0x277C97C60](v128);
      *(v3 + 368) = v127;
    }

    if (*(a2 + 368))
    {
      v129 = *(a2 + 368);
    }

    else
    {
      v129 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v127, v129);
  }

LABEL_373:
  if ((v105 & 0xFF00) == 0)
  {
    goto LABEL_447;
  }

  if ((v105 & 0x100) != 0)
  {
    *(v3 + 20) |= 0x100u;
    v130 = *(v3 + 376);
    if (!v130)
    {
      v131 = *(v3 + 8);
      if (v131)
      {
        v131 = *(v131 & 0xFFFFFFFFFFFFFFFELL);
      }

      v130 = MEMORY[0x277C97C60](v131);
      *(v3 + 376) = v130;
    }

    if (*(a2 + 376))
    {
      v132 = *(a2 + 376);
    }

    else
    {
      v132 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v130, v132);
    if ((v105 & 0x200) == 0)
    {
LABEL_376:
      if ((v105 & 0x400) == 0)
      {
        goto LABEL_377;
      }

      goto LABEL_399;
    }
  }

  else if ((v105 & 0x200) == 0)
  {
    goto LABEL_376;
  }

  *(v3 + 20) |= 0x200u;
  v133 = *(v3 + 384);
  if (!v133)
  {
    v134 = *(v3 + 8);
    if (v134)
    {
      v134 = *(v134 & 0xFFFFFFFFFFFFFFFELL);
    }

    v133 = MEMORY[0x277C97BF0](v134);
    *(v3 + 384) = v133;
  }

  if (*(a2 + 384))
  {
    v135 = *(a2 + 384);
  }

  else
  {
    v135 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v133, v135);
  if ((v105 & 0x400) == 0)
  {
LABEL_377:
    if ((v105 & 0x800) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_407;
  }

LABEL_399:
  *(v3 + 20) |= 0x400u;
  v136 = *(v3 + 392);
  if (!v136)
  {
    v137 = *(v3 + 8);
    if (v137)
    {
      v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
    }

    v136 = MEMORY[0x277C97BF0](v137);
    *(v3 + 392) = v136;
  }

  if (*(a2 + 392))
  {
    v138 = *(a2 + 392);
  }

  else
  {
    v138 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v136, v138);
  if ((v105 & 0x800) == 0)
  {
LABEL_378:
    if ((v105 & 0x1000) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_415;
  }

LABEL_407:
  *(v3 + 20) |= 0x800u;
  v139 = *(v3 + 400);
  if (!v139)
  {
    v140 = *(v3 + 8);
    if (v140)
    {
      v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
    }

    v139 = MEMORY[0x277C97BF0](v140);
    *(v3 + 400) = v139;
  }

  if (*(a2 + 400))
  {
    v141 = *(a2 + 400);
  }

  else
  {
    v141 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v139, v141);
  if ((v105 & 0x1000) == 0)
  {
LABEL_379:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_380;
    }

    goto LABEL_423;
  }

LABEL_415:
  *(v3 + 20) |= 0x1000u;
  v142 = *(v3 + 408);
  if (!v142)
  {
    v143 = *(v3 + 8);
    if (v143)
    {
      v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
    }

    v142 = MEMORY[0x277C97BF0](v143);
    *(v3 + 408) = v142;
  }

  if (*(a2 + 408))
  {
    v144 = *(a2 + 408);
  }

  else
  {
    v144 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v142, v144);
  if ((v105 & 0x2000) == 0)
  {
LABEL_380:
    if ((v105 & 0x4000) == 0)
    {
      goto LABEL_381;
    }

    goto LABEL_431;
  }

LABEL_423:
  *(v3 + 20) |= 0x2000u;
  v145 = *(v3 + 416);
  if (!v145)
  {
    v146 = *(v3 + 8);
    if (v146)
    {
      v146 = *(v146 & 0xFFFFFFFFFFFFFFFELL);
    }

    v145 = MEMORY[0x277C97BF0](v146);
    *(v3 + 416) = v145;
  }

  if (*(a2 + 416))
  {
    v147 = *(a2 + 416);
  }

  else
  {
    v147 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v145, v147);
  if ((v105 & 0x4000) == 0)
  {
LABEL_381:
    if ((v105 & 0x8000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_439;
  }

LABEL_431:
  *(v3 + 20) |= 0x4000u;
  v148 = *(v3 + 424);
  if (!v148)
  {
    v149 = *(v3 + 8);
    if (v149)
    {
      v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
    }

    v148 = MEMORY[0x277C97BF0](v149);
    *(v3 + 424) = v148;
  }

  if (*(a2 + 424))
  {
    v150 = *(a2 + 424);
  }

  else
  {
    v150 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v148, v150);
  if ((v105 & 0x8000) != 0)
  {
LABEL_439:
    *(v3 + 20) |= 0x8000u;
    v151 = *(v3 + 432);
    if (!v151)
    {
      v152 = *(v3 + 8);
      if (v152)
      {
        v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
      }

      v151 = MEMORY[0x277C97BF0](v152);
      *(v3 + 432) = v151;
    }

    if (*(a2 + 432))
    {
      v153 = *(a2 + 432);
    }

    else
    {
      v153 = MEMORY[0x277D80538];
    }

    result = TSDSOS::SpecShadowArchive::MergeFrom(v151, v153);
  }

LABEL_447:
  if ((v105 & 0xFF0000) == 0)
  {
    goto LABEL_521;
  }

  if ((v105 & 0x10000) != 0)
  {
    *(v3 + 20) |= 0x10000u;
    v154 = *(v3 + 440);
    if (!v154)
    {
      v155 = *(v3 + 8);
      if (v155)
      {
        v155 = *(v155 & 0xFFFFFFFFFFFFFFFELL);
      }

      v154 = MEMORY[0x277C97BF0](v155);
      *(v3 + 440) = v154;
    }

    if (*(a2 + 440))
    {
      v156 = *(a2 + 440);
    }

    else
    {
      v156 = MEMORY[0x277D80538];
    }

    result = TSDSOS::SpecShadowArchive::MergeFrom(v154, v156);
    if ((v105 & 0x20000) == 0)
    {
LABEL_450:
      if ((v105 & 0x40000) == 0)
      {
        goto LABEL_451;
      }

      goto LABEL_473;
    }
  }

  else if ((v105 & 0x20000) == 0)
  {
    goto LABEL_450;
  }

  *(v3 + 20) |= 0x20000u;
  v157 = *(v3 + 448);
  if (!v157)
  {
    v158 = *(v3 + 8);
    if (v158)
    {
      v158 = *(v158 & 0xFFFFFFFFFFFFFFFELL);
    }

    v157 = MEMORY[0x277C97BF0](v158);
    *(v3 + 448) = v157;
  }

  if (*(a2 + 448))
  {
    v159 = *(a2 + 448);
  }

  else
  {
    v159 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v157, v159);
  if ((v105 & 0x40000) == 0)
  {
LABEL_451:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_481;
  }

LABEL_473:
  *(v3 + 20) |= 0x40000u;
  v160 = *(v3 + 456);
  if (!v160)
  {
    v161 = *(v3 + 8);
    if (v161)
    {
      v161 = *(v161 & 0xFFFFFFFFFFFFFFFELL);
    }

    v160 = MEMORY[0x277C97BF0](v161);
    *(v3 + 456) = v160;
  }

  if (*(a2 + 456))
  {
    v162 = *(a2 + 456);
  }

  else
  {
    v162 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v160, v162);
  if ((v105 & 0x80000) == 0)
  {
LABEL_452:
    if ((v105 & 0x100000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_489;
  }

LABEL_481:
  *(v3 + 20) |= 0x80000u;
  v163 = *(v3 + 464);
  if (!v163)
  {
    v164 = *(v3 + 8);
    if (v164)
    {
      v164 = *(v164 & 0xFFFFFFFFFFFFFFFELL);
    }

    v163 = MEMORY[0x277C97BF0](v164);
    *(v3 + 464) = v163;
  }

  if (*(a2 + 464))
  {
    v165 = *(a2 + 464);
  }

  else
  {
    v165 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v163, v165);
  if ((v105 & 0x100000) == 0)
  {
LABEL_453:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_497;
  }

LABEL_489:
  *(v3 + 20) |= 0x100000u;
  v166 = *(v3 + 472);
  if (!v166)
  {
    v167 = *(v3 + 8);
    if (v167)
    {
      v167 = *(v167 & 0xFFFFFFFFFFFFFFFELL);
    }

    v166 = MEMORY[0x277C97BF0](v167);
    *(v3 + 472) = v166;
  }

  if (*(a2 + 472))
  {
    v168 = *(a2 + 472);
  }

  else
  {
    v168 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v166, v168);
  if ((v105 & 0x200000) == 0)
  {
LABEL_454:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_505;
  }

LABEL_497:
  *(v3 + 20) |= 0x200000u;
  v169 = *(v3 + 480);
  if (!v169)
  {
    v170 = *(v3 + 8);
    if (v170)
    {
      v170 = *(v170 & 0xFFFFFFFFFFFFFFFELL);
    }

    v169 = MEMORY[0x277C97BF0](v170);
    *(v3 + 480) = v169;
  }

  if (*(a2 + 480))
  {
    v171 = *(a2 + 480);
  }

  else
  {
    v171 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v169, v171);
  if ((v105 & 0x400000) == 0)
  {
LABEL_455:
    if ((v105 & 0x800000) == 0)
    {
      goto LABEL_521;
    }

    goto LABEL_513;
  }

LABEL_505:
  *(v3 + 20) |= 0x400000u;
  v172 = *(v3 + 488);
  if (!v172)
  {
    v173 = *(v3 + 8);
    if (v173)
    {
      v173 = *(v173 & 0xFFFFFFFFFFFFFFFELL);
    }

    v172 = MEMORY[0x277C97BF0](v173);
    *(v3 + 488) = v172;
  }

  if (*(a2 + 488))
  {
    v174 = *(a2 + 488);
  }

  else
  {
    v174 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v172, v174);
  if ((v105 & 0x800000) != 0)
  {
LABEL_513:
    *(v3 + 20) |= 0x800000u;
    v175 = *(v3 + 496);
    if (!v175)
    {
      v176 = *(v3 + 8);
      if (v176)
      {
        v176 = *(v176 & 0xFFFFFFFFFFFFFFFELL);
      }

      v175 = MEMORY[0x277C97BF0](v176);
      *(v3 + 496) = v175;
    }

    if (*(a2 + 496))
    {
      v177 = *(a2 + 496);
    }

    else
    {
      v177 = MEMORY[0x277D80538];
    }

    result = TSDSOS::SpecShadowArchive::MergeFrom(v175, v177);
  }

LABEL_521:
  if (!HIBYTE(v105))
  {
    goto LABEL_595;
  }

  if ((v105 & 0x1000000) != 0)
  {
    *(v3 + 20) |= 0x1000000u;
    v178 = *(v3 + 504);
    if (!v178)
    {
      v179 = *(v3 + 8);
      if (v179)
      {
        v179 = *(v179 & 0xFFFFFFFFFFFFFFFELL);
      }

      v178 = MEMORY[0x277C97BF0](v179);
      *(v3 + 504) = v178;
    }

    if (*(a2 + 504))
    {
      v180 = *(a2 + 504);
    }

    else
    {
      v180 = MEMORY[0x277D80538];
    }

    result = TSDSOS::SpecShadowArchive::MergeFrom(v178, v180);
    if ((v105 & 0x2000000) == 0)
    {
LABEL_524:
      if ((v105 & 0x4000000) == 0)
      {
        goto LABEL_525;
      }

      goto LABEL_547;
    }
  }

  else if ((v105 & 0x2000000) == 0)
  {
    goto LABEL_524;
  }

  *(v3 + 20) |= 0x2000000u;
  v181 = *(v3 + 512);
  if (!v181)
  {
    v182 = *(v3 + 8);
    if (v182)
    {
      v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
    }

    v181 = MEMORY[0x277C97C00](v182);
    *(v3 + 512) = v181;
  }

  if (*(a2 + 512))
  {
    v183 = *(a2 + 512);
  }

  else
  {
    v183 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v181, v183);
  if ((v105 & 0x4000000) == 0)
  {
LABEL_525:
    if ((v105 & 0x8000000) == 0)
    {
      goto LABEL_526;
    }

    goto LABEL_555;
  }

LABEL_547:
  *(v3 + 20) |= 0x4000000u;
  v184 = *(v3 + 520);
  if (!v184)
  {
    v185 = *(v3 + 8);
    if (v185)
    {
      v185 = *(v185 & 0xFFFFFFFFFFFFFFFELL);
    }

    v184 = MEMORY[0x277C97C00](v185);
    *(v3 + 520) = v184;
  }

  if (*(a2 + 520))
  {
    v186 = *(a2 + 520);
  }

  else
  {
    v186 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v184, v186);
  if ((v105 & 0x8000000) == 0)
  {
LABEL_526:
    if ((v105 & 0x10000000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_563;
  }

LABEL_555:
  *(v3 + 20) |= 0x8000000u;
  v187 = *(v3 + 528);
  if (!v187)
  {
    v188 = *(v3 + 8);
    if (v188)
    {
      v188 = *(v188 & 0xFFFFFFFFFFFFFFFELL);
    }

    v187 = MEMORY[0x277C97C00](v188);
    *(v3 + 528) = v187;
  }

  if (*(a2 + 528))
  {
    v189 = *(a2 + 528);
  }

  else
  {
    v189 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v187, v189);
  if ((v105 & 0x10000000) == 0)
  {
LABEL_527:
    if ((v105 & 0x20000000) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_571;
  }

LABEL_563:
  *(v3 + 20) |= 0x10000000u;
  v190 = *(v3 + 536);
  if (!v190)
  {
    v191 = *(v3 + 8);
    if (v191)
    {
      v191 = *(v191 & 0xFFFFFFFFFFFFFFFELL);
    }

    v190 = MEMORY[0x277C97C00](v191);
    *(v3 + 536) = v190;
  }

  if (*(a2 + 536))
  {
    v192 = *(a2 + 536);
  }

  else
  {
    v192 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v190, v192);
  if ((v105 & 0x20000000) == 0)
  {
LABEL_528:
    if ((v105 & 0x40000000) == 0)
    {
      goto LABEL_529;
    }

    goto LABEL_579;
  }

LABEL_571:
  *(v3 + 20) |= 0x20000000u;
  v193 = *(v3 + 544);
  if (!v193)
  {
    v194 = *(v3 + 8);
    if (v194)
    {
      v194 = *(v194 & 0xFFFFFFFFFFFFFFFELL);
    }

    v193 = MEMORY[0x277C97C00](v194);
    *(v3 + 544) = v193;
  }

  if (*(a2 + 544))
  {
    v195 = *(a2 + 544);
  }

  else
  {
    v195 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v193, v195);
  if ((v105 & 0x40000000) == 0)
  {
LABEL_529:
    if ((v105 & 0x80000000) == 0)
    {
      goto LABEL_595;
    }

    goto LABEL_587;
  }

LABEL_579:
  *(v3 + 20) |= 0x40000000u;
  v196 = *(v3 + 552);
  if (!v196)
  {
    v197 = *(v3 + 8);
    if (v197)
    {
      v197 = *(v197 & 0xFFFFFFFFFFFFFFFELL);
    }

    v196 = MEMORY[0x277C97C00](v197);
    *(v3 + 552) = v196;
  }

  if (*(a2 + 552))
  {
    v198 = *(a2 + 552);
  }

  else
  {
    v198 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v196, v198);
  if ((v105 & 0x80000000) != 0)
  {
LABEL_587:
    *(v3 + 20) |= 0x80000000;
    v199 = *(v3 + 560);
    if (!v199)
    {
      v200 = *(v3 + 8);
      if (v200)
      {
        v200 = *(v200 & 0xFFFFFFFFFFFFFFFELL);
      }

      v199 = MEMORY[0x277C97C00](v200);
      *(v3 + 560) = v199;
    }

    if (*(a2 + 560))
    {
      v201 = *(a2 + 560);
    }

    else
    {
      v201 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v199, v201);
  }

LABEL_595:
  v202 = *(a2 + 24);
  if (!v202)
  {
    goto LABEL_669;
  }

  if (v202)
  {
    *(v3 + 24) |= 1u;
    v203 = *(v3 + 568);
    if (!v203)
    {
      v204 = *(v3 + 8);
      if (v204)
      {
        v204 = *(v204 & 0xFFFFFFFFFFFFFFFELL);
      }

      v203 = MEMORY[0x277C97C00](v204);
      *(v3 + 568) = v203;
    }

    if (*(a2 + 568))
    {
      v205 = *(a2 + 568);
    }

    else
    {
      v205 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v203, v205);
    if ((v202 & 2) == 0)
    {
LABEL_598:
      if ((v202 & 4) == 0)
      {
        goto LABEL_599;
      }

      goto LABEL_621;
    }
  }

  else if ((v202 & 2) == 0)
  {
    goto LABEL_598;
  }

  *(v3 + 24) |= 2u;
  v206 = *(v3 + 576);
  if (!v206)
  {
    v207 = *(v3 + 8);
    if (v207)
    {
      v207 = *(v207 & 0xFFFFFFFFFFFFFFFELL);
    }

    v206 = MEMORY[0x277C97C00](v207);
    *(v3 + 576) = v206;
  }

  if (*(a2 + 576))
  {
    v208 = *(a2 + 576);
  }

  else
  {
    v208 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v206, v208);
  if ((v202 & 4) == 0)
  {
LABEL_599:
    if ((v202 & 8) == 0)
    {
      goto LABEL_600;
    }

    goto LABEL_629;
  }

LABEL_621:
  *(v3 + 24) |= 4u;
  v209 = *(v3 + 584);
  if (!v209)
  {
    v210 = *(v3 + 8);
    if (v210)
    {
      v210 = *(v210 & 0xFFFFFFFFFFFFFFFELL);
    }

    v209 = MEMORY[0x277C97C00](v210);
    *(v3 + 584) = v209;
  }

  if (*(a2 + 584))
  {
    v211 = *(a2 + 584);
  }

  else
  {
    v211 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v209, v211);
  if ((v202 & 8) == 0)
  {
LABEL_600:
    if ((v202 & 0x10) == 0)
    {
      goto LABEL_601;
    }

    goto LABEL_637;
  }

LABEL_629:
  *(v3 + 24) |= 8u;
  v212 = *(v3 + 592);
  if (!v212)
  {
    v213 = *(v3 + 8);
    if (v213)
    {
      v213 = *(v213 & 0xFFFFFFFFFFFFFFFELL);
    }

    v212 = MEMORY[0x277C97BE0](v213);
    *(v3 + 592) = v212;
  }

  if (*(a2 + 592))
  {
    v214 = *(a2 + 592);
  }

  else
  {
    v214 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v212, v214);
  if ((v202 & 0x10) == 0)
  {
LABEL_601:
    if ((v202 & 0x20) == 0)
    {
      goto LABEL_602;
    }

    goto LABEL_645;
  }

LABEL_637:
  *(v3 + 24) |= 0x10u;
  v215 = *(v3 + 600);
  if (!v215)
  {
    v216 = *(v3 + 8);
    if (v216)
    {
      v216 = *(v216 & 0xFFFFFFFFFFFFFFFELL);
    }

    v215 = MEMORY[0x277C97BE0](v216);
    *(v3 + 600) = v215;
  }

  if (*(a2 + 600))
  {
    v217 = *(a2 + 600);
  }

  else
  {
    v217 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v215, v217);
  if ((v202 & 0x20) == 0)
  {
LABEL_602:
    if ((v202 & 0x40) == 0)
    {
      goto LABEL_603;
    }

    goto LABEL_653;
  }

LABEL_645:
  *(v3 + 24) |= 0x20u;
  v218 = *(v3 + 608);
  if (!v218)
  {
    v219 = *(v3 + 8);
    if (v219)
    {
      v219 = *(v219 & 0xFFFFFFFFFFFFFFFELL);
    }

    v218 = MEMORY[0x277C97BE0](v219);
    *(v3 + 608) = v218;
  }

  if (*(a2 + 608))
  {
    v220 = *(a2 + 608);
  }

  else
  {
    v220 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v218, v220);
  if ((v202 & 0x40) == 0)
  {
LABEL_603:
    if ((v202 & 0x80) == 0)
    {
      goto LABEL_669;
    }

    goto LABEL_661;
  }

LABEL_653:
  *(v3 + 24) |= 0x40u;
  v221 = *(v3 + 616);
  if (!v221)
  {
    v222 = *(v3 + 8);
    if (v222)
    {
      v222 = *(v222 & 0xFFFFFFFFFFFFFFFELL);
    }

    v221 = MEMORY[0x277C97BE0](v222);
    *(v3 + 616) = v221;
  }

  if (*(a2 + 616))
  {
    v223 = *(a2 + 616);
  }

  else
  {
    v223 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v221, v223);
  if ((v202 & 0x80) != 0)
  {
LABEL_661:
    *(v3 + 24) |= 0x80u;
    v224 = *(v3 + 624);
    if (!v224)
    {
      v225 = *(v3 + 8);
      if (v225)
      {
        v225 = *(v225 & 0xFFFFFFFFFFFFFFFELL);
      }

      v224 = MEMORY[0x277C97BE0](v225);
      *(v3 + 624) = v224;
    }

    if (*(a2 + 624))
    {
      v226 = *(a2 + 624);
    }

    else
    {
      v226 = MEMORY[0x277D80530];
    }

    result = TSDSOS::SpecFillArchive::MergeFrom(v224, v226);
  }

LABEL_669:
  if ((v202 & 0xFF00) == 0)
  {
    goto LABEL_743;
  }

  if ((v202 & 0x100) != 0)
  {
    *(v3 + 24) |= 0x100u;
    v227 = *(v3 + 632);
    if (!v227)
    {
      v228 = *(v3 + 8);
      if (v228)
      {
        v228 = *(v228 & 0xFFFFFFFFFFFFFFFELL);
      }

      v227 = MEMORY[0x277C97BE0](v228);
      *(v3 + 632) = v227;
    }

    if (*(a2 + 632))
    {
      v229 = *(a2 + 632);
    }

    else
    {
      v229 = MEMORY[0x277D80530];
    }

    result = TSDSOS::SpecFillArchive::MergeFrom(v227, v229);
    if ((v202 & 0x200) == 0)
    {
LABEL_672:
      if ((v202 & 0x400) == 0)
      {
        goto LABEL_673;
      }

      goto LABEL_695;
    }
  }

  else if ((v202 & 0x200) == 0)
  {
    goto LABEL_672;
  }

  *(v3 + 24) |= 0x200u;
  v230 = *(v3 + 640);
  if (!v230)
  {
    v231 = *(v3 + 8);
    if (v231)
    {
      v231 = *(v231 & 0xFFFFFFFFFFFFFFFELL);
    }

    v230 = MEMORY[0x277C97BE0](v231);
    *(v3 + 640) = v230;
  }

  if (*(a2 + 640))
  {
    v232 = *(a2 + 640);
  }

  else
  {
    v232 = MEMORY[0x277D80530];
  }

  result = TSDSOS::SpecFillArchive::MergeFrom(v230, v232);
  if ((v202 & 0x400) == 0)
  {
LABEL_673:
    if ((v202 & 0x800) == 0)
    {
      goto LABEL_674;
    }

    goto LABEL_703;
  }

LABEL_695:
  *(v3 + 24) |= 0x400u;
  v233 = *(v3 + 648);
  if (!v233)
  {
    v234 = *(v3 + 8);
    if (v234)
    {
      v234 = *(v234 & 0xFFFFFFFFFFFFFFFELL);
    }

    v233 = MEMORY[0x277C97C20](v234);
    *(v3 + 648) = v233;
  }

  if (*(a2 + 648))
  {
    v235 = *(a2 + 648);
  }

  else
  {
    v235 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v233, v235);
  if ((v202 & 0x800) == 0)
  {
LABEL_674:
    if ((v202 & 0x1000) == 0)
    {
      goto LABEL_675;
    }

    goto LABEL_711;
  }

LABEL_703:
  *(v3 + 24) |= 0x800u;
  v236 = *(v3 + 656);
  if (!v236)
  {
    v237 = *(v3 + 8);
    if (v237)
    {
      v237 = *(v237 & 0xFFFFFFFFFFFFFFFELL);
    }

    v236 = MEMORY[0x277C97C20](v237);
    *(v3 + 656) = v236;
  }

  if (*(a2 + 656))
  {
    v238 = *(a2 + 656);
  }

  else
  {
    v238 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v236, v238);
  if ((v202 & 0x1000) == 0)
  {
LABEL_675:
    if ((v202 & 0x2000) == 0)
    {
      goto LABEL_676;
    }

    goto LABEL_719;
  }

LABEL_711:
  *(v3 + 24) |= 0x1000u;
  v239 = *(v3 + 664);
  if (!v239)
  {
    v240 = *(v3 + 8);
    if (v240)
    {
      v240 = *(v240 & 0xFFFFFFFFFFFFFFFELL);
    }

    v239 = MEMORY[0x277C97C20](v240);
    *(v3 + 664) = v239;
  }

  if (*(a2 + 664))
  {
    v241 = *(a2 + 664);
  }

  else
  {
    v241 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v239, v241);
  if ((v202 & 0x2000) == 0)
  {
LABEL_676:
    if ((v202 & 0x4000) == 0)
    {
      goto LABEL_677;
    }

    goto LABEL_727;
  }

LABEL_719:
  *(v3 + 24) |= 0x2000u;
  v242 = *(v3 + 672);
  if (!v242)
  {
    v243 = *(v3 + 8);
    if (v243)
    {
      v243 = *(v243 & 0xFFFFFFFFFFFFFFFELL);
    }

    v242 = MEMORY[0x277C97C20](v243);
    *(v3 + 672) = v242;
  }

  if (*(a2 + 672))
  {
    v244 = *(a2 + 672);
  }

  else
  {
    v244 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v242, v244);
  if ((v202 & 0x4000) == 0)
  {
LABEL_677:
    if ((v202 & 0x8000) == 0)
    {
      goto LABEL_743;
    }

    goto LABEL_735;
  }

LABEL_727:
  *(v3 + 24) |= 0x4000u;
  v245 = *(v3 + 680);
  if (!v245)
  {
    v246 = *(v3 + 8);
    if (v246)
    {
      v246 = *(v246 & 0xFFFFFFFFFFFFFFFELL);
    }

    v245 = MEMORY[0x277C97C20](v246);
    *(v3 + 680) = v245;
  }

  if (*(a2 + 680))
  {
    v247 = *(a2 + 680);
  }

  else
  {
    v247 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v245, v247);
  if ((v202 & 0x8000) != 0)
  {
LABEL_735:
    *(v3 + 24) |= 0x8000u;
    v248 = *(v3 + 688);
    if (!v248)
    {
      v249 = *(v3 + 8);
      if (v249)
      {
        v249 = *(v249 & 0xFFFFFFFFFFFFFFFELL);
      }

      v248 = MEMORY[0x277C97C20](v249);
      *(v3 + 688) = v248;
    }

    if (*(a2 + 688))
    {
      v250 = *(a2 + 688);
    }

    else
    {
      v250 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v248, v250);
  }

LABEL_743:
  if ((v202 & 0xFF0000) == 0)
  {
    goto LABEL_817;
  }

  if ((v202 & 0x10000) != 0)
  {
    *(v3 + 24) |= 0x10000u;
    v251 = *(v3 + 696);
    if (!v251)
    {
      v252 = *(v3 + 8);
      if (v252)
      {
        v252 = *(v252 & 0xFFFFFFFFFFFFFFFELL);
      }

      v251 = MEMORY[0x277C97C20](v252);
      *(v3 + 696) = v251;
    }

    if (*(a2 + 696))
    {
      v253 = *(a2 + 696);
    }

    else
    {
      v253 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v251, v253);
    if ((v202 & 0x20000) == 0)
    {
LABEL_746:
      if ((v202 & 0x40000) == 0)
      {
        goto LABEL_747;
      }

      goto LABEL_769;
    }
  }

  else if ((v202 & 0x20000) == 0)
  {
    goto LABEL_746;
  }

  *(v3 + 24) |= 0x20000u;
  v254 = *(v3 + 704);
  if (!v254)
  {
    v255 = *(v3 + 8);
    if (v255)
    {
      v255 = *(v255 & 0xFFFFFFFFFFFFFFFELL);
    }

    v254 = MEMORY[0x277C97C20](v255);
    *(v3 + 704) = v254;
  }

  if (*(a2 + 704))
  {
    v256 = *(a2 + 704);
  }

  else
  {
    v256 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v254, v256);
  if ((v202 & 0x40000) == 0)
  {
LABEL_747:
    if ((v202 & 0x80000) == 0)
    {
      goto LABEL_748;
    }

    goto LABEL_777;
  }

LABEL_769:
  *(v3 + 24) |= 0x40000u;
  v257 = *(v3 + 712);
  if (!v257)
  {
    v258 = *(v3 + 8);
    if (v258)
    {
      v258 = *(v258 & 0xFFFFFFFFFFFFFFFELL);
    }

    v257 = MEMORY[0x277C97C20](v258);
    *(v3 + 712) = v257;
  }

  if (*(a2 + 712))
  {
    v259 = *(a2 + 712);
  }

  else
  {
    v259 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v257, v259);
  if ((v202 & 0x80000) == 0)
  {
LABEL_748:
    if ((v202 & 0x100000) == 0)
    {
      goto LABEL_749;
    }

    goto LABEL_785;
  }

LABEL_777:
  *(v3 + 24) |= 0x80000u;
  v260 = *(v3 + 720);
  if (!v260)
  {
    v261 = *(v3 + 8);
    if (v261)
    {
      v261 = *(v261 & 0xFFFFFFFFFFFFFFFELL);
    }

    v260 = MEMORY[0x277C97C20](v261);
    *(v3 + 720) = v260;
  }

  if (*(a2 + 720))
  {
    v262 = *(a2 + 720);
  }

  else
  {
    v262 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v260, v262);
  if ((v202 & 0x100000) == 0)
  {
LABEL_749:
    if ((v202 & 0x200000) == 0)
    {
      goto LABEL_750;
    }

    goto LABEL_793;
  }

LABEL_785:
  *(v3 + 24) |= 0x100000u;
  v263 = *(v3 + 728);
  if (!v263)
  {
    v264 = *(v3 + 8);
    if (v264)
    {
      v264 = *(v264 & 0xFFFFFFFFFFFFFFFELL);
    }

    v263 = MEMORY[0x277C97C20](v264);
    *(v3 + 728) = v263;
  }

  if (*(a2 + 728))
  {
    v265 = *(a2 + 728);
  }

  else
  {
    v265 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v263, v265);
  if ((v202 & 0x200000) == 0)
  {
LABEL_750:
    if ((v202 & 0x400000) == 0)
    {
      goto LABEL_751;
    }

    goto LABEL_801;
  }

LABEL_793:
  *(v3 + 24) |= 0x200000u;
  v266 = *(v3 + 736);
  if (!v266)
  {
    v267 = *(v3 + 8);
    if (v267)
    {
      v267 = *(v267 & 0xFFFFFFFFFFFFFFFELL);
    }

    v266 = MEMORY[0x277C97C20](v267);
    *(v3 + 736) = v266;
  }

  if (*(a2 + 736))
  {
    v268 = *(a2 + 736);
  }

  else
  {
    v268 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v266, v268);
  if ((v202 & 0x400000) == 0)
  {
LABEL_751:
    if ((v202 & 0x800000) == 0)
    {
      goto LABEL_817;
    }

    goto LABEL_809;
  }

LABEL_801:
  *(v3 + 24) |= 0x400000u;
  v269 = *(v3 + 744);
  if (!v269)
  {
    v270 = *(v3 + 8);
    if (v270)
    {
      v270 = *(v270 & 0xFFFFFFFFFFFFFFFELL);
    }

    v269 = MEMORY[0x277C97C40](v270);
    *(v3 + 744) = v269;
  }

  if (*(a2 + 744))
  {
    v271 = *(a2 + 744);
  }

  else
  {
    v271 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v269, v271);
  if ((v202 & 0x800000) != 0)
  {
LABEL_809:
    *(v3 + 24) |= 0x800000u;
    v272 = *(v3 + 752);
    if (!v272)
    {
      v273 = *(v3 + 8);
      if (v273)
      {
        v273 = *(v273 & 0xFFFFFFFFFFFFFFFELL);
      }

      v272 = MEMORY[0x277C97C40](v273);
      *(v3 + 752) = v272;
    }

    if (*(a2 + 752))
    {
      v274 = *(a2 + 752);
    }

    else
    {
      v274 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v272, v274);
  }

LABEL_817:
  if (!HIBYTE(v202))
  {
    goto LABEL_891;
  }

  if ((v202 & 0x1000000) != 0)
  {
    *(v3 + 24) |= 0x1000000u;
    v275 = *(v3 + 760);
    if (!v275)
    {
      v276 = *(v3 + 8);
      if (v276)
      {
        v276 = *(v276 & 0xFFFFFFFFFFFFFFFELL);
      }

      v275 = MEMORY[0x277C97C40](v276);
      *(v3 + 760) = v275;
    }

    if (*(a2 + 760))
    {
      v277 = *(a2 + 760);
    }

    else
    {
      v277 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v275, v277);
    if ((v202 & 0x2000000) == 0)
    {
LABEL_820:
      if ((v202 & 0x4000000) == 0)
      {
        goto LABEL_821;
      }

      goto LABEL_843;
    }
  }

  else if ((v202 & 0x2000000) == 0)
  {
    goto LABEL_820;
  }

  *(v3 + 24) |= 0x2000000u;
  v278 = *(v3 + 768);
  if (!v278)
  {
    v279 = *(v3 + 8);
    if (v279)
    {
      v279 = *(v279 & 0xFFFFFFFFFFFFFFFELL);
    }

    v278 = MEMORY[0x277C97C40](v279);
    *(v3 + 768) = v278;
  }

  if (*(a2 + 768))
  {
    v280 = *(a2 + 768);
  }

  else
  {
    v280 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v278, v280);
  if ((v202 & 0x4000000) == 0)
  {
LABEL_821:
    if ((v202 & 0x8000000) == 0)
    {
      goto LABEL_822;
    }

    goto LABEL_851;
  }

LABEL_843:
  *(v3 + 24) |= 0x4000000u;
  v281 = *(v3 + 776);
  if (!v281)
  {
    v282 = *(v3 + 8);
    if (v282)
    {
      v282 = *(v282 & 0xFFFFFFFFFFFFFFFELL);
    }

    v281 = MEMORY[0x277C97C40](v282);
    *(v3 + 776) = v281;
  }

  if (*(a2 + 776))
  {
    v283 = *(a2 + 776);
  }

  else
  {
    v283 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v281, v283);
  if ((v202 & 0x8000000) == 0)
  {
LABEL_822:
    if ((v202 & 0x10000000) == 0)
    {
      goto LABEL_823;
    }

    goto LABEL_859;
  }

LABEL_851:
  *(v3 + 24) |= 0x8000000u;
  v284 = *(v3 + 784);
  if (!v284)
  {
    v285 = *(v3 + 8);
    if (v285)
    {
      v285 = *(v285 & 0xFFFFFFFFFFFFFFFELL);
    }

    v284 = MEMORY[0x277C97C40](v285);
    *(v3 + 784) = v284;
  }

  if (*(a2 + 784))
  {
    v286 = *(a2 + 784);
  }

  else
  {
    v286 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v284, v286);
  if ((v202 & 0x10000000) == 0)
  {
LABEL_823:
    if ((v202 & 0x20000000) == 0)
    {
      goto LABEL_824;
    }

    goto LABEL_867;
  }

LABEL_859:
  *(v3 + 24) |= 0x10000000u;
  v287 = *(v3 + 792);
  if (!v287)
  {
    v288 = *(v3 + 8);
    if (v288)
    {
      v288 = *(v288 & 0xFFFFFFFFFFFFFFFELL);
    }

    v287 = MEMORY[0x277C97C00](v288);
    *(v3 + 792) = v287;
  }

  if (*(a2 + 792))
  {
    v289 = *(a2 + 792);
  }

  else
  {
    v289 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v287, v289);
  if ((v202 & 0x20000000) == 0)
  {
LABEL_824:
    if ((v202 & 0x40000000) == 0)
    {
      goto LABEL_825;
    }

    goto LABEL_875;
  }

LABEL_867:
  *(v3 + 24) |= 0x20000000u;
  v290 = *(v3 + 800);
  if (!v290)
  {
    v291 = *(v3 + 8);
    if (v291)
    {
      v291 = *(v291 & 0xFFFFFFFFFFFFFFFELL);
    }

    v290 = MEMORY[0x277C97C00](v291);
    *(v3 + 800) = v290;
  }

  if (*(a2 + 800))
  {
    v292 = *(a2 + 800);
  }

  else
  {
    v292 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v290, v292);
  if ((v202 & 0x40000000) == 0)
  {
LABEL_825:
    if ((v202 & 0x80000000) == 0)
    {
      goto LABEL_891;
    }

    goto LABEL_883;
  }

LABEL_875:
  *(v3 + 24) |= 0x40000000u;
  v293 = *(v3 + 808);
  if (!v293)
  {
    v294 = *(v3 + 8);
    if (v294)
    {
      v294 = *(v294 & 0xFFFFFFFFFFFFFFFELL);
    }

    v293 = MEMORY[0x277C97C00](v294);
    *(v3 + 808) = v293;
  }

  if (*(a2 + 808))
  {
    v295 = *(a2 + 808);
  }

  else
  {
    v295 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v293, v295);
  if ((v202 & 0x80000000) != 0)
  {
LABEL_883:
    *(v3 + 24) |= 0x80000000;
    v296 = *(v3 + 816);
    if (!v296)
    {
      v297 = *(v3 + 8);
      if (v297)
      {
        v297 = *(v297 & 0xFFFFFFFFFFFFFFFELL);
      }

      v296 = MEMORY[0x277C97C00](v297);
      *(v3 + 816) = v296;
    }

    if (*(a2 + 816))
    {
      v298 = *(a2 + 816);
    }

    else
    {
      v298 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v296, v298);
  }

LABEL_891:
  v299 = *(a2 + 28);
  if (!v299)
  {
    goto LABEL_965;
  }

  if (v299)
  {
    *(v3 + 28) |= 1u;
    v300 = *(v3 + 824);
    if (!v300)
    {
      v301 = *(v3 + 8);
      if (v301)
      {
        v301 = *(v301 & 0xFFFFFFFFFFFFFFFELL);
      }

      v300 = MEMORY[0x277C97C00](v301);
      *(v3 + 824) = v300;
    }

    if (*(a2 + 824))
    {
      v302 = *(a2 + 824);
    }

    else
    {
      v302 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v300, v302);
    if ((v299 & 2) == 0)
    {
LABEL_894:
      if ((v299 & 4) == 0)
      {
        goto LABEL_895;
      }

      goto LABEL_917;
    }
  }

  else if ((v299 & 2) == 0)
  {
    goto LABEL_894;
  }

  *(v3 + 28) |= 2u;
  v303 = *(v3 + 832);
  if (!v303)
  {
    v304 = *(v3 + 8);
    if (v304)
    {
      v304 = *(v304 & 0xFFFFFFFFFFFFFFFELL);
    }

    v303 = MEMORY[0x277C97C00](v304);
    *(v3 + 832) = v303;
  }

  if (*(a2 + 832))
  {
    v305 = *(a2 + 832);
  }

  else
  {
    v305 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v303, v305);
  if ((v299 & 4) == 0)
  {
LABEL_895:
    if ((v299 & 8) == 0)
    {
      goto LABEL_896;
    }

    goto LABEL_925;
  }

LABEL_917:
  *(v3 + 28) |= 4u;
  v306 = *(v3 + 840);
  if (!v306)
  {
    v307 = *(v3 + 8);
    if (v307)
    {
      v307 = *(v307 & 0xFFFFFFFFFFFFFFFELL);
    }

    v306 = MEMORY[0x277C97C00](v307);
    *(v3 + 840) = v306;
  }

  if (*(a2 + 840))
  {
    v308 = *(a2 + 840);
  }

  else
  {
    v308 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v306, v308);
  if ((v299 & 8) == 0)
  {
LABEL_896:
    if ((v299 & 0x10) == 0)
    {
      goto LABEL_897;
    }

    goto LABEL_933;
  }

LABEL_925:
  *(v3 + 28) |= 8u;
  v309 = *(v3 + 848);
  if (!v309)
  {
    v310 = *(v3 + 8);
    if (v310)
    {
      v310 = *(v310 & 0xFFFFFFFFFFFFFFFELL);
    }

    v309 = MEMORY[0x277C97BF0](v310);
    *(v3 + 848) = v309;
  }

  if (*(a2 + 848))
  {
    v311 = *(a2 + 848);
  }

  else
  {
    v311 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v309, v311);
  if ((v299 & 0x10) == 0)
  {
LABEL_897:
    if ((v299 & 0x20) == 0)
    {
      goto LABEL_898;
    }

    goto LABEL_941;
  }

LABEL_933:
  *(v3 + 28) |= 0x10u;
  v312 = *(v3 + 856);
  if (!v312)
  {
    v313 = *(v3 + 8);
    if (v313)
    {
      v313 = *(v313 & 0xFFFFFFFFFFFFFFFELL);
    }

    v312 = MEMORY[0x277C97C00](v313);
    *(v3 + 856) = v312;
  }

  if (*(a2 + 856))
  {
    v314 = *(a2 + 856);
  }

  else
  {
    v314 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v312, v314);
  if ((v299 & 0x20) == 0)
  {
LABEL_898:
    if ((v299 & 0x40) == 0)
    {
      goto LABEL_899;
    }

    goto LABEL_949;
  }

LABEL_941:
  *(v3 + 28) |= 0x20u;
  v315 = *(v3 + 864);
  if (!v315)
  {
    v316 = *(v3 + 8);
    if (v316)
    {
      v316 = *(v316 & 0xFFFFFFFFFFFFFFFELL);
    }

    v315 = MEMORY[0x277C97C40](v316);
    *(v3 + 864) = v315;
  }

  if (*(a2 + 864))
  {
    v317 = *(a2 + 864);
  }

  else
  {
    v317 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v315, v317);
  if ((v299 & 0x40) == 0)
  {
LABEL_899:
    if ((v299 & 0x80) == 0)
    {
      goto LABEL_965;
    }

    goto LABEL_957;
  }

LABEL_949:
  *(v3 + 28) |= 0x40u;
  v318 = *(v3 + 872);
  if (!v318)
  {
    v319 = *(v3 + 8);
    if (v319)
    {
      v319 = *(v319 & 0xFFFFFFFFFFFFFFFELL);
    }

    v318 = MEMORY[0x277C97C60](v319);
    *(v3 + 872) = v318;
  }

  if (*(a2 + 872))
  {
    v320 = *(a2 + 872);
  }

  else
  {
    v320 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v318, v320);
  if ((v299 & 0x80) != 0)
  {
LABEL_957:
    *(v3 + 28) |= 0x80u;
    v321 = *(v3 + 880);
    if (!v321)
    {
      v322 = *(v3 + 8);
      if (v322)
      {
        v322 = *(v322 & 0xFFFFFFFFFFFFFFFELL);
      }

      v321 = MEMORY[0x277C97C40](v322);
      *(v3 + 880) = v321;
    }

    if (*(a2 + 880))
    {
      v323 = *(a2 + 880);
    }

    else
    {
      v323 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v321, v323);
  }

LABEL_965:
  if ((v299 & 0xFF00) == 0)
  {
    goto LABEL_1039;
  }

  if ((v299 & 0x100) != 0)
  {
    *(v3 + 28) |= 0x100u;
    v324 = *(v3 + 888);
    if (!v324)
    {
      v325 = *(v3 + 8);
      if (v325)
      {
        v325 = *(v325 & 0xFFFFFFFFFFFFFFFELL);
      }

      v324 = MEMORY[0x277C97C60](v325);
      *(v3 + 888) = v324;
    }

    if (*(a2 + 888))
    {
      v326 = *(a2 + 888);
    }

    else
    {
      v326 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v324, v326);
    if ((v299 & 0x200) == 0)
    {
LABEL_968:
      if ((v299 & 0x400) == 0)
      {
        goto LABEL_969;
      }

      goto LABEL_991;
    }
  }

  else if ((v299 & 0x200) == 0)
  {
    goto LABEL_968;
  }

  *(v3 + 28) |= 0x200u;
  v327 = *(v3 + 896);
  if (!v327)
  {
    v328 = *(v3 + 8);
    if (v328)
    {
      v328 = *(v328 & 0xFFFFFFFFFFFFFFFELL);
    }

    v327 = MEMORY[0x277C97C60](v328);
    *(v3 + 896) = v327;
  }

  if (*(a2 + 896))
  {
    v329 = *(a2 + 896);
  }

  else
  {
    v329 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v327, v329);
  if ((v299 & 0x400) == 0)
  {
LABEL_969:
    if ((v299 & 0x800) == 0)
    {
      goto LABEL_970;
    }

    goto LABEL_999;
  }

LABEL_991:
  *(v3 + 28) |= 0x400u;
  v330 = *(v3 + 904);
  if (!v330)
  {
    v331 = *(v3 + 8);
    if (v331)
    {
      v331 = *(v331 & 0xFFFFFFFFFFFFFFFELL);
    }

    v330 = MEMORY[0x277C97C60](v331);
    *(v3 + 904) = v330;
  }

  if (*(a2 + 904))
  {
    v332 = *(a2 + 904);
  }

  else
  {
    v332 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v330, v332);
  if ((v299 & 0x800) == 0)
  {
LABEL_970:
    if ((v299 & 0x1000) == 0)
    {
      goto LABEL_971;
    }

    goto LABEL_1007;
  }

LABEL_999:
  *(v3 + 28) |= 0x800u;
  v333 = *(v3 + 912);
  if (!v333)
  {
    v334 = *(v3 + 8);
    if (v334)
    {
      v334 = *(v334 & 0xFFFFFFFFFFFFFFFELL);
    }

    v333 = MEMORY[0x277C97C60](v334);
    *(v3 + 912) = v333;
  }

  if (*(a2 + 912))
  {
    v335 = *(a2 + 912);
  }

  else
  {
    v335 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v333, v335);
  if ((v299 & 0x1000) == 0)
  {
LABEL_971:
    if ((v299 & 0x2000) == 0)
    {
      goto LABEL_972;
    }

    goto LABEL_1015;
  }

LABEL_1007:
  *(v3 + 28) |= 0x1000u;
  v336 = *(v3 + 920);
  if (!v336)
  {
    v337 = *(v3 + 8);
    if (v337)
    {
      v337 = *(v337 & 0xFFFFFFFFFFFFFFFELL);
    }

    v336 = MEMORY[0x277C97C60](v337);
    *(v3 + 920) = v336;
  }

  if (*(a2 + 920))
  {
    v338 = *(a2 + 920);
  }

  else
  {
    v338 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v336, v338);
  if ((v299 & 0x2000) == 0)
  {
LABEL_972:
    if ((v299 & 0x4000) == 0)
    {
      goto LABEL_973;
    }

    goto LABEL_1023;
  }

LABEL_1015:
  *(v3 + 28) |= 0x2000u;
  v339 = *(v3 + 928);
  if (!v339)
  {
    v340 = *(v3 + 8);
    if (v340)
    {
      v340 = *(v340 & 0xFFFFFFFFFFFFFFFELL);
    }

    v339 = MEMORY[0x277C97C60](v340);
    *(v3 + 928) = v339;
  }

  if (*(a2 + 928))
  {
    v341 = *(a2 + 928);
  }

  else
  {
    v341 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v339, v341);
  if ((v299 & 0x4000) == 0)
  {
LABEL_973:
    if ((v299 & 0x8000) == 0)
    {
      goto LABEL_1039;
    }

    goto LABEL_1031;
  }

LABEL_1023:
  *(v3 + 28) |= 0x4000u;
  v342 = *(v3 + 936);
  if (!v342)
  {
    v343 = *(v3 + 8);
    if (v343)
    {
      v343 = *(v343 & 0xFFFFFFFFFFFFFFFELL);
    }

    v342 = MEMORY[0x277C97C60](v343);
    *(v3 + 936) = v342;
  }

  if (*(a2 + 936))
  {
    v344 = *(a2 + 936);
  }

  else
  {
    v344 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v342, v344);
  if ((v299 & 0x8000) != 0)
  {
LABEL_1031:
    *(v3 + 28) |= 0x8000u;
    v345 = *(v3 + 944);
    if (!v345)
    {
      v346 = *(v3 + 8);
      if (v346)
      {
        v346 = *(v346 & 0xFFFFFFFFFFFFFFFELL);
      }

      v345 = MEMORY[0x277C97C60](v346);
      *(v3 + 944) = v345;
    }

    if (*(a2 + 944))
    {
      v347 = *(a2 + 944);
    }

    else
    {
      v347 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v345, v347);
  }

LABEL_1039:
  if ((v299 & 0xFF0000) == 0)
  {
    goto LABEL_1050;
  }

  if ((v299 & 0x10000) != 0)
  {
    *(v3 + 28) |= 0x10000u;
    v352 = *(v3 + 952);
    if (!v352)
    {
      v353 = *(v3 + 8);
      if (v353)
      {
        v353 = *(v353 & 0xFFFFFFFFFFFFFFFELL);
      }

      v352 = MEMORY[0x277C97C60](v353);
      *(v3 + 952) = v352;
    }

    if (*(a2 + 952))
    {
      v354 = *(a2 + 952);
    }

    else
    {
      v354 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v352, v354);
    if ((v299 & 0x20000) == 0)
    {
LABEL_1042:
      if ((v299 & 0x40000) == 0)
      {
        goto LABEL_1043;
      }

      goto LABEL_1224;
    }
  }

  else if ((v299 & 0x20000) == 0)
  {
    goto LABEL_1042;
  }

  *(v3 + 28) |= 0x20000u;
  v355 = *(v3 + 960);
  if (!v355)
  {
    v356 = *(v3 + 8);
    if (v356)
    {
      v356 = *(v356 & 0xFFFFFFFFFFFFFFFELL);
    }

    v355 = MEMORY[0x277C97C60](v356);
    *(v3 + 960) = v355;
  }

  if (*(a2 + 960))
  {
    v357 = *(a2 + 960);
  }

  else
  {
    v357 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v355, v357);
  if ((v299 & 0x40000) == 0)
  {
LABEL_1043:
    if ((v299 & 0x80000) == 0)
    {
      goto LABEL_1044;
    }

    goto LABEL_1232;
  }

LABEL_1224:
  *(v3 + 28) |= 0x40000u;
  v358 = *(v3 + 968);
  if (!v358)
  {
    v359 = *(v3 + 8);
    if (v359)
    {
      v359 = *(v359 & 0xFFFFFFFFFFFFFFFELL);
    }

    v358 = MEMORY[0x277C97C60](v359);
    *(v3 + 968) = v358;
  }

  if (*(a2 + 968))
  {
    v360 = *(a2 + 968);
  }

  else
  {
    v360 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v358, v360);
  if ((v299 & 0x80000) == 0)
  {
LABEL_1044:
    if ((v299 & 0x100000) == 0)
    {
      goto LABEL_1045;
    }

    goto LABEL_1240;
  }

LABEL_1232:
  *(v3 + 28) |= 0x80000u;
  v361 = *(v3 + 976);
  if (!v361)
  {
    v362 = *(v3 + 8);
    if (v362)
    {
      v362 = *(v362 & 0xFFFFFFFFFFFFFFFELL);
    }

    v361 = MEMORY[0x277C97C60](v362);
    *(v3 + 976) = v361;
  }

  if (*(a2 + 976))
  {
    v363 = *(a2 + 976);
  }

  else
  {
    v363 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v361, v363);
  if ((v299 & 0x100000) == 0)
  {
LABEL_1045:
    if ((v299 & 0x200000) == 0)
    {
      goto LABEL_1046;
    }

    goto LABEL_1248;
  }

LABEL_1240:
  *(v3 + 28) |= 0x100000u;
  v364 = *(v3 + 984);
  if (!v364)
  {
    v365 = *(v3 + 8);
    if (v365)
    {
      v365 = *(v365 & 0xFFFFFFFFFFFFFFFELL);
    }

    v364 = MEMORY[0x277C97C60](v365);
    *(v3 + 984) = v364;
  }

  if (*(a2 + 984))
  {
    v366 = *(a2 + 984);
  }

  else
  {
    v366 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v364, v366);
  if ((v299 & 0x200000) == 0)
  {
LABEL_1046:
    if ((v299 & 0x400000) == 0)
    {
      goto LABEL_1047;
    }

LABEL_1256:
    *(v3 + 1000) = *(a2 + 1000);
    if ((v299 & 0x800000) == 0)
    {
      goto LABEL_1049;
    }

    goto LABEL_1048;
  }

LABEL_1248:
  *(v3 + 28) |= 0x200000u;
  v367 = *(v3 + 992);
  if (!v367)
  {
    v368 = *(v3 + 8);
    if (v368)
    {
      v368 = *(v368 & 0xFFFFFFFFFFFFFFFELL);
    }

    v367 = MEMORY[0x277C97C60](v368);
    *(v3 + 992) = v367;
  }

  if (*(a2 + 992))
  {
    v369 = *(a2 + 992);
  }

  else
  {
    v369 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v367, v369);
  if ((v299 & 0x400000) != 0)
  {
    goto LABEL_1256;
  }

LABEL_1047:
  if ((v299 & 0x800000) != 0)
  {
LABEL_1048:
    *(v3 + 1001) = *(a2 + 1001);
  }

LABEL_1049:
  *(v3 + 28) |= v299;
LABEL_1050:
  if (!HIBYTE(v299))
  {
    goto LABEL_1060;
  }

  if ((v299 & 0x1000000) != 0)
  {
    *(v3 + 1002) = *(a2 + 1002);
    if ((v299 & 0x2000000) == 0)
    {
LABEL_1053:
      if ((v299 & 0x4000000) == 0)
      {
        goto LABEL_1054;
      }

      goto LABEL_1344;
    }
  }

  else if ((v299 & 0x2000000) == 0)
  {
    goto LABEL_1053;
  }

  *(v3 + 1003) = *(a2 + 1003);
  if ((v299 & 0x4000000) == 0)
  {
LABEL_1054:
    if ((v299 & 0x8000000) == 0)
    {
      goto LABEL_1055;
    }

    goto LABEL_1345;
  }

LABEL_1344:
  *(v3 + 1004) = *(a2 + 1004);
  if ((v299 & 0x8000000) == 0)
  {
LABEL_1055:
    if ((v299 & 0x10000000) == 0)
    {
      goto LABEL_1056;
    }

    goto LABEL_1346;
  }

LABEL_1345:
  *(v3 + 1005) = *(a2 + 1005);
  if ((v299 & 0x10000000) == 0)
  {
LABEL_1056:
    if ((v299 & 0x20000000) == 0)
    {
      goto LABEL_1057;
    }

    goto LABEL_1347;
  }

LABEL_1346:
  *(v3 + 1006) = *(a2 + 1006);
  if ((v299 & 0x20000000) == 0)
  {
LABEL_1057:
    if ((v299 & 0x40000000) == 0)
    {
      goto LABEL_1058;
    }

LABEL_1348:
    *(v3 + 1008) = *(a2 + 1008);
    if ((v299 & 0x80000000) == 0)
    {
      goto LABEL_1059;
    }

LABEL_1349:
    *(v3 + 1009) = *(a2 + 1009);
    goto LABEL_1059;
  }

LABEL_1347:
  *(v3 + 1007) = *(a2 + 1007);
  if ((v299 & 0x40000000) != 0)
  {
    goto LABEL_1348;
  }

LABEL_1058:
  if ((v299 & 0x80000000) != 0)
  {
    goto LABEL_1349;
  }

LABEL_1059:
  *(v3 + 28) |= v299;
LABEL_1060:
  v348 = *(a2 + 32);
  if (!v348)
  {
    goto LABEL_1071;
  }

  if (v348)
  {
    *(v3 + 1010) = *(a2 + 1010);
    if ((v348 & 2) == 0)
    {
LABEL_1063:
      if ((v348 & 4) == 0)
      {
        goto LABEL_1064;
      }

      goto LABEL_1260;
    }
  }

  else if ((v348 & 2) == 0)
  {
    goto LABEL_1063;
  }

  *(v3 + 1011) = *(a2 + 1011);
  if ((v348 & 4) == 0)
  {
LABEL_1064:
    if ((v348 & 8) == 0)
    {
      goto LABEL_1065;
    }

    goto LABEL_1261;
  }

LABEL_1260:
  *(v3 + 1012) = *(a2 + 1012);
  if ((v348 & 8) == 0)
  {
LABEL_1065:
    if ((v348 & 0x10) == 0)
    {
      goto LABEL_1066;
    }

    goto LABEL_1262;
  }

LABEL_1261:
  *(v3 + 1013) = *(a2 + 1013);
  if ((v348 & 0x10) == 0)
  {
LABEL_1066:
    if ((v348 & 0x20) == 0)
    {
      goto LABEL_1067;
    }

    goto LABEL_1263;
  }

LABEL_1262:
  *(v3 + 1014) = *(a2 + 1014);
  if ((v348 & 0x20) == 0)
  {
LABEL_1067:
    if ((v348 & 0x40) == 0)
    {
      goto LABEL_1068;
    }

LABEL_1264:
    *(v3 + 1016) = *(a2 + 1016);
    if ((v348 & 0x80) == 0)
    {
      goto LABEL_1070;
    }

    goto LABEL_1069;
  }

LABEL_1263:
  *(v3 + 1015) = *(a2 + 1015);
  if ((v348 & 0x40) != 0)
  {
    goto LABEL_1264;
  }

LABEL_1068:
  if ((v348 & 0x80) != 0)
  {
LABEL_1069:
    *(v3 + 1017) = *(a2 + 1017);
  }

LABEL_1070:
  *(v3 + 32) |= v348;
LABEL_1071:
  if ((v348 & 0xFF00) == 0)
  {
    goto LABEL_1082;
  }

  if ((v348 & 0x100) != 0)
  {
    *(v3 + 1018) = *(a2 + 1018);
    if ((v348 & 0x200) == 0)
    {
LABEL_1074:
      if ((v348 & 0x400) == 0)
      {
        goto LABEL_1075;
      }

      goto LABEL_1268;
    }
  }

  else if ((v348 & 0x200) == 0)
  {
    goto LABEL_1074;
  }

  *(v3 + 1019) = *(a2 + 1019);
  if ((v348 & 0x400) == 0)
  {
LABEL_1075:
    if ((v348 & 0x800) == 0)
    {
      goto LABEL_1076;
    }

    goto LABEL_1269;
  }

LABEL_1268:
  *(v3 + 1020) = *(a2 + 1020);
  if ((v348 & 0x800) == 0)
  {
LABEL_1076:
    if ((v348 & 0x1000) == 0)
    {
      goto LABEL_1077;
    }

    goto LABEL_1270;
  }

LABEL_1269:
  *(v3 + 1021) = *(a2 + 1021);
  if ((v348 & 0x1000) == 0)
  {
LABEL_1077:
    if ((v348 & 0x2000) == 0)
    {
      goto LABEL_1078;
    }

    goto LABEL_1271;
  }

LABEL_1270:
  *(v3 + 1022) = *(a2 + 1022);
  if ((v348 & 0x2000) == 0)
  {
LABEL_1078:
    if ((v348 & 0x4000) == 0)
    {
      goto LABEL_1079;
    }

LABEL_1272:
    *(v3 + 1024) = *(a2 + 1024);
    if ((v348 & 0x8000) == 0)
    {
      goto LABEL_1081;
    }

    goto LABEL_1080;
  }

LABEL_1271:
  *(v3 + 1023) = *(a2 + 1023);
  if ((v348 & 0x4000) != 0)
  {
    goto LABEL_1272;
  }

LABEL_1079:
  if ((v348 & 0x8000) != 0)
  {
LABEL_1080:
    *(v3 + 1025) = *(a2 + 1025);
  }

LABEL_1081:
  *(v3 + 32) |= v348;
LABEL_1082:
  if ((v348 & 0xFF0000) == 0)
  {
    goto LABEL_1093;
  }

  if ((v348 & 0x10000) != 0)
  {
    *(v3 + 1026) = *(a2 + 1026);
    if ((v348 & 0x20000) == 0)
    {
LABEL_1085:
      if ((v348 & 0x40000) == 0)
      {
        goto LABEL_1086;
      }

      goto LABEL_1276;
    }
  }

  else if ((v348 & 0x20000) == 0)
  {
    goto LABEL_1085;
  }

  *(v3 + 1027) = *(a2 + 1027);
  if ((v348 & 0x40000) == 0)
  {
LABEL_1086:
    if ((v348 & 0x80000) == 0)
    {
      goto LABEL_1087;
    }

    goto LABEL_1277;
  }

LABEL_1276:
  *(v3 + 1028) = *(a2 + 1028);
  if ((v348 & 0x80000) == 0)
  {
LABEL_1087:
    if ((v348 & 0x100000) == 0)
    {
      goto LABEL_1088;
    }

    goto LABEL_1278;
  }

LABEL_1277:
  *(v3 + 1029) = *(a2 + 1029);
  if ((v348 & 0x100000) == 0)
  {
LABEL_1088:
    if ((v348 & 0x200000) == 0)
    {
      goto LABEL_1089;
    }

    goto LABEL_1279;
  }

LABEL_1278:
  *(v3 + 1030) = *(a2 + 1030);
  if ((v348 & 0x200000) == 0)
  {
LABEL_1089:
    if ((v348 & 0x400000) == 0)
    {
      goto LABEL_1090;
    }

LABEL_1280:
    *(v3 + 1032) = *(a2 + 1032);
    if ((v348 & 0x800000) == 0)
    {
      goto LABEL_1092;
    }

    goto LABEL_1091;
  }

LABEL_1279:
  *(v3 + 1031) = *(a2 + 1031);
  if ((v348 & 0x400000) != 0)
  {
    goto LABEL_1280;
  }

LABEL_1090:
  if ((v348 & 0x800000) != 0)
  {
LABEL_1091:
    *(v3 + 1033) = *(a2 + 1033);
  }

LABEL_1092:
  *(v3 + 32) |= v348;
LABEL_1093:
  if (!HIBYTE(v348))
  {
    goto LABEL_1103;
  }

  if ((v348 & 0x1000000) != 0)
  {
    *(v3 + 1034) = *(a2 + 1034);
    if ((v348 & 0x2000000) == 0)
    {
LABEL_1096:
      if ((v348 & 0x4000000) == 0)
      {
        goto LABEL_1097;
      }

      goto LABEL_1352;
    }
  }

  else if ((v348 & 0x2000000) == 0)
  {
    goto LABEL_1096;
  }

  *(v3 + 1035) = *(a2 + 1035);
  if ((v348 & 0x4000000) == 0)
  {
LABEL_1097:
    if ((v348 & 0x8000000) == 0)
    {
      goto LABEL_1098;
    }

    goto LABEL_1353;
  }

LABEL_1352:
  *(v3 + 1036) = *(a2 + 1036);
  if ((v348 & 0x8000000) == 0)
  {
LABEL_1098:
    if ((v348 & 0x10000000) == 0)
    {
      goto LABEL_1099;
    }

    goto LABEL_1354;
  }

LABEL_1353:
  *(v3 + 1037) = *(a2 + 1037);
  if ((v348 & 0x10000000) == 0)
  {
LABEL_1099:
    if ((v348 & 0x20000000) == 0)
    {
      goto LABEL_1100;
    }

    goto LABEL_1355;
  }

LABEL_1354:
  *(v3 + 1038) = *(a2 + 1038);
  if ((v348 & 0x20000000) == 0)
  {
LABEL_1100:
    if ((v348 & 0x40000000) == 0)
    {
      goto LABEL_1101;
    }

LABEL_1356:
    *(v3 + 1040) = *(a2 + 1040);
    if ((v348 & 0x80000000) == 0)
    {
      goto LABEL_1102;
    }

LABEL_1357:
    *(v3 + 1041) = *(a2 + 1041);
    goto LABEL_1102;
  }

LABEL_1355:
  *(v3 + 1039) = *(a2 + 1039);
  if ((v348 & 0x40000000) != 0)
  {
    goto LABEL_1356;
  }

LABEL_1101:
  if ((v348 & 0x80000000) != 0)
  {
    goto LABEL_1357;
  }

LABEL_1102:
  *(v3 + 32) |= v348;
LABEL_1103:
  v349 = *(a2 + 36);
  if (!v349)
  {
    goto LABEL_1114;
  }

  if (v349)
  {
    *(v3 + 1042) = *(a2 + 1042);
    if ((v349 & 2) == 0)
    {
LABEL_1106:
      if ((v349 & 4) == 0)
      {
        goto LABEL_1107;
      }

      goto LABEL_1284;
    }
  }

  else if ((v349 & 2) == 0)
  {
    goto LABEL_1106;
  }

  *(v3 + 1043) = *(a2 + 1043);
  if ((v349 & 4) == 0)
  {
LABEL_1107:
    if ((v349 & 8) == 0)
    {
      goto LABEL_1108;
    }

    goto LABEL_1285;
  }

LABEL_1284:
  *(v3 + 1044) = *(a2 + 1044);
  if ((v349 & 8) == 0)
  {
LABEL_1108:
    if ((v349 & 0x10) == 0)
    {
      goto LABEL_1109;
    }

    goto LABEL_1286;
  }

LABEL_1285:
  *(v3 + 1045) = *(a2 + 1045);
  if ((v349 & 0x10) == 0)
  {
LABEL_1109:
    if ((v349 & 0x20) == 0)
    {
      goto LABEL_1110;
    }

    goto LABEL_1287;
  }

LABEL_1286:
  *(v3 + 1046) = *(a2 + 1046);
  if ((v349 & 0x20) == 0)
  {
LABEL_1110:
    if ((v349 & 0x40) == 0)
    {
      goto LABEL_1111;
    }

LABEL_1288:
    *(v3 + 1048) = *(a2 + 1048);
    if ((v349 & 0x80) == 0)
    {
      goto LABEL_1113;
    }

    goto LABEL_1112;
  }

LABEL_1287:
  *(v3 + 1047) = *(a2 + 1047);
  if ((v349 & 0x40) != 0)
  {
    goto LABEL_1288;
  }

LABEL_1111:
  if ((v349 & 0x80) != 0)
  {
LABEL_1112:
    *(v3 + 1049) = *(a2 + 1049);
  }

LABEL_1113:
  *(v3 + 36) |= v349;
LABEL_1114:
  if ((v349 & 0xFF00) == 0)
  {
    goto LABEL_1125;
  }

  if ((v349 & 0x100) != 0)
  {
    *(v3 + 1050) = *(a2 + 1050);
    if ((v349 & 0x200) == 0)
    {
LABEL_1117:
      if ((v349 & 0x400) == 0)
      {
        goto LABEL_1118;
      }

      goto LABEL_1292;
    }
  }

  else if ((v349 & 0x200) == 0)
  {
    goto LABEL_1117;
  }

  *(v3 + 1051) = *(a2 + 1051);
  if ((v349 & 0x400) == 0)
  {
LABEL_1118:
    if ((v349 & 0x800) == 0)
    {
      goto LABEL_1119;
    }

    goto LABEL_1293;
  }

LABEL_1292:
  *(v3 + 1052) = *(a2 + 1052);
  if ((v349 & 0x800) == 0)
  {
LABEL_1119:
    if ((v349 & 0x1000) == 0)
    {
      goto LABEL_1120;
    }

    goto LABEL_1294;
  }

LABEL_1293:
  *(v3 + 1053) = *(a2 + 1053);
  if ((v349 & 0x1000) == 0)
  {
LABEL_1120:
    if ((v349 & 0x2000) == 0)
    {
      goto LABEL_1121;
    }

    goto LABEL_1295;
  }

LABEL_1294:
  *(v3 + 1054) = *(a2 + 1054);
  if ((v349 & 0x2000) == 0)
  {
LABEL_1121:
    if ((v349 & 0x4000) == 0)
    {
      goto LABEL_1122;
    }

LABEL_1296:
    *(v3 + 1056) = *(a2 + 1056);
    if ((v349 & 0x8000) == 0)
    {
      goto LABEL_1124;
    }

    goto LABEL_1123;
  }

LABEL_1295:
  *(v3 + 1055) = *(a2 + 1055);
  if ((v349 & 0x4000) != 0)
  {
    goto LABEL_1296;
  }

LABEL_1122:
  if ((v349 & 0x8000) != 0)
  {
LABEL_1123:
    *(v3 + 1057) = *(a2 + 1057);
  }

LABEL_1124:
  *(v3 + 36) |= v349;
LABEL_1125:
  if ((v349 & 0xFF0000) == 0)
  {
    goto LABEL_1136;
  }

  if ((v349 & 0x10000) != 0)
  {
    *(v3 + 1058) = *(a2 + 1058);
    if ((v349 & 0x20000) == 0)
    {
LABEL_1128:
      if ((v349 & 0x40000) == 0)
      {
        goto LABEL_1129;
      }

      goto LABEL_1300;
    }
  }

  else if ((v349 & 0x20000) == 0)
  {
    goto LABEL_1128;
  }

  *(v3 + 1059) = *(a2 + 1059);
  if ((v349 & 0x40000) == 0)
  {
LABEL_1129:
    if ((v349 & 0x80000) == 0)
    {
      goto LABEL_1130;
    }

    goto LABEL_1301;
  }

LABEL_1300:
  *(v3 + 1060) = *(a2 + 1060);
  if ((v349 & 0x80000) == 0)
  {
LABEL_1130:
    if ((v349 & 0x100000) == 0)
    {
      goto LABEL_1131;
    }

    goto LABEL_1302;
  }

LABEL_1301:
  *(v3 + 1061) = *(a2 + 1061);
  if ((v349 & 0x100000) == 0)
  {
LABEL_1131:
    if ((v349 & 0x200000) == 0)
    {
      goto LABEL_1132;
    }

    goto LABEL_1303;
  }

LABEL_1302:
  *(v3 + 1062) = *(a2 + 1062);
  if ((v349 & 0x200000) == 0)
  {
LABEL_1132:
    if ((v349 & 0x400000) == 0)
    {
      goto LABEL_1133;
    }

LABEL_1304:
    *(v3 + 1064) = *(a2 + 1064);
    if ((v349 & 0x800000) == 0)
    {
      goto LABEL_1135;
    }

    goto LABEL_1134;
  }

LABEL_1303:
  *(v3 + 1063) = *(a2 + 1063);
  if ((v349 & 0x400000) != 0)
  {
    goto LABEL_1304;
  }

LABEL_1133:
  if ((v349 & 0x800000) != 0)
  {
LABEL_1134:
    *(v3 + 1065) = *(a2 + 1065);
  }

LABEL_1135:
  *(v3 + 36) |= v349;
LABEL_1136:
  if (!HIBYTE(v349))
  {
    goto LABEL_1146;
  }

  if ((v349 & 0x1000000) != 0)
  {
    *(v3 + 1066) = *(a2 + 1066);
    if ((v349 & 0x2000000) == 0)
    {
LABEL_1139:
      if ((v349 & 0x4000000) == 0)
      {
        goto LABEL_1140;
      }

      goto LABEL_1360;
    }
  }

  else if ((v349 & 0x2000000) == 0)
  {
    goto LABEL_1139;
  }

  *(v3 + 1067) = *(a2 + 1067);
  if ((v349 & 0x4000000) == 0)
  {
LABEL_1140:
    if ((v349 & 0x8000000) == 0)
    {
      goto LABEL_1141;
    }

    goto LABEL_1361;
  }

LABEL_1360:
  *(v3 + 1068) = *(a2 + 1068);
  if ((v349 & 0x8000000) == 0)
  {
LABEL_1141:
    if ((v349 & 0x10000000) == 0)
    {
      goto LABEL_1142;
    }

    goto LABEL_1362;
  }

LABEL_1361:
  *(v3 + 1069) = *(a2 + 1069);
  if ((v349 & 0x10000000) == 0)
  {
LABEL_1142:
    if ((v349 & 0x20000000) == 0)
    {
      goto LABEL_1143;
    }

    goto LABEL_1363;
  }

LABEL_1362:
  *(v3 + 1070) = *(a2 + 1070);
  if ((v349 & 0x20000000) == 0)
  {
LABEL_1143:
    if ((v349 & 0x40000000) == 0)
    {
      goto LABEL_1144;
    }

LABEL_1364:
    *(v3 + 1072) = *(a2 + 1072);
    if ((v349 & 0x80000000) == 0)
    {
      goto LABEL_1145;
    }

LABEL_1365:
    *(v3 + 1073) = *(a2 + 1073);
    goto LABEL_1145;
  }

LABEL_1363:
  *(v3 + 1071) = *(a2 + 1071);
  if ((v349 & 0x40000000) != 0)
  {
    goto LABEL_1364;
  }

LABEL_1144:
  if ((v349 & 0x80000000) != 0)
  {
    goto LABEL_1365;
  }

LABEL_1145:
  *(v3 + 36) |= v349;
LABEL_1146:
  v350 = *(a2 + 40);
  if (!v350)
  {
    goto LABEL_1157;
  }

  if (v350)
  {
    *(v3 + 1074) = *(a2 + 1074);
    if ((v350 & 2) == 0)
    {
LABEL_1149:
      if ((v350 & 4) == 0)
      {
        goto LABEL_1150;
      }

      goto LABEL_1308;
    }
  }

  else if ((v350 & 2) == 0)
  {
    goto LABEL_1149;
  }

  *(v3 + 1075) = *(a2 + 1075);
  if ((v350 & 4) == 0)
  {
LABEL_1150:
    if ((v350 & 8) == 0)
    {
      goto LABEL_1151;
    }

    goto LABEL_1309;
  }

LABEL_1308:
  *(v3 + 1076) = *(a2 + 1076);
  if ((v350 & 8) == 0)
  {
LABEL_1151:
    if ((v350 & 0x10) == 0)
    {
      goto LABEL_1152;
    }

    goto LABEL_1310;
  }

LABEL_1309:
  *(v3 + 1077) = *(a2 + 1077);
  if ((v350 & 0x10) == 0)
  {
LABEL_1152:
    if ((v350 & 0x20) == 0)
    {
      goto LABEL_1153;
    }

    goto LABEL_1311;
  }

LABEL_1310:
  *(v3 + 1078) = *(a2 + 1078);
  if ((v350 & 0x20) == 0)
  {
LABEL_1153:
    if ((v350 & 0x40) == 0)
    {
      goto LABEL_1154;
    }

LABEL_1312:
    *(v3 + 1080) = *(a2 + 1080);
    if ((v350 & 0x80) == 0)
    {
      goto LABEL_1156;
    }

    goto LABEL_1155;
  }

LABEL_1311:
  *(v3 + 1079) = *(a2 + 1079);
  if ((v350 & 0x40) != 0)
  {
    goto LABEL_1312;
  }

LABEL_1154:
  if ((v350 & 0x80) != 0)
  {
LABEL_1155:
    *(v3 + 1081) = *(a2 + 1081);
  }

LABEL_1156:
  *(v3 + 40) |= v350;
LABEL_1157:
  if ((v350 & 0xFF00) == 0)
  {
    goto LABEL_1168;
  }

  if ((v350 & 0x100) != 0)
  {
    *(v3 + 1082) = *(a2 + 1082);
    if ((v350 & 0x200) == 0)
    {
LABEL_1160:
      if ((v350 & 0x400) == 0)
      {
        goto LABEL_1161;
      }

      goto LABEL_1316;
    }
  }

  else if ((v350 & 0x200) == 0)
  {
    goto LABEL_1160;
  }

  *(v3 + 1083) = *(a2 + 1083);
  if ((v350 & 0x400) == 0)
  {
LABEL_1161:
    if ((v350 & 0x800) == 0)
    {
      goto LABEL_1162;
    }

    goto LABEL_1317;
  }

LABEL_1316:
  *(v3 + 1084) = *(a2 + 1084);
  if ((v350 & 0x800) == 0)
  {
LABEL_1162:
    if ((v350 & 0x1000) == 0)
    {
      goto LABEL_1163;
    }

    goto LABEL_1318;
  }

LABEL_1317:
  *(v3 + 1085) = *(a2 + 1085);
  if ((v350 & 0x1000) == 0)
  {
LABEL_1163:
    if ((v350 & 0x2000) == 0)
    {
      goto LABEL_1164;
    }

    goto LABEL_1319;
  }

LABEL_1318:
  *(v3 + 1086) = *(a2 + 1086);
  if ((v350 & 0x2000) == 0)
  {
LABEL_1164:
    if ((v350 & 0x4000) == 0)
    {
      goto LABEL_1165;
    }

LABEL_1320:
    *(v3 + 1088) = *(a2 + 1088);
    if ((v350 & 0x8000) == 0)
    {
      goto LABEL_1167;
    }

    goto LABEL_1166;
  }

LABEL_1319:
  *(v3 + 1087) = *(a2 + 1087);
  if ((v350 & 0x4000) != 0)
  {
    goto LABEL_1320;
  }

LABEL_1165:
  if ((v350 & 0x8000) != 0)
  {
LABEL_1166:
    *(v3 + 1089) = *(a2 + 1089);
  }

LABEL_1167:
  *(v3 + 40) |= v350;
LABEL_1168:
  if ((v350 & 0xFF0000) == 0)
  {
    goto LABEL_1179;
  }

  if ((v350 & 0x10000) != 0)
  {
    *(v3 + 1090) = *(a2 + 1090);
    if ((v350 & 0x20000) == 0)
    {
LABEL_1171:
      if ((v350 & 0x40000) == 0)
      {
        goto LABEL_1172;
      }

      goto LABEL_1324;
    }
  }

  else if ((v350 & 0x20000) == 0)
  {
    goto LABEL_1171;
  }

  *(v3 + 1091) = *(a2 + 1091);
  if ((v350 & 0x40000) == 0)
  {
LABEL_1172:
    if ((v350 & 0x80000) == 0)
    {
      goto LABEL_1173;
    }

    goto LABEL_1325;
  }

LABEL_1324:
  *(v3 + 1092) = *(a2 + 1092);
  if ((v350 & 0x80000) == 0)
  {
LABEL_1173:
    if ((v350 & 0x100000) == 0)
    {
      goto LABEL_1174;
    }

    goto LABEL_1326;
  }

LABEL_1325:
  *(v3 + 1093) = *(a2 + 1093);
  if ((v350 & 0x100000) == 0)
  {
LABEL_1174:
    if ((v350 & 0x200000) == 0)
    {
      goto LABEL_1175;
    }

    goto LABEL_1327;
  }

LABEL_1326:
  *(v3 + 1094) = *(a2 + 1094);
  if ((v350 & 0x200000) == 0)
  {
LABEL_1175:
    if ((v350 & 0x400000) == 0)
    {
      goto LABEL_1176;
    }

LABEL_1328:
    *(v3 + 1096) = *(a2 + 1096);
    if ((v350 & 0x800000) == 0)
    {
      goto LABEL_1178;
    }

    goto LABEL_1177;
  }

LABEL_1327:
  *(v3 + 1095) = *(a2 + 1095);
  if ((v350 & 0x400000) != 0)
  {
    goto LABEL_1328;
  }

LABEL_1176:
  if ((v350 & 0x800000) != 0)
  {
LABEL_1177:
    *(v3 + 1097) = *(a2 + 1097);
  }

LABEL_1178:
  *(v3 + 40) |= v350;
LABEL_1179:
  if (!HIBYTE(v350))
  {
    goto LABEL_1189;
  }

  if ((v350 & 0x1000000) != 0)
  {
    *(v3 + 1098) = *(a2 + 1098);
    if ((v350 & 0x2000000) == 0)
    {
LABEL_1182:
      if ((v350 & 0x4000000) == 0)
      {
        goto LABEL_1183;
      }

      goto LABEL_1368;
    }
  }

  else if ((v350 & 0x2000000) == 0)
  {
    goto LABEL_1182;
  }

  *(v3 + 1099) = *(a2 + 1099);
  if ((v350 & 0x4000000) == 0)
  {
LABEL_1183:
    if ((v350 & 0x8000000) == 0)
    {
      goto LABEL_1184;
    }

    goto LABEL_1369;
  }

LABEL_1368:
  *(v3 + 1100) = *(a2 + 1100);
  if ((v350 & 0x8000000) == 0)
  {
LABEL_1184:
    if ((v350 & 0x10000000) == 0)
    {
      goto LABEL_1185;
    }

    goto LABEL_1370;
  }

LABEL_1369:
  *(v3 + 1101) = *(a2 + 1101);
  if ((v350 & 0x10000000) == 0)
  {
LABEL_1185:
    if ((v350 & 0x20000000) == 0)
    {
      goto LABEL_1186;
    }

    goto LABEL_1371;
  }

LABEL_1370:
  *(v3 + 1102) = *(a2 + 1102);
  if ((v350 & 0x20000000) == 0)
  {
LABEL_1186:
    if ((v350 & 0x40000000) == 0)
    {
      goto LABEL_1187;
    }

LABEL_1372:
    *(v3 + 1104) = *(a2 + 1104);
    if ((v350 & 0x80000000) == 0)
    {
      goto LABEL_1188;
    }

LABEL_1373:
    *(v3 + 1105) = *(a2 + 1105);
    goto LABEL_1188;
  }

LABEL_1371:
  *(v3 + 1103) = *(a2 + 1103);
  if ((v350 & 0x40000000) != 0)
  {
    goto LABEL_1372;
  }

LABEL_1187:
  if ((v350 & 0x80000000) != 0)
  {
    goto LABEL_1373;
  }

LABEL_1188:
  *(v3 + 40) |= v350;
LABEL_1189:
  v351 = *(a2 + 44);
  if (!v351)
  {
    goto LABEL_1200;
  }

  if (v351)
  {
    *(v3 + 1106) = *(a2 + 1106);
    if ((v351 & 2) == 0)
    {
LABEL_1192:
      if ((v351 & 4) == 0)
      {
        goto LABEL_1193;
      }

      goto LABEL_1332;
    }
  }

  else if ((v351 & 2) == 0)
  {
    goto LABEL_1192;
  }

  *(v3 + 1107) = *(a2 + 1107);
  if ((v351 & 4) == 0)
  {
LABEL_1193:
    if ((v351 & 8) == 0)
    {
      goto LABEL_1194;
    }

    goto LABEL_1333;
  }

LABEL_1332:
  *(v3 + 1108) = *(a2 + 1108);
  if ((v351 & 8) == 0)
  {
LABEL_1194:
    if ((v351 & 0x10) == 0)
    {
      goto LABEL_1195;
    }

    goto LABEL_1334;
  }

LABEL_1333:
  *(v3 + 1109) = *(a2 + 1109);
  if ((v351 & 0x10) == 0)
  {
LABEL_1195:
    if ((v351 & 0x20) == 0)
    {
      goto LABEL_1196;
    }

    goto LABEL_1335;
  }

LABEL_1334:
  *(v3 + 1110) = *(a2 + 1110);
  if ((v351 & 0x20) == 0)
  {
LABEL_1196:
    if ((v351 & 0x40) == 0)
    {
      goto LABEL_1197;
    }

LABEL_1336:
    *(v3 + 1112) = *(a2 + 1112);
    if ((v351 & 0x80) == 0)
    {
      goto LABEL_1199;
    }

    goto LABEL_1198;
  }

LABEL_1335:
  *(v3 + 1111) = *(a2 + 1111);
  if ((v351 & 0x40) != 0)
  {
    goto LABEL_1336;
  }

LABEL_1197:
  if ((v351 & 0x80) != 0)
  {
LABEL_1198:
    *(v3 + 1113) = *(a2 + 1113);
  }

LABEL_1199:
  *(v3 + 44) |= v351;
LABEL_1200:
  if ((v351 & 0xF00) == 0)
  {
    return result;
  }

  if ((v351 & 0x100) != 0)
  {
    *(v3 + 1114) = *(a2 + 1114);
    if ((v351 & 0x200) == 0)
    {
LABEL_1203:
      if ((v351 & 0x400) == 0)
      {
        goto LABEL_1204;
      }

LABEL_1340:
      *(v3 + 1116) = *(a2 + 1116);
      if ((v351 & 0x800) == 0)
      {
        goto LABEL_1206;
      }

      goto LABEL_1205;
    }
  }

  else if ((v351 & 0x200) == 0)
  {
    goto LABEL_1203;
  }

  *(v3 + 1115) = *(a2 + 1115);
  if ((v351 & 0x400) != 0)
  {
    goto LABEL_1340;
  }

LABEL_1204:
  if ((v351 & 0x800) != 0)
  {
LABEL_1205:
    *(v3 + 1117) = *(a2 + 1117);
  }

LABEL_1206:
  *(v3 + 44) |= v351;
  return result;
}