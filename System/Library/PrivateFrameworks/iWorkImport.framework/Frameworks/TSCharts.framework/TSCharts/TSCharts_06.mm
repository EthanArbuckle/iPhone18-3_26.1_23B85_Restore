unsigned __int8 *sub_27639F908(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 32);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v5, v7, a3);
  }

  if ((*(a1 + 21) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(a1 + 400);
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

    v12 = *(a1 + 40);
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

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v12, v14, a3);
  }

  if ((*(a1 + 21) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(a1 + 401);
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

    v19 = *(a1 + 48);
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

  if (*(a1 + 22))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(a1 + 402);
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

    v26 = *(a1 + 56);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v26, v28, a3);
  }

  if ((*(a1 + 22) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(a1 + 403);
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

    v33 = *(a1 + 64);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v33, v35, a3);
  }

  if ((*(a1 + 22) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(a1 + 404);
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

    v40 = *(a1 + 72);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v40, v42, a3);
  }

  if ((*(a1 + 22) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(a1 + 405);
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

    v47 = *(a1 + 80);
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

  if ((*(a1 + 22) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v53 = *(a1 + 406);
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

    v54 = *(a1 + 88);
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

  if ((*(a1 + 22) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v60 = *(a1 + 407);
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

    v61 = *(a1 + 96);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v61, v63, a3);
  }

  if ((*(a1 + 22) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(a1 + 408);
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

    v68 = *(a1 + 104);
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

  if ((*(a1 + 22) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v74 = *(a1 + 409);
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

    v75 = *(a1 + 112);
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

  if (*(a1 + 23))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v81 = *(a1 + 410);
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

    v82 = *(a1 + 120);
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

  if ((*(a1 + 23) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v88 = *(a1 + 411);
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

    v89 = *(a1 + 128);
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

  if ((*(a1 + 23) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v95 = *(a1 + 412);
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

    v96 = *(a1 + 136);
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

  if ((*(a1 + 23) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v102 = *(a1 + 413);
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

    v103 = *(a1 + 144);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v103, v105, a3);
  }

  if ((*(a1 + 23) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v109 = *(a1 + 414);
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

    v110 = *(a1 + 152);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v110, v112, a3);
  }

  if ((*(a1 + 23) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v116 = *(a1 + 415);
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

    v117 = *(a1 + 160);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v117, v119, a3);
  }

  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v123 = *(a1 + 416);
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

    v124 = *(a1 + 168);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v124, v126, a3);
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v130 = *(a1 + 417);
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

    v131 = *(a1 + 176);
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

  if (*(a1 + 24))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v137 = *(a1 + 418);
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

    v138 = *(a1 + 184);
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

  if ((*(a1 + 24) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v144 = *(a1 + 419);
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

    v145 = *(a1 + 192);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v145, v147, a3);
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v151 = *(a1 + 420);
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

    v152 = *(a1 + 200);
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

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v152, v154, a3);
  }

  if ((*(a1 + 24) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v158 = *(a1 + 421);
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

    v159 = *(a1 + 208);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v159, v161, a3);
  }

  if ((*(a1 + 24) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v165 = *(a1 + 422);
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

    v166 = *(a1 + 216);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v166, v168, a3);
  }

  if ((*(a1 + 24) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v172 = *(a1 + 423);
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

    v173 = *(a1 + 224);
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

  if ((*(a1 + 24) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v179 = *(a1 + 424);
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

    v180 = *(a1 + 232);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v180, v182, a3);
  }

  if ((*(a1 + 24) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v186 = *(a1 + 425);
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

    v187 = *(a1 + 240);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v187, v189, a3);
  }

  if (*(a1 + 25))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v193 = *(a1 + 426);
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

    v194 = *(a1 + 248);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v194, v196, a3);
  }

  if ((*(a1 + 25) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v200 = *(a1 + 427);
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

    v201 = *(a1 + 256);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v201, v203, a3);
  }

  if ((*(a1 + 25) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v207 = *(a1 + 428);
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

    v208 = *(a1 + 264);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v208, v210, a3);
  }

  if ((*(a1 + 25) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v214 = *(a1 + 429);
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

    v215 = *(a1 + 272);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v215, v217, a3);
  }

  if ((*(a1 + 25) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v221 = *(a1 + 430);
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

    v222 = *(a1 + 280);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v222, v224, a3);
  }

  if ((*(a1 + 25) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v228 = *(a1 + 431);
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

    v229 = *(a1 + 288);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v229, v231, a3);
  }

  if ((*(a1 + 25) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v235 = *(a1 + 432);
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

    v236 = *(a1 + 296);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v236, v238, a3);
  }

  if ((*(a1 + 25) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v242 = *(a1 + 433);
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

    v243 = *(a1 + 304);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v243, v245, a3);
  }

  if (*(a1 + 26))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v249 = *(a1 + 434);
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

    v250 = *(a1 + 312);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v250, v252, a3);
  }

  if ((*(a1 + 26) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v256 = *(a1 + 435);
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

    v257 = *(a1 + 320);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v257, v259, a3);
  }

  if ((*(a1 + 26) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v263 = *(a1 + 436);
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

    v264 = *(a1 + 328);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v264, v266, a3);
  }

  if ((*(a1 + 26) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v270 = *(a1 + 437);
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

    v271 = *(a1 + 336);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v271, v273, a3);
  }

  if ((*(a1 + 26) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v277 = *(a1 + 438);
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

    v278 = *(a1 + 344);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v278, v280, a3);
  }

  if ((*(a1 + 26) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v284 = *(a1 + 439);
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

    v285 = *(a1 + 352);
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

  if ((*(a1 + 26) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v291 = *(a1 + 440);
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

    v292 = *(a1 + 360);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v292, v294, a3);
  }

  if ((*(a1 + 26) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v298 = *(a1 + 441);
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

    v299 = *(a1 + 368);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v299, v301, a3);
  }

  if (*(a1 + 27))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v305 = *(a1 + 442);
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

    v306 = *(a1 + 376);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v306, v308, a3);
  }

  if ((*(a1 + 27) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v312 = *(a1 + 443);
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

    v313 = *(a1 + 384);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v313, v315, a3);
  }

  if ((*(a1 + 27) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v319 = *(a1 + 444);
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

    v320 = *(a1 + 392);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v320, v322, a3);
  }

  if ((*(a1 + 27) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v326 = *(a1 + 445);
    *a2 = 1504;
    a2[2] = v326;
    a2 += 3;
  }

  v327 = *(a1 + 8);
  if ((v327 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v327 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2763A1EC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 32));
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
    v5 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v21 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 48));
    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_157;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v22 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 56));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_158;
  }

LABEL_157:
  v23 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 64));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_159;
  }

LABEL_158:
  v24 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 72));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_159:
  v25 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 80));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 88));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v26 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 96));
    v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_163;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v27 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 104));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_164;
  }

LABEL_163:
  v28 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 112));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_165;
  }

LABEL_164:
  v29 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 120));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_166;
  }

LABEL_165:
  v30 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 128));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_167;
  }

LABEL_166:
  v31 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 136));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_167:
  v32 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 144));
  v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 152));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v33 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 160));
    v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_171;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v34 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 168));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_172;
  }

LABEL_171:
  v35 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 176));
  v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_173;
  }

LABEL_172:
  v36 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 184));
  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_174;
  }

LABEL_173:
  v37 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 192));
  v3 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_175;
  }

LABEL_174:
  v38 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 200));
  v3 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_175:
  v39 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 208));
  v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 216));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v2))
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v52 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 224));
    v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_193;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v53 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 232));
  v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_194;
  }

LABEL_193:
  v54 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 240));
  v3 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_195;
  }

LABEL_194:
  v55 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 248));
  v3 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_196;
  }

LABEL_195:
  v56 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 256));
  v3 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_197:
    v58 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 272));
    v3 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_198;
  }

LABEL_196:
  v57 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 264));
  v3 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_197;
  }

LABEL_43:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_198:
  v59 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 280));
  v3 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_44:
  v9 = *(a1 + 20);
  if (!v9)
  {
    goto LABEL_54;
  }

  if (v9)
  {
    v40 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 288));
    v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 2) == 0)
    {
LABEL_47:
      if ((v9 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_179;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_47;
  }

  v41 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 296));
  v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 4) == 0)
  {
LABEL_48:
    if ((v9 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_180;
  }

LABEL_179:
  v42 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 304));
  v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 8) == 0)
  {
LABEL_49:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_181;
  }

LABEL_180:
  v43 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 312));
  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10) == 0)
  {
LABEL_50:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_182;
  }

LABEL_181:
  v44 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 320));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20) == 0)
  {
LABEL_51:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_183;
  }

LABEL_182:
  v45 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 328));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40) == 0)
  {
LABEL_52:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_183:
  v46 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 336));
  v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80) != 0)
  {
LABEL_53:
    v10 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 344));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_54:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_63;
  }

  if ((v9 & 0x100) != 0)
  {
    v47 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 352));
    v3 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x200) == 0)
    {
LABEL_57:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_187;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v48 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 360));
  v3 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400) == 0)
  {
LABEL_58:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_188;
  }

LABEL_187:
  v49 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 368));
  v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800) == 0)
  {
LABEL_59:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

LABEL_189:
    v51 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 384));
    v3 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_188:
  v50 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 376));
  v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x1000) != 0)
  {
    goto LABEL_189;
  }

LABEL_60:
  if ((v9 & 0x2000) != 0)
  {
LABEL_61:
    v11 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 392));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_62:
  v3 += ((v9 >> 14) & 2) + ((v9 >> 13) & 2);
LABEL_63:
  if ((v9 & 0xFF0000) != 0)
  {
    v12.i64[0] = 0x200000002;
    v12.i64[1] = 0x200000002;
    v13 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v9), xmmword_2764D7170), v12)) + ((v9 >> 19) & 2);
    if ((v9 & 0x200000) != 0)
    {
      v13 += 3;
    }

    if ((v9 & 0x400000) != 0)
    {
      v13 += 3;
    }

    if ((v9 & 0x800000) != 0)
    {
      v3 = v13 + 3;
    }

    else
    {
      v3 = v13;
    }
  }

  if (HIBYTE(v9))
  {
    v14 = v3 + 3;
    if ((v9 & 0x1000000) == 0)
    {
      v14 = v3;
    }

    if ((v9 & 0x2000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x4000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x8000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x10000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x20000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x40000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x80000000) == 0)
    {
      v3 = v14;
    }

    else
    {
      v3 = v14 + 3;
    }
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = v3 + 3;
    if ((v15 & 1) == 0)
    {
      v16 = v3;
    }

    if ((v15 & 2) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 4) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 8) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x10) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x20) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x40) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x80) != 0)
    {
      v3 = v16 + 3;
    }

    else
    {
      v3 = v16;
    }
  }

  if ((v15 & 0xFF00) != 0)
  {
    v17 = v3 + 3;
    if ((v15 & 0x100) == 0)
    {
      v17 = v3;
    }

    if ((v15 & 0x200) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x400) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x800) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x1000) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x2000) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x4000) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x8000) != 0)
    {
      v3 = v17 + 3;
    }

    else
    {
      v3 = v17;
    }
  }

  if ((v15 & 0xFF0000) != 0)
  {
    v18 = v3 + 3;
    if ((v15 & 0x10000) == 0)
    {
      v18 = v3;
    }

    if ((v15 & 0x20000) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x40000) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x80000) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x100000) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x200000) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x400000) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x800000) != 0)
    {
      v3 = v18 + 3;
    }

    else
    {
      v3 = v18;
    }
  }

  if ((v15 & 0xF000000) != 0)
  {
    v19 = v3 + 3;
    if ((v15 & 0x1000000) == 0)
    {
      v19 = v3;
    }

    if ((v15 & 0x2000000) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x4000000) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x8000000) != 0)
    {
      v3 = v19 + 3;
    }

    else
    {
      v3 = v19;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 28) = v3;
    return v3;
  }
}

