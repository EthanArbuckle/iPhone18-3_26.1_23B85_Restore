unsigned __int8 *TSTSOS::TableStylePropertyChangeSetArchive::_InternalSerialize(TSTSOS::TableStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 5);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v5, v7, a3);
  }

  if ((*(this + 5) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 544);
    *a2 = 16;
    a2[1] = v11;
    a2 += 2;
  }

  if ((*(this + 16) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 6);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v12, v14, a3);
  }

  if (*(this + 24))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 545);
    *a2 = 32;
    a2[1] = v18;
    a2 += 2;
  }

  if ((*(this + 16) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 7);
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

  if ((*(this + 24) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 546);
    *a2 = 48;
    a2[1] = v25;
    a2 += 2;
  }

  if ((*(this + 16) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 8);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v26, v28, a3);
  }

  if ((*(this + 24) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 547);
    *a2 = 64;
    a2[1] = v32;
    a2 += 2;
  }

  if ((*(this + 16) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v33 = *(this + 9);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v33, v35, a3);
  }

  if ((*(this + 24) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(this + 548);
    *a2 = 80;
    a2[1] = v39;
    a2 += 2;
  }

  if ((*(this + 16) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 10);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v40, v42, a3);
  }

  if ((*(this + 24) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(this + 549);
    *a2 = 96;
    a2[1] = v46;
    a2 += 2;
  }

  if ((*(this + 16) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v47 = *(this + 11);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v47, v49, a3);
  }

  if ((*(this + 24) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v53 = *(this + 550);
    *a2 = 112;
    a2[1] = v53;
    a2 += 2;
  }

  if ((*(this + 16) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v54 = *(this + 12);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v54, v56, a3);
  }

  if ((*(this + 24) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v60 = *(this + 551);
    *a2 = 384;
    a2[2] = v60;
    a2 += 3;
  }

  if (*(this + 17))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v61 = *(this + 13);
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

  if ((*(this + 24) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(this + 552);
    *a2 = 400;
    a2[2] = v67;
    a2 += 3;
  }

  if ((*(this + 17) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v68 = *(this + 14);
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

  if (*(this + 25))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v74 = *(this + 553);
    *a2 = 416;
    a2[2] = v74;
    a2 += 3;
  }

  if ((*(this + 17) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v75 = *(this + 15);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v75, v77, a3);
  }

  if ((*(this + 25) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v81 = *(this + 554);
    *a2 = 432;
    a2[2] = v81;
    a2 += 3;
  }

  if ((*(this + 17) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v82 = *(this + 16);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v82, v84, a3);
  }

  if ((*(this + 25) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v88 = *(this + 555);
    *a2 = 448;
    a2[2] = v88;
    a2 += 3;
  }

  if ((*(this + 17) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v89 = *(this + 17);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v89, v91, a3);
  }

  if ((*(this + 25) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v95 = *(this + 556);
    *a2 = 464;
    a2[2] = v95;
    a2 += 3;
  }

  if ((*(this + 17) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v96 = *(this + 18);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v96, v98, a3);
  }

  if ((*(this + 25) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v102 = *(this + 557);
    *a2 = 480;
    a2[2] = v102;
    a2 += 3;
  }

  if ((*(this + 17) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v103 = *(this + 19);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v103, v105, a3);
  }

  if ((*(this + 25) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v109 = *(this + 558);
    *a2 = 496;
    a2[2] = v109;
    a2 += 3;
  }

  if ((*(this + 17) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v110 = *(this + 20);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v110, v112, a3);
  }

  if ((*(this + 25) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v116 = *(this + 559);
    *a2 = 640;
    a2[2] = v116;
    a2 += 3;
  }

  if (*(this + 18))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v117 = *(this + 21);
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

  if ((*(this + 25) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v123 = *(this + 560);
    *a2 = 656;
    a2[2] = v123;
    a2 += 3;
  }

  if ((*(this + 18) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v124 = *(this + 22);
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

  if (*(this + 26))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v130 = *(this + 561);
    *a2 = 672;
    a2[2] = v130;
    a2 += 3;
  }

  if ((*(this + 18) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v131 = *(this + 23);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v131, v133, a3);
  }

  if ((*(this + 26) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v137 = *(this + 562);
    *a2 = 688;
    a2[2] = v137;
    a2 += 3;
  }

  if ((*(this + 18) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v138 = *(this + 24);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v138, v140, a3);
  }

  if ((*(this + 26) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v144 = *(this + 563);
    *a2 = 704;
    a2[2] = v144;
    a2 += 3;
  }

  if ((*(this + 18) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v145 = *(this + 25);
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

    a2 = TSTSOS::SpecTableStrokePresetListArchive::_InternalSerialize(v145, v147, a3);
  }

  if ((*(this + 26) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v151 = *(this + 564);
    *a2 = 720;
    a2[2] = v151;
    a2 += 3;
  }

  if ((*(this + 18) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v152 = *(this + 26);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v152, v154, a3);
  }

  if ((*(this + 26) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v158 = *(this + 565);
    *a2 = 736;
    a2[2] = v158;
    a2 += 3;
  }

  if ((*(this + 18) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v159 = *(this + 27);
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

  if ((*(this + 26) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v165 = *(this + 566);
    *a2 = 752;
    a2[2] = v165;
    a2 += 3;
  }

  if ((*(this + 18) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v166 = *(this + 28);
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v166, v168, a3);
  }

  if ((*(this + 26) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v172 = *(this + 567);
    *a2 = 896;
    a2[2] = v172;
    a2 += 3;
  }

  if (*(this + 19))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v173 = *(this + 29);
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

  if ((*(this + 26) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v179 = *(this + 568);
    *a2 = 912;
    a2[2] = v179;
    a2 += 3;
  }

  if ((*(this + 19) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v180 = *(this + 30);
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

  if (*(this + 27))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v186 = *(this + 569);
    *a2 = 928;
    a2[2] = v186;
    a2 += 3;
  }

  if ((*(this + 19) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v187 = *(this + 31);
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

  if ((*(this + 27) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v193 = *(this + 570);
    *a2 = 944;
    a2[2] = v193;
    a2 += 3;
  }

  if ((*(this + 19) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v194 = *(this + 32);
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

  if ((*(this + 27) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v200 = *(this + 571);
    *a2 = 960;
    a2[2] = v200;
    a2 += 3;
  }

  if ((*(this + 19) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v201 = *(this + 33);
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

  if ((*(this + 27) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v207 = *(this + 572);
    *a2 = 976;
    a2[2] = v207;
    a2 += 3;
  }

  if ((*(this + 19) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v208 = *(this + 34);
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

  if ((*(this + 27) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v214 = *(this + 573);
    *a2 = 992;
    a2[2] = v214;
    a2 += 3;
  }

  if ((*(this + 19) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v215 = *(this + 35);
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

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v215, v217, a3);
  }

  if ((*(this + 27) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v221 = *(this + 574);
    *a2 = 1008;
    a2[2] = v221;
    a2 += 3;
  }

  if ((*(this + 4) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v222 = *(this + 36);
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

  if ((*(this + 27) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v228 = *(this + 575);
    *a2 = 1152;
    a2[2] = v228;
    a2 += 3;
  }

  if (*(this + 20))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v229 = *(this + 37);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v229, v231, a3);
  }

  if ((*(this + 6) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v235 = *(this + 576);
    *a2 = 1168;
    a2[2] = v235;
    a2 += 3;
  }

  if ((*(this + 20) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v236 = *(this + 38);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v236, v238, a3);
  }

  if (*(this + 28))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v242 = *(this + 577);
    *a2 = 1184;
    a2[2] = v242;
    a2 += 3;
  }

  if ((*(this + 20) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v243 = *(this + 39);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v243, v245, a3);
  }

  if ((*(this + 28) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v249 = *(this + 578);
    *a2 = 1200;
    a2[2] = v249;
    a2 += 3;
  }

  if ((*(this + 20) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v250 = *(this + 40);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v250, v252, a3);
  }

  if ((*(this + 28) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v256 = *(this + 579);
    *a2 = 1216;
    a2[2] = v256;
    a2 += 3;
  }

  if ((*(this + 20) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v257 = *(this + 41);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v257, v259, a3);
  }

  if ((*(this + 28) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v263 = *(this + 580);
    *a2 = 1232;
    a2[2] = v263;
    a2 += 3;
  }

  if ((*(this + 20) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v264 = *(this + 42);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v264, v266, a3);
  }

  if ((*(this + 28) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v270 = *(this + 581);
    *a2 = 1248;
    a2[2] = v270;
    a2 += 3;
  }

  if ((*(this + 20) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v271 = *(this + 43);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v271, v273, a3);
  }

  if ((*(this + 28) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v277 = *(this + 582);
    *a2 = 1264;
    a2[2] = v277;
    a2 += 3;
  }

  if ((*(this + 20) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v278 = *(this + 44);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v278, v280, a3);
  }

  if ((*(this + 28) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v284 = *(this + 583);
    *a2 = 1408;
    a2[2] = v284;
    a2 += 3;
  }

  if (*(this + 21))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v285 = *(this + 45);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v285, v287, a3);
  }

  if ((*(this + 28) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v291 = *(this + 584);
    *a2 = 1424;
    a2[2] = v291;
    a2 += 3;
  }

  if ((*(this + 21) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v292 = *(this + 46);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v292, v294, a3);
  }

  if (*(this + 29))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v298 = *(this + 585);
    *a2 = 1440;
    a2[2] = v298;
    a2 += 3;
  }

  if ((*(this + 21) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v299 = *(this + 47);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v299, v301, a3);
  }

  if ((*(this + 29) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v305 = *(this + 586);
    *a2 = 1456;
    a2[2] = v305;
    a2 += 3;
  }

  if ((*(this + 21) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v306 = *(this + 48);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v306, v308, a3);
  }

  if ((*(this + 29) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v312 = *(this + 587);
    *a2 = 1472;
    a2[2] = v312;
    a2 += 3;
  }

  if ((*(this + 21) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v313 = *(this + 49);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v313, v315, a3);
  }

  if ((*(this + 29) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v319 = *(this + 588);
    *a2 = 1488;
    a2[2] = v319;
    a2 += 3;
  }

  if ((*(this + 21) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v320 = *(this + 50);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v320, v322, a3);
  }

  if ((*(this + 29) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v326 = *(this + 589);
    *a2 = 1504;
    a2[2] = v326;
    a2 += 3;
  }

  if ((*(this + 21) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v327 = *(this + 51);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v327, v329, a3);
  }

  if ((*(this + 29) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v333 = *(this + 590);
    *a2 = 1520;
    a2[2] = v333;
    a2 += 3;
  }

  if ((*(this + 21) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v334 = *(this + 52);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v334, v336, a3);
  }

  if ((*(this + 29) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v340 = *(this + 591);
    *a2 = 1664;
    a2[2] = v340;
    a2 += 3;
  }

  if (*(this + 22))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v341 = *(this + 53);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v341, v343, a3);
  }

  if ((*(this + 29) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v347 = *(this + 592);
    *a2 = 1680;
    a2[2] = v347;
    a2 += 3;
  }

  if ((*(this + 22) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v348 = *(this + 54);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v348, v350, a3);
  }

  if (*(this + 30))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v354 = *(this + 593);
    *a2 = 1696;
    a2[2] = v354;
    a2 += 3;
  }

  if ((*(this + 22) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v355 = *(this + 55);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v355, v357, a3);
  }

  if ((*(this + 30) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v361 = *(this + 594);
    *a2 = 1712;
    a2[2] = v361;
    a2 += 3;
  }

  if ((*(this + 22) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v362 = *(this + 56);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v362, v364, a3);
  }

  if ((*(this + 30) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v368 = *(this + 595);
    *a2 = 1728;
    a2[2] = v368;
    a2 += 3;
  }

  if ((*(this + 22) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v369 = *(this + 57);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v369, v371, a3);
  }

  if ((*(this + 30) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v375 = *(this + 596);
    *a2 = 1744;
    a2[2] = v375;
    a2 += 3;
  }

  if ((*(this + 22) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v376 = *(this + 58);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v376, v378, a3);
  }

  if ((*(this + 30) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v382 = *(this + 597);
    *a2 = 1760;
    a2[2] = v382;
    a2 += 3;
  }

  if ((*(this + 22) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v383 = *(this + 59);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v383, v385, a3);
  }

  if ((*(this + 30) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v389 = *(this + 598);
    *a2 = 1776;
    a2[2] = v389;
    a2 += 3;
  }

  if ((*(this + 22) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v390 = *(this + 60);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v390, v392, a3);
  }

  if ((*(this + 30) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v396 = *(this + 599);
    *a2 = 1920;
    a2[2] = v396;
    a2 += 3;
  }

  if (*(this + 23))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v397 = *(this + 61);
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v397, v399, a3);
  }

  if ((*(this + 30) & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v403 = *(this + 600);
    *a2 = 1936;
    a2[2] = v403;
    a2 += 3;
  }

  if ((*(this + 23) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v404 = *(this + 62);
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

  if (*(this + 31))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v410 = *(this + 601);
    *a2 = 1952;
    a2[2] = v410;
    a2 += 3;
  }

  if ((*(this + 23) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v411 = *(this + 63);
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

  if ((*(this + 31) & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v417 = *(this + 602);
    *a2 = 1968;
    a2[2] = v417;
    a2 += 3;
  }

  if ((*(this + 23) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v418 = *(this + 64);
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

  if ((*(this + 31) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v424 = *(this + 603);
    *a2 = 1984;
    a2[2] = v424;
    a2 += 3;
  }

  if ((*(this + 23) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v425 = *(this + 65);
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

  if ((*(this + 31) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v431 = *(this + 604);
    *a2 = 2000;
    a2[2] = v431;
    a2 += 3;
  }

  if ((*(this + 23) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v432 = *(this + 66);
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

  if ((*(this + 31) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v438 = *(this + 605);
    *a2 = 2016;
    a2[2] = v438;
    a2 += 3;
  }

  if ((*(this + 23) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v439 = *(this + 67);
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

  if ((*(this + 31) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v445 = *(this + 606);
    *a2 = 2032;
    a2[2] = v445;
    a2 += 3;
  }

  v446 = *(this + 1);
  if ((v446 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v446 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSTSOS::TableStylePropertyChangeSetArchive::ByteSizeLong(TSTSOS::TableStylePropertyChangeSetArchive *this, uint32x4_t a2)
{
  v3 = *(this + 4);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (v3)
  {
    v5 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 5));
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
    v6 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 6));
    v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v28 = TSDSOS::SpecFillArchive::ByteSizeLong(*(this + 7));
    v4 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 8) == 0)
    {
LABEL_10:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_217;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_10;
  }

  v29 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 8));
  v4 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_11:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_218;
  }

LABEL_217:
  v30 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 9));
  v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_219;
  }

LABEL_218:
  v31 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 10));
  v4 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_219:
  v32 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 11));
  v4 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_14:
    v7 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 12));
    v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v3 & 0x100) != 0)
  {
    v33 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 13));
    v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x200) == 0)
    {
LABEL_18:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_223;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v34 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 14));
  v4 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400) == 0)
  {
LABEL_19:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_224;
  }

LABEL_223:
  v35 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 15));
  v4 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800) == 0)
  {
LABEL_20:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_225;
  }

LABEL_224:
  v36 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 16));
  v4 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x1000) == 0)
  {
LABEL_21:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_226;
  }

LABEL_225:
  v37 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 17));
  v4 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x2000) == 0)
  {
LABEL_22:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_227;
  }

LABEL_226:
  v38 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 18));
  v4 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000) == 0)
  {
LABEL_23:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_227:
  v39 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 19));
  v4 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000) != 0)
  {
LABEL_24:
    v8 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 20));
    v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v3 & 0x10000) != 0)
  {
    v40 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 21));
    v4 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_28:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_231;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v41 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 22));
  v4 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_29:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_232;
  }

LABEL_231:
  v42 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 23));
  v4 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_30:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_233;
  }

LABEL_232:
  v43 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 24));
  v4 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_31:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_234;
  }

LABEL_233:
  v44 = TSTSOS::SpecTableStrokePresetListArchive::ByteSizeLong(*(this + 25));
  v4 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_32:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_235;
  }

LABEL_234:
  v45 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 26));
  v4 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400000) == 0)
  {
LABEL_33:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_235:
  v46 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 27));
  v4 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800000) != 0)
  {
LABEL_34:
    v9 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 28));
    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v3))
  {
    goto LABEL_44;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v68 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 29));
    v4 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_263;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v69 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 30));
  v4 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_264;
  }