uint64_t sub_2763A2B0C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288520048, 0);
  if (v4)
  {

    return sub_2763A2BB4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763A2BB4(uint64_t result, uint64_t a2)
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

  v6 = MEMORY[0x277D80C08];
  if (v5)
  {
    *(v3 + 16) |= 1u;
    v7 = *(v3 + 32);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C97C40](v8);
      *(v3 + 32) = v7;
    }

    if (*(a2 + 32))
    {
      v9 = *(a2 + 32);
    }

    else
    {
      v9 = v6;
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v7, v9);
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97C40](v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 40))
    {
      v12 = *(a2 + 40);
    }

    else
    {
      v12 = v6;
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v10, v12);
  }

  v13 = MEMORY[0x277D80540];
  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v14 = *(v3 + 48);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C97C00](v15);
      *(v3 + 48) = v14;
    }

    if (*(a2 + 48))
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = v13;
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v14, v16);
  }

  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v17 = *(v3 + 56);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C97C00](v18);
      *(v3 + 56) = v17;
    }

    if (*(a2 + 56))
    {
      v19 = *(a2 + 56);
    }

    else
    {
      v19 = v13;
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v17, v19);
  }

  v20 = MEMORY[0x277D80C18];
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_42;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v24 = *(v3 + 72);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C97C60](v25);
      *(v3 + 72) = v24;
    }

    if (*(a2 + 72))
    {
      v26 = *(a2 + 72);
    }

    else
    {
      v26 = v20;
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v24, v26);
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
  v21 = *(v3 + 64);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C97C60](v22);
    *(v3 + 64) = v21;
  }

  if (*(a2 + 64))
  {
    v23 = *(a2 + 64);
  }

  else
  {
    v23 = v20;
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v21, v23);
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
  v27 = *(v3 + 80);
  if (!v27)
  {
    v28 = *(v3 + 8);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x277C97C60](v28);
    *(v3 + 80) = v27;
  }

  if (*(a2 + 80))
  {
    v29 = *(a2 + 80);
  }

  else
  {
    v29 = v20;
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v27, v29);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v30 = *(v3 + 88);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C97C60](v31);
      *(v3 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v32 = *(a2 + 88);
    }

    else
    {
      v32 = v20;
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v30, v32);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v33 = *(v3 + 96);
    if (!v33)
    {
      v34 = *(v3 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C97C60](v34);
      *(v3 + 96) = v33;
    }

    if (*(a2 + 96))
    {
      v35 = *(a2 + 96);
    }

    else
    {
      v35 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v33, v35);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_101;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v36 = *(v3 + 104);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C97C40](v37);
    *(v3 + 104) = v36;
  }

  if (*(a2 + 104))
  {
    v38 = *(a2 + 104);
  }

  else
  {
    v38 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v36, v38);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(v3 + 16) |= 0x400u;
  v39 = *(v3 + 112);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C97C40](v40);
    *(v3 + 112) = v39;
  }

  if (*(a2 + 112))
  {
    v41 = *(a2 + 112);
  }

  else
  {
    v41 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v39, v41);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

LABEL_117:
    *(v3 + 16) |= 0x1000u;
    v45 = *(v3 + 128);
    if (!v45)
    {
      v46 = *(v3 + 8);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = MEMORY[0x277C97C40](v46);
      *(v3 + 128) = v45;
    }

    if (*(a2 + 128))
    {
      v47 = *(a2 + 128);
    }

    else
    {
      v47 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v45, v47);
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_125;
  }

LABEL_109:
  *(v3 + 16) |= 0x800u;
  v42 = *(v3 + 120);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277C97C40](v43);
    *(v3 + 120) = v42;
  }

  if (*(a2 + 120))
  {
    v44 = *(a2 + 120);
  }

  else
  {
    v44 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v42, v44);
  if ((v5 & 0x1000) != 0)
  {
    goto LABEL_117;
  }

LABEL_83:
  if ((v5 & 0x2000) != 0)
  {
LABEL_125:
    *(v3 + 16) |= 0x2000u;
    v48 = *(v3 + 136);
    if (!v48)
    {
      v49 = *(v3 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x277C97C40](v49);
      *(v3 + 136) = v48;
    }

    if (*(a2 + 136))
    {
      v50 = *(a2 + 136);
    }

    else
    {
      v50 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v48, v50);
  }

LABEL_133:
  v51 = MEMORY[0x277D80538];
  if ((v5 & 0x4000) != 0)
  {
    *(v3 + 16) |= 0x4000u;
    v52 = *(v3 + 144);
    if (!v52)
    {
      v53 = *(v3 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x277C97BF0](v53);
      *(v3 + 144) = v52;
    }

    if (*(a2 + 144))
    {
      v54 = *(a2 + 144);
    }

    else
    {
      v54 = v51;
    }

    result = TSDSOS::SpecShadowArchive::MergeFrom(v52, v54);
  }

  if ((v5 & 0x8000) != 0)
  {
    *(v3 + 16) |= 0x8000u;
    v55 = *(v3 + 152);
    if (!v55)
    {
      v56 = *(v3 + 8);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = MEMORY[0x277C97BF0](v56);
      *(v3 + 152) = v55;
    }

    if (*(a2 + 152))
    {
      v57 = *(a2 + 152);
    }

    else
    {
      v57 = v51;
    }

    result = TSDSOS::SpecShadowArchive::MergeFrom(v55, v57);
  }

LABEL_151:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_225;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v58 = *(v3 + 160);
    if (!v58)
    {
      v59 = *(v3 + 8);
      if (v59)
      {
        v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
      }

      v58 = MEMORY[0x277C97C00](v59);
      *(v3 + 160) = v58;
    }

    if (*(a2 + 160))
    {
      v60 = *(a2 + 160);
    }

    else
    {
      v60 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v58, v60);
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
  v61 = *(v3 + 168);
  if (!v61)
  {
    v62 = *(v3 + 8);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = MEMORY[0x277C97C00](v62);
    *(v3 + 168) = v61;
  }

  if (*(a2 + 168))
  {
    v63 = *(a2 + 168);
  }

  else
  {
    v63 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v61, v63);
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
  v64 = *(v3 + 176);
  if (!v64)
  {
    v65 = *(v3 + 8);
    if (v65)
    {
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
    }

    v64 = MEMORY[0x277C97C40](v65);
    *(v3 + 176) = v64;
  }

  if (*(a2 + 176))
  {
    v66 = *(a2 + 176);
  }

  else
  {
    v66 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v64, v66);
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
  v67 = *(v3 + 184);
  if (!v67)
  {
    v68 = *(v3 + 8);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x277C97C40](v68);
    *(v3 + 184) = v67;
  }

  if (*(a2 + 184))
  {
    v69 = *(a2 + 184);
  }

  else
  {
    v69 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v67, v69);
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
  v70 = *(v3 + 192);
  if (!v70)
  {
    v71 = *(v3 + 8);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = MEMORY[0x277C97BF0](v71);
    *(v3 + 192) = v70;
  }

  if (*(a2 + 192))
  {
    v72 = *(a2 + 192);
  }

  else
  {
    v72 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v70, v72);
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
  v73 = *(v3 + 200);
  if (!v73)
  {
    v74 = *(v3 + 8);
    if (v74)
    {
      v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
    }

    v73 = MEMORY[0x277C97BF0](v74);
    *(v3 + 200) = v73;
  }

  if (*(a2 + 200))
  {
    v75 = *(a2 + 200);
  }

  else
  {
    v75 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v73, v75);
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
  v76 = *(v3 + 208);
  if (!v76)
  {
    v77 = *(v3 + 8);
    if (v77)
    {
      v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
    }

    v76 = MEMORY[0x277C97C00](v77);
    *(v3 + 208) = v76;
  }

  if (*(a2 + 208))
  {
    v78 = *(a2 + 208);
  }

  else
  {
    v78 = MEMORY[0x277D80540];
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v76, v78);
  if ((v5 & 0x800000) != 0)
  {
LABEL_217:
    *(v3 + 16) |= 0x800000u;
    v79 = *(v3 + 216);
    if (!v79)
    {
      v80 = *(v3 + 8);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = MEMORY[0x277C97C00](v80);
      *(v3 + 216) = v79;
    }

    if (*(a2 + 216))
    {
      v81 = *(a2 + 216);
    }

    else
    {
      v81 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v79, v81);
  }

LABEL_225:
  if (!HIBYTE(v5))
  {
    goto LABEL_299;
  }

  v82 = MEMORY[0x277D80BF8];
  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v83 = *(v3 + 224);
    if (!v83)
    {
      v84 = *(v3 + 8);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = MEMORY[0x277C97C20](v84);
      *(v3 + 224) = v83;
    }

    if (*(a2 + 224))
    {
      v85 = *(a2 + 224);
    }

    else
    {
      v85 = v82;
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v83, v85);
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
  v86 = *(v3 + 232);
  if (!v86)
  {
    v87 = *(v3 + 8);
    if (v87)
    {
      v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
    }

    v86 = MEMORY[0x277C97C20](v87);
    *(v3 + 232) = v86;
  }

  if (*(a2 + 232))
  {
    v88 = *(a2 + 232);
  }

  else
  {
    v88 = v82;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v86, v88);
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
  v89 = *(v3 + 240);
  if (!v89)
  {
    v90 = *(v3 + 8);
    if (v90)
    {
      v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
    }

    v89 = MEMORY[0x277C97C20](v90);
    *(v3 + 240) = v89;
  }

  if (*(a2 + 240))
  {
    v91 = *(a2 + 240);
  }

  else
  {
    v91 = v82;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v89, v91);
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
  v92 = *(v3 + 248);
  if (!v92)
  {
    v93 = *(v3 + 8);
    if (v93)
    {
      v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
    }

    v92 = MEMORY[0x277C97C20](v93);
    *(v3 + 248) = v92;
  }

  if (*(a2 + 248))
  {
    v94 = *(a2 + 248);
  }

  else
  {
    v94 = v82;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v92, v94);
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
  v95 = *(v3 + 256);
  if (!v95)
  {
    v96 = *(v3 + 8);
    if (v96)
    {
      v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
    }

    v95 = MEMORY[0x277C97C20](v96);
    *(v3 + 256) = v95;
  }

  if (*(a2 + 256))
  {
    v97 = *(a2 + 256);
  }

  else
  {
    v97 = v82;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v95, v97);
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
  v98 = *(v3 + 264);
  if (!v98)
  {
    v99 = *(v3 + 8);
    if (v99)
    {
      v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
    }

    v98 = MEMORY[0x277C97C20](v99);
    *(v3 + 264) = v98;
  }

  if (*(a2 + 264))
  {
    v100 = *(a2 + 264);
  }

  else
  {
    v100 = v82;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v98, v100);
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
  v101 = *(v3 + 272);
  if (!v101)
  {
    v102 = *(v3 + 8);
    if (v102)
    {
      v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
    }

    v101 = MEMORY[0x277C97C20](v102);
    *(v3 + 272) = v101;
  }

  if (*(a2 + 272))
  {
    v103 = *(a2 + 272);
  }

  else
  {
    v103 = v82;
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v101, v103);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_291:
    *(v3 + 16) |= 0x80000000;
    v104 = *(v3 + 280);
    if (!v104)
    {
      v105 = *(v3 + 8);
      if (v105)
      {
        v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
      }

      v104 = MEMORY[0x277C97C20](v105);
      *(v3 + 280) = v104;
    }

    if (*(a2 + 280))
    {
      v106 = *(a2 + 280);
    }

    else
    {
      v106 = v82;
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v104, v106);
  }

LABEL_299:
  v107 = *(a2 + 20);
  if (!v107)
  {
    goto LABEL_373;
  }

  if (v107)
  {
    *(v3 + 20) |= 1u;
    v108 = *(v3 + 288);
    if (!v108)
    {
      v109 = *(v3 + 8);
      if (v109)
      {
        v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
      }

      v108 = MEMORY[0x277C97C20](v109);
      *(v3 + 288) = v108;
    }

    if (*(a2 + 288))
    {
      v110 = *(a2 + 288);
    }

    else
    {
      v110 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v108, v110);
    if ((v107 & 2) == 0)
    {
LABEL_302:
      if ((v107 & 4) == 0)
      {
        goto LABEL_303;
      }

      goto LABEL_325;
    }
  }

  else if ((v107 & 2) == 0)
  {
    goto LABEL_302;
  }

  *(v3 + 20) |= 2u;
  v111 = *(v3 + 296);
  if (!v111)
  {
    v112 = *(v3 + 8);
    if (v112)
    {
      v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
    }

    v111 = MEMORY[0x277C97C20](v112);
    *(v3 + 296) = v111;
  }

  if (*(a2 + 296))
  {
    v113 = *(a2 + 296);
  }

  else
  {
    v113 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v111, v113);
  if ((v107 & 4) == 0)
  {
LABEL_303:
    if ((v107 & 8) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_333;
  }

LABEL_325:
  *(v3 + 20) |= 4u;
  v114 = *(v3 + 304);
  if (!v114)
  {
    v115 = *(v3 + 8);
    if (v115)
    {
      v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
    }

    v114 = MEMORY[0x277C97C20](v115);
    *(v3 + 304) = v114;
  }

  if (*(a2 + 304))
  {
    v116 = *(a2 + 304);
  }

  else
  {
    v116 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v114, v116);
  if ((v107 & 8) == 0)
  {
LABEL_304:
    if ((v107 & 0x10) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_341;
  }

LABEL_333:
  *(v3 + 20) |= 8u;
  v117 = *(v3 + 312);
  if (!v117)
  {
    v118 = *(v3 + 8);
    if (v118)
    {
      v118 = *(v118 & 0xFFFFFFFFFFFFFFFELL);
    }

    v117 = MEMORY[0x277C97C20](v118);
    *(v3 + 312) = v117;
  }

  if (*(a2 + 312))
  {
    v119 = *(a2 + 312);
  }

  else
  {
    v119 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v117, v119);
  if ((v107 & 0x10) == 0)
  {
LABEL_305:
    if ((v107 & 0x20) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_349;
  }

LABEL_341:
  *(v3 + 20) |= 0x10u;
  v120 = *(v3 + 320);
  if (!v120)
  {
    v121 = *(v3 + 8);
    if (v121)
    {
      v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
    }

    v120 = MEMORY[0x277C97C20](v121);
    *(v3 + 320) = v120;
  }

  if (*(a2 + 320))
  {
    v122 = *(a2 + 320);
  }

  else
  {
    v122 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v120, v122);
  if ((v107 & 0x20) == 0)
  {
LABEL_306:
    if ((v107 & 0x40) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_357;
  }

LABEL_349:
  *(v3 + 20) |= 0x20u;
  v123 = *(v3 + 328);
  if (!v123)
  {
    v124 = *(v3 + 8);
    if (v124)
    {
      v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
    }

    v123 = MEMORY[0x277C97C20](v124);
    *(v3 + 328) = v123;
  }

  if (*(a2 + 328))
  {
    v125 = *(a2 + 328);
  }

  else
  {
    v125 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v123, v125);
  if ((v107 & 0x40) == 0)
  {
LABEL_307:
    if ((v107 & 0x80) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_365;
  }

LABEL_357:
  *(v3 + 20) |= 0x40u;
  v126 = *(v3 + 336);
  if (!v126)
  {
    v127 = *(v3 + 8);
    if (v127)
    {
      v127 = *(v127 & 0xFFFFFFFFFFFFFFFELL);
    }

    v126 = MEMORY[0x277C97C20](v127);
    *(v3 + 336) = v126;
  }

  if (*(a2 + 336))
  {
    v128 = *(a2 + 336);
  }

  else
  {
    v128 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v126, v128);
  if ((v107 & 0x80) != 0)
  {
LABEL_365:
    *(v3 + 20) |= 0x80u;
    v129 = *(v3 + 344);
    if (!v129)
    {
      v130 = *(v3 + 8);
      if (v130)
      {
        v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
      }

      v129 = MEMORY[0x277C97C20](v130);
      *(v3 + 344) = v129;
    }

    if (*(a2 + 344))
    {
      v131 = *(a2 + 344);
    }

    else
    {
      v131 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v129, v131);
  }

LABEL_373:
  if ((v107 & 0xFF00) == 0)
  {
    goto LABEL_384;
  }

  if ((v107 & 0x100) != 0)
  {
    *(v3 + 20) |= 0x100u;
    v133 = *(v3 + 352);
    if (!v133)
    {
      v134 = *(v3 + 8);
      if (v134)
      {
        v134 = *(v134 & 0xFFFFFFFFFFFFFFFELL);
      }

      v133 = MEMORY[0x277C97C60](v134);
      *(v3 + 352) = v133;
    }

    if (*(a2 + 352))
    {
      v135 = *(a2 + 352);
    }

    else
    {
      v135 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v133, v135);
    if ((v107 & 0x200) == 0)
    {
LABEL_376:
      if ((v107 & 0x400) == 0)
      {
        goto LABEL_377;
      }

      goto LABEL_462;
    }
  }

  else if ((v107 & 0x200) == 0)
  {
    goto LABEL_376;
  }

  *(v3 + 20) |= 0x200u;
  v136 = *(v3 + 360);
  if (!v136)
  {
    v137 = *(v3 + 8);
    if (v137)
    {
      v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
    }

    v136 = MEMORY[0x277C97C60](v137);
    *(v3 + 360) = v136;
  }

  if (*(a2 + 360))
  {
    v138 = *(a2 + 360);
  }

  else
  {
    v138 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v136, v138);
  if ((v107 & 0x400) == 0)
  {
LABEL_377:
    if ((v107 & 0x800) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_470;
  }

LABEL_462:
  *(v3 + 20) |= 0x400u;
  v139 = *(v3 + 368);
  if (!v139)
  {
    v140 = *(v3 + 8);
    if (v140)
    {
      v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
    }

    v139 = MEMORY[0x277C97C60](v140);
    *(v3 + 368) = v139;
  }

  if (*(a2 + 368))
  {
    v141 = *(a2 + 368);
  }

  else
  {
    v141 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v139, v141);
  if ((v107 & 0x800) == 0)
  {
LABEL_378:
    if ((v107 & 0x1000) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_478;
  }

LABEL_470:
  *(v3 + 20) |= 0x800u;
  v142 = *(v3 + 376);
  if (!v142)
  {
    v143 = *(v3 + 8);
    if (v143)
    {
      v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
    }

    v142 = MEMORY[0x277C97C60](v143);
    *(v3 + 376) = v142;
  }

  if (*(a2 + 376))
  {
    v144 = *(a2 + 376);
  }

  else
  {
    v144 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v142, v144);
  if ((v107 & 0x1000) == 0)
  {
LABEL_379:
    if ((v107 & 0x2000) == 0)
    {
      goto LABEL_380;
    }

    goto LABEL_486;
  }

LABEL_478:
  *(v3 + 20) |= 0x1000u;
  v145 = *(v3 + 384);
  if (!v145)
  {
    v146 = *(v3 + 8);
    if (v146)
    {
      v146 = *(v146 & 0xFFFFFFFFFFFFFFFELL);
    }

    v145 = MEMORY[0x277C97C60](v146);
    *(v3 + 384) = v145;
  }

  if (*(a2 + 384))
  {
    v147 = *(a2 + 384);
  }

  else
  {
    v147 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v145, v147);
  if ((v107 & 0x2000) == 0)
  {
LABEL_380:
    if ((v107 & 0x4000) == 0)
    {
      goto LABEL_381;
    }

LABEL_494:
    *(v3 + 400) = *(a2 + 400);
    if ((v107 & 0x8000) == 0)
    {
      goto LABEL_383;
    }

    goto LABEL_382;
  }

LABEL_486:
  *(v3 + 20) |= 0x2000u;
  v148 = *(v3 + 392);
  if (!v148)
  {
    v149 = *(v3 + 8);
    if (v149)
    {
      v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
    }

    v148 = MEMORY[0x277C97C60](v149);
    *(v3 + 392) = v148;
  }

  if (*(a2 + 392))
  {
    v150 = *(a2 + 392);
  }

  else
  {
    v150 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v148, v150);
  if ((v107 & 0x4000) != 0)
  {
    goto LABEL_494;
  }

LABEL_381:
  if ((v107 & 0x8000) != 0)
  {
LABEL_382:
    *(v3 + 401) = *(a2 + 401);
  }

LABEL_383:
  *(v3 + 20) |= v107;
LABEL_384:
  if ((v107 & 0xFF0000) == 0)
  {
    goto LABEL_395;
  }

  if ((v107 & 0x10000) != 0)
  {
    *(v3 + 402) = *(a2 + 402);
    if ((v107 & 0x20000) == 0)
    {
LABEL_387:
      if ((v107 & 0x40000) == 0)
      {
        goto LABEL_388;
      }

      goto LABEL_498;
    }
  }

  else if ((v107 & 0x20000) == 0)
  {
    goto LABEL_387;
  }

  *(v3 + 403) = *(a2 + 403);
  if ((v107 & 0x40000) == 0)
  {
LABEL_388:
    if ((v107 & 0x80000) == 0)
    {
      goto LABEL_389;
    }

    goto LABEL_499;
  }

LABEL_498:
  *(v3 + 404) = *(a2 + 404);
  if ((v107 & 0x80000) == 0)
  {
LABEL_389:
    if ((v107 & 0x100000) == 0)
    {
      goto LABEL_390;
    }

    goto LABEL_500;
  }

LABEL_499:
  *(v3 + 405) = *(a2 + 405);
  if ((v107 & 0x100000) == 0)
  {
LABEL_390:
    if ((v107 & 0x200000) == 0)
    {
      goto LABEL_391;
    }

    goto LABEL_501;
  }

LABEL_500:
  *(v3 + 406) = *(a2 + 406);
  if ((v107 & 0x200000) == 0)
  {
LABEL_391:
    if ((v107 & 0x400000) == 0)
    {
      goto LABEL_392;
    }

LABEL_502:
    *(v3 + 408) = *(a2 + 408);
    if ((v107 & 0x800000) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_393;
  }

LABEL_501:
  *(v3 + 407) = *(a2 + 407);
  if ((v107 & 0x400000) != 0)
  {
    goto LABEL_502;
  }

LABEL_392:
  if ((v107 & 0x800000) != 0)
  {
LABEL_393:
    *(v3 + 409) = *(a2 + 409);
  }

LABEL_394:
  *(v3 + 20) |= v107;
LABEL_395:
  if (!HIBYTE(v107))
  {
    goto LABEL_405;
  }

  if ((v107 & 0x1000000) != 0)
  {
    *(v3 + 410) = *(a2 + 410);
    if ((v107 & 0x2000000) == 0)
    {
LABEL_398:
      if ((v107 & 0x4000000) == 0)
      {
        goto LABEL_399;
      }

      goto LABEL_534;
    }
  }

  else if ((v107 & 0x2000000) == 0)
  {
    goto LABEL_398;
  }

  *(v3 + 411) = *(a2 + 411);
  if ((v107 & 0x4000000) == 0)
  {
LABEL_399:
    if ((v107 & 0x8000000) == 0)
    {
      goto LABEL_400;
    }

    goto LABEL_535;
  }

LABEL_534:
  *(v3 + 412) = *(a2 + 412);
  if ((v107 & 0x8000000) == 0)
  {
LABEL_400:
    if ((v107 & 0x10000000) == 0)
    {
      goto LABEL_401;
    }

    goto LABEL_536;
  }

LABEL_535:
  *(v3 + 413) = *(a2 + 413);
  if ((v107 & 0x10000000) == 0)
  {
LABEL_401:
    if ((v107 & 0x20000000) == 0)
    {
      goto LABEL_402;
    }

    goto LABEL_537;
  }

LABEL_536:
  *(v3 + 414) = *(a2 + 414);
  if ((v107 & 0x20000000) == 0)
  {
LABEL_402:
    if ((v107 & 0x40000000) == 0)
    {
      goto LABEL_403;
    }

LABEL_538:
    *(v3 + 416) = *(a2 + 416);
    if ((v107 & 0x80000000) == 0)
    {
      goto LABEL_404;
    }

LABEL_539:
    *(v3 + 417) = *(a2 + 417);
    goto LABEL_404;
  }

LABEL_537:
  *(v3 + 415) = *(a2 + 415);
  if ((v107 & 0x40000000) != 0)
  {
    goto LABEL_538;
  }

LABEL_403:
  if ((v107 & 0x80000000) != 0)
  {
    goto LABEL_539;
  }

LABEL_404:
  *(v3 + 20) |= v107;
LABEL_405:
  v132 = *(a2 + 24);
  if (!v132)
  {
    goto LABEL_416;
  }

  if (v132)
  {
    *(v3 + 418) = *(a2 + 418);
    if ((v132 & 2) == 0)
    {
LABEL_408:
      if ((v132 & 4) == 0)
      {
        goto LABEL_409;
      }

      goto LABEL_506;
    }
  }

  else if ((v132 & 2) == 0)
  {
    goto LABEL_408;
  }

  *(v3 + 419) = *(a2 + 419);
  if ((v132 & 4) == 0)
  {
LABEL_409:
    if ((v132 & 8) == 0)
    {
      goto LABEL_410;
    }

    goto LABEL_507;
  }

LABEL_506:
  *(v3 + 420) = *(a2 + 420);
  if ((v132 & 8) == 0)
  {
LABEL_410:
    if ((v132 & 0x10) == 0)
    {
      goto LABEL_411;
    }

    goto LABEL_508;
  }

LABEL_507:
  *(v3 + 421) = *(a2 + 421);
  if ((v132 & 0x10) == 0)
  {
LABEL_411:
    if ((v132 & 0x20) == 0)
    {
      goto LABEL_412;
    }

    goto LABEL_509;
  }

LABEL_508:
  *(v3 + 422) = *(a2 + 422);
  if ((v132 & 0x20) == 0)
  {
LABEL_412:
    if ((v132 & 0x40) == 0)
    {
      goto LABEL_413;
    }

LABEL_510:
    *(v3 + 424) = *(a2 + 424);
    if ((v132 & 0x80) == 0)
    {
      goto LABEL_415;
    }

    goto LABEL_414;
  }

LABEL_509:
  *(v3 + 423) = *(a2 + 423);
  if ((v132 & 0x40) != 0)
  {
    goto LABEL_510;
  }

LABEL_413:
  if ((v132 & 0x80) != 0)
  {
LABEL_414:
    *(v3 + 425) = *(a2 + 425);
  }

LABEL_415:
  *(v3 + 24) |= v132;
LABEL_416:
  if ((v132 & 0xFF00) == 0)
  {
    goto LABEL_427;
  }

  if ((v132 & 0x100) != 0)
  {
    *(v3 + 426) = *(a2 + 426);
    if ((v132 & 0x200) == 0)
    {
LABEL_419:
      if ((v132 & 0x400) == 0)
      {
        goto LABEL_420;
      }

      goto LABEL_514;
    }
  }

  else if ((v132 & 0x200) == 0)
  {
    goto LABEL_419;
  }

  *(v3 + 427) = *(a2 + 427);
  if ((v132 & 0x400) == 0)
  {
LABEL_420:
    if ((v132 & 0x800) == 0)
    {
      goto LABEL_421;
    }

    goto LABEL_515;
  }

LABEL_514:
  *(v3 + 428) = *(a2 + 428);
  if ((v132 & 0x800) == 0)
  {
LABEL_421:
    if ((v132 & 0x1000) == 0)
    {
      goto LABEL_422;
    }

    goto LABEL_516;
  }

LABEL_515:
  *(v3 + 429) = *(a2 + 429);
  if ((v132 & 0x1000) == 0)
  {
LABEL_422:
    if ((v132 & 0x2000) == 0)
    {
      goto LABEL_423;
    }

    goto LABEL_517;
  }

LABEL_516:
  *(v3 + 430) = *(a2 + 430);
  if ((v132 & 0x2000) == 0)
  {
LABEL_423:
    if ((v132 & 0x4000) == 0)
    {
      goto LABEL_424;
    }

LABEL_518:
    *(v3 + 432) = *(a2 + 432);
    if ((v132 & 0x8000) == 0)
    {
      goto LABEL_426;
    }

    goto LABEL_425;
  }

LABEL_517:
  *(v3 + 431) = *(a2 + 431);
  if ((v132 & 0x4000) != 0)
  {
    goto LABEL_518;
  }

LABEL_424:
  if ((v132 & 0x8000) != 0)
  {
LABEL_425:
    *(v3 + 433) = *(a2 + 433);
  }

LABEL_426:
  *(v3 + 24) |= v132;
LABEL_427:
  if ((v132 & 0xFF0000) == 0)
  {
    goto LABEL_438;
  }

  if ((v132 & 0x10000) != 0)
  {
    *(v3 + 434) = *(a2 + 434);
    if ((v132 & 0x20000) == 0)
    {
LABEL_430:
      if ((v132 & 0x40000) == 0)
      {
        goto LABEL_431;
      }

      goto LABEL_522;
    }
  }

  else if ((v132 & 0x20000) == 0)
  {
    goto LABEL_430;
  }

  *(v3 + 435) = *(a2 + 435);
  if ((v132 & 0x40000) == 0)
  {
LABEL_431:
    if ((v132 & 0x80000) == 0)
    {
      goto LABEL_432;
    }

    goto LABEL_523;
  }

LABEL_522:
  *(v3 + 436) = *(a2 + 436);
  if ((v132 & 0x80000) == 0)
  {
LABEL_432:
    if ((v132 & 0x100000) == 0)
    {
      goto LABEL_433;
    }

    goto LABEL_524;
  }

LABEL_523:
  *(v3 + 437) = *(a2 + 437);
  if ((v132 & 0x100000) == 0)
  {
LABEL_433:
    if ((v132 & 0x200000) == 0)
    {
      goto LABEL_434;
    }

    goto LABEL_525;
  }

LABEL_524:
  *(v3 + 438) = *(a2 + 438);
  if ((v132 & 0x200000) == 0)
  {
LABEL_434:
    if ((v132 & 0x400000) == 0)
    {
      goto LABEL_435;
    }

LABEL_526:
    *(v3 + 440) = *(a2 + 440);
    if ((v132 & 0x800000) == 0)
    {
      goto LABEL_437;
    }

    goto LABEL_436;
  }

LABEL_525:
  *(v3 + 439) = *(a2 + 439);
  if ((v132 & 0x400000) != 0)
  {
    goto LABEL_526;
  }

LABEL_435:
  if ((v132 & 0x800000) != 0)
  {
LABEL_436:
    *(v3 + 441) = *(a2 + 441);
  }

LABEL_437:
  *(v3 + 24) |= v132;
LABEL_438:
  if ((v132 & 0xF000000) == 0)
  {
    return result;
  }

  if ((v132 & 0x1000000) != 0)
  {
    *(v3 + 442) = *(a2 + 442);
    if ((v132 & 0x2000000) == 0)
    {
LABEL_441:
      if ((v132 & 0x4000000) == 0)
      {
        goto LABEL_442;
      }

LABEL_530:
      *(v3 + 444) = *(a2 + 444);
      if ((v132 & 0x8000000) == 0)
      {
        goto LABEL_444;
      }

      goto LABEL_443;
    }
  }

  else if ((v132 & 0x2000000) == 0)
  {
    goto LABEL_441;
  }

  *(v3 + 443) = *(a2 + 443);
  if ((v132 & 0x4000000) != 0)
  {
    goto LABEL_530;
  }

LABEL_442:
  if ((v132 & 0x8000000) != 0)
  {
LABEL_443:
    *(v3 + 445) = *(a2 + 445);
  }

LABEL_444:
  *(v3 + 24) |= v132;
  return result;
}

uint64_t *sub_2763A3D78(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27639D148(result);

    return sub_2763A2B0C(v4, a2);
  }

  return result;
}

uint64_t sub_2763A3DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 264));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000000) == 0 || (result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 280)), result))
  {
    v4 = *(a1 + 20);
    if (v4)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 288));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 2) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 296));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 4) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 304));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 8) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 320));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 336));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x80) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 344));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x100) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 352));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x200) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x400) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x800) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 376));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x1000) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 384));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x2000) == 0)
    {
      return 1;
    }

    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 392));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void sub_2763A41E8(uint64_t a1)
{
  sub_2763941F4((a1 + 8));

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2763A4240(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t sub_2763A4250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t sub_2763A426C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(v1 + 8) = 0;
  return 0;
}

void *sub_2763A428C(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288520060, 0);
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }

  return result;
}