LABEL_263:
  v70 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 31));
  v4 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_265;
  }

LABEL_264:
  v71 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 32));
  v4 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_266;
  }

LABEL_265:
  v72 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 33));
  v4 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_267:
    v74 = TSSSOS::SpecStringArchive::ByteSizeLong(*(this + 35));
    v4 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_268;
  }

LABEL_266:
  v73 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 34));
  v4 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_267;
  }

LABEL_43:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_268:
  v75 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 36));
  v4 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_44:
  v10 = *(this + 5);
  if (!v10)
  {
    goto LABEL_54;
  }

  if (v10)
  {
    v47 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 37));
    v4 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 2) == 0)
    {
LABEL_47:
      if ((v10 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_239;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_47;
  }

  v48 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 38));
  v4 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 4) == 0)
  {
LABEL_48:
    if ((v10 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_240;
  }

LABEL_239:
  v49 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 39));
  v4 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 8) == 0)
  {
LABEL_49:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_241;
  }

LABEL_240:
  v50 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 40));
  v4 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x10) == 0)
  {
LABEL_50:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_242;
  }

LABEL_241:
  v51 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 41));
  v4 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x20) == 0)
  {
LABEL_51:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_243;
  }

LABEL_242:
  v52 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 42));
  v4 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x40) == 0)
  {
LABEL_52:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_243:
  v53 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 43));
  v4 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x80) != 0)
  {
LABEL_53:
    v11 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 44));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_54:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v10 & 0x100) != 0)
  {
    v54 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 45));
    v4 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x200) == 0)
    {
LABEL_57:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_247;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v55 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 46));
  v4 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x400) == 0)
  {
LABEL_58:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_248;
  }

LABEL_247:
  v56 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 47));
  v4 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x800) == 0)
  {
LABEL_59:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_249;
  }

LABEL_248:
  v57 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 48));
  v4 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x1000) == 0)
  {
LABEL_60:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_250;
  }

LABEL_249:
  v58 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 49));
  v4 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x2000) == 0)
  {
LABEL_61:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_251;
  }

LABEL_250:
  v59 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 50));
  v4 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x4000) == 0)
  {
LABEL_62:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_251:
  v60 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 51));
  v4 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x8000) != 0)
  {
LABEL_63:
    v12 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 52));
    v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_64:
  if ((v10 & 0xFF0000) == 0)
  {
    goto LABEL_74;
  }

  if ((v10 & 0x10000) != 0)
  {
    v61 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 53));
    v4 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x20000) == 0)
    {
LABEL_67:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_255;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v62 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 54));
  v4 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x40000) == 0)
  {
LABEL_68:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_256;
  }

LABEL_255:
  v63 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 55));
  v4 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x80000) == 0)
  {
LABEL_69:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_257;
  }

LABEL_256:
  v64 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 56));
  v4 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x100000) == 0)
  {
LABEL_70:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_258;
  }

LABEL_257:
  v65 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 57));
  v4 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x200000) == 0)
  {
LABEL_71:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_259;
  }

LABEL_258:
  v66 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 58));
  v4 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x400000) == 0)
  {
LABEL_72:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_259:
  v67 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 59));
  v4 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x800000) != 0)
  {
LABEL_73:
    v13 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 60));
    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_74:
  if (!HIBYTE(v10))
  {
    goto LABEL_85;
  }

  if ((v10 & 0x1000000) != 0)
  {
    v76 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 61));
    v4 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x2000000) == 0)
    {
LABEL_77:
      if ((v10 & 0x4000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_271;
    }
  }

  else if ((v10 & 0x2000000) == 0)
  {
    goto LABEL_77;
  }

  v77 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 62));
  v4 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x4000000) == 0)
  {
LABEL_78:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_272;
  }

LABEL_271:
  v78 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 63));
  v4 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x8000000) == 0)
  {
LABEL_79:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_273;
  }

LABEL_272:
  v79 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 64));
  v4 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x10000000) == 0)
  {
LABEL_80:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_274;
  }

LABEL_273:
  v80 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 65));
  v4 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x20000000) == 0)
  {
LABEL_81:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_274:
  v81 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 66));
  v4 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x40000000) != 0)
  {
LABEL_82:
    v14 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 67));
    v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_83:
  if (v10 < 0)
  {
    v4 += 2;
  }