_BYTE *sub_2763A434C(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = (result + 8);
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return sub_2763A428C(v4, lpsrc);
  }

  return result;
}

uint64_t *sub_2763A43E0(uint64_t *a1)
{
  sub_2763A4414(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_2763A4414(uint64_t *result)
{
  if (result != &qword_2812EEAF0)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v2, 0x10A1C404E50D5EBLL);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }

    if (v1[5])
    {
      v4 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v4, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v5 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v5, 0x10A1C4034CD354FLL);
    }

    result = v1[7];
    if (result)
    {
      MEMORY[0x277C97890]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2763A44F8(uint64_t *a1)
{
  sub_2763A43E0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2763A4538(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result = TSDSOS::SpecFillArchive::Clear(result[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_18:
      result = TSSSOS::SpecDoubleArchive::Clear(v1[5]);
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(v1[4]);
  if ((v2 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  result = TSDSOS::SpecShadowArchive::Clear(v1[6]);
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = TSDSOS::SpecStrokeArchive::Clear(v1[7]);
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 66) = 0;
    *(v1 + 32) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(v1 + 67) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_2763A45FC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v56 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v56) & 1) == 0)
  {
    while (1)
    {
      v7 = (v56 + 1);
      v8 = *v56;
      if ((*v56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v56, (v9 - 128));
      v56 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_101;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 <= 7)
        {
          if (v10 != 6)
          {
            if (v10 == 7 && v8 == 58)
            {
              *(a1 + 16) |= 8u;
              v22 = *(a1 + 48);
              if (!v22)
              {
                v23 = *(a1 + 8);
                if (v23)
                {
                  v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
                }

                v24 = MEMORY[0x277C97BF0](v23);
                LODWORD(v22) = v24;
                *(a1 + 48) = v24;
                v7 = v56;
              }

              v14 = sub_2764A9938(a3, v22, v7);
              goto LABEL_87;
            }

LABEL_80:
            if (v8)
            {
              v45 = (v8 & 7) == 4;
            }

            else
            {
              v45 = 1;
            }

            if (v45)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_87:
            v56 = v14;
            if (!v14)
            {
              goto LABEL_101;
            }

            goto LABEL_88;
          }

          if (v8 != 48)
          {
            goto LABEL_80;
          }

          v5 |= 0x80u;
          v31 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_57;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if ((v32 & 0x80000000) == 0)
          {
            v31 = (v7 + 2);
LABEL_57:
            v56 = v31;
            *(a1 + 66) = v30 != 0;
            goto LABEL_88;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v30);
          v56 = v48;
          *(a1 + 66) = v49 != 0;
          if (!v48)
          {
            goto LABEL_101;
          }
        }

        else if (v10 == 8)
        {
          if (v8 != 64)
          {
            goto LABEL_80;
          }

          v5 |= 0x100u;
          v37 = (v7 + 1);
          v36 = *v7;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if ((v38 & 0x80000000) == 0)
          {
            v37 = (v7 + 2);
LABEL_68:
            v56 = v37;
            *(a1 + 67) = v36 != 0;
            goto LABEL_88;
          }

          v50 = google::protobuf::internal::VarintParseSlow64(v7, v36);
          v56 = v50;
          *(a1 + 67) = v51 != 0;
          if (!v50)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v10 == 9)
          {
            if (v8 == 74)
            {
              *(a1 + 16) |= 0x10u;
              v42 = *(a1 + 56);
              if (!v42)
              {
                v43 = *(a1 + 8);
                if (v43)
                {
                  v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
                }

                v44 = MEMORY[0x277C97C00](v43);
                LODWORD(v42) = v44;
                *(a1 + 56) = v44;
                v7 = v56;
              }

              v14 = sub_2764A9868(a3, v42, v7);
              goto LABEL_87;
            }

            goto LABEL_80;
          }

          if (v10 != 10 || v8 != 80)
          {
            goto LABEL_80;
          }

          v5 |= 0x200u;
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
            v56 = v16;
            *(a1 + 68) = v15 != 0;
            goto LABEL_88;
          }

          v52 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v56 = v52;
          *(a1 + 68) = v53 != 0;
          if (!v52)
          {
            goto LABEL_101;
          }
        }
      }

      else if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v27 = *(a1 + 24);
            if (!v27)
            {
              v28 = *(a1 + 8);
              if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = MEMORY[0x277C97BE0](v28);
              LODWORD(v27) = v29;
              *(a1 + 24) = v29;
              v7 = v56;
            }

            v14 = sub_2764A9B0C(a3, v27, v7);
            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_80;
        }

        v5 |= 0x20u;
        v20 = (v7 + 1);
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_36:
          v56 = v20;
          *(a1 + 64) = v19 != 0;
          goto LABEL_88;
        }

        v46 = google::protobuf::internal::VarintParseSlow64(v7, v19);
        v56 = v46;
        *(a1 + 64) = v47 != 0;
        if (!v46)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v33 = *(a1 + 32);
            if (!v33)
            {
              v34 = *(a1 + 8);
              if (v34)
              {
                v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
              }

              v35 = MEMORY[0x277C97C60](v34);
              LODWORD(v33) = v35;
              *(a1 + 32) = v35;
              v7 = v56;
            }

            v14 = sub_2764A9458(a3, v33, v7);
            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v13 = MEMORY[0x277C97C40](v12);
              LODWORD(v11) = v13;
              *(a1 + 40) = v13;
              v7 = v56;
            }

            v14 = sub_2764A9528(a3, v11, v7);
            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v8 != 32)
        {
          goto LABEL_80;
        }

        v5 |= 0x40u;
        v40 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if ((v41 & 0x80000000) == 0)
        {
          v40 = (v7 + 2);
LABEL_73:
          v56 = v40;
          *(a1 + 65) = v39 != 0;
          goto LABEL_88;
        }

        v54 = google::protobuf::internal::VarintParseSlow64(v7, v39);
        v56 = v54;
        *(a1 + 65) = v55 != 0;
        if (!v54)
        {
LABEL_101:
          v56 = 0;
          goto LABEL_2;
        }
      }

LABEL_88:
      if (sub_2763D4D98(a3, &v56))
      {
        goto LABEL_2;
      }
    }

    v7 = (v56 + 2);
LABEL_6:
    v56 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

unsigned __int8 *sub_2763A4B30(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 64);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_25:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 32);
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
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 65);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 40);
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
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(a1 + 66);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_51:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(a1 + 48);
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

  a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v27, v29, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(a1 + 67);
  *a2 = 64;
  a2[1] = v33;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_74;
  }

LABEL_64:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(a1 + 56);
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

  a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v34, v36, a3);
  if ((v5 & 0x200) != 0)
  {
LABEL_74:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(a1 + 68);
    *a2 = 80;
    a2[1] = v40;
    a2 += 2;
  }

LABEL_77:
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2763A4FA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 48));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 40));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v7 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 56));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v4 = v3 + ((v2 >> 5) & 2) + ((v2 >> 4) & 2) + ((v2 >> 6) & 2);
LABEL_13:
  if ((v2 & 0x300) != 0)
  {
    v8 = v4 + ((v2 >> 8) & 2) + ((v2 >> 7) & 2);
  }

  else
  {
    v8 = v4;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_2763A5164(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288520078, 0);
  if (v4)
  {

    return sub_2763A520C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763A520C(uint64_t result, uint64_t a2)
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

        v6 = MEMORY[0x277C97BE0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80530];
      }

      result = TSDSOS::SpecFillArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_37;
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

      v9 = MEMORY[0x277C97C60](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C97C40](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C97BF0](v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = MEMORY[0x277D80538];
    }

    result = TSDSOS::SpecShadowArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_61;
    }

LABEL_53:
    *(v3 + 16) |= 0x10u;
    v18 = *(v3 + 56);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C97C00](v19);
      *(v3 + 56) = v18;
    }

    if (*(a2 + 56))
    {
      v20 = *(a2 + 56);
    }

    else
    {
      v20 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v18, v20);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_62;
    }

LABEL_61:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 66) = *(a2 + 66);
      goto LABEL_13;
    }

LABEL_62:
    *(v3 + 65) = *(a2 + 65);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 67) = *(a2 + 67);
    }

    if ((v5 & 0x200) != 0)
    {
      *(v3 + 68) = *(a2 + 68);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_2763A5454(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763A4538(result);

    return sub_2763A5164(v4, a2);
  }

  return result;
}

uint64_t sub_2763A54A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2763A5560(uint64_t *a1)
{
  sub_2763A5594(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_2763A5594(uint64_t *result)
{
  if (result != &qword_2812EEB38)
  {
    v1 = result;
    if (result[4])
    {
      v2 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v2, 0x10A1C40D4912B22);
    }

    if (v1[5])
    {
      v3 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v4 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v4, 0x10A1C40D4912B22);
    }

    v5 = v1[7];
    if (v5)
    {
      v6 = sub_27639702C(v5);
      MEMORY[0x277C98580](v6, 0x10A1C40D4912B22);
    }

    v7 = v1[8];
    if (v7)
    {
      v8 = sub_27639702C(v7);
      MEMORY[0x277C98580](v8, 0x10A1C40D4912B22);
    }

    v9 = v1[9];
    if (v9)
    {
      v10 = sub_27639702C(v9);
      MEMORY[0x277C98580](v10, 0x10A1C40D4912B22);
    }

    v11 = v1[10];
    if (v11)
    {
      v12 = sub_27639702C(v11);
      MEMORY[0x277C98580](v12, 0x10A1C40D4912B22);
    }

    v13 = v1[11];
    if (v13)
    {
      v14 = sub_27639702C(v13);
      MEMORY[0x277C98580](v14, 0x10A1C40D4912B22);
    }

    v15 = v1[12];
    if (v15)
    {
      v16 = sub_27639702C(v15);
      MEMORY[0x277C98580](v16, 0x10A1C40D4912B22);
    }

    v17 = v1[13];
    if (v17)
    {
      v18 = sub_27639702C(v17);
      MEMORY[0x277C98580](v18, 0x10A1C40D4912B22);
    }

    v19 = v1[14];
    if (v19)
    {
      v20 = sub_27639702C(v19);
      MEMORY[0x277C98580](v20, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v21 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v21, 0x10A1C40D4912B22);
    }

    if (v1[16])
    {
      v22 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v22, 0x10A1C40D4912B22);
    }

    if (v1[17])
    {
      v23 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v23, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v24 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v24, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v25 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v25, 0x10A1C40D4912B22);
    }

    if (v1[20])
    {
      v26 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v26, 0x10A1C40D4912B22);
    }

    if (v1[21])
    {
      v27 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v27, 0x10A1C40D4912B22);
    }

    if (v1[22])
    {
      v28 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v28, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v29 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v29, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v30 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v30, 0x10A1C40D4912B22);
    }

    if (v1[25])
    {
      v31 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v31, 0x10A1C40D4912B22);
    }

    if (v1[26])
    {
      v32 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v32, 0x10A1C40D4912B22);
    }

    if (v1[27])
    {
      v33 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v33, 0x10A1C40D4912B22);
    }

    if (v1[28])
    {
      v34 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v34, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v35 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v35, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v36 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v36, 0x10A1C40D4912B22);
    }

    if (v1[31])
    {
      v37 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v37, 0x10A1C40D4912B22);
    }

    if (v1[32])
    {
      v38 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v38, 0x10A1C40D4912B22);
    }

    if (v1[33])
    {
      v39 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v39, 0x10A1C40D4912B22);
    }

    if (v1[34])
    {
      v40 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v40, 0x10A1C40D4912B22);
    }

    v41 = v1[35];
    if (v41)
    {
      v42 = sub_276398188(v41);
      MEMORY[0x277C98580](v42, 0x10A1C40D4912B22);
    }

    v43 = v1[36];
    if (v43)
    {
      v44 = sub_276398188(v43);
      MEMORY[0x277C98580](v44, 0x10A1C40D4912B22);
    }

    v45 = v1[37];
    if (v45)
    {
      v46 = sub_27639876C(v45);
      MEMORY[0x277C98580](v46, 0x10A1C40D4912B22);
    }

    if (v1[38])
    {
      v47 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v47, 0x10A1C40D4912B22);
    }

    if (v1[39])
    {
      v48 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v48, 0x10A1C40D4912B22);
    }

    result = v1[40];
    if (result)
    {
      MEMORY[0x277C979D0]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2763A58D4(uint64_t *a1)
{
  sub_2763A5560(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2763A5914(uint64_t *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result[4]);
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_65;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSSSOS::SpecBoolArchive::Clear(v1[5]);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[6]);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_2763970D0(v1[7]);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_68:
    result = sub_2763970D0(v1[9]);
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_69;
  }

LABEL_67:
  result = sub_2763970D0(v1[8]);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_68;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_69:
  result = sub_2763970D0(v1[10]);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_2763970D0(v1[11]);
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_2763970D0(v1[12]);
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_73;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_2763970D0(v1[13]);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = sub_2763970D0(v1[14]);
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[15]);
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[16]);
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[17]);
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_77:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[18]);
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSSSOS::SpecIntegerArchive::Clear(v1[19]);
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(v1[20]);
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_81;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(v1[21]);
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_82;
  }

LABEL_81:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[22]);
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[23]);
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = TSSSOS::SpecBoolArchive::Clear(v1[24]);
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[25]);
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_85:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[26]);
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSSSOS::SpecBoolArchive::Clear(v1[27]);
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[28]);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_94;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(v1[29]);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[30]);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[31]);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = TSSSOS::SpecBoolArchive::Clear(v1[32]);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_98:
    result = TSSSOS::SpecBoolArchive::Clear(v1[34]);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_99;
  }

LABEL_97:
  result = TSSSOS::SpecBoolArchive::Clear(v1[33]);
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_98;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_99:
  result = sub_27639822C(v1[35]);
LABEL_40:
  v4 = *(v1 + 5);
  if ((v4 & 0x1F) == 0)
  {
    goto LABEL_47;
  }

  if (v4)
  {
    result = sub_27639822C(v1[36]);
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_89;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = sub_276398810(v1[37]);
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[38]);
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_90:
  result = TSSSOS::SpecBoolArchive::Clear(v1[39]);
  if ((v4 & 0x10) != 0)
  {
LABEL_46:
    result = TSSSOS::SpecStringArchive::Clear(v1[40]);
  }