LABEL_85:
  v15 = *(this + 6);
  if (*(this + 6))
  {
    a2.i32[0] = *(this + 6);
    v16 = vshlq_u32(vdupq_n_s32(v15), xmmword_2217F30D0);
    v16.i32[0] = vshlq_u32(a2, xmmword_2217F30C0).u32[0];
    v17.i64[0] = 0x200000002;
    v17.i64[1] = 0x200000002;
    v18 = vaddlvq_u32(vandq_s8(v16, v17)) + (v15 & 2) + v4 + ((v15 >> 4) & 2);
    if ((v15 & 0x40) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x80) != 0)
    {
      v4 = v18 + 3;
    }

    else
    {
      v4 = v18;
    }
  }

  if ((v15 & 0xFF00) != 0)
  {
    v19 = v4 + 3;
    if ((v15 & 0x100) == 0)
    {
      v19 = v4;
    }

    if ((v15 & 0x200) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x400) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x800) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x1000) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x2000) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x4000) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x8000) != 0)
    {
      v4 = v19 + 3;
    }

    else
    {
      v4 = v19;
    }
  }

  if ((v15 & 0xFF0000) != 0)
  {
    v20 = v4 + 3;
    if ((v15 & 0x10000) == 0)
    {
      v20 = v4;
    }

    if ((v15 & 0x20000) != 0)
    {
      v20 += 3;
    }

    if ((v15 & 0x40000) != 0)
    {
      v20 += 3;
    }

    if ((v15 & 0x80000) != 0)
    {
      v20 += 3;
    }

    if ((v15 & 0x100000) != 0)
    {
      v20 += 3;
    }

    if ((v15 & 0x200000) != 0)
    {
      v20 += 3;
    }

    if ((v15 & 0x400000) != 0)
    {
      v20 += 3;
    }

    if ((v15 & 0x800000) != 0)
    {
      v4 = v20 + 3;
    }

    else
    {
      v4 = v20;
    }
  }

  if (HIBYTE(*(this + 6)))
  {
    v21 = v4 + 3;
    if ((v15 & 0x1000000) == 0)
    {
      v21 = v4;
    }

    if ((v15 & 0x2000000) != 0)
    {
      v21 += 3;
    }

    if ((v15 & 0x4000000) != 0)
    {
      v21 += 3;
    }

    if ((v15 & 0x8000000) != 0)
    {
      v21 += 3;
    }

    if ((v15 & 0x10000000) != 0)
    {
      v21 += 3;
    }

    if ((v15 & 0x20000000) != 0)
    {
      v21 += 3;
    }

    if ((v15 & 0x40000000) != 0)
    {
      v21 += 3;
    }

    if ((v15 & 0x80000000) == 0)
    {
      v4 = v21;
    }

    else
    {
      v4 = v21 + 3;
    }
  }

  v22 = *(this + 7);
  if (v22)
  {
    v23 = v4 + 3;
    if ((v22 & 1) == 0)
    {
      v23 = v4;
    }

    if ((v22 & 2) != 0)
    {
      v23 += 3;
    }

    if ((v22 & 4) != 0)
    {
      v23 += 3;
    }

    if ((v22 & 8) != 0)
    {
      v23 += 3;
    }

    if ((v22 & 0x10) != 0)
    {
      v23 += 3;
    }

    if ((v22 & 0x20) != 0)
    {
      v23 += 3;
    }

    if ((v22 & 0x40) != 0)
    {
      v23 += 3;
    }

    if ((v22 & 0x80) != 0)
    {
      v4 = v23 + 3;
    }

    else
    {
      v4 = v23;
    }
  }

  if ((v22 & 0xFF00) != 0)
  {
    v24 = v4 + 3;
    if ((v22 & 0x100) == 0)
    {
      v24 = v4;
    }

    if ((v22 & 0x200) != 0)
    {
      v24 += 3;
    }

    if ((v22 & 0x400) != 0)
    {
      v24 += 3;
    }

    if ((v22 & 0x800) != 0)
    {
      v24 += 3;
    }

    if ((v22 & 0x1000) != 0)
    {
      v24 += 3;
    }

    if ((v22 & 0x2000) != 0)
    {
      v24 += 3;
    }

    if ((v22 & 0x4000) != 0)
    {
      v24 += 3;
    }

    if ((v22 & 0x8000) != 0)
    {
      v4 = v24 + 3;
    }

    else
    {
      v4 = v24;
    }
  }

  if ((v22 & 0xFF0000) != 0)
  {
    v25 = v4 + 3;
    if ((v22 & 0x10000) == 0)
    {
      v25 = v4;
    }

    if ((v22 & 0x20000) != 0)
    {
      v25 += 3;
    }

    if ((v22 & 0x40000) != 0)
    {
      v25 += 3;
    }

    if ((v22 & 0x80000) != 0)
    {
      v25 += 3;
    }

    if ((v22 & 0x100000) != 0)
    {
      v25 += 3;
    }

    if ((v22 & 0x200000) != 0)
    {
      v25 += 3;
    }

    if ((v22 & 0x400000) != 0)
    {
      v25 += 3;
    }

    if ((v22 & 0x800000) != 0)
    {
      v4 = v25 + 3;
    }

    else
    {
      v4 = v25;
    }
  }

  if ((v22 & 0x3F000000) != 0)
  {
    v26 = v4 + 3;
    if ((v22 & 0x1000000) == 0)
    {
      v26 = v4;
    }

    if ((v22 & 0x2000000) != 0)
    {
      v26 += 3;
    }

    if ((v22 & 0x4000000) != 0)
    {
      v26 += 3;
    }

    if ((v22 & 0x8000000) != 0)
    {
      v26 += 3;
    }

    if ((v22 & 0x10000000) != 0)
    {
      v26 += 3;
    }

    if ((v22 & 0x20000000) != 0)
    {
      v4 = v26 + 3;
    }

    else
    {
      v4 = v26;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 32);
  }

  else
  {
    *(this + 8) = v4;
    return v4;
  }
}

uint64_t TSTSOS::TableStylePropertyChangeSetArchive::MergeFrom(TSTSOS::TableStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSTSOS::TableStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSTSOS::TableStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSTSOS::TableStylePropertyChangeSetArchive *a2)
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
    goto LABEL_78;
  }

  v6 = MEMORY[0x277D80BF8];
  if (v5)
  {
    *(v3 + 16) |= 1u;
    v7 = *(v3 + 40);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA0410](v8);
      *(v3 + 40) = v7;
    }

    if (*(a2 + 5))
    {
      v9 = *(a2 + 5);
    }

    else
    {
      v9 = v6;
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v7, v9);
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
  v10 = *(v3 + 48);
  if (!v10)
  {
    v11 = *(v3 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0410](v11);
    *(v3 + 48) = v10;
  }

  if (*(a2 + 6))
  {
    v12 = *(a2 + 6);
  }

  else
  {
    v12 = v6;
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v10, v12);
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
  v13 = *(v3 + 56);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA03F0](v14);
    *(v3 + 56) = v13;
  }

  if (*(a2 + 7))
  {
    v15 = *(a2 + 7);
  }

  else
  {
    v15 = MEMORY[0x277D80530];
  }

  this = TSDSOS::SpecFillArchive::MergeFrom(v13, v15);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 64);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0410](v17);
      *(v3 + 64) = v16;
    }

    if (*(a2 + 8))
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = v6;
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v16, v18);
  }

LABEL_41:
  v19 = MEMORY[0x277D80540];
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_43;
    }

LABEL_54:
    *(v3 + 16) |= 0x20u;
    v23 = *(v3 + 80);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x223DA0400](v24);
      *(v3 + 80) = v23;
    }

    if (*(a2 + 10))
    {
      v25 = *(a2 + 10);
    }

    else
    {
      v25 = v19;
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v23, v25);
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
  v20 = *(v3 + 72);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x223DA0400](v21);
    *(v3 + 72) = v20;
  }

  if (*(a2 + 9))
  {
    v22 = *(a2 + 9);
  }

  else
  {
    v22 = v19;
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v20, v22);
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
  v26 = *(v3 + 88);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = MEMORY[0x223DA0400](v27);
    *(v3 + 88) = v26;
  }

  if (*(a2 + 11))
  {
    v28 = *(a2 + 11);
  }

  else
  {
    v28 = v19;
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v26, v28);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v29 = *(v3 + 96);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x223DA0400](v30);
      *(v3 + 96) = v29;
    }

    if (*(a2 + 12))
    {
      v31 = *(a2 + 12);
    }

    else
    {
      v31 = v19;
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v29, v31);
  }

LABEL_78:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v32 = *(v3 + 104);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x223DA0400](v33);
      *(v3 + 104) = v32;
    }

    if (*(a2 + 13))
    {
      v34 = *(a2 + 13);
    }

    else
    {
      v34 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v32, v34);
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
  v35 = *(v3 + 112);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x223DA0400](v36);
    *(v3 + 112) = v35;
  }

  if (*(a2 + 14))
  {
    v37 = *(a2 + 14);
  }

  else
  {
    v37 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v35, v37);
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
  v38 = *(v3 + 120);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x223DA0400](v39);
    *(v3 + 120) = v38;
  }

  if (*(a2 + 15))
  {
    v40 = *(a2 + 15);
  }

  else
  {
    v40 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v38, v40);
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
  v41 = *(v3 + 128);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x223DA0400](v42);
    *(v3 + 128) = v41;
  }

  if (*(a2 + 16))
  {
    v43 = *(a2 + 16);
  }

  else
  {
    v43 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v41, v43);
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
  v44 = *(v3 + 136);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x223DA0400](v45);
    *(v3 + 136) = v44;
  }

  if (*(a2 + 17))
  {
    v46 = *(a2 + 17);
  }

  else
  {
    v46 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v44, v46);
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
  v47 = *(v3 + 144);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x223DA0400](v48);
    *(v3 + 144) = v47;
  }

  if (*(a2 + 18))
  {
    v49 = *(a2 + 18);
  }

  else
  {
    v49 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v47, v49);
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
  v50 = *(v3 + 152);
  if (!v50)
  {
    v51 = *(v3 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x223DA0400](v51);
    *(v3 + 152) = v50;
  }

  if (*(a2 + 19))
  {
    v52 = *(a2 + 19);
  }

  else
  {
    v52 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v50, v52);
  if ((v5 & 0x8000) != 0)
  {
LABEL_144:
    *(v3 + 16) |= 0x8000u;
    v53 = *(v3 + 160);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x223DA0400](v54);
      *(v3 + 160) = v53;
    }

    if (*(a2 + 20))
    {
      v55 = *(a2 + 20);
    }

    else
    {
      v55 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v53, v55);
  }

LABEL_152:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_226;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v56 = *(v3 + 168);
    if (!v56)
    {
      v57 = *(v3 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = MEMORY[0x223DA0400](v57);
      *(v3 + 168) = v56;
    }

    if (*(a2 + 21))
    {
      v58 = *(a2 + 21);
    }

    else
    {
      v58 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v56, v58);
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
  v59 = *(v3 + 176);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x223DA0400](v60);
    *(v3 + 176) = v59;
  }

  if (*(a2 + 22))
  {
    v61 = *(a2 + 22);
  }

  else
  {
    v61 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v59, v61);
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
  v62 = *(v3 + 184);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x223DA0400](v63);
    *(v3 + 184) = v62;
  }

  if (*(a2 + 23))
  {
    v64 = *(a2 + 23);
  }

  else
  {
    v64 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v62, v64);
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
  v65 = *(v3 + 192);
  if (!v65)
  {
    v66 = *(v3 + 8);
    if (v66)
    {
      v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
    }

    v65 = MEMORY[0x223DA0400](v66);
    *(v3 + 192) = v65;
  }

  if (*(a2 + 24))
  {
    v67 = *(a2 + 24);
  }

  else
  {
    v67 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v65, v67);
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
  v68 = *(v3 + 200);
  if (!v68)
  {
    v69 = *(v3 + 8);
    if (v69)
    {
      v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
    }

    v68 = google::protobuf::Arena::CreateMaybeMessage<TSTSOS::SpecTableStrokePresetListArchive>(v69);
    *(v3 + 200) = v68;
  }

  if (*(a2 + 25))
  {
    v70 = *(a2 + 25);
  }

  else
  {
    v70 = &TSTSOS::_SpecTableStrokePresetListArchive_default_instance_;
  }

  this = TSTSOS::SpecTableStrokePresetListArchive::MergeFrom(v68, v70);
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
  v71 = *(v3 + 208);
  if (!v71)
  {
    v72 = *(v3 + 8);
    if (v72)
    {
      v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
    }

    v71 = MEMORY[0x223DA0410](v72);
    *(v3 + 208) = v71;
  }

  if (*(a2 + 26))
  {
    v73 = *(a2 + 26);
  }

  else
  {
    v73 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v71, v73);
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
  v74 = *(v3 + 216);
  if (!v74)
  {
    v75 = *(v3 + 8);
    if (v75)
    {
      v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
    }

    v74 = MEMORY[0x223DA0410](v75);
    *(v3 + 216) = v74;
  }

  if (*(a2 + 27))
  {
    v76 = *(a2 + 27);
  }

  else
  {
    v76 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v74, v76);
  if ((v5 & 0x800000) != 0)
  {
LABEL_218:
    *(v3 + 16) |= 0x800000u;
    v77 = *(v3 + 224);
    if (!v77)
    {
      v78 = *(v3 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x223DA0410](v78);
      *(v3 + 224) = v77;
    }

    if (*(a2 + 28))
    {
      v79 = *(a2 + 28);
    }

    else
    {
      v79 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v77, v79);
  }

LABEL_226:
  if (!HIBYTE(v5))
  {
    goto LABEL_300;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v80 = *(v3 + 232);
    if (!v80)
    {
      v81 = *(v3 + 8);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = MEMORY[0x223DA0410](v81);
      *(v3 + 232) = v80;
    }

    if (*(a2 + 29))
    {
      v82 = *(a2 + 29);
    }

    else
    {
      v82 = MEMORY[0x277D80BF8];
    }

    this = TSSSOS::SpecBoolArchive::MergeFrom(v80, v82);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_229:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_230;
      }

      goto LABEL_252;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_229;
  }

  *(v3 + 16) |= 0x2000000u;
  v83 = *(v3 + 240);
  if (!v83)
  {
    v84 = *(v3 + 8);
    if (v84)
    {
      v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
    }

    v83 = MEMORY[0x223DA0410](v84);
    *(v3 + 240) = v83;
  }

  if (*(a2 + 30))
  {
    v85 = *(a2 + 30);
  }

  else
  {
    v85 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v83, v85);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_260;
  }