LABEL_47:
  if ((v4 & 0xE0) != 0)
  {
    *(v1 + 330) = 0;
    *(v1 + 164) = 0;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(v2 + 315) = 0;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(v2 + 323) = 0;
  }

  if (HIBYTE(v4))
  {
    *(v2 + 331) = 0;
  }

  v5 = *(v1 + 6);
  if (v5)
  {
    *(v2 + 339) = 0;
  }

  if ((v5 & 0x300) != 0)
  {
    *(v2 + 347) = 0;
  }

  *(v2 + 2) = 0;
  *v2 = 0;
  v7 = *(v1 + 8);
  v6 = v1 + 1;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_2763A5C48(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v266 = a2;
  if ((sub_2763D4D98(a3, &v266) & 1) == 0)
  {
    while (1)
    {
      v6 = (v266 + 1);
      LODWORD(v7) = *v266;
      if (*v266 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v266, v7);
          v266 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v266 + 2);
      }

      v266 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 32);
          if (v8)
          {
            goto LABEL_391;
          }

          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C97C60](v9);
          LODWORD(v8) = v10;
          *(a1 + 32) = v10;
          goto LABEL_390;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x20u;
          v104 = (v6 + 1);
          v103 = *v6;
          if ((v103 & 0x8000000000000000) == 0)
          {
            goto LABEL_200;
          }

          v105 = *v104;
          v103 = (v105 << 7) + v103 - 128;
          if (v105 < 0)
          {
            v228 = google::protobuf::internal::VarintParseSlow64(v6, v103);
            v266 = v228;
            *(a1 + 328) = v229 != 0;
            if (!v228)
            {
              return 0;
            }
          }

          else
          {
            v104 = (v6 + 2);
LABEL_200:
            v266 = v104;
            *(a1 + 328) = v103 != 0;
          }

          goto LABEL_393;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 2u;
          v12 = *(a1 + 40);
          if (v12)
          {
            goto LABEL_374;
          }

          v89 = *(a1 + 8);
          if (v89)
          {
            v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
          }

          v90 = MEMORY[0x277C97C20](v89);
          LODWORD(v12) = v90;
          *(a1 + 40) = v90;
          goto LABEL_373;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x40u;
          v98 = (v6 + 1);
          v97 = *v6;
          if ((v97 & 0x8000000000000000) == 0)
          {
            goto LABEL_190;
          }

          v99 = *v98;
          v97 = (v99 << 7) + v97 - 128;
          if (v99 < 0)
          {
            v224 = google::protobuf::internal::VarintParseSlow64(v6, v97);
            v266 = v224;
            *(a1 + 329) = v225 != 0;
            if (!v224)
            {
              return 0;
            }
          }

          else
          {
            v98 = (v6 + 2);
LABEL_190:
            v266 = v98;
            *(a1 + 329) = v97 != 0;
          }

          goto LABEL_393;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 4u;
          v61 = *(a1 + 48);
          if (v61)
          {
            goto LABEL_367;
          }

          v72 = *(a1 + 8);
          if (v72)
          {
            v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
          }

          v73 = MEMORY[0x277C97C40](v72);
          LODWORD(v61) = v73;
          *(a1 + 48) = v73;
          goto LABEL_366;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x80u;
          v120 = (v6 + 1);
          v119 = *v6;
          if ((v119 & 0x8000000000000000) == 0)
          {
            goto LABEL_230;
          }

          v121 = *v120;
          v119 = (v121 << 7) + v119 - 128;
          if (v121 < 0)
          {
            v238 = google::protobuf::internal::VarintParseSlow64(v6, v119);
            v266 = v238;
            *(a1 + 330) = v239 != 0;
            if (!v238)
            {
              return 0;
            }
          }

          else
          {
            v120 = (v6 + 2);
LABEL_230:
            v266 = v120;
            *(a1 + 330) = v119 != 0;
          }

          goto LABEL_393;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 8u;
          v50 = *(a1 + 56);
          if (v50)
          {
            goto LABEL_274;
          }

          v132 = *(a1 + 8);
          if (v132)
          {
            v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = sub_2763D3EE8(v132);
          *(a1 + 56) = v50;
          goto LABEL_273;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x100u;
          v101 = (v6 + 1);
          v100 = *v6;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_195;
          }

          v102 = *v101;
          v100 = (v102 << 7) + v100 - 128;
          if (v102 < 0)
          {
            v226 = google::protobuf::internal::VarintParseSlow64(v6, v100);
            v266 = v226;
            *(a1 + 331) = v227 != 0;
            if (!v226)
            {
              return 0;
            }
          }

          else
          {
            v101 = (v6 + 2);
LABEL_195:
            v266 = v101;
            *(a1 + 331) = v100 != 0;
          }

          goto LABEL_393;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x10u;
          v50 = *(a1 + 64);
          if (v50)
          {
            goto LABEL_274;
          }

          v135 = *(a1 + 8);
          if (v135)
          {
            v135 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = sub_2763D3EE8(v135);
          *(a1 + 64) = v50;
          goto LABEL_273;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x200u;
          v82 = (v6 + 1);
          v81 = *v6;
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_160;
          }

          v83 = *v82;
          v81 = (v83 << 7) + v81 - 128;
          if (v83 < 0)
          {
            v216 = google::protobuf::internal::VarintParseSlow64(v6, v81);
            v266 = v216;
            *(a1 + 332) = v217 != 0;
            if (!v216)
            {
              return 0;
            }
          }

          else
          {
            v82 = (v6 + 2);
LABEL_160:
            v266 = v82;
            *(a1 + 332) = v81 != 0;
          }

          goto LABEL_393;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x20u;
          v50 = *(a1 + 72);
          if (v50)
          {
            goto LABEL_274;
          }

          v134 = *(a1 + 8);
          if (v134)
          {
            v134 = *(v134 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = sub_2763D3EE8(v134);
          *(a1 + 72) = v50;
          goto LABEL_273;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x400u;
          v67 = (v6 + 1);
          v66 = *v6;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_125;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v212 = google::protobuf::internal::VarintParseSlow64(v6, v66);
            v266 = v212;
            *(a1 + 333) = v213 != 0;
            if (!v212)
            {
              return 0;
            }
          }

          else
          {
            v67 = (v6 + 2);
LABEL_125:
            v266 = v67;
            *(a1 + 333) = v66 != 0;
          }

          goto LABEL_393;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x40u;
          v50 = *(a1 + 80);
          if (v50)
          {
            goto LABEL_274;
          }

          v80 = *(a1 + 8);
          if (v80)
          {
            v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = sub_2763D3EE8(v80);
          *(a1 + 80) = v50;
          goto LABEL_273;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x800u;
          v130 = (v6 + 1);
          v129 = *v6;
          if ((v129 & 0x8000000000000000) == 0)
          {
            goto LABEL_252;
          }

          v131 = *v130;
          v129 = (v131 << 7) + v129 - 128;
          if (v131 < 0)
          {
            v244 = google::protobuf::internal::VarintParseSlow64(v6, v129);
            v266 = v244;
            *(a1 + 334) = v245 != 0;
            if (!v244)
            {
              return 0;
            }
          }

          else
          {
            v130 = (v6 + 2);
LABEL_252:
            v266 = v130;
            *(a1 + 334) = v129 != 0;
          }

          goto LABEL_393;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x80u;
          v50 = *(a1 + 88);
          if (v50)
          {
            goto LABEL_274;
          }

          v57 = *(a1 + 8);
          if (v57)
          {
            v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = sub_2763D3EE8(v57);
          *(a1 + 88) = v50;
          goto LABEL_273;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x1000u;
          v92 = (v6 + 1);
          v91 = *v6;
          if ((v91 & 0x8000000000000000) == 0)
          {
            goto LABEL_180;
          }

          v93 = *v92;
          v91 = (v93 << 7) + v91 - 128;
          if (v93 < 0)
          {
            v220 = google::protobuf::internal::VarintParseSlow64(v6, v91);
            v266 = v220;
            *(a1 + 335) = v221 != 0;
            if (!v220)
            {
              return 0;
            }
          }

          else
          {
            v92 = (v6 + 2);
LABEL_180:
            v266 = v92;
            *(a1 + 335) = v91 != 0;
          }

          goto LABEL_393;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x100u;
          v50 = *(a1 + 96);
          if (v50)
          {
            goto LABEL_274;
          }

          v51 = *(a1 + 8);
          if (v51)
          {
            v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = sub_2763D3EE8(v51);
          *(a1 + 96) = v50;
          goto LABEL_273;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x2000u;
          v110 = (v6 + 1);
          v109 = *v6;
          if ((v109 & 0x8000000000000000) == 0)
          {
            goto LABEL_210;
          }

          v111 = *v110;
          v109 = (v111 << 7) + v109 - 128;
          if (v111 < 0)
          {
            v232 = google::protobuf::internal::VarintParseSlow64(v6, v109);
            v266 = v232;
            *(a1 + 336) = v233 != 0;
            if (!v232)
            {
              return 0;
            }
          }

          else
          {
            v110 = (v6 + 2);
LABEL_210:
            v266 = v110;
            *(a1 + 336) = v109 != 0;
          }

          goto LABEL_393;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x200u;
          v50 = *(a1 + 104);
          if (v50)
          {
            goto LABEL_274;
          }

          v133 = *(a1 + 8);
          if (v133)
          {
            v133 = *(v133 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = sub_2763D3EE8(v133);
          *(a1 + 104) = v50;
          goto LABEL_273;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x4000u;
          v149 = (v6 + 1);
          v148 = *v6;
          if ((v148 & 0x8000000000000000) == 0)
          {
            goto LABEL_304;
          }

          v150 = *v149;
          v148 = (v150 << 7) + v148 - 128;
          if (v150 < 0)
          {
            v250 = google::protobuf::internal::VarintParseSlow64(v6, v148);
            v266 = v250;
            *(a1 + 337) = v251 != 0;
            if (!v250)
            {
              return 0;
            }
          }

          else
          {
            v149 = (v6 + 2);
LABEL_304:
            v266 = v149;
            *(a1 + 337) = v148 != 0;
          }

          goto LABEL_393;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x400u;
          v50 = *(a1 + 112);
          if (v50)
          {
            goto LABEL_274;
          }

          v115 = *(a1 + 8);
          if (v115)
          {
            v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = sub_2763D3EE8(v115);
          *(a1 + 112) = v50;
LABEL_273:
          v6 = v266;
LABEL_274:
          v22 = sub_2764A9BDC(a3, v50, v6);
          goto LABEL_392;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x8000u;
          v127 = (v6 + 1);
          v126 = *v6;
          if ((v126 & 0x8000000000000000) == 0)
          {
            goto LABEL_247;
          }

          v128 = *v127;
          v126 = (v128 << 7) + v126 - 128;
          if (v128 < 0)
          {
            v242 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v266 = v242;
            *(a1 + 338) = v243 != 0;
            if (!v242)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_247:
            v266 = v127;
            *(a1 + 338) = v126 != 0;
          }

          goto LABEL_393;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x800u;
          v8 = *(a1 + 120);
          if (v8)
          {
            goto LABEL_391;
          }

          v143 = *(a1 + 8);
          if (v143)
          {
            v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
          }

          v144 = MEMORY[0x277C97C60](v143);
          LODWORD(v8) = v144;
          *(a1 + 120) = v144;
          goto LABEL_390;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x10000u;
          v160 = (v6 + 1);
          v159 = *v6;
          if ((v159 & 0x8000000000000000) == 0)
          {
            goto LABEL_324;
          }

          v161 = *v160;
          v159 = (v161 << 7) + v159 - 128;
          if (v161 < 0)
          {
            v256 = google::protobuf::internal::VarintParseSlow64(v6, v159);
            v266 = v256;
            *(a1 + 339) = v257 != 0;
            if (!v256)
            {
              return 0;
            }
          }

          else
          {
            v160 = (v6 + 2);
LABEL_324:
            v266 = v160;
            *(a1 + 339) = v159 != 0;
          }

          goto LABEL_393;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x1000u;
          v8 = *(a1 + 128);
          if (v8)
          {
            goto LABEL_391;
          }

          v87 = *(a1 + 8);
          if (v87)
          {
            v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
          }

          v88 = MEMORY[0x277C97C60](v87);
          LODWORD(v8) = v88;
          *(a1 + 128) = v88;
          goto LABEL_390;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x20000u;
          v85 = (v6 + 1);
          v84 = *v6;
          if ((v84 & 0x8000000000000000) == 0)
          {
            goto LABEL_165;
          }

          v86 = *v85;
          v84 = (v86 << 7) + v84 - 128;
          if (v86 < 0)
          {
            v218 = google::protobuf::internal::VarintParseSlow64(v6, v84);
            v266 = v218;
            *(a1 + 340) = v219 != 0;
            if (!v218)
            {
              return 0;
            }
          }

          else
          {
            v85 = (v6 + 2);
LABEL_165:
            v266 = v85;
            *(a1 + 340) = v84 != 0;
          }

          goto LABEL_393;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x2000u;
          v8 = *(a1 + 136);
          if (v8)
          {
            goto LABEL_391;
          }

          v169 = *(a1 + 8);
          if (v169)
          {
            v169 = *(v169 & 0xFFFFFFFFFFFFFFFELL);
          }

          v170 = MEMORY[0x277C97C60](v169);
          LODWORD(v8) = v170;
          *(a1 + 136) = v170;
          goto LABEL_390;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x40000u;
          v46 = (v6 + 1);
          v45 = *v6;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v206 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v266 = v206;
            *(a1 + 341) = v207 != 0;
            if (!v206)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_80:
            v266 = v46;
            *(a1 + 341) = v45 != 0;
          }

          goto LABEL_393;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x4000u;
          v8 = *(a1 + 144);
          if (v8)
          {
            goto LABEL_391;
          }

          v162 = *(a1 + 8);
          if (v162)
          {
            v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
          }

          v163 = MEMORY[0x277C97C60](v162);
          LODWORD(v8) = v163;
          *(a1 + 144) = v163;
          goto LABEL_390;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x80000u;
          v165 = (v6 + 1);
          v164 = *v6;
          if ((v164 & 0x8000000000000000) == 0)
          {
            goto LABEL_334;
          }

          v166 = *v165;
          v164 = (v166 << 7) + v164 - 128;
          if (v166 < 0)
          {
            v258 = google::protobuf::internal::VarintParseSlow64(v6, v164);
            v266 = v258;
            *(a1 + 342) = v259 != 0;
            if (!v258)
            {
              return 0;
            }
          }

          else
          {
            v165 = (v6 + 2);
LABEL_334:
            v266 = v165;
            *(a1 + 342) = v164 != 0;
          }

          goto LABEL_393;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x8000u;
          v8 = *(a1 + 152);
          if (v8)
          {
            goto LABEL_391;
          }

          v136 = *(a1 + 8);
          if (v136)
          {
            v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
          }

          v137 = MEMORY[0x277C97C60](v136);
          LODWORD(v8) = v137;
          *(a1 + 152) = v137;
          goto LABEL_390;
        case 0x20u:
          if (v7)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x100000u;
          v107 = (v6 + 1);
          v106 = *v6;
          if ((v106 & 0x8000000000000000) == 0)
          {
            goto LABEL_205;
          }

          v108 = *v107;
          v106 = (v108 << 7) + v106 - 128;
          if (v108 < 0)
          {
            v230 = google::protobuf::internal::VarintParseSlow64(v6, v106);
            v266 = v230;
            *(a1 + 343) = v231 != 0;
            if (!v230)
            {
              return 0;
            }
          }

          else
          {
            v107 = (v6 + 2);
LABEL_205:
            v266 = v107;
            *(a1 + 343) = v106 != 0;
          }

          goto LABEL_393;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x10000u;
          v8 = *(a1 + 160);
          if (v8)
          {
            goto LABEL_391;
          }

          v138 = *(a1 + 8);
          if (v138)
          {
            v138 = *(v138 & 0xFFFFFFFFFFFFFFFELL);
          }

          v139 = MEMORY[0x277C97C60](v138);
          LODWORD(v8) = v139;
          *(a1 + 160) = v139;
          goto LABEL_390;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x200000u;
          v59 = (v6 + 1);
          v58 = *v6;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            v210 = google::protobuf::internal::VarintParseSlow64(v6, v58);
            v266 = v210;
            *(a1 + 344) = v211 != 0;
            if (!v210)
            {
              return 0;
            }
          }

          else
          {
            v59 = (v6 + 2);
LABEL_110:
            v266 = v59;
            *(a1 + 344) = v58 != 0;
          }

          goto LABEL_393;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x20000u;
          v8 = *(a1 + 168);
          if (v8)
          {
            goto LABEL_391;
          }

          v48 = *(a1 + 8);
          if (v48)
          {
            v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
          }

          v49 = MEMORY[0x277C97C60](v48);
          LODWORD(v8) = v49;
          *(a1 + 168) = v49;
          goto LABEL_390;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x400000u;
          v38 = (v6 + 1);
          v37 = *v6;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_65;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if (v39 < 0)
          {
            v202 = google::protobuf::internal::VarintParseSlow64(v6, v37);
            v266 = v202;
            *(a1 + 345) = v203 != 0;
            if (!v202)
            {
              return 0;
            }
          }

          else
          {
            v38 = (v6 + 2);
LABEL_65:
            v266 = v38;
            *(a1 + 345) = v37 != 0;
          }

          goto LABEL_393;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x40000u;
          v8 = *(a1 + 176);
          if (v8)
          {
            goto LABEL_391;
          }

          v40 = *(a1 + 8);
          if (v40)
          {
            v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
          }

          v41 = MEMORY[0x277C97C60](v40);
          LODWORD(v8) = v41;
          *(a1 + 176) = v41;
          goto LABEL_390;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x800000u;
          v27 = (v6 + 1);
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_45;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v196 = google::protobuf::internal::VarintParseSlow64(v6, v26);
            v266 = v196;
            *(a1 + 346) = v197 != 0;
            if (!v196)
            {
              return 0;
            }
          }

          else
          {
            v27 = (v6 + 2);
LABEL_45:
            v266 = v27;
            *(a1 + 346) = v26 != 0;
          }

          goto LABEL_393;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x80000u;
          v8 = *(a1 + 184);
          if (v8)
          {
            goto LABEL_391;
          }

          v167 = *(a1 + 8);
          if (v167)
          {
            v167 = *(v167 & 0xFFFFFFFFFFFFFFFELL);
          }

          v168 = MEMORY[0x277C97C60](v167);
          LODWORD(v8) = v168;
          *(a1 + 184) = v168;
          goto LABEL_390;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x1000000u;
          v146 = (v6 + 1);
          v145 = *v6;
          if ((v145 & 0x8000000000000000) == 0)
          {
            goto LABEL_299;
          }

          v147 = *v146;
          v145 = (v147 << 7) + v145 - 128;
          if (v147 < 0)
          {
            v248 = google::protobuf::internal::VarintParseSlow64(v6, v145);
            v266 = v248;
            *(a1 + 347) = v249 != 0;
            if (!v248)
            {
              return 0;
            }
          }

          else
          {
            v146 = (v6 + 2);
LABEL_299:
            v266 = v146;
            *(a1 + 347) = v145 != 0;
          }

          goto LABEL_393;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x100000u;
          v12 = *(a1 + 192);
          if (v12)
          {
            goto LABEL_374;
          }

          v74 = *(a1 + 8);
          if (v74)
          {
            v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
          }

          v75 = MEMORY[0x277C97C20](v74);
          LODWORD(v12) = v75;
          *(a1 + 192) = v75;
          goto LABEL_373;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x2000000u;
          v113 = (v6 + 1);
          v112 = *v6;
          if ((v112 & 0x8000000000000000) == 0)
          {
            goto LABEL_215;
          }

          v114 = *v113;
          v112 = (v114 << 7) + v112 - 128;
          if (v114 < 0)
          {
            v234 = google::protobuf::internal::VarintParseSlow64(v6, v112);
            v266 = v234;
            *(a1 + 348) = v235 != 0;
            if (!v234)
            {
              return 0;
            }
          }

          else
          {
            v113 = (v6 + 2);
LABEL_215:
            v266 = v113;
            *(a1 + 348) = v112 != 0;
          }

          goto LABEL_393;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x200000u;
          v61 = *(a1 + 200);
          if (v61)
          {
            goto LABEL_367;
          }

          v154 = *(a1 + 8);
          if (v154)
          {
            v154 = *(v154 & 0xFFFFFFFFFFFFFFFELL);
          }

          v155 = MEMORY[0x277C97C40](v154);
          LODWORD(v61) = v155;
          *(a1 + 200) = v155;
          goto LABEL_366;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x4000000u;
          v18 = (v6 + 1);
          v17 = *v6;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if (v19 < 0)
          {
            v192 = google::protobuf::internal::VarintParseSlow64(v6, v17);
            v266 = v192;
            *(a1 + 349) = v193 != 0;
            if (!v192)
            {
              return 0;
            }
          }

          else
          {
            v18 = (v6 + 2);
LABEL_29:
            v266 = v18;
            *(a1 + 349) = v17 != 0;
          }

          goto LABEL_393;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x400000u;
          v8 = *(a1 + 208);
          if (v8)
          {
            goto LABEL_391;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = MEMORY[0x277C97C60](v55);
          LODWORD(v8) = v56;
          *(a1 + 208) = v56;
          goto LABEL_390;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x8000000u;
          v141 = (v6 + 1);
          v140 = *v6;
          if ((v140 & 0x8000000000000000) == 0)
          {
            goto LABEL_289;
          }

          v142 = *v141;
          v140 = (v142 << 7) + v140 - 128;
          if (v142 < 0)
          {
            v246 = google::protobuf::internal::VarintParseSlow64(v6, v140);
            v266 = v246;
            *(a1 + 350) = v247 != 0;
            if (!v246)
            {
              return 0;
            }
          }

          else
          {
            v141 = (v6 + 2);
LABEL_289:
            v266 = v141;
            *(a1 + 350) = v140 != 0;
          }

          goto LABEL_393;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x800000u;
          v12 = *(a1 + 216);
          if (v12)
          {
            goto LABEL_374;
          }

          v181 = *(a1 + 8);
          if (v181)
          {
            v181 = *(v181 & 0xFFFFFFFFFFFFFFFELL);
          }

          v182 = MEMORY[0x277C97C20](v181);
          LODWORD(v12) = v182;
          *(a1 + 216) = v182;
          goto LABEL_373;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x10000000u;
          v33 = (v6 + 1);
          v32 = *v6;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if (v34 < 0)
          {
            v200 = google::protobuf::internal::VarintParseSlow64(v6, v32);
            v266 = v200;
            *(a1 + 351) = v201 != 0;
            if (!v200)
            {
              return 0;
            }
          }

          else
          {
            v33 = (v6 + 2);
LABEL_55:
            v266 = v33;
            *(a1 + 351) = v32 != 0;
          }

          goto LABEL_393;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x1000000u;
          v61 = *(a1 + 224);
          if (v61)
          {
            goto LABEL_367;
          }

          v62 = *(a1 + 8);
          if (v62)
          {
            v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
          }

          v63 = MEMORY[0x277C97C40](v62);
          LODWORD(v61) = v63;
          *(a1 + 224) = v63;
          goto LABEL_366;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x20000000u;
          v70 = (v6 + 1);
          v69 = *v6;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_130;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v214 = google::protobuf::internal::VarintParseSlow64(v6, v69);
            v266 = v214;
            *(a1 + 352) = v215 != 0;
            if (!v214)
            {
              return 0;
            }
          }

          else
          {
            v70 = (v6 + 2);
LABEL_130:
            v266 = v70;
            *(a1 + 352) = v69 != 0;
          }

          goto LABEL_393;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x2000000u;
          v8 = *(a1 + 232);
          if (v8)
          {
            goto LABEL_391;
          }

          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277C97C60](v15);
          LODWORD(v8) = v16;
          *(a1 + 232) = v16;
          goto LABEL_390;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x40000000u;
          v187 = (v6 + 1);
          v186 = *v6;
          if ((v186 & 0x8000000000000000) == 0)
          {
            goto LABEL_384;
          }

          v188 = *v187;
          v186 = (v188 << 7) + v186 - 128;
          if (v188 < 0)
          {
            v264 = google::protobuf::internal::VarintParseSlow64(v6, v186);
            v266 = v264;
            *(a1 + 353) = v265 != 0;
            if (!v264)
            {
              return 0;
            }
          }

          else
          {
            v187 = (v6 + 2);
LABEL_384:
            v266 = v187;
            *(a1 + 353) = v186 != 0;
          }

          goto LABEL_393;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x4000000u;
          v61 = *(a1 + 240);
          if (v61)
          {
            goto LABEL_367;
          }

          v179 = *(a1 + 8);
          if (v179)
          {
            v179 = *(v179 & 0xFFFFFFFFFFFFFFFELL);
          }

          v180 = MEMORY[0x277C97C40](v179);
          LODWORD(v61) = v180;
          *(a1 + 240) = v180;
          goto LABEL_366;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x80000000;
          v30 = (v6 + 1);
          v29 = *v6;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v198 = google::protobuf::internal::VarintParseSlow64(v6, v29);
            v266 = v198;
            *(a1 + 354) = v199 != 0;
            if (!v198)
            {
              return 0;
            }
          }

          else
          {
            v30 = (v6 + 2);
LABEL_50:
            v266 = v30;
            *(a1 + 354) = v29 != 0;
          }

          goto LABEL_393;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x8000000u;
          v61 = *(a1 + 248);
          if (v61)
          {
            goto LABEL_367;
          }

          v171 = *(a1 + 8);
          if (v171)
          {
            v171 = *(v171 & 0xFFFFFFFFFFFFFFFELL);
          }

          v172 = MEMORY[0x277C97C40](v171);
          LODWORD(v61) = v172;
          *(a1 + 248) = v172;
LABEL_366:
          v6 = v266;
LABEL_367:
          v22 = sub_2764A9528(a3, v61, v6);
          goto LABEL_392;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 1u;
          v177 = (v6 + 1);
          v176 = *v6;
          if ((v176 & 0x8000000000000000) == 0)
          {
            goto LABEL_360;
          }

          v178 = *v177;
          v176 = (v178 << 7) + v176 - 128;
          if (v178 < 0)
          {
            v260 = google::protobuf::internal::VarintParseSlow64(v6, v176);
            v266 = v260;
            *(a1 + 355) = v261 != 0;
            if (!v260)
            {
              return 0;
            }
          }

          else
          {
            v177 = (v6 + 2);
LABEL_360:
            v266 = v177;
            *(a1 + 355) = v176 != 0;
          }

          goto LABEL_393;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x10000000u;
          v12 = *(a1 + 256);
          if (v12)
          {
            goto LABEL_374;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = MEMORY[0x277C97C20](v35);
          LODWORD(v12) = v36;
          *(a1 + 256) = v36;
          goto LABEL_373;
        case 0x3Au:
          if (v7 != 208)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 2u;
          v152 = (v6 + 1);
          v151 = *v6;
          if ((v151 & 0x8000000000000000) == 0)
          {
            goto LABEL_309;
          }

          v153 = *v152;
          v151 = (v153 << 7) + v151 - 128;
          if (v153 < 0)
          {
            v252 = google::protobuf::internal::VarintParseSlow64(v6, v151);
            v266 = v252;
            *(a1 + 356) = v253 != 0;
            if (!v252)
            {
              return 0;
            }
          }

          else
          {
            v152 = (v6 + 2);
LABEL_309:
            v266 = v152;
            *(a1 + 356) = v151 != 0;
          }

          goto LABEL_393;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x20000000u;
          v12 = *(a1 + 264);
          if (v12)
          {
            goto LABEL_374;
          }

          v64 = *(a1 + 8);
          if (v64)
          {
            v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
          }

          v65 = MEMORY[0x277C97C20](v64);
          LODWORD(v12) = v65;
          *(a1 + 264) = v65;
          goto LABEL_373;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 4u;
          v157 = (v6 + 1);
          v156 = *v6;
          if ((v156 & 0x8000000000000000) == 0)
          {
            goto LABEL_319;
          }

          v158 = *v157;
          v156 = (v158 << 7) + v156 - 128;
          if (v158 < 0)
          {
            v254 = google::protobuf::internal::VarintParseSlow64(v6, v156);
            v266 = v254;
            *(a1 + 357) = v255 != 0;
            if (!v254)
            {
              return 0;
            }
          }

          else
          {
            v157 = (v6 + 2);
LABEL_319:
            v266 = v157;
            *(a1 + 357) = v156 != 0;
          }

          goto LABEL_393;
        case 0x3Du:
          if (v7 != 234)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x40000000u;
          v12 = *(a1 + 272);
          if (v12)
          {
            goto LABEL_374;
          }

          v76 = *(a1 + 8);
          if (v76)
          {
            v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
          }

          v77 = MEMORY[0x277C97C20](v76);
          LODWORD(v12) = v77;
          *(a1 + 272) = v77;
          goto LABEL_373;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 8u;
          v117 = (v6 + 1);
          v116 = *v6;
          if ((v116 & 0x8000000000000000) == 0)
          {
            goto LABEL_225;
          }

          v118 = *v117;
          v116 = (v118 << 7) + v116 - 128;
          if (v118 < 0)
          {
            v236 = google::protobuf::internal::VarintParseSlow64(v6, v116);
            v266 = v236;
            *(a1 + 358) = v237 != 0;
            if (!v236)
            {
              return 0;
            }
          }

          else
          {
            v117 = (v6 + 2);
LABEL_225:
            v266 = v117;
            *(a1 + 358) = v116 != 0;
          }

          goto LABEL_393;
        case 0x3Fu:
          if (v7 != 250)
          {
            goto LABEL_395;
          }

          *(a1 + 16) |= 0x80000000;
          v78 = *(a1 + 280);
          if (v78)
          {
            goto LABEL_242;
          }

          v125 = *(a1 + 8);
          if (v125)
          {
            v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
          }

          v78 = sub_2763D414C(v125);
          *(a1 + 280) = v78;
          goto LABEL_241;
        case 0x40u:
          if (v7)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 0x10u;
          v95 = (v6 + 1);
          v94 = *v6;
          if ((v94 & 0x8000000000000000) == 0)
          {
            goto LABEL_185;
          }

          v96 = *v95;
          v94 = (v96 << 7) + v94 - 128;
          if (v96 < 0)
          {
            v222 = google::protobuf::internal::VarintParseSlow64(v6, v94);
            v266 = v222;
            *(a1 + 359) = v223 != 0;
            if (!v222)
            {
              return 0;
            }
          }

          else
          {
            v95 = (v6 + 2);
LABEL_185:
            v266 = v95;
            *(a1 + 359) = v94 != 0;
          }

          goto LABEL_393;
        case 0x41u:
          if (v7 != 10)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 1u;
          v78 = *(a1 + 288);
          if (v78)
          {
            goto LABEL_242;
          }

          v79 = *(a1 + 8);
          if (v79)
          {
            v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
          }

          v78 = sub_2763D414C(v79);
          *(a1 + 288) = v78;
LABEL_241:
          v6 = v266;
LABEL_242:
          v22 = sub_2764A92B8(a3, v78, v6);
          goto LABEL_392;
        case 0x42u:
          if (v7 != 16)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 0x20u;
          v123 = (v6 + 1);
          v122 = *v6;
          if ((v122 & 0x8000000000000000) == 0)
          {
            goto LABEL_235;
          }

          v124 = *v123;
          v122 = (v124 << 7) + v122 - 128;
          if (v124 < 0)
          {
            v240 = google::protobuf::internal::VarintParseSlow64(v6, v122);
            v266 = v240;
            *(a1 + 360) = v241 != 0;
            if (!v240)
            {
              return 0;
            }
          }

          else
          {
            v123 = (v6 + 2);
LABEL_235:
            v266 = v123;
            *(a1 + 360) = v122 != 0;
          }

          goto LABEL_393;
        case 0x43u:
          if (v7 != 26)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 2u;
          v20 = *(a1 + 296);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = sub_2763D4218(v21);
            *(a1 + 296) = v20;
            v6 = v266;
          }

          v22 = sub_2764A9388(a3, v20, v6);
          goto LABEL_392;
        case 0x44u:
          if (v7 != 32)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 0x40u;
          v53 = (v6 + 1);
          v52 = *v6;
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_95;
          }

          v54 = *v53;
          v52 = (v54 << 7) + v52 - 128;
          if (v54 < 0)
          {
            v208 = google::protobuf::internal::VarintParseSlow64(v6, v52);
            v266 = v208;
            *(a1 + 361) = v209 != 0;
            if (!v208)
            {
              return 0;
            }
          }

          else
          {
            v53 = (v6 + 2);
LABEL_95:
            v266 = v53;
            *(a1 + 361) = v52 != 0;
          }

          goto LABEL_393;
        case 0x45u:
          if (v7 != 42)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 4u;
          v8 = *(a1 + 304);
          if (v8)
          {
            goto LABEL_391;
          }

          v189 = *(a1 + 8);
          if (v189)
          {
            v189 = *(v189 & 0xFFFFFFFFFFFFFFFELL);
          }

          v190 = MEMORY[0x277C97C60](v189);
          LODWORD(v8) = v190;
          *(a1 + 304) = v190;
LABEL_390:
          v6 = v266;
LABEL_391:
          v22 = sub_2764A9458(a3, v8, v6);
          goto LABEL_392;
        case 0x46u:
          if (v7 != 48)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 0x80u;
          v43 = (v6 + 1);
          v42 = *v6;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_75;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v204 = google::protobuf::internal::VarintParseSlow64(v6, v42);
            v266 = v204;
            *(a1 + 362) = v205 != 0;
            if (!v204)
            {
              return 0;
            }
          }

          else
          {
            v43 = (v6 + 2);
LABEL_75:
            v266 = v43;
            *(a1 + 362) = v42 != 0;
          }

          goto LABEL_393;
        case 0x47u:
          if (v7 != 58)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 8u;
          v12 = *(a1 + 312);
          if (v12)
          {
            goto LABEL_374;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C97C20](v13);
          LODWORD(v12) = v14;
          *(a1 + 312) = v14;