LABEL_252:
  *(v3 + 16) |= 0x4000000u;
  v86 = *(v3 + 248);
  if (!v86)
  {
    v87 = *(v3 + 8);
    if (v87)
    {
      v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
    }

    v86 = MEMORY[0x223DA0410](v87);
    *(v3 + 248) = v86;
  }

  if (*(a2 + 31))
  {
    v88 = *(a2 + 31);
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

    goto LABEL_268;
  }

LABEL_260:
  *(v3 + 16) |= 0x8000000u;
  v89 = *(v3 + 256);
  if (!v89)
  {
    v90 = *(v3 + 8);
    if (v90)
    {
      v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
    }

    v89 = MEMORY[0x223DA0410](v90);
    *(v3 + 256) = v89;
  }

  if (*(a2 + 32))
  {
    v91 = *(a2 + 32);
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

    goto LABEL_276;
  }

LABEL_268:
  *(v3 + 16) |= 0x10000000u;
  v92 = *(v3 + 264);
  if (!v92)
  {
    v93 = *(v3 + 8);
    if (v93)
    {
      v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
    }

    v92 = MEMORY[0x223DA0410](v93);
    *(v3 + 264) = v92;
  }

  if (*(a2 + 33))
  {
    v94 = *(a2 + 33);
  }

  else
  {
    v94 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v92, v94);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_233:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_284;
  }

LABEL_276:
  *(v3 + 16) |= 0x20000000u;
  v95 = *(v3 + 272);
  if (!v95)
  {
    v96 = *(v3 + 8);
    if (v96)
    {
      v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
    }

    v95 = MEMORY[0x223DA0410](v96);
    *(v3 + 272) = v95;
  }

  if (*(a2 + 34))
  {
    v97 = *(a2 + 34);
  }

  else
  {
    v97 = MEMORY[0x277D80BF8];
  }

  this = TSSSOS::SpecBoolArchive::MergeFrom(v95, v97);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_234:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_292;
  }

LABEL_284:
  *(v3 + 16) |= 0x40000000u;
  v98 = *(v3 + 280);
  if (!v98)
  {
    v99 = *(v3 + 8);
    if (v99)
    {
      v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
    }

    v98 = MEMORY[0x223DA0420](v99);
    *(v3 + 280) = v98;
  }

  if (*(a2 + 35))
  {
    v100 = *(a2 + 35);
  }

  else
  {
    v100 = MEMORY[0x277D80C10];
  }

  this = TSSSOS::SpecStringArchive::MergeFrom(v98, v100);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_292:
    *(v3 + 16) |= 0x80000000;
    v101 = *(v3 + 288);
    if (!v101)
    {
      v102 = *(v3 + 8);
      if (v102)
      {
        v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
      }

      v101 = MEMORY[0x223DA0430](v102);
      *(v3 + 288) = v101;
    }

    if (*(a2 + 36))
    {
      v103 = *(a2 + 36);
    }

    else
    {
      v103 = MEMORY[0x277D80C18];
    }

    this = TSSSOS::SpecIntegerArchive::MergeFrom(v101, v103);
  }

LABEL_300:
  v104 = *(a2 + 5);
  if (!v104)
  {
    goto LABEL_374;
  }

  if (v104)
  {
    *(v3 + 20) |= 1u;
    v105 = *(v3 + 296);
    if (!v105)
    {
      v106 = *(v3 + 8);
      if (v106)
      {
        v106 = *(v106 & 0xFFFFFFFFFFFFFFFELL);
      }

      v105 = MEMORY[0x223DA0400](v106);
      *(v3 + 296) = v105;
    }

    if (*(a2 + 37))
    {
      v107 = *(a2 + 37);
    }

    else
    {
      v107 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v105, v107);
    if ((v104 & 2) == 0)
    {
LABEL_303:
      if ((v104 & 4) == 0)
      {
        goto LABEL_304;
      }

      goto LABEL_326;
    }
  }

  else if ((v104 & 2) == 0)
  {
    goto LABEL_303;
  }

  *(v3 + 20) |= 2u;
  v108 = *(v3 + 304);
  if (!v108)
  {
    v109 = *(v3 + 8);
    if (v109)
    {
      v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
    }

    v108 = MEMORY[0x223DA0400](v109);
    *(v3 + 304) = v108;
  }

  if (*(a2 + 38))
  {
    v110 = *(a2 + 38);
  }

  else
  {
    v110 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v108, v110);
  if ((v104 & 4) == 0)
  {
LABEL_304:
    if ((v104 & 8) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_334;
  }

LABEL_326:
  *(v3 + 20) |= 4u;
  v111 = *(v3 + 312);
  if (!v111)
  {
    v112 = *(v3 + 8);
    if (v112)
    {
      v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
    }

    v111 = MEMORY[0x223DA0400](v112);
    *(v3 + 312) = v111;
  }

  if (*(a2 + 39))
  {
    v113 = *(a2 + 39);
  }

  else
  {
    v113 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v111, v113);
  if ((v104 & 8) == 0)
  {
LABEL_305:
    if ((v104 & 0x10) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_342;
  }

LABEL_334:
  *(v3 + 20) |= 8u;
  v114 = *(v3 + 320);
  if (!v114)
  {
    v115 = *(v3 + 8);
    if (v115)
    {
      v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
    }

    v114 = MEMORY[0x223DA0400](v115);
    *(v3 + 320) = v114;
  }

  if (*(a2 + 40))
  {
    v116 = *(a2 + 40);
  }

  else
  {
    v116 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v114, v116);
  if ((v104 & 0x10) == 0)
  {
LABEL_306:
    if ((v104 & 0x20) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_350;
  }

LABEL_342:
  *(v3 + 20) |= 0x10u;
  v117 = *(v3 + 328);
  if (!v117)
  {
    v118 = *(v3 + 8);
    if (v118)
    {
      v118 = *(v118 & 0xFFFFFFFFFFFFFFFELL);
    }

    v117 = MEMORY[0x223DA0400](v118);
    *(v3 + 328) = v117;
  }

  if (*(a2 + 41))
  {
    v119 = *(a2 + 41);
  }

  else
  {
    v119 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v117, v119);
  if ((v104 & 0x20) == 0)
  {
LABEL_307:
    if ((v104 & 0x40) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_358;
  }

LABEL_350:
  *(v3 + 20) |= 0x20u;
  v120 = *(v3 + 336);
  if (!v120)
  {
    v121 = *(v3 + 8);
    if (v121)
    {
      v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
    }

    v120 = MEMORY[0x223DA0400](v121);
    *(v3 + 336) = v120;
  }

  if (*(a2 + 42))
  {
    v122 = *(a2 + 42);
  }

  else
  {
    v122 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v120, v122);
  if ((v104 & 0x40) == 0)
  {
LABEL_308:
    if ((v104 & 0x80) == 0)
    {
      goto LABEL_374;
    }

    goto LABEL_366;
  }

LABEL_358:
  *(v3 + 20) |= 0x40u;
  v123 = *(v3 + 344);
  if (!v123)
  {
    v124 = *(v3 + 8);
    if (v124)
    {
      v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
    }

    v123 = MEMORY[0x223DA0400](v124);
    *(v3 + 344) = v123;
  }

  if (*(a2 + 43))
  {
    v125 = *(a2 + 43);
  }

  else
  {
    v125 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v123, v125);
  if ((v104 & 0x80) != 0)
  {
LABEL_366:
    *(v3 + 20) |= 0x80u;
    v126 = *(v3 + 352);
    if (!v126)
    {
      v127 = *(v3 + 8);
      if (v127)
      {
        v127 = *(v127 & 0xFFFFFFFFFFFFFFFELL);
      }

      v126 = MEMORY[0x223DA0400](v127);
      *(v3 + 352) = v126;
    }

    if (*(a2 + 44))
    {
      v128 = *(a2 + 44);
    }

    else
    {
      v128 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v126, v128);
  }

LABEL_374:
  if ((v104 & 0xFF00) == 0)
  {
    goto LABEL_448;
  }

  if ((v104 & 0x100) != 0)
  {
    *(v3 + 20) |= 0x100u;
    v129 = *(v3 + 360);
    if (!v129)
    {
      v130 = *(v3 + 8);
      if (v130)
      {
        v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
      }

      v129 = MEMORY[0x223DA0400](v130);
      *(v3 + 360) = v129;
    }

    if (*(a2 + 45))
    {
      v131 = *(a2 + 45);
    }

    else
    {
      v131 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v129, v131);
    if ((v104 & 0x200) == 0)
    {
LABEL_377:
      if ((v104 & 0x400) == 0)
      {
        goto LABEL_378;
      }

      goto LABEL_400;
    }
  }

  else if ((v104 & 0x200) == 0)
  {
    goto LABEL_377;
  }

  *(v3 + 20) |= 0x200u;
  v132 = *(v3 + 368);
  if (!v132)
  {
    v133 = *(v3 + 8);
    if (v133)
    {
      v133 = *(v133 & 0xFFFFFFFFFFFFFFFELL);
    }

    v132 = MEMORY[0x223DA0400](v133);
    *(v3 + 368) = v132;
  }

  if (*(a2 + 46))
  {
    v134 = *(a2 + 46);
  }

  else
  {
    v134 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v132, v134);
  if ((v104 & 0x400) == 0)
  {
LABEL_378:
    if ((v104 & 0x800) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_408;
  }

LABEL_400:
  *(v3 + 20) |= 0x400u;
  v135 = *(v3 + 376);
  if (!v135)
  {
    v136 = *(v3 + 8);
    if (v136)
    {
      v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
    }

    v135 = MEMORY[0x223DA0400](v136);
    *(v3 + 376) = v135;
  }

  if (*(a2 + 47))
  {
    v137 = *(a2 + 47);
  }

  else
  {
    v137 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v135, v137);
  if ((v104 & 0x800) == 0)
  {
LABEL_379:
    if ((v104 & 0x1000) == 0)
    {
      goto LABEL_380;
    }

    goto LABEL_416;
  }

LABEL_408:
  *(v3 + 20) |= 0x800u;
  v138 = *(v3 + 384);
  if (!v138)
  {
    v139 = *(v3 + 8);
    if (v139)
    {
      v139 = *(v139 & 0xFFFFFFFFFFFFFFFELL);
    }

    v138 = MEMORY[0x223DA0400](v139);
    *(v3 + 384) = v138;
  }

  if (*(a2 + 48))
  {
    v140 = *(a2 + 48);
  }

  else
  {
    v140 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v138, v140);
  if ((v104 & 0x1000) == 0)
  {
LABEL_380:
    if ((v104 & 0x2000) == 0)
    {
      goto LABEL_381;
    }

    goto LABEL_424;
  }

LABEL_416:
  *(v3 + 20) |= 0x1000u;
  v141 = *(v3 + 392);
  if (!v141)
  {
    v142 = *(v3 + 8);
    if (v142)
    {
      v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
    }

    v141 = MEMORY[0x223DA0400](v142);
    *(v3 + 392) = v141;
  }

  if (*(a2 + 49))
  {
    v143 = *(a2 + 49);
  }

  else
  {
    v143 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v141, v143);
  if ((v104 & 0x2000) == 0)
  {
LABEL_381:
    if ((v104 & 0x4000) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_432;
  }

LABEL_424:
  *(v3 + 20) |= 0x2000u;
  v144 = *(v3 + 400);
  if (!v144)
  {
    v145 = *(v3 + 8);
    if (v145)
    {
      v145 = *(v145 & 0xFFFFFFFFFFFFFFFELL);
    }

    v144 = MEMORY[0x223DA0400](v145);
    *(v3 + 400) = v144;
  }

  if (*(a2 + 50))
  {
    v146 = *(a2 + 50);
  }

  else
  {
    v146 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v144, v146);
  if ((v104 & 0x4000) == 0)
  {
LABEL_382:
    if ((v104 & 0x8000) == 0)
    {
      goto LABEL_448;
    }

    goto LABEL_440;
  }

LABEL_432:
  *(v3 + 20) |= 0x4000u;
  v147 = *(v3 + 408);
  if (!v147)
  {
    v148 = *(v3 + 8);
    if (v148)
    {
      v148 = *(v148 & 0xFFFFFFFFFFFFFFFELL);
    }

    v147 = MEMORY[0x223DA0400](v148);
    *(v3 + 408) = v147;
  }

  if (*(a2 + 51))
  {
    v149 = *(a2 + 51);
  }

  else
  {
    v149 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v147, v149);
  if ((v104 & 0x8000) != 0)
  {
LABEL_440:
    *(v3 + 20) |= 0x8000u;
    v150 = *(v3 + 416);
    if (!v150)
    {
      v151 = *(v3 + 8);
      if (v151)
      {
        v151 = *(v151 & 0xFFFFFFFFFFFFFFFELL);
      }

      v150 = MEMORY[0x223DA0400](v151);
      *(v3 + 416) = v150;
    }

    if (*(a2 + 52))
    {
      v152 = *(a2 + 52);
    }

    else
    {
      v152 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v150, v152);
  }

LABEL_448:
  if ((v104 & 0xFF0000) == 0)
  {
    goto LABEL_522;
  }

  if ((v104 & 0x10000) != 0)
  {
    *(v3 + 20) |= 0x10000u;
    v153 = *(v3 + 424);
    if (!v153)
    {
      v154 = *(v3 + 8);
      if (v154)
      {
        v154 = *(v154 & 0xFFFFFFFFFFFFFFFELL);
      }

      v153 = MEMORY[0x223DA0400](v154);
      *(v3 + 424) = v153;
    }

    if (*(a2 + 53))
    {
      v155 = *(a2 + 53);
    }

    else
    {
      v155 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v153, v155);
    if ((v104 & 0x20000) == 0)
    {
LABEL_451:
      if ((v104 & 0x40000) == 0)
      {
        goto LABEL_452;
      }

      goto LABEL_474;
    }
  }

  else if ((v104 & 0x20000) == 0)
  {
    goto LABEL_451;
  }

  *(v3 + 20) |= 0x20000u;
  v156 = *(v3 + 432);
  if (!v156)
  {
    v157 = *(v3 + 8);
    if (v157)
    {
      v157 = *(v157 & 0xFFFFFFFFFFFFFFFELL);
    }

    v156 = MEMORY[0x223DA0400](v157);
    *(v3 + 432) = v156;
  }

  if (*(a2 + 54))
  {
    v158 = *(a2 + 54);
  }

  else
  {
    v158 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v156, v158);
  if ((v104 & 0x40000) == 0)
  {
LABEL_452:
    if ((v104 & 0x80000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_482;
  }

LABEL_474:
  *(v3 + 20) |= 0x40000u;
  v159 = *(v3 + 440);
  if (!v159)
  {
    v160 = *(v3 + 8);
    if (v160)
    {
      v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
    }

    v159 = MEMORY[0x223DA0400](v160);
    *(v3 + 440) = v159;
  }

  if (*(a2 + 55))
  {
    v161 = *(a2 + 55);
  }

  else
  {
    v161 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v159, v161);
  if ((v104 & 0x80000) == 0)
  {
LABEL_453:
    if ((v104 & 0x100000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_490;
  }

LABEL_482:
  *(v3 + 20) |= 0x80000u;
  v162 = *(v3 + 448);
  if (!v162)
  {
    v163 = *(v3 + 8);
    if (v163)
    {
      v163 = *(v163 & 0xFFFFFFFFFFFFFFFELL);
    }

    v162 = MEMORY[0x223DA0400](v163);
    *(v3 + 448) = v162;
  }

  if (*(a2 + 56))
  {
    v164 = *(a2 + 56);
  }

  else
  {
    v164 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v162, v164);
  if ((v104 & 0x100000) == 0)
  {
LABEL_454:
    if ((v104 & 0x200000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_498;
  }

LABEL_490:
  *(v3 + 20) |= 0x100000u;
  v165 = *(v3 + 456);
  if (!v165)
  {
    v166 = *(v3 + 8);
    if (v166)
    {
      v166 = *(v166 & 0xFFFFFFFFFFFFFFFELL);
    }

    v165 = MEMORY[0x223DA0400](v166);
    *(v3 + 456) = v165;
  }

  if (*(a2 + 57))
  {
    v167 = *(a2 + 57);
  }

  else
  {
    v167 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v165, v167);
  if ((v104 & 0x200000) == 0)
  {
LABEL_455:
    if ((v104 & 0x400000) == 0)
    {
      goto LABEL_456;
    }

    goto LABEL_506;
  }

LABEL_498:
  *(v3 + 20) |= 0x200000u;
  v168 = *(v3 + 464);
  if (!v168)
  {
    v169 = *(v3 + 8);
    if (v169)
    {
      v169 = *(v169 & 0xFFFFFFFFFFFFFFFELL);
    }

    v168 = MEMORY[0x223DA0400](v169);
    *(v3 + 464) = v168;
  }

  if (*(a2 + 58))
  {
    v170 = *(a2 + 58);
  }

  else
  {
    v170 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v168, v170);
  if ((v104 & 0x400000) == 0)
  {
LABEL_456:
    if ((v104 & 0x800000) == 0)
    {
      goto LABEL_522;
    }

    goto LABEL_514;
  }

LABEL_506:
  *(v3 + 20) |= 0x400000u;
  v171 = *(v3 + 472);
  if (!v171)
  {
    v172 = *(v3 + 8);
    if (v172)
    {
      v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
    }

    v171 = MEMORY[0x223DA0400](v172);
    *(v3 + 472) = v171;
  }

  if (*(a2 + 59))
  {
    v173 = *(a2 + 59);
  }

  else
  {
    v173 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v171, v173);
  if ((v104 & 0x800000) != 0)
  {
LABEL_514:
    *(v3 + 20) |= 0x800000u;
    v174 = *(v3 + 480);
    if (!v174)
    {
      v175 = *(v3 + 8);
      if (v175)
      {
        v175 = *(v175 & 0xFFFFFFFFFFFFFFFELL);
      }

      v174 = MEMORY[0x223DA0400](v175);
      *(v3 + 480) = v174;
    }

    if (*(a2 + 60))
    {
      v176 = *(a2 + 60);
    }

    else
    {
      v176 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v174, v176);
  }

LABEL_522:
  if (!HIBYTE(v104))
  {
    goto LABEL_532;
  }

  if ((v104 & 0x1000000) != 0)
  {
    *(v3 + 20) |= 0x1000000u;
    v179 = *(v3 + 488);
    if (!v179)
    {
      v180 = *(v3 + 8);
      if (v180)
      {
        v180 = *(v180 & 0xFFFFFFFFFFFFFFFELL);
      }

      v179 = MEMORY[0x223DA0400](v180);
      *(v3 + 488) = v179;
    }

    if (*(a2 + 61))
    {
      v181 = *(a2 + 61);
    }

    else
    {
      v181 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v179, v181);
    if ((v104 & 0x2000000) == 0)
    {
LABEL_525:
      if ((v104 & 0x4000000) == 0)
      {
        goto LABEL_526;
      }

      goto LABEL_688;
    }
  }

  else if ((v104 & 0x2000000) == 0)
  {
    goto LABEL_525;
  }

  *(v3 + 20) |= 0x2000000u;
  v182 = *(v3 + 496);
  if (!v182)
  {
    v183 = *(v3 + 8);
    if (v183)
    {
      v183 = *(v183 & 0xFFFFFFFFFFFFFFFELL);
    }

    v182 = MEMORY[0x223DA0400](v183);
    *(v3 + 496) = v182;
  }

  if (*(a2 + 62))
  {
    v184 = *(a2 + 62);
  }

  else
  {
    v184 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v182, v184);
  if ((v104 & 0x4000000) == 0)
  {
LABEL_526:
    if ((v104 & 0x8000000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_696;
  }

LABEL_688:
  *(v3 + 20) |= 0x4000000u;
  v185 = *(v3 + 504);
  if (!v185)
  {
    v186 = *(v3 + 8);
    if (v186)
    {
      v186 = *(v186 & 0xFFFFFFFFFFFFFFFELL);
    }

    v185 = MEMORY[0x223DA0400](v186);
    *(v3 + 504) = v185;
  }

  if (*(a2 + 63))
  {
    v187 = *(a2 + 63);
  }

  else
  {
    v187 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v185, v187);
  if ((v104 & 0x8000000) == 0)
  {
LABEL_527:
    if ((v104 & 0x10000000) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_704;
  }

LABEL_696:
  *(v3 + 20) |= 0x8000000u;
  v188 = *(v3 + 512);
  if (!v188)
  {
    v189 = *(v3 + 8);
    if (v189)
    {
      v189 = *(v189 & 0xFFFFFFFFFFFFFFFELL);
    }

    v188 = MEMORY[0x223DA0400](v189);
    *(v3 + 512) = v188;
  }

  if (*(a2 + 64))
  {
    v190 = *(a2 + 64);
  }

  else
  {
    v190 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v188, v190);
  if ((v104 & 0x10000000) == 0)
  {
LABEL_528:
    if ((v104 & 0x20000000) == 0)
    {
      goto LABEL_529;
    }

    goto LABEL_712;
  }

LABEL_704:
  *(v3 + 20) |= 0x10000000u;
  v191 = *(v3 + 520);
  if (!v191)
  {
    v192 = *(v3 + 8);
    if (v192)
    {
      v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
    }

    v191 = MEMORY[0x223DA0400](v192);
    *(v3 + 520) = v191;
  }

  if (*(a2 + 65))
  {
    v193 = *(a2 + 65);
  }

  else
  {
    v193 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v191, v193);
  if ((v104 & 0x20000000) == 0)
  {
LABEL_529:
    if ((v104 & 0x40000000) == 0)
    {
      goto LABEL_530;
    }

LABEL_720:
    *(v3 + 20) |= 0x40000000u;
    v197 = *(v3 + 536);
    if (!v197)
    {
      v198 = *(v3 + 8);
      if (v198)
      {
        v198 = *(v198 & 0xFFFFFFFFFFFFFFFELL);
      }

      v197 = MEMORY[0x223DA0400](v198);
      *(v3 + 536) = v197;
    }

    if (*(a2 + 67))
    {
      v199 = *(a2 + 67);
    }

    else
    {
      v199 = MEMORY[0x277D80540];
    }

    this = TSDSOS::SpecStrokeArchive::MergeFrom(v197, v199);
    if ((v104 & 0x80000000) == 0)
    {
      goto LABEL_531;
    }

    goto LABEL_728;
  }

LABEL_712:
  *(v3 + 20) |= 0x20000000u;
  v194 = *(v3 + 528);
  if (!v194)
  {
    v195 = *(v3 + 8);
    if (v195)
    {
      v195 = *(v195 & 0xFFFFFFFFFFFFFFFELL);
    }

    v194 = MEMORY[0x223DA0400](v195);
    *(v3 + 528) = v194;
  }

  if (*(a2 + 66))
  {
    v196 = *(a2 + 66);
  }

  else
  {
    v196 = MEMORY[0x277D80540];
  }

  this = TSDSOS::SpecStrokeArchive::MergeFrom(v194, v196);
  if ((v104 & 0x40000000) != 0)
  {
    goto LABEL_720;
  }

LABEL_530:
  if ((v104 & 0x80000000) != 0)
  {
LABEL_728:
    *(v3 + 544) = *(a2 + 544);
  }

LABEL_531:
  *(v3 + 20) |= v104;
LABEL_532:
  v177 = *(a2 + 6);
  if (!v177)
  {
    goto LABEL_543;
  }

  if (v177)
  {
    *(v3 + 545) = *(a2 + 545);
    if ((v177 & 2) == 0)
    {
LABEL_535:
      if ((v177 & 4) == 0)
      {
        goto LABEL_536;
      }

      goto LABEL_620;
    }
  }

  else if ((v177 & 2) == 0)
  {
    goto LABEL_535;
  }

  *(v3 + 546) = *(a2 + 546);
  if ((v177 & 4) == 0)
  {
LABEL_536:
    if ((v177 & 8) == 0)
    {
      goto LABEL_537;
    }

    goto LABEL_621;
  }

LABEL_620:
  *(v3 + 547) = *(a2 + 547);
  if ((v177 & 8) == 0)
  {
LABEL_537:
    if ((v177 & 0x10) == 0)
    {
      goto LABEL_538;
    }

    goto LABEL_622;
  }

LABEL_621:
  *(v3 + 548) = *(a2 + 548);
  if ((v177 & 0x10) == 0)
  {
LABEL_538:
    if ((v177 & 0x20) == 0)
    {
      goto LABEL_539;
    }

    goto LABEL_623;
  }

LABEL_622:
  *(v3 + 549) = *(a2 + 549);
  if ((v177 & 0x20) == 0)
  {
LABEL_539:
    if ((v177 & 0x40) == 0)
    {
      goto LABEL_540;
    }

LABEL_624:
    *(v3 + 551) = *(a2 + 551);
    if ((v177 & 0x80) == 0)
    {
      goto LABEL_542;
    }

    goto LABEL_541;
  }

LABEL_623:
  *(v3 + 550) = *(a2 + 550);
  if ((v177 & 0x40) != 0)
  {
    goto LABEL_624;
  }

LABEL_540:
  if ((v177 & 0x80) != 0)
  {
LABEL_541:
    *(v3 + 552) = *(a2 + 552);
  }

LABEL_542:
  *(v3 + 24) |= v177;
LABEL_543:
  if ((v177 & 0xFF00) == 0)
  {
    goto LABEL_554;
  }

  if ((v177 & 0x100) != 0)
  {
    *(v3 + 553) = *(a2 + 553);
    if ((v177 & 0x200) == 0)
    {
LABEL_546:
      if ((v177 & 0x400) == 0)
      {
        goto LABEL_547;
      }

      goto LABEL_628;
    }
  }

  else if ((v177 & 0x200) == 0)
  {
    goto LABEL_546;
  }

  *(v3 + 554) = *(a2 + 554);
  if ((v177 & 0x400) == 0)
  {
LABEL_547:
    if ((v177 & 0x800) == 0)
    {
      goto LABEL_548;
    }

    goto LABEL_629;
  }

LABEL_628:
  *(v3 + 555) = *(a2 + 555);
  if ((v177 & 0x800) == 0)
  {
LABEL_548:
    if ((v177 & 0x1000) == 0)
    {
      goto LABEL_549;
    }

    goto LABEL_630;
  }

LABEL_629:
  *(v3 + 556) = *(a2 + 556);
  if ((v177 & 0x1000) == 0)
  {
LABEL_549:
    if ((v177 & 0x2000) == 0)
    {
      goto LABEL_550;
    }

    goto LABEL_631;
  }

LABEL_630:
  *(v3 + 557) = *(a2 + 557);
  if ((v177 & 0x2000) == 0)
  {
LABEL_550:
    if ((v177 & 0x4000) == 0)
    {
      goto LABEL_551;
    }

LABEL_632:
    *(v3 + 559) = *(a2 + 559);
    if ((v177 & 0x8000) == 0)
    {
      goto LABEL_553;
    }

    goto LABEL_552;
  }

LABEL_631:
  *(v3 + 558) = *(a2 + 558);
  if ((v177 & 0x4000) != 0)
  {
    goto LABEL_632;
  }

LABEL_551:
  if ((v177 & 0x8000) != 0)
  {
LABEL_552:
    *(v3 + 560) = *(a2 + 560);
  }

LABEL_553:
  *(v3 + 24) |= v177;
LABEL_554:
  if ((v177 & 0xFF0000) == 0)
  {
    goto LABEL_565;
  }

  if ((v177 & 0x10000) != 0)
  {
    *(v3 + 561) = *(a2 + 561);
    if ((v177 & 0x20000) == 0)
    {
LABEL_557:
      if ((v177 & 0x40000) == 0)
      {
        goto LABEL_558;
      }

      goto LABEL_636;
    }
  }

  else if ((v177 & 0x20000) == 0)
  {
    goto LABEL_557;
  }

  *(v3 + 562) = *(a2 + 562);
  if ((v177 & 0x40000) == 0)
  {
LABEL_558:
    if ((v177 & 0x80000) == 0)
    {
      goto LABEL_559;
    }

    goto LABEL_637;
  }

LABEL_636:
  *(v3 + 563) = *(a2 + 563);
  if ((v177 & 0x80000) == 0)
  {
LABEL_559:
    if ((v177 & 0x100000) == 0)
    {
      goto LABEL_560;
    }

    goto LABEL_638;
  }

LABEL_637:
  *(v3 + 564) = *(a2 + 564);
  if ((v177 & 0x100000) == 0)
  {
LABEL_560:
    if ((v177 & 0x200000) == 0)
    {
      goto LABEL_561;
    }

    goto LABEL_639;
  }

LABEL_638:
  *(v3 + 565) = *(a2 + 565);
  if ((v177 & 0x200000) == 0)
  {
LABEL_561:
    if ((v177 & 0x400000) == 0)
    {
      goto LABEL_562;
    }

LABEL_640:
    *(v3 + 567) = *(a2 + 567);
    if ((v177 & 0x800000) == 0)
    {
      goto LABEL_564;
    }

    goto LABEL_563;
  }

LABEL_639:
  *(v3 + 566) = *(a2 + 566);
  if ((v177 & 0x400000) != 0)
  {
    goto LABEL_640;
  }

LABEL_562:
  if ((v177 & 0x800000) != 0)
  {
LABEL_563:
    *(v3 + 568) = *(a2 + 568);
  }

LABEL_564:
  *(v3 + 24) |= v177;
LABEL_565:
  if (!HIBYTE(v177))
  {
    goto LABEL_575;
  }

  if ((v177 & 0x1000000) != 0)
  {
    *(v3 + 569) = *(a2 + 569);
    if ((v177 & 0x2000000) == 0)
    {
LABEL_568:
      if ((v177 & 0x4000000) == 0)
      {
        goto LABEL_569;
      }

      goto LABEL_731;
    }
  }

  else if ((v177 & 0x2000000) == 0)
  {
    goto LABEL_568;
  }

  *(v3 + 570) = *(a2 + 570);
  if ((v177 & 0x4000000) == 0)
  {
LABEL_569:
    if ((v177 & 0x8000000) == 0)
    {
      goto LABEL_570;
    }

    goto LABEL_732;
  }

LABEL_731:
  *(v3 + 571) = *(a2 + 571);
  if ((v177 & 0x8000000) == 0)
  {
LABEL_570:
    if ((v177 & 0x10000000) == 0)
    {
      goto LABEL_571;
    }

    goto LABEL_733;
  }

LABEL_732:
  *(v3 + 572) = *(a2 + 572);
  if ((v177 & 0x10000000) == 0)
  {
LABEL_571:
    if ((v177 & 0x20000000) == 0)
    {
      goto LABEL_572;
    }

    goto LABEL_734;
  }

LABEL_733:
  *(v3 + 573) = *(a2 + 573);
  if ((v177 & 0x20000000) == 0)
  {
LABEL_572:
    if ((v177 & 0x40000000) == 0)
    {
      goto LABEL_573;
    }

LABEL_735:
    *(v3 + 575) = *(a2 + 575);
    if ((v177 & 0x80000000) == 0)
    {
      goto LABEL_574;
    }

LABEL_736:
    *(v3 + 576) = *(a2 + 576);
    goto LABEL_574;
  }

LABEL_734:
  *(v3 + 574) = *(a2 + 574);
  if ((v177 & 0x40000000) != 0)
  {
    goto LABEL_735;
  }

LABEL_573:
  if ((v177 & 0x80000000) != 0)
  {
    goto LABEL_736;
  }

LABEL_574:
  *(v3 + 24) |= v177;
LABEL_575:
  v178 = *(a2 + 7);
  if (!v178)
  {
    goto LABEL_586;
  }

  if (v178)
  {
    *(v3 + 577) = *(a2 + 577);
    if ((v178 & 2) == 0)
    {
LABEL_578:
      if ((v178 & 4) == 0)
      {
        goto LABEL_579;
      }

      goto LABEL_644;
    }
  }

  else if ((v178 & 2) == 0)
  {
    goto LABEL_578;
  }

  *(v3 + 578) = *(a2 + 578);
  if ((v178 & 4) == 0)
  {
LABEL_579:
    if ((v178 & 8) == 0)
    {
      goto LABEL_580;
    }

    goto LABEL_645;
  }

LABEL_644:
  *(v3 + 579) = *(a2 + 579);
  if ((v178 & 8) == 0)
  {
LABEL_580:
    if ((v178 & 0x10) == 0)
    {
      goto LABEL_581;
    }

    goto LABEL_646;
  }

LABEL_645:
  *(v3 + 580) = *(a2 + 580);
  if ((v178 & 0x10) == 0)
  {
LABEL_581:
    if ((v178 & 0x20) == 0)
    {
      goto LABEL_582;
    }

    goto LABEL_647;
  }

LABEL_646:
  *(v3 + 581) = *(a2 + 581);
  if ((v178 & 0x20) == 0)
  {
LABEL_582:
    if ((v178 & 0x40) == 0)
    {
      goto LABEL_583;
    }

LABEL_648:
    *(v3 + 583) = *(a2 + 583);
    if ((v178 & 0x80) == 0)
    {
      goto LABEL_585;
    }

    goto LABEL_584;
  }

LABEL_647:
  *(v3 + 582) = *(a2 + 582);
  if ((v178 & 0x40) != 0)
  {
    goto LABEL_648;
  }

LABEL_583:
  if ((v178 & 0x80) != 0)
  {
LABEL_584:
    *(v3 + 584) = *(a2 + 584);
  }

LABEL_585:
  *(v3 + 28) |= v178;
LABEL_586:
  if ((v178 & 0xFF00) == 0)
  {
    goto LABEL_597;
  }

  if ((v178 & 0x100) != 0)
  {
    *(v3 + 585) = *(a2 + 585);
    if ((v178 & 0x200) == 0)
    {
LABEL_589:
      if ((v178 & 0x400) == 0)
      {
        goto LABEL_590;
      }

      goto LABEL_652;
    }
  }

  else if ((v178 & 0x200) == 0)
  {
    goto LABEL_589;
  }

  *(v3 + 586) = *(a2 + 586);
  if ((v178 & 0x400) == 0)
  {
LABEL_590:
    if ((v178 & 0x800) == 0)
    {
      goto LABEL_591;
    }

    goto LABEL_653;
  }

LABEL_652:
  *(v3 + 587) = *(a2 + 587);
  if ((v178 & 0x800) == 0)
  {
LABEL_591:
    if ((v178 & 0x1000) == 0)
    {
      goto LABEL_592;
    }

    goto LABEL_654;
  }

LABEL_653:
  *(v3 + 588) = *(a2 + 588);
  if ((v178 & 0x1000) == 0)
  {
LABEL_592:
    if ((v178 & 0x2000) == 0)
    {
      goto LABEL_593;
    }

    goto LABEL_655;
  }

LABEL_654:
  *(v3 + 589) = *(a2 + 589);
  if ((v178 & 0x2000) == 0)
  {
LABEL_593:
    if ((v178 & 0x4000) == 0)
    {
      goto LABEL_594;
    }

LABEL_656:
    *(v3 + 591) = *(a2 + 591);
    if ((v178 & 0x8000) == 0)
    {
      goto LABEL_596;
    }

    goto LABEL_595;
  }

LABEL_655:
  *(v3 + 590) = *(a2 + 590);
  if ((v178 & 0x4000) != 0)
  {
    goto LABEL_656;
  }

LABEL_594:
  if ((v178 & 0x8000) != 0)
  {
LABEL_595:
    *(v3 + 592) = *(a2 + 592);
  }

LABEL_596:
  *(v3 + 28) |= v178;
LABEL_597:
  if ((v178 & 0xFF0000) == 0)
  {
    goto LABEL_608;
  }

  if ((v178 & 0x10000) != 0)
  {
    *(v3 + 593) = *(a2 + 593);
    if ((v178 & 0x20000) == 0)
    {
LABEL_600:
      if ((v178 & 0x40000) == 0)
      {
        goto LABEL_601;
      }

      goto LABEL_660;
    }
  }

  else if ((v178 & 0x20000) == 0)
  {
    goto LABEL_600;
  }

  *(v3 + 594) = *(a2 + 594);
  if ((v178 & 0x40000) == 0)
  {
LABEL_601:
    if ((v178 & 0x80000) == 0)
    {
      goto LABEL_602;
    }

    goto LABEL_661;
  }

LABEL_660:
  *(v3 + 595) = *(a2 + 595);
  if ((v178 & 0x80000) == 0)
  {
LABEL_602:
    if ((v178 & 0x100000) == 0)
    {
      goto LABEL_603;
    }

    goto LABEL_662;
  }

LABEL_661:
  *(v3 + 596) = *(a2 + 596);
  if ((v178 & 0x100000) == 0)
  {
LABEL_603:
    if ((v178 & 0x200000) == 0)
    {
      goto LABEL_604;
    }

    goto LABEL_663;
  }

LABEL_662:
  *(v3 + 597) = *(a2 + 597);
  if ((v178 & 0x200000) == 0)
  {
LABEL_604:
    if ((v178 & 0x400000) == 0)
    {
      goto LABEL_605;
    }

LABEL_664:
    *(v3 + 599) = *(a2 + 599);
    if ((v178 & 0x800000) == 0)
    {
      goto LABEL_607;
    }

    goto LABEL_606;
  }

LABEL_663:
  *(v3 + 598) = *(a2 + 598);
  if ((v178 & 0x400000) != 0)
  {
    goto LABEL_664;
  }

LABEL_605:
  if ((v178 & 0x800000) != 0)
  {
LABEL_606:
    *(v3 + 600) = *(a2 + 600);
  }

LABEL_607:
  *(v3 + 28) |= v178;
LABEL_608:
  if ((v178 & 0x3F000000) == 0)
  {
    return this;
  }

  if ((v178 & 0x1000000) != 0)
  {
    *(v3 + 601) = *(a2 + 601);
    if ((v178 & 0x2000000) == 0)
    {
LABEL_611:
      if ((v178 & 0x4000000) == 0)
      {
        goto LABEL_612;
      }

      goto LABEL_668;
    }
  }

  else if ((v178 & 0x2000000) == 0)
  {
    goto LABEL_611;
  }

  *(v3 + 602) = *(a2 + 602);
  if ((v178 & 0x4000000) == 0)
  {
LABEL_612:
    if ((v178 & 0x8000000) == 0)
    {
      goto LABEL_613;
    }

    goto LABEL_669;
  }

LABEL_668:
  *(v3 + 603) = *(a2 + 603);
  if ((v178 & 0x8000000) == 0)
  {
LABEL_613:
    if ((v178 & 0x10000000) == 0)
    {
      goto LABEL_614;
    }

LABEL_670:
    *(v3 + 605) = *(a2 + 605);
    if ((v178 & 0x20000000) == 0)
    {
      goto LABEL_616;
    }

    goto LABEL_615;
  }

LABEL_669:
  *(v3 + 604) = *(a2 + 604);
  if ((v178 & 0x10000000) != 0)
  {
    goto LABEL_670;
  }

LABEL_614:
  if ((v178 & 0x20000000) != 0)
  {
LABEL_615:
    *(v3 + 606) = *(a2 + 606);
  }

LABEL_616:
  *(v3 + 28) |= v178;
  return this;
}

uint64_t *TSTSOS::TableStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSTSOS::TableStylePropertyChangeSetArchive::Clear(this);

    return TSTSOS::TableStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSTSOS::TableStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSTSOS::TableStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSTSOS::TableStylePropertyChangeSetArchive::Clear(this);

    return TSTSOS::TableStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSTSOS::TableStylePropertyChangeSetArchive::IsInitialized(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 19));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 21));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 22));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 23));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSTSOS::SpecTableStrokePresetListArchive::IsInitialized(*(this + 25));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 26));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 27));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 28));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 29));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 30));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 31));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 33));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 34));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40000000) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(this + 35));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80000000) == 0 || (result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 36)), result))
  {
    v4 = *(this + 5);
    if (v4)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 37));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 2) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 38));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 4) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 39));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 8) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 40));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x10) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 41));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x20) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 42));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x40) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 43));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x80) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 44));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x100) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 45));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x200) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 46));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x400) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 47));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x800) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 48));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x1000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 49));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x2000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 50));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x4000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 51));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x8000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 52));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x10000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 53));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x20000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 54));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x40000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 55));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x80000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 56));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x100000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 57));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x200000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 58));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x400000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 59));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x800000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 60));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x1000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 61));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x2000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 62));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x4000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 63));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x8000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 64));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x10000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 65));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x20000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 66));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 5);
    }

    if ((v4 & 0x40000000) == 0)
    {
      return 1;
    }

    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 67));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