LABEL_373:
          v6 = v266;
LABEL_374:
          v22 = sub_2764A95F8(a3, v12, v6);
          goto LABEL_392;
        case 0x48u:
          if (v7 != 64)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 0x100u;
          v24 = (v6 + 1);
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v194 = google::protobuf::internal::VarintParseSlow64(v6, v23);
            v266 = v194;
            *(a1 + 363) = v195 != 0;
            if (!v194)
            {
              return 0;
            }
          }

          else
          {
            v24 = (v6 + 2);
LABEL_40:
            v266 = v24;
            *(a1 + 363) = v23 != 0;
          }

          goto LABEL_393;
        case 0x49u:
          if (v7 != 74)
          {
            goto LABEL_395;
          }

          *(a1 + 20) |= 0x10u;
          v173 = *(a1 + 320);
          if (!v173)
          {
            v174 = *(a1 + 8);
            if (v174)
            {
              v174 = *(v174 & 0xFFFFFFFFFFFFFFFELL);
            }

            v175 = MEMORY[0x277C97C50](v174);
            LODWORD(v173) = v175;
            *(a1 + 320) = v175;
            v6 = v266;
          }

          v22 = sub_2764A96C8(a3, v173, v6);
          goto LABEL_392;
        case 0x4Au:
          if (v7 != 80)
          {
            goto LABEL_395;
          }

          *(a1 + 24) |= 0x200u;
          v184 = (v6 + 1);
          v183 = *v6;
          if ((v183 & 0x8000000000000000) == 0)
          {
            goto LABEL_379;
          }

          v185 = *v184;
          v183 = (v185 << 7) + v183 - 128;
          if (v185 < 0)
          {
            v262 = google::protobuf::internal::VarintParseSlow64(v6, v183);
            v266 = v262;
            *(a1 + 364) = v263 != 0;
            if (!v262)
            {
              return 0;
            }
          }

          else
          {
            v184 = (v6 + 2);
LABEL_379:
            v266 = v184;
            *(a1 + 364) = v183 != 0;
          }

          goto LABEL_393;
        default:
LABEL_395:
          if (v7)
          {
            v191 = (v7 & 7) == 4;
          }

          else
          {
            v191 = 1;
          }

          if (v191)
          {
            *(a3 + 80) = v7 - 1;
            return v266;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v22 = google::protobuf::internal::UnknownFieldParse();
LABEL_392:
          v266 = v22;
          if (!v22)
          {
            return 0;
          }

LABEL_393:
          if (sub_2763D4D98(a3, &v266))
          {
            return v266;
          }

          break;
      }
    }
  }

  return v266;
}