double TSTSOS::TableStylePropertyChangeSetArchive::InternalSwap(TSTSOS::TableStylePropertyChangeSetArchive *this, TSTSOS::TableStylePropertyChangeSetArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 5);
  v9 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v8;
  *(a2 + 6) = v9;
  v10 = *(this + 7);
  v11 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v10;
  *(a2 + 8) = v11;

  return sub_2215BD390(this + 9, a2 + 72);
}

uint64_t sub_2215BCFE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215BD610(a1);
}

void *sub_2215BD0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215BD714(a1, a2, a3);
}

uint64_t sub_2215BD184(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215BD814(a1);
}

uint64_t sub_2215BD25C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215BD920(a1);
}

double sub_2215BD390(void *a1, uint64_t a2)
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
  return sub_2215BD3EC(a1 + 10, a2 + 80);
}

double sub_2215BD3EC(void *a1, uint64_t a2)
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
  return sub_2215BD448(a1 + 10, a2 + 80);
}

double sub_2215BD448(void *a1, uint64_t a2)
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
  return sub_2215BD4A4(a1 + 10, a2 + 80);
}

double sub_2215BD4A4(void *a1, uint64_t a2)
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
  return sub_2215BD500(a1 + 10, a2 + 80);
}

double sub_2215BD500(void *a1, uint64_t a2)
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
  *&result = sub_2215BD55C(a1 + 10, a2 + 80).n128_u64[0];
  return result;
}

__n128 sub_2215BD55C(uint64_t *a1, uint64_t a2)
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

uint64_t sub_2215BD610(uint64_t a1)
{
  v2 = sub_2215BD688(a1, 1);
  *v2 = &unk_2834B1D78;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2215BD688(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217015C4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSTSOS::SpecSetTableStrokePresetListArchive::~SpecSetTableStrokePresetListArchive);
}

void *sub_2215BD714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2215BD788(a1, 1, a3);
  *v4 = &unk_2834B1E28;
  v4[1] = a1;
  v4[2] = 0;
  if (atomic_load_explicit(scc_info_SpecTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v4[3] = 0;
  return v4;
}

uint64_t sub_2215BD788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    sub_2217015FC(a1, a2, a3);
    if (v3)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSTSOS::SpecTableStrokePresetListArchive::~SpecTableStrokePresetListArchive);
}

uint64_t sub_2215BD814(uint64_t a1)
{
  v2 = sub_2215BD894(a1, 1);
  *v2 = &unk_2834B1ED8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TableCellStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 53) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2215BD894(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221701628(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSTSOS::TableCellStylePropertyChangeSetArchive::~TableCellStylePropertyChangeSetArchive);
}

uint64_t sub_2215BD920(uint64_t a1)
{
  v2 = sub_2215BD9A0(a1, 1);
  *v2 = &unk_2834B1F88;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  if (atomic_load_explicit(scc_info_TableStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero((v2 + 40), 0x237uLL);
  return v2;
}

uint64_t sub_2215BD9A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221701660(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 608, TSTSOS::TableStylePropertyChangeSetArchive::~TableStylePropertyChangeSetArchive);
}

void sub_2215BE3D0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_2215BE53C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2215BF24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  MEMORY[0x223D9FAE0](va);
  _Unwind_Resume(a1);
}

uint64_t sub_2215BF70C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2215BF724(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_documentRoot(*(*(a1[7] + 8) + 40), a2, a3, a4, a5);
  v17 = objc_msgSend_documentLocale(v6, v7, v8, v9, v10);

  v11 = [TSTCellFormulaSpec alloc];
  v14 = objc_msgSend_initWithFormulaObject_locale_(v11, v12, a1[5], v17, v13);
  v15 = a1[4];
  v16 = *(v15 + 8);
  *(v15 + 8) = v14;

  (*(a1[6] + 16))();
}

void sub_2215BFA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v10;

  TSCE::FormulaArchive::~FormulaArchive(&a9);
  _Unwind_Resume(a1);
}

void sub_2215BFD9C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_2215C0554(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_2215C09C8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_2215C0F50(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2215C1048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2215C13A8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_2215C15B8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_canBeStoredInAStringValueCell(a1, a2, a3, a4, a5))
  {
    v10 = objc_msgSend_string(a1, v6, v7, v8, v9);
    v15 = objc_msgSend_hash(v10, v11, v12, v13, v14);

    return v15;
  }

  else
  {

    return objc_msgSend_hash(a1, v6, v7, v8, v9);
  }
}

BOOL sub_2215C177C(uint64_t a1, int a2, int a3)
{
  v3 = a3 - *(a1 + 4);
  if (((a2 - *a1) & 0xE0) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << (a2 - *a1);
  }

  v5 = *(a1 + 12 + 4 * v3);
  if ((v4 & v5) == 0)
  {
    *(a1 + 12 + 4 * v3) = v4 | v5;
    v6 = *(a1 + 8);
    if (v6 != 0xFFFF)
    {
      *(a1 + 8) = v6 + 1;
    }
  }

  return (v4 & v5) == 0;
}

uint64_t sub_2215C17D4(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1[2])
  {
    return 0;
  }

  v8 = *a1;
  if (*a1 > a2 || ((v9 = a1[1], v8 + 31 >= a2) ? (v10 = v9 > a3) : (v10 = 1), !v10 ? (v11 = v9 + 127 >= a3) : (v11 = 0), !v11))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSCEBitGridTile::clearBit(TSUColumnOrRowIndex, TSURowIndex)", a4, a5);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBitGrid.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 197, 0, "clearBit, out of range [%d,%d]->[%d,%d]: request was [%d,%d]", *a1, a1[1], *a1 + 31, a1[1] + 127, a2, a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v8 = *a1;
    v9 = a1[1];
  }

  v23 = a3 - v9;
  v24 = a2 - v8;
  v25 = (v24 & 0xE0) != 0 ? 0 : 1 << v24;
  v26 = a1[v23 + 3];
  if ((v25 & v26) == 0)
  {
    return 0;
  }

  a1[v23 + 3] = v26 & ~v25;
  v27 = a1[2];
  if (v27 != 0xFFFF)
  {
    a1[2] = v27 - 1;
  }

  return 1;
}

uint64_t sub_2215C1944(unsigned int *a1, NSUInteger a2, NSUInteger a3, NSRange range2)
{
  v34.location = a1[1];
  v34.length = 128;
  v7 = NSIntersectionRange(v34, range2);
  if (!v7.length)
  {
    return 0;
  }

  location = v7.location;
  v35.location = *a1;
  v35.length = 32;
  v36.location = a2;
  v36.length = a3;
  v9 = NSIntersectionRange(v35, v36);
  if (!v9.length)
  {
    return 0;
  }

  v10 = LODWORD(v7.location) + LODWORD(v7.length) - 1;
  v11 = *a1;
  v12 = v9.location + v9.length;
  if (v9.location <= v11 && v12 >= v11 + 32)
  {
    v14 = -1;
  }

  else if ((v12 - 1) >= LODWORD(v9.location))
  {
    if (LODWORD(v9.location) + 1 > v12)
    {
      LODWORD(v12) = LODWORD(v9.location) + 1;
    }

    v15 = v12 - LODWORD(v9.location);
    v16 = (v12 - LODWORD(v9.location) + 3) & 0xFFFFFFFC;
    v17 = vaddq_s32(vdupq_n_s32(v9.location), xmmword_2217F55B0);
    v18 = vdupq_n_s32(v15 - 1);
    v19 = vdupq_n_s32(v11);
    v20 = 0uLL;
    v21 = 4;
    v22.i64[0] = 0xE0000000E0;
    v22.i64[1] = 0xE0000000E0;
    v23.i64[0] = 0xFF000000FFLL;
    v23.i64[1] = 0xFF000000FFLL;
    v24.i64[0] = 0x100000001;
    v24.i64[1] = 0x100000001;
    v25.i64[0] = 0x400000004;
    v25.i64[1] = 0x400000004;
    do
    {
      v26 = v20;
      v27 = vsubq_s32(v17, v19);
      v20 = vorrq_s8(vandq_s8(vshlq_u32(v24, vandq_s8(v27, v23)), vceqzq_s32(vandq_s8(v27, v22))), v26);
      v17 = vaddq_s32(v17, v25);
      v21 -= 4;
    }

    while (v16 + v21 != 4);
    v28 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v21), xmmword_2217F55B0), v18), v26, v20);
    *v28.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v14 = v28.i32[0] | v28.i32[1];
  }

  else
  {
    v14 = 0;
  }

  if (v10 < LODWORD(v7.location))
  {
    return 0;
  }

  v29 = 0;
  v30 = a1 + 3;
  v31 = -a1[1];
  do
  {
    while (1)
    {
      v32 = v30[v31 + location];
      if ((v14 & ~v32) == 0)
      {
        break;
      }

      v30[v31 + location++] = v32 | v14;
      v29 = 1;
      if (location > v10)
      {
        goto LABEL_23;
      }
    }

    ++location;
  }

  while (location <= v10);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  a1[2] = 0xFFFF;
  return 1;
}

uint64_t sub_2215C1B04(const float *a1, NSUInteger a2, NSUInteger a3, NSRange range2)
{
  if (!*(a1 + 2))
  {
    return 0;
  }

  v32.location = *(a1 + 1);
  v32.length = 128;
  v7 = NSIntersectionRange(v32, range2);
  if (!v7.length)
  {
    return 0;
  }

  location = v7.location;
  v33.location = *a1;
  v33.length = 32;
  v34.location = a2;
  v34.length = a3;
  v9 = NSIntersectionRange(v33, v34);
  if (!v9.length)
  {
    return 0;
  }

  v10 = LODWORD(v9.location) + LODWORD(v9.length);
  v11 = LODWORD(v7.location) + LODWORD(v7.length) - 1;
  if ((LODWORD(v9.location) + LODWORD(v9.length) - 1) >= LODWORD(v9.location))
  {
    if (LODWORD(v9.location) + 1 > v10)
    {
      v10 = LODWORD(v9.location) + 1;
    }

    v14 = v10 - LODWORD(v9.location);
    v15 = (v10 - LODWORD(v9.location) + 3) & 0xFFFFFFFC;
    v16 = vaddq_s32(vdupq_n_s32(v9.location), xmmword_2217F55B0);
    v17 = vdupq_n_s32(v14 - 1);
    v18 = vld1q_dup_f32(a1);
    v19 = 0uLL;
    v20 = 4;
    v21.i64[0] = 0xE0000000E0;
    v21.i64[1] = 0xE0000000E0;
    v22.i64[0] = 0xFF000000FFLL;
    v22.i64[1] = 0xFF000000FFLL;
    v23.i64[0] = 0x100000001;
    v23.i64[1] = 0x100000001;
    v24.i64[0] = 0x400000004;
    v24.i64[1] = 0x400000004;
    do
    {
      v25 = v19;
      v26 = vsubq_s32(v16, v18);
      v19 = vorrq_s8(vandq_s8(vshlq_u32(v23, vandq_s8(v26, v22)), vceqzq_s32(vandq_s8(v26, v21))), v25);
      v16 = vaddq_s32(v16, v24);
      v20 -= 4;
    }

    while (v15 + v20 != 4);
    v27 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v20), xmmword_2217F55B0), v17), v25, v19);
    *v27.i8 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v12 = v27.i32[0] | v27.i32[1];
  }

  else
  {
    v12 = 0;
  }

  if (v11 < LODWORD(v7.location))
  {
    return 0;
  }

  v28 = 0;
  v29 = (a1 + 3);
  v30 = -*(a1 + 1);
  do
  {
    while (1)
    {
      v31 = v29[v30 + location];
      if ((v31 & v12) == 0)
      {
        break;
      }

      v29[v30 + location++] = v31 & ~v12;
      v28 = 1;
      if (location > v11)
      {
        goto LABEL_20;
      }
    }

    ++location;
  }

  while (location <= v11);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  *(a1 + 2) = 0xFFFF;
  return 1;
}

BOOL sub_2215C1CC0(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 < *a1)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = *a1 + 31 >= a2 && a3 >= v3;
  v5 = v4 && v3 + 127 >= a3;
  if (!v5 || !a1[2])
  {
    return 0;
  }

  v6 = a1[a3 - v3 + 3];
  if (((a2 - *a1) & 0xE0) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1 << (a2 - *a1);
  }

  return (v6 & v7) != 0;
}

uint64_t sub_2215C1D20(unsigned int *a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5, _DWORD *a6, int8x8_t a7)
{
  v8 = a5;
  v9 = a4;
  v11 = a2;
  if (a2 > a4 || a3 > a5)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnOrRowIndex TSCEBitGridTile::countInRange(TSUColumnOrRowIndex, TSURowIndex, TSUColumnOrRowIndex, TSURowIndex, const TSCEBitGridTile *) const", a4, a5);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBitGrid.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 384, 0, "countInRange: first row/column must be <= last row/column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    if (!a6)
    {
      goto LABEL_9;
    }
  }

  else if (!a6)
  {
    goto LABEL_9;
  }

  if (*a6 != *a1 || a6[1] != a1[1])
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnOrRowIndex TSCEBitGridTile::countInRange(TSUColumnOrRowIndex, TSURowIndex, TSUColumnOrRowIndex, TSURowIndex, const TSCEBitGridTile *) const", a4, a5);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBitGrid.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 385, 0, "countInRange: exclude tile does not correspond to this tile.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

LABEL_9:
  v35 = a1[2];
  if (!v35)
  {
    return 0;
  }

  v36 = a1[1];
  if (v36 + 127 < a3)
  {
    return 0;
  }

  result = 0;
  v38 = *a1;
  if (v9 >= *a1 && v8 >= v36 && v38 + 31 >= v11)
  {
    if (a3 >= v36)
    {
      v39 = a3 - v36;
    }

    else
    {
      v39 = 0;
    }

    if (v36 + 127 <= v8)
    {
      v40 = 127;
    }

    else
    {
      v40 = v8 - v36;
    }

    if (v38 + 31 <= v9)
    {
      v41 = 31;
    }

    else
    {
      v41 = v9 - *a1;
    }

    if (!a6 && v40 == 127 && v36 >= a3 && v38 >= v11 && v41 == 31)
    {
      result = a1[2];
      if (v35 == 0xFFFF)
      {
        v42 = 0;
        v43 = 0uLL;
        do
        {
          v43 = vpadalq_u16(v43, vpaddlq_u8(vcntq_s8(*&a1[v42 + 3])));
          v42 += 4;
        }

        while (v42 != 128);
        v44 = vaddvq_s32(v43);
        a1[2] = v44;
        return v44;
      }
    }

    else
    {
      v45 = v11 - v38;
      if (v11 < v38)
      {
        v45 = 0;
      }

      if ((v45 & 0xE0) != 0)
      {
        v46 = 0;
      }

      else
      {
        v46 = -1 << v45;
      }

      if ((v41 + 1) < 0x20u)
      {
        v47 = ~(-1 << (v41 + 1));
      }

      else
      {
        v47 = -1;
      }

      v48 = v47 & v46;
      if ((v47 & v46) == 0)
      {
        v49 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnOrRowIndex TSCEBitGridTile::countInRange(TSUColumnOrRowIndex, TSURowIndex, TSUColumnOrRowIndex, TSURowIndex, const TSCEBitGridTile *) const", a4, a5);
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBitGrid.mm", v52, v53);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v55, v50, v54, 404, 0, "countInRange: how did we end up masking off *all* bits?");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
      }

      if (v39 > v40)
      {
        return 0;
      }

      LODWORD(result) = 0;
      do
      {
        v60 = a1[v39 + 3];
        v61 = v39;
        if (a6)
        {
          v60 &= ~a6[v39 + 3];
        }

        a7.i32[0] = v60 & v48;
        a7 = vcnt_s8(a7);
        a7.i16[0] = vaddlv_u8(a7);
        result = (a7.i32[0] + result);
        ++v39;
      }

      while (v61 + 1 <= v40);
    }
  }

  return result;
}

uint64_t sub_2215C2078(uint64_t result, TSUIndexSet *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 == 0xFFFF)
  {
    v5 = 0;
    v6 = 0uLL;
    do
    {
      v6 = vpadalq_u16(v6, vpaddlq_u8(vcntq_s8(*(result + 12 + v5))));
      v5 += 16;
    }

    while (v5 != 512);
    v7 = vaddvq_s32(v6);
    *(result + 8) = v7;
    v4 = v7;
  }

  if (v4)
  {
    for (i = 0; i != 128; ++i)
    {
      if (v3[i + 3])
      {
        for (j = 0; j != 32; ++j)
        {
          result = sub_2215C1CC0(v3, j + *v3, v3[1] + i);
          if (result)
          {
            result = TSUIndexSet::addIndex(a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2215C2148(uint64_t result, TSUIndexSet *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 == 0xFFFF)
  {
    v5 = 0;
    v6 = 0uLL;
    do
    {
      v6 = vpadalq_u16(v6, vpaddlq_u8(vcntq_s8(*(result + 12 + v5))));
      v5 += 16;
    }

    while (v5 != 512);
    v7 = vaddvq_s32(v6);
    *(result + 8) = v7;
    v4 = v7;
  }

  if (v4)
  {
    for (i = 0; i != 128; ++i)
    {
      if (*(v3 + 12 + 4 * i))
      {
        result = TSUIndexSet::addIndex(this);
      }
    }
  }

  return result;
}