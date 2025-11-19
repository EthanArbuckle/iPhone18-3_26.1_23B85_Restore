uint64_t *sub_275FA476C(uint64_t a1)
{
  sub_275FAD230((a1 + 24));
  result = sub_275FAD2C4((a1 + 168));
  v3 = *(a1 + 16);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    v7 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    result = TSP::UUID::Clear(*(a1 + 336));
    if ((v3 & 0x10) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_28;
  }

  v6 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v8 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_28:
  result = sub_275FAC4E0(*(a1 + 344));
  if ((v3 & 0x20) != 0)
  {
LABEL_8:
    result = sub_275FAC4E0(*(a1 + 352));
  }

LABEL_9:
  if ((v3 & 0xC0) != 0)
  {
    *(a1 + 360) = 0;
    *(a1 + 364) = 1;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 357) = 1;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_275FB57B8(v4);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275FA497C(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x10000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 184);
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 = (v4 + 5);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(a1 + 72);
  *v4 = 18;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    *(v4 + 1) = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = v4 + 3;
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
      *(v4 + 2) = v11;
      v10 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v9;
    v10 = v4 + 2;
  }

  v4 = TSP::Point::_InternalSerialize(v8, v10, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 188);
  *v4 = 24;
  *(v4 + 1) = v14;
  v4 = (v4 + 2);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(a1 + 80);
  *v4 = 34;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    *(v4 + 1) = v16 | 0x80;
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
      *(v4 + 2) = v18;
      v17 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v16;
    v17 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(a1 + 88);
  *v4 = 42;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    *(v4 + 1) = v22 | 0x80;
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
      *(v4 + 2) = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v22;
    v23 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 189);
  *v4 = 48;
  *(v4 + 1) = v27;
  v4 = (v4 + 2);
  if ((v6 & 0x20) != 0)
  {
LABEL_48:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v28 = *(a1 + 96);
    *v4 = 58;
    v29 = *(v28 + 5);
    if (v29 > 0x7F)
    {
      *(v4 + 1) = v29 | 0x80;
      v31 = v29 >> 7;
      if (v29 >> 14)
      {
        v30 = v4 + 3;
        do
        {
          *(v30 - 1) = v31 | 0x80;
          v32 = v31 >> 7;
          ++v30;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
        *(v30 - 1) = v32;
      }

      else
      {
        *(v4 + 2) = v31;
        v30 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v29;
      v30 = v4 + 2;
    }

    v4 = TSP::Size::_InternalSerialize(v28, v30, a3);
  }

LABEL_58:
  v34 = *(a1 + 40);
  if (v34)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v36 = *(*(a1 + 48) + 8 * i + 8);
      *v4 = 66;
      v37 = *(v36 + 11);
      if (v37 > 0x7F)
      {
        *(v4 + 1) = v37 | 0x80;
        v39 = v37 >> 7;
        if (v37 >> 14)
        {
          v38 = v4 + 3;
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
          *(v4 + 2) = v39;
          v38 = v4 + 3;
        }
      }

      else
      {
        *(v4 + 1) = v37;
        v38 = v4 + 2;
      }

      v4 = TSCH::ChartUIState::_InternalSerialize(v36, v38, a3);
    }
  }

  if (*(a1 + 21))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v42 = *(a1 + 244);
    *v4 = 72;
    *(v4 + 1) = v42;
    v4 = (v4 + 2);
  }

  v43 = *(a1 + 16);
  if ((v43 & 0x80000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v44 = *(a1 + 190);
    *v4 = 80;
    *(v4 + 1) = v44;
    v4 = (v4 + 2);
  }

  if ((v43 & 0x100000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v45 = *(a1 + 191);
    *v4 = 88;
    *(v4 + 1) = v45;
    v4 = (v4 + 2);
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v46 = *(a1 + 245);
    *v4 = 96;
    *(v4 + 1) = v46;
    v4 = (v4 + 2);
  }

  v47 = *(a1 + 16);
  if ((v47 & 0x1000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v48 = *(a1 + 204);
    *v4 = 104;
    *(v4 + 1) = v48;
    v4 = (v4 + 2);
  }

  if ((v47 & 0x200000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v49 = *(a1 + 192);
    *v4 = 112;
    if (v49 > 0x7F)
    {
      *(v4 + 1) = v49 | 0x80;
      v50 = v49 >> 7;
      if (v49 >> 14)
      {
        v4 = (v4 + 3);
        do
        {
          *(v4 - 1) = v50 | 0x80;
          v51 = v50 >> 7;
          v4 = (v4 + 1);
          v52 = v50 >> 14;
          v50 >>= 7;
        }

        while (v52);
        *(v4 - 1) = v51;
      }

      else
      {
        *(v4 + 2) = v50;
        v4 = (v4 + 3);
      }
    }

    else
    {
      *(v4 + 1) = v49;
      v4 = (v4 + 2);
    }
  }

  if ((*(a1 + 20) & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v53 = *(a1 + 240);
    *v4 = 125;
    *(v4 + 1) = v53;
    v4 = (v4 + 5);
  }

  v54 = *(a1 + 16);
  if ((v54 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v55 = *(a1 + 104);
    *v4 = 386;
    v56 = *(v55 + 5);
    if (v56 > 0x7F)
    {
      *(v4 + 2) = v56 | 0x80;
      v58 = v56 >> 7;
      if (v56 >> 14)
      {
        v57 = v4 + 4;
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
        *(v4 + 3) = v58;
        v57 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v56;
      v57 = v4 + 3;
    }

    v4 = TSP::Point::_InternalSerialize(v55, v57, a3);
    if ((v54 & 0x80) == 0)
    {
LABEL_106:
      if ((v54 & 1) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_132;
    }
  }

  else if ((v54 & 0x80) == 0)
  {
    goto LABEL_106;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v61 = *(a1 + 112);
  *v4 = 394;
  v62 = *(v61 + 5);
  if (v62 > 0x7F)
  {
    *(v4 + 2) = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = v4 + 4;
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
      *(v4 + 3) = v64;
      v63 = v4 + 4;
    }
  }

  else
  {
    *(v4 + 2) = v62;
    v63 = v4 + 3;
  }

  v4 = TSP::Size::_InternalSerialize(v61, v63, a3);
  if ((v54 & 1) == 0)
  {
LABEL_107:
    if ((v54 & 0x2000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_133;
  }

LABEL_132:
  v4 = sub_275F8C698(a3, 18, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v54 & 0x2000000) == 0)
  {
LABEL_108:
    if ((v54 & 0x400000) == 0)
    {
      goto LABEL_109;
    }

LABEL_136:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v68 = *(a1 + 196);
    *v4 = 416;
    if (v68 > 0x7F)
    {
      *(v4 + 2) = v68 | 0x80;
      v69 = v68 >> 7;
      if (v68 >> 14)
      {
        v4 = (v4 + 4);
        do
        {
          *(v4 - 1) = v69 | 0x80;
          v70 = v69 >> 7;
          v4 = (v4 + 1);
          v71 = v69 >> 14;
          v69 >>= 7;
        }

        while (v71);
        *(v4 - 1) = v70;
        if ((v54 & 0x800000) != 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        *(v4 + 3) = v69;
        v4 = (v4 + 4);
        if ((v54 & 0x800000) != 0)
        {
          goto LABEL_147;
        }
      }
    }

    else
    {
      *(v4 + 2) = v68;
      v4 = (v4 + 3);
      if ((v54 & 0x800000) != 0)
      {
        goto LABEL_147;
      }
    }

LABEL_110:
    if ((v54 & 0x10000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_150;
  }

LABEL_133:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v67 = *(a1 + 205);
  *v4 = 408;
  *(v4 + 2) = v67;
  v4 = (v4 + 3);
  if ((v54 & 0x400000) != 0)
  {
    goto LABEL_136;
  }

LABEL_109:
  if ((v54 & 0x800000) == 0)
  {
    goto LABEL_110;
  }

LABEL_147:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v72 = *(a1 + 200);
  *v4 = 429;
  *(v4 + 2) = v72;
  v4 = (v4 + 6);
  if ((v54 & 0x10000000) != 0)
  {
LABEL_150:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v73 = *(a1 + 208);
    *v4 = 437;
    *(v4 + 2) = v73;
    v4 = (v4 + 6);
  }

LABEL_153:
  if ((*(a1 + 21) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v74 = *(a1 + 246);
    *v4 = 440;
    *(v4 + 2) = v74;
    v4 = (v4 + 3);
  }

  v75 = *(a1 + 16);
  if ((v75 & 0x4000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v76 = *(a1 + 206);
    *v4 = 448;
    *(v4 + 2) = v76;
    v4 = (v4 + 3);
  }

  if ((v75 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v77 = *(a1 + 120);
    *v4 = 458;
    v78 = *(v77 + 10);
    if (v78 > 0x7F)
    {
      *(v4 + 2) = v78 | 0x80;
      v80 = v78 >> 7;
      if (v78 >> 14)
      {
        v79 = v4 + 4;
        do
        {
          *(v79 - 1) = v80 | 0x80;
          v81 = v80 >> 7;
          ++v79;
          v82 = v80 >> 14;
          v80 >>= 7;
        }

        while (v82);
        *(v79 - 1) = v81;
      }

      else
      {
        *(v4 + 3) = v80;
        v79 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v78;
      v79 = v4 + 3;
    }

    v4 = TSK::SelectionPathArchive::_InternalSerialize(v77, v79, a3);
  }

  v83 = *(a1 + 20);
  if ((v83 & 0x800) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v84 = *(a1 + 247);
    *v4 = 464;
    *(v4 + 2) = v84;
    v4 = (v4 + 3);
  }

  if ((v83 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v85 = *(a1 + 252);
    *v4 = 472;
    *(v4 + 2) = v85;
    v4 = (v4 + 3);
  }

  v86 = *(a1 + 16);
  if ((v86 & 0x8000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v88 = *(a1 + 207);
    *v4 = 480;
    *(v4 + 2) = v88;
    v4 = (v4 + 3);
    if ((v86 & 0x200) == 0)
    {
LABEL_182:
      if ((v86 & 2) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_183;
    }
  }

  else if ((v86 & 0x200) == 0)
  {
    goto LABEL_182;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v89 = *(a1 + 128);
  *v4 = 490;
  v90 = *(v89 + 10);
  if (v90 > 0x7F)
  {
    *(v4 + 2) = v90 | 0x80;
    v93 = v90 >> 7;
    if (v90 >> 14)
    {
      v91 = v4 + 4;
      do
      {
        *(v91 - 1) = v93 | 0x80;
        v101 = v93 >> 7;
        ++v91;
        v102 = v93 >> 14;
        v93 >>= 7;
      }

      while (v102);
      *(v91 - 1) = v101;
    }

    else
    {
      *(v4 + 3) = v93;
      v91 = v4 + 4;
    }
  }

  else
  {
    *(v4 + 2) = v90;
    v91 = v4 + 3;
  }

  v4 = TSK::SelectionPathArchive::_InternalSerialize(v89, v91, a3);
  if ((v86 & 2) != 0)
  {
LABEL_183:
    v4 = sub_275F8C698(a3, 30, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_184:
  if ((*(a1 + 21) & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v87 = *(a1 + 248);
    *v4 = 504;
    if (v87 > 0x7F)
    {
      *(v4 + 2) = v87 | 0x80;
      v92 = v87 >> 7;
      if (v87 >> 14)
      {
        v4 = (v4 + 4);
        do
        {
          *(v4 - 1) = v92 | 0x80;
          v94 = v92 >> 7;
          v4 = (v4 + 1);
          v95 = v92 >> 14;
          v92 >>= 7;
        }

        while (v95);
        *(v4 - 1) = v94;
      }

      else
      {
        *(v4 + 3) = v92;
        v4 = (v4 + 4);
      }
    }

    else
    {
      *(v4 + 2) = v87;
      v4 = (v4 + 3);
    }
  }

  v96 = *(a1 + 16);
  if ((v96 & 0x400) == 0)
  {
    if ((v96 & 0x20000000) == 0)
    {
      goto LABEL_205;
    }

LABEL_225:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v105 = *(a1 + 212);
    *v4 = 648;
    if (v105 > 0x7F)
    {
      *(v4 + 2) = v105 | 0x80;
      v106 = v105 >> 7;
      if (v105 >> 14)
      {
        v4 = (v4 + 4);
        do
        {
          *(v4 - 1) = v106 | 0x80;
          v107 = v106 >> 7;
          v4 = (v4 + 1);
          v108 = v106 >> 14;
          v106 >>= 7;
        }

        while (v108);
        *(v4 - 1) = v107;
        if (v96 < 0)
        {
          goto LABEL_236;
        }
      }

      else
      {
        *(v4 + 3) = v106;
        v4 = (v4 + 4);
        if (v96 < 0)
        {
          goto LABEL_236;
        }
      }
    }

    else
    {
      *(v4 + 2) = v105;
      v4 = (v4 + 3);
      if (v96 < 0)
      {
        goto LABEL_236;
      }
    }

LABEL_206:
    if ((v96 & 0x800) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_239;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v97 = *(a1 + 136);
  *v4 = 642;
  v98 = *(v97 + 5);
  if (v98 > 0x7F)
  {
    *(v4 + 2) = v98 | 0x80;
    v100 = v98 >> 7;
    if (v98 >> 14)
    {
      v99 = v4 + 4;
      do
      {
        *(v99 - 1) = v100 | 0x80;
        v103 = v100 >> 7;
        ++v99;
        v104 = v100 >> 14;
        v100 >>= 7;
      }

      while (v104);
      *(v99 - 1) = v103;
    }

    else
    {
      *(v4 + 3) = v100;
      v99 = v4 + 4;
    }
  }

  else
  {
    *(v4 + 2) = v98;
    v99 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v97, v99, a3);
  if ((v96 & 0x20000000) != 0)
  {
    goto LABEL_225;
  }

LABEL_205:
  if ((v96 & 0x80000000) == 0)
  {
    goto LABEL_206;
  }

LABEL_236:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v109 = *(a1 + 220);
  *v4 = 656;
  *(v4 + 2) = v109;
  v4 = (v4 + 3);
  if ((v96 & 0x800) == 0)
  {
LABEL_207:
    if ((v96 & 0x40000000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_249;
  }

LABEL_239:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v110 = *(a1 + 144);
  *v4 = 666;
  v111 = *(v110 + 5);
  if (v111 > 0x7F)
  {
    *(v4 + 2) = v111 | 0x80;
    v113 = v111 >> 7;
    if (v111 >> 14)
    {
      v112 = v4 + 4;
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
      *(v4 + 3) = v113;
      v112 = v4 + 4;
    }
  }

  else
  {
    *(v4 + 2) = v111;
    v112 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v110, v112, a3);
  if ((v96 & 0x40000000) == 0)
  {
LABEL_208:
    if ((v96 & 0x1000) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_252;
  }

LABEL_249:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v116 = *(a1 + 216);
  *v4 = 677;
  *(v4 + 2) = v116;
  v4 = (v4 + 6);
  if ((v96 & 0x1000) != 0)
  {
LABEL_252:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v117 = *(a1 + 152);
    *v4 = 682;
    v118 = *(v117 + 5);
    if (v118 > 0x7F)
    {
      *(v4 + 2) = v118 | 0x80;
      v120 = v118 >> 7;
      if (v118 >> 14)
      {
        v119 = v4 + 4;
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
        *(v4 + 3) = v120;
        v119 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v118;
      v119 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v117, v119, a3);
  }

LABEL_262:
  v123 = *(a1 + 20);
  if (v123)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v124 = *(a1 + 221);
    *v4 = 688;
    *(v4 + 2) = v124;
    v4 = (v4 + 3);
    if ((v123 & 0x4000) == 0)
    {
LABEL_264:
      if ((v123 & 2) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_272;
    }
  }

  else if ((v123 & 0x4000) == 0)
  {
    goto LABEL_264;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v125 = *(a1 + 253);
  *v4 = 696;
  *(v4 + 2) = v125;
  v4 = (v4 + 3);
  if ((v123 & 2) != 0)
  {
LABEL_272:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v126 = *(a1 + 222);
    *v4 = 704;
    *(v4 + 2) = v126;
    v4 = (v4 + 3);
  }

LABEL_275:
  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v127 = *(a1 + 160);
    *v4 = 714;
    v128 = *(v127 + 5);
    if (v128 > 0x7F)
    {
      *(v4 + 2) = v128 | 0x80;
      v130 = v128 >> 7;
      if (v128 >> 14)
      {
        v129 = v4 + 4;
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
        *(v4 + 3) = v130;
        v129 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v128;
      v129 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v127, v129, a3);
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v133 = *(a1 + 223);
    *v4 = 720;
    *(v4 + 2) = v133;
    v4 = (v4 + 3);
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v134 = *(a1 + 168);
    *v4 = 730;
    v135 = *(v134 + 20);
    if (v135 > 0x7F)
    {
      *(v4 + 2) = v135 | 0x80;
      v137 = v135 >> 7;
      if (v135 >> 14)
      {
        v136 = v4 + 4;
        do
        {
          *(v136 - 1) = v137 | 0x80;
          v138 = v137 >> 7;
          ++v136;
          v139 = v137 >> 14;
          v137 >>= 7;
        }

        while (v139);
        *(v136 - 1) = v138;
      }

      else
      {
        *(v4 + 3) = v137;
        v136 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v135;
      v136 = v4 + 3;
    }

    v4 = sub_275FADCF8(v134, v136, a3);
  }

  v140 = *(a1 + 20);
  if ((v140 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v141 = *(a1 + 224);
    *v4 = 736;
    *(v4 + 2) = v141;
    v4 = (v4 + 3);
    if ((v140 & 0x10) == 0)
    {
LABEL_303:
      if ((v140 & 0x20) == 0)
      {
        goto LABEL_314;
      }

      goto LABEL_311;
    }
  }

  else if ((v140 & 0x10) == 0)
  {
    goto LABEL_303;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v142 = *(a1 + 228);
  *v4 = 749;
  *(v4 + 2) = v142;
  v4 = (v4 + 6);
  if ((v140 & 0x20) != 0)
  {
LABEL_311:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v143 = *(a1 + 232);
    *v4 = 757;
    *(v4 + 2) = v143;
    v4 = (v4 + 6);
  }

LABEL_314:
  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v144 = *(a1 + 176);
    *v4 = 762;
    v145 = *(v144 + 10);
    if (v145 > 0x7F)
    {
      *(v4 + 2) = v145 | 0x80;
      v147 = v145 >> 7;
      if (v145 >> 14)
      {
        v146 = v4 + 4;
        do
        {
          *(v146 - 1) = v147 | 0x80;
          v148 = v147 >> 7;
          ++v146;
          v149 = v147 >> 14;
          v147 >>= 7;
        }

        while (v149);
        *(v146 - 1) = v148;
      }

      else
      {
        *(v4 + 3) = v147;
        v146 = v4 + 4;
      }
    }

    else
    {
      *(v4 + 2) = v145;
      v146 = v4 + 3;
    }

    v4 = TSK::SelectionPathArchive::_InternalSerialize(v144, v146, a3);
  }

  if ((*(a1 + 20) & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v150 = *(a1 + 236);
    *v4 = 901;
    *(v4 + 2) = v150;
    v4 = (v4 + 6);
  }

  v151 = *(a1 + 8);
  if ((v151 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v151 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275FA5C10(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
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
      v7 = TSCH::ChartUIState::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v28 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v2 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_102;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v31 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(v31 + 23);
  v33 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v32;
  }

  v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_103;
  }

LABEL_102:
  v34 = TSP::Point::ByteSizeLong(*(a1 + 72));
  v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_104;
  }

LABEL_103:
  v35 = TSP::Reference::ByteSizeLong(*(a1 + 80));
  v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_105:
    v37 = TSP::Size::ByteSizeLong(*(a1 + 96));
    v2 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_106;
  }

LABEL_104:
  v36 = TSP::Reference::ByteSizeLong(*(a1 + 88));
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_105;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_106:
  v38 = TSP::Point::ByteSizeLong(*(a1 + 104));
  v2 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v9 = TSP::Size::ByteSizeLong(*(a1 + 112));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_19:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v8 & 0x100) != 0)
  {
    v39 = TSK::SelectionPathArchive::ByteSizeLong(*(a1 + 120));
    v2 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_110;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v40 = TSK::SelectionPathArchive::ByteSizeLong(*(a1 + 128));
  v2 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x400) == 0)
  {
LABEL_23:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_111;
  }

LABEL_110:
  v41 = TSP::Reference::ByteSizeLong(*(a1 + 136));
  v2 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x800) == 0)
  {
LABEL_24:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_112;
  }

LABEL_111:
  v42 = TSP::Reference::ByteSizeLong(*(a1 + 144));
  v2 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x1000) == 0)
  {
LABEL_25:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_113;
  }

LABEL_112:
  v43 = TSP::Reference::ByteSizeLong(*(a1 + 152));
  v2 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x2000) == 0)
  {
LABEL_26:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_114;
  }

LABEL_113:
  v44 = TSP::Reference::ByteSizeLong(*(a1 + 160));
  v2 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x4000) == 0)
  {
LABEL_27:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_114:
  v45 = sub_275FAE72C(*(a1 + 168));
  v2 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x8000) != 0)
  {
LABEL_28:
    v10 = TSK::SelectionPathArchive::ByteSizeLong(*(a1 + 176));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_29:
  if ((v8 & 0xFF0000) != 0)
  {
    v11 = v2 + 5;
    if ((v8 & 0x10000) == 0)
    {
      v11 = v2;
    }

    v12.i64[0] = 0x200000002;
    v12.i64[1] = 0x200000002;
    v13 = v11 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v8), xmmword_27605AD50), v12));
    if ((v8 & 0x200000) != 0)
    {
      v14 = *(a1 + 192);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 11;
      }

      v13 += v16;
    }

    if ((v8 & 0x400000) != 0)
    {
      v13 += ((9 * (__clz(*(a1 + 196) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v8 & 0x800000) != 0)
    {
      v2 = v13 + 6;
    }

    else
    {
      v2 = v13;
    }
  }

  if (BYTE3(v8))
  {
    v17 = v2 + ((v8 >> 23) & 2);
    if ((v8 & 0x2000000) != 0)
    {
      v17 += 3;
    }

    if ((v8 & 0x4000000) != 0)
    {
      v17 += 3;
    }

    if ((v8 & 0x8000000) != 0)
    {
      v17 += 3;
    }

    if ((v8 & 0x10000000) != 0)
    {
      v17 += 6;
    }

    if ((v8 & 0x20000000) != 0)
    {
      v18 = *(a1 + 212);
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 12;
      }

      v17 += v20;
    }

    if ((v8 & 0x40000000) != 0)
    {
      v17 += 6;
    }

    if ((v8 & 0x80000000) == 0)
    {
      v2 = v17;
    }

    else
    {
      v2 = v17 + 3;
    }
  }

  v21 = *(a1 + 20);
  if (v21)
  {
    v22 = v2 + 3;
    if ((v21 & 1) == 0)
    {
      v22 = v2;
    }

    if ((v21 & 2) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 4) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 8) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 0x10) != 0)
    {
      v22 += 6;
    }

    if ((v21 & 0x20) != 0)
    {
      v22 += 6;
    }

    if ((v21 & 0x40) != 0)
    {
      v22 += 6;
    }

    if ((v21 & 0x80) != 0)
    {
      v2 = v22 + 5;
    }

    else
    {
      v2 = v22;
    }
  }

  if ((v21 & 0x7F00) != 0)
  {
    v23 = v2 + ((v21 >> 8) & 2) + ((v21 >> 7) & 2);
    if ((v21 & 0x400) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x800) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x1000) != 0)
    {
      v24 = *(a1 + 248);
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 12;
      }

      v23 += v26;
    }

    if ((v21 & 0x2000) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x4000) != 0)
    {
      v2 = v23 + 3;
    }

    else
    {
      v2 = v23;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 24) = v2;
    return v2;
  }
}

uint64_t sub_275FA6264(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500970, 0);
  if (v4)
  {

    return sub_275FA630C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA630C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    v6 = *(a2 + 48);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 32));
    result = sub_275FB6B1C(v3 + 32, v7, (v6 + 8), v5, **(v3 + 48) - *(v3 + 40));
    v8 = *(v3 + 40) + v5;
    *(v3 + 40) = v8;
    v9 = *(v3 + 48);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v11 = MEMORY[0x277D809F0];
    if ((v10 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 72);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D30](v13);
        *(v3 + 72) = v12;
      }

      if (*(a2 + 72))
      {
        v14 = *(a2 + 72);
      }

      else
      {
        v14 = v11;
      }

      result = TSP::Point::MergeFrom(v12, v14);
    }

    v15 = MEMORY[0x277D80A18];
    if ((v10 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v16 = *(v3 + 80);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C92D60](v17);
        *(v3 + 80) = v16;
      }

      if (*(a2 + 80))
      {
        v18 = *(a2 + 80);
      }

      else
      {
        v18 = v15;
      }

      result = TSP::Reference::MergeFrom(v16, v18);
    }

    if ((v10 & 0x10) != 0)
    {
      *(v3 + 16) |= 0x10u;
      v19 = *(v3 + 88);
      if (!v19)
      {
        v20 = *(v3 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C92D60](v20);
        *(v3 + 88) = v19;
      }

      if (*(a2 + 88))
      {
        v21 = *(a2 + 88);
      }

      else
      {
        v21 = v15;
      }

      result = TSP::Reference::MergeFrom(v19, v21);
    }

    v22 = MEMORY[0x277D809D8];
    if ((v10 & 0x20) != 0)
    {
      *(v3 + 16) |= 0x20u;
      v23 = *(v3 + 96);
      if (!v23)
      {
        v24 = *(v3 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = MEMORY[0x277C92D10](v24);
        *(v3 + 96) = v23;
      }

      if (*(a2 + 96))
      {
        v25 = *(a2 + 96);
      }

      else
      {
        v25 = v22;
      }

      result = TSP::Size::MergeFrom(v23, v25);
      if ((v10 & 0x40) == 0)
      {
LABEL_40:
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_58;
      }
    }

    else if ((v10 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    *(v3 + 16) |= 0x40u;
    v26 = *(v3 + 104);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x277C92D30](v27);
      *(v3 + 104) = v26;
    }

    if (*(a2 + 104))
    {
      v28 = *(a2 + 104);
    }

    else
    {
      v28 = v11;
    }

    result = TSP::Point::MergeFrom(v26, v28);
    if ((v10 & 0x80) != 0)
    {
LABEL_58:
      *(v3 + 16) |= 0x80u;
      v29 = *(v3 + 112);
      if (!v29)
      {
        v30 = *(v3 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = MEMORY[0x277C92D10](v30);
        *(v3 + 112) = v29;
      }

      if (*(a2 + 112))
      {
        v31 = *(a2 + 112);
      }

      else
      {
        v31 = v22;
      }

      result = TSP::Size::MergeFrom(v29, v31);
    }
  }

LABEL_66:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_140;
  }

  v32 = MEMORY[0x277D80750];
  if ((v10 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v33 = *(v3 + 120);
    if (!v33)
    {
      v34 = *(v3 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C92CF0](v34);
      *(v3 + 120) = v33;
    }

    if (*(a2 + 120))
    {
      v35 = *(a2 + 120);
    }

    else
    {
      v35 = v32;
    }

    result = TSK::SelectionPathArchive::MergeFrom(v33, v35);
    if ((v10 & 0x200) == 0)
    {
LABEL_69:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_92;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_69;
  }

  *(v3 + 16) |= 0x200u;
  v36 = *(v3 + 128);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C92CF0](v37);
    *(v3 + 128) = v36;
  }

  if (*(a2 + 128))
  {
    v38 = *(a2 + 128);
  }

  else
  {
    v38 = v32;
  }

  result = TSK::SelectionPathArchive::MergeFrom(v36, v38);
  if ((v10 & 0x400) == 0)
  {
LABEL_70:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_100;
  }

LABEL_92:
  *(v3 + 16) |= 0x400u;
  v39 = *(v3 + 136);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C92D60](v40);
    *(v3 + 136) = v39;
  }

  if (*(a2 + 136))
  {
    v41 = *(a2 + 136);
  }

  else
  {
    v41 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v39, v41);
  if ((v10 & 0x800) == 0)
  {
LABEL_71:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_108;
  }

LABEL_100:
  *(v3 + 16) |= 0x800u;
  v42 = *(v3 + 144);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277C92D60](v43);
    *(v3 + 144) = v42;
  }

  if (*(a2 + 144))
  {
    v44 = *(a2 + 144);
  }

  else
  {
    v44 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v42, v44);
  if ((v10 & 0x1000) == 0)
  {
LABEL_72:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_116;
  }

LABEL_108:
  *(v3 + 16) |= 0x1000u;
  v45 = *(v3 + 152);
  if (!v45)
  {
    v46 = *(v3 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x277C92D60](v46);
    *(v3 + 152) = v45;
  }

  if (*(a2 + 152))
  {
    v47 = *(a2 + 152);
  }

  else
  {
    v47 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v45, v47);
  if ((v10 & 0x2000) == 0)
  {
LABEL_73:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_124;
  }

LABEL_116:
  *(v3 + 16) |= 0x2000u;
  v48 = *(v3 + 160);
  if (!v48)
  {
    v49 = *(v3 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = MEMORY[0x277C92D60](v49);
    *(v3 + 160) = v48;
  }

  if (*(a2 + 160))
  {
    v50 = *(a2 + 160);
  }

  else
  {
    v50 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v48, v50);
  if ((v10 & 0x4000) == 0)
  {
LABEL_74:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_132;
  }

LABEL_124:
  *(v3 + 16) |= 0x4000u;
  v51 = *(v3 + 168);
  if (!v51)
  {
    v52 = *(v3 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    v51 = sub_275FB0574(v52);
    *(v3 + 168) = v51;
  }

  if (*(a2 + 168))
  {
    v53 = *(a2 + 168);
  }

  else
  {
    v53 = &unk_2812F9288;
  }

  result = sub_275FA6AA0(v51, v53);
  if ((v10 & 0x8000) != 0)
  {
LABEL_132:
    *(v3 + 16) |= 0x8000u;
    v54 = *(v3 + 176);
    if (!v54)
    {
      v55 = *(v3 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = MEMORY[0x277C92CF0](v55);
      *(v3 + 176) = v54;
    }

    if (*(a2 + 176))
    {
      v56 = *(a2 + 176);
    }

    else
    {
      v56 = v32;
    }

    result = TSK::SelectionPathArchive::MergeFrom(v54, v56);
  }

LABEL_140:
  if ((v10 & 0xFF0000) == 0)
  {
    goto LABEL_151;
  }

  if ((v10 & 0x10000) != 0)
  {
    *(v3 + 184) = *(a2 + 184);
    if ((v10 & 0x20000) == 0)
    {
LABEL_143:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_185;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_143;
  }

  *(v3 + 188) = *(a2 + 188);
  if ((v10 & 0x40000) == 0)
  {
LABEL_144:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(v3 + 189) = *(a2 + 189);
  if ((v10 & 0x80000) == 0)
  {
LABEL_145:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(v3 + 190) = *(a2 + 190);
  if ((v10 & 0x100000) == 0)
  {
LABEL_146:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_188;
  }

LABEL_187:
  *(v3 + 191) = *(a2 + 191);
  if ((v10 & 0x200000) == 0)
  {
LABEL_147:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_148;
    }

LABEL_189:
    *(v3 + 196) = *(a2 + 196);
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_188:
  *(v3 + 192) = *(a2 + 192);
  if ((v10 & 0x400000) != 0)
  {
    goto LABEL_189;
  }

LABEL_148:
  if ((v10 & 0x800000) != 0)
  {
LABEL_149:
    *(v3 + 200) = *(a2 + 200);
  }

LABEL_150:
  *(v3 + 16) |= v10;
LABEL_151:
  if (!HIBYTE(v10))
  {
    goto LABEL_161;
  }

  if ((v10 & 0x1000000) != 0)
  {
    *(v3 + 204) = *(a2 + 204);
    if ((v10 & 0x2000000) == 0)
    {
LABEL_154:
      if ((v10 & 0x4000000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_208;
    }
  }

  else if ((v10 & 0x2000000) == 0)
  {
    goto LABEL_154;
  }

  *(v3 + 205) = *(a2 + 205);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_155:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(v3 + 206) = *(a2 + 206);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_156:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(v3 + 207) = *(a2 + 207);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_157:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_211;
  }

LABEL_210:
  *(v3 + 208) = *(a2 + 208);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_158:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_159;
    }

LABEL_212:
    *(v3 + 216) = *(a2 + 216);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

LABEL_213:
    *(v3 + 220) = *(a2 + 220);
    goto LABEL_160;
  }

LABEL_211:
  *(v3 + 212) = *(a2 + 212);
  if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_212;
  }

LABEL_159:
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_213;
  }

LABEL_160:
  *(v3 + 16) |= v10;
LABEL_161:
  v57 = *(a2 + 20);
  if (!v57)
  {
    goto LABEL_172;
  }

  if (v57)
  {
    *(v3 + 221) = *(a2 + 221);
    if ((v57 & 2) == 0)
    {
LABEL_164:
      if ((v57 & 4) == 0)
      {
        goto LABEL_165;
      }

      goto LABEL_193;
    }
  }

  else if ((v57 & 2) == 0)
  {
    goto LABEL_164;
  }

  *(v3 + 222) = *(a2 + 222);
  if ((v57 & 4) == 0)
  {
LABEL_165:
    if ((v57 & 8) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(v3 + 223) = *(a2 + 223);
  if ((v57 & 8) == 0)
  {
LABEL_166:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_195;
  }

LABEL_194:
  *(v3 + 224) = *(a2 + 224);
  if ((v57 & 0x10) == 0)
  {
LABEL_167:
    if ((v57 & 0x20) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_196;
  }

LABEL_195:
  *(v3 + 228) = *(a2 + 228);
  if ((v57 & 0x20) == 0)
  {
LABEL_168:
    if ((v57 & 0x40) == 0)
    {
      goto LABEL_169;
    }

LABEL_197:
    *(v3 + 236) = *(a2 + 236);
    if ((v57 & 0x80) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

LABEL_196:
  *(v3 + 232) = *(a2 + 232);
  if ((v57 & 0x40) != 0)
  {
    goto LABEL_197;
  }

LABEL_169:
  if ((v57 & 0x80) != 0)
  {
LABEL_170:
    *(v3 + 240) = *(a2 + 240);
  }

LABEL_171:
  *(v3 + 20) |= v57;
LABEL_172:
  if ((v57 & 0x7F00) == 0)
  {
    return result;
  }

  if ((v57 & 0x100) != 0)
  {
    *(v3 + 244) = *(a2 + 244);
    if ((v57 & 0x200) == 0)
    {
LABEL_175:
      if ((v57 & 0x400) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_201;
    }
  }

  else if ((v57 & 0x200) == 0)
  {
    goto LABEL_175;
  }

  *(v3 + 245) = *(a2 + 245);
  if ((v57 & 0x400) == 0)
  {
LABEL_176:
    if ((v57 & 0x800) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(v3 + 246) = *(a2 + 246);
  if ((v57 & 0x800) == 0)
  {
LABEL_177:
    if ((v57 & 0x1000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_203;
  }

LABEL_202:
  *(v3 + 247) = *(a2 + 247);
  if ((v57 & 0x1000) == 0)
  {
LABEL_178:
    if ((v57 & 0x2000) == 0)
    {
      goto LABEL_179;
    }

LABEL_204:
    *(v3 + 252) = *(a2 + 252);
    if ((v57 & 0x4000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

LABEL_203:
  *(v3 + 248) = *(a2 + 248);
  if ((v57 & 0x2000) != 0)
  {
    goto LABEL_204;
  }

LABEL_179:
  if ((v57 & 0x4000) != 0)
  {
LABEL_180:
    *(v3 + 253) = *(a2 + 253);
  }

LABEL_181:
  *(v3 + 20) |= v57;
  return result;
}

uint64_t sub_275FA6AA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_275FB576C((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_275FAD548((a1 + 24), (a2 + 24));
  result = sub_275FAD598((a1 + 168), (a2 + 168));
  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6)
    {
      *(a1 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

LABEL_11:
    *(a1 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v6 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_12:
    *(a1 + 16) |= 8u;
    v7 = *(a1 + 336);
    if (!v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C92D20](v8);
      *(a1 + 336) = v7;
    }

    if (*(a2 + 336))
    {
      v9 = *(a2 + 336);
    }

    else
    {
      v9 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v7, v9);
LABEL_20:
    if ((v6 & 0x10) != 0)
    {
      *(a1 + 16) |= 0x10u;
      v11 = *(a1 + 344);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_275FB03E0(v12);
        *(a1 + 344) = v11;
      }

      if (*(a2 + 344))
      {
        v13 = *(a2 + 344);
      }

      else
      {
        v13 = qword_2812F91E0;
      }

      result = sub_275FACD20(v11, v13);
      if ((v6 & 0x20) == 0)
      {
LABEL_22:
        if ((v6 & 0x40) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_45;
      }
    }

    else if ((v6 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    *(a1 + 16) |= 0x20u;
    v14 = *(a1 + 352);
    if (!v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = sub_275FB03E0(v15);
      *(a1 + 352) = v14;
    }

    if (*(a2 + 352))
    {
      v16 = *(a2 + 352);
    }

    else
    {
      v16 = qword_2812F91E0;
    }

    result = sub_275FACD20(v14, v16);
    if ((v6 & 0x40) == 0)
    {
LABEL_23:
      if ((v6 & 0x80) == 0)
      {
LABEL_25:
        *(a1 + 16) |= v6;
        goto LABEL_26;
      }

LABEL_24:
      *(a1 + 364) = *(a2 + 364);
      goto LABEL_25;
    }

LABEL_45:
    *(a1 + 360) = *(a2 + 360);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:
  if ((v6 & 0x100) != 0)
  {
    v10 = *(a2 + 365);
    *(a1 + 16) |= 0x100u;
    *(a1 + 365) = v10;
  }

  return result;
}

uint64_t *sub_275FA6CDC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA4534(result);

    return sub_275FA6264(v4, a2);
  }

  return result;
}

uint64_t sub_275FA6D28(uint64_t a1)
{
  v2 = *(a1 + 40);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCH::ChartUIState::IsInitialized(*(*(a1 + 48) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x20) != 0)
  {
    result = TSP::Size::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x40) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x80) != 0)
  {
    result = TSP::Size::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x100) != 0)
  {
    result = TSK::SelectionPathArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x200) != 0)
  {
    result = TSK::SelectionPathArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x400) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x800) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x1000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x2000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x4000) != 0)
  {
    result = sub_275FA6E90(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x8000) == 0)
  {
    return 1;
  }

  result = TSK::SelectionPathArchive::IsInitialized(*(a1 + 176));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275FA6E90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 336));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_275FACEF8(*(a1 + 344));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = sub_275FACEF8(*(a1 + 352));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275FA6F28(void *a1, uint64_t a2)
{
  *a1 = &unk_2884FFDD0;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812F8540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t *sub_275FA6F90(uint64_t *a1)
{
  if (a1 != &qword_2812F8FE8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275FA700C(uint64_t *a1)
{
  sub_275FA6F90(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FA704C()
{
  if (atomic_load_explicit(dword_2812F8540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F8FE8;
}

uint64_t *sub_275FA708C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Reference::Clear(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275FB57B8(v3);
  }

  return result;
}

google::protobuf::internal *sub_275FA70FC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_275FB1588(a3, &v19) & 1) == 0)
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

        v13 = MEMORY[0x277C92D60](v12);
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
          sub_275FB5524((a1 + 8));
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

        v15 = MEMORY[0x277C92D60](v14);
        LODWORD(v11) = v15;
        *(a1 + 24) = v15;
LABEL_28:
        v5 = v19;
      }
    }

    v10 = sub_27603450C(a3, v11, v5);
LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *sub_275FA729C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
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

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 32);
    *a2 = 18;
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA742C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 24));
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
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275FA750C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500988, 0);
  if (v4)
  {

    return sub_275FA75B4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA75B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    v6 = MEMORY[0x277D80A18];
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

        v7 = MEMORY[0x277C92D60](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = v6;
      }

      result = TSP::Reference::MergeFrom(v7, v9);
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

        v10 = MEMORY[0x277C92D60](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = v6;
      }

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return result;
}

uint64_t *sub_275FA76B0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA708C(result);

    return sub_275FA750C(v4, a2);
  }

  return result;
}

uint64_t sub_275FA76FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275FA7780(uint64_t *a1)
{
  if (a1 != &qword_2812F9010)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275FA77E4(uint64_t *a1)
{
  sub_275FA7780(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FA7824(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSP::Reference::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275FB57B8(v2);
  }

  return result;
}

google::protobuf::internal *sub_275FA7884(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v23) & 1) == 0)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C92D60](v14);
            LODWORD(v13) = v15;
            *(a1 + 24) = v15;
            v7 = v23;
          }

          v12 = sub_27603450C(a3, v13, v7);
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
            sub_275FB5524((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v16 = (v7 + 1);
      LODWORD(v17) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v18 = *v16;
      v17 = (v17 + (v18 << 7) - 128);
      if ((v18 & 0x80000000) == 0)
      {
        v16 = (v7 + 2);
LABEL_30:
        v23 = v16;
        *(a1 + 32) = v17;
        goto LABEL_31;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v17);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_38:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_275FB1588(a3, &v23))
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

unsigned __int8 *sub_275FA7A60(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 24);
  *a2 = 18;
  v10 = *(v9 + 5);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      a2[2] = v12;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v9, v11, a3);
LABEL_24:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA7BE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_275FA7C70(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v3 = sub_275FA7BE8(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v3 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275FA7D2C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885009A0, 0);
  if (v4)
  {

    return sub_275FA7DD4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA7DD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = MEMORY[0x277C92D60](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_275FA7E88(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA7824(result);

    return sub_275FA7D2C(v4, a2);
  }

  return result;
}

uint64_t sub_275FA7ED4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(*(a1 + 24));
  }
}

uint64_t sub_275FA7F2C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FFF30;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F8500, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275FA7FB4(uint64_t a1)
{
  sub_275F8A514((a1 + 8));
  sub_275FB6BDC((a1 + 16));
  return a1;
}

void sub_275FA7FF4(uint64_t a1)
{
  sub_275FA7FB4(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FA8034(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (result[4] + 8);
    do
    {
      v4 = *v3++;
      result = sub_275FA7824(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  if (v6)
  {

    return sub_275FB57B8(v5);
  }

  return result;
}

google::protobuf::internal *sub_275FA80B0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_275FB1588(a3, &v20) & 1) == 0)
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
          v13 = sub_275FAFEB8(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_276036C60(a3, v13, v10);
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
        sub_275FB5524((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_275FB1588(a3, &v20))
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

unsigned __int8 *sub_275FA8280(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
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

      a2 = sub_275FA7A60(v8, v10, a3, a4);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA83A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_275FA7C70(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 40) = v2;
    return v2;
  }
}

uint64_t sub_275FA845C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885009B8, 0);
  if (v4)
  {

    return sub_275FA8504(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA8504(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_275FB6C60(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

uint64_t *sub_275FA85A4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA8034(result);

    return sub_275FA845C(v4, a2);
  }

  return result;
}

BOOL sub_275FA85F8(uint64_t a1)
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

  while ((TSP::Reference::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_275FA8698(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FFFE0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F82F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275FA8720(uint64_t a1)
{
  sub_275F8A514((a1 + 8));
  sub_275FB56E8((a1 + 16));
  return a1;
}

void sub_275FA8760(uint64_t a1)
{
  sub_275FA8720(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FA87A0(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (result[4] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  if (v6)
  {

    return sub_275FB57B8(v5);
  }

  return result;
}

google::protobuf::internal *sub_275FA881C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_275FB1588(a3, &v21) & 1) == 0)
  {
    while (1)
    {
      v5 = (v21 + 1);
      v6 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v19;
LABEL_6:
      if (v6 == 10)
      {
        v9 = v5 - 1;
        while (1)
        {
          v10 = (v9 + 1);
          v21 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v17 = *(a1 + 24);
          v12 = *v11;
          if (v17 < *v11)
          {
            *(a1 + 24) = v17 + 1;
            v14 = *&v11[2 * v17 + 2];
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
          v13 = MEMORY[0x277C92D60](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_27603450C(a3, v14, v10);
          v21 = v9;
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
        return v21;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275FB5524((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_275FB1588(a3, &v21))
      {
        return v21;
      }
    }

    v5 = (v21 + 2);
LABEL_5:
    v21 = v5;
    goto LABEL_6;
  }

  return v21;
}

unsigned __int8 *sub_275FA89EC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA8B10(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 40) = v2;
    return v2;
  }
}

uint64_t sub_275FA8BC8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885009D0, 0);
  if (v4)
  {

    return sub_275F93D18(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275FA8C70(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA87A0(result);

    return sub_275FA8BC8(v4, a2);
  }

  return result;
}

BOOL sub_275FA8CBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

void *sub_275FA8D50(void *a1, uint64_t a2)
{
  *a1 = &unk_288500090;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812F8318, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void *sub_275FA8DDC(void *a1)
{
  if (a1 != qword_2812F9098)
  {
    v2 = a1[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }

    if (a1[7])
    {
      v3 = MEMORY[0x277C92AB0]();
      MEMORY[0x277C93390](v3, 0x10A1C40290C9B23);
    }
  }

  sub_275F8A514(a1 + 1);
  sub_275FB6D20(a1 + 3);
  return a1;
}

void sub_275FA8E6C(void *a1)
{
  sub_275FA8DDC(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FA8EAC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::UUIDPath::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = TSP::Reference::Clear(v1[6]);
    }

    if ((v5 & 2) != 0)
    {
      result = TSP::UUIDPath::Clear(v1[7]);
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 1;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_275FB57B8(v6);
  }

  return result;
}

google::protobuf::internal *sub_275FA8F50(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275FB1588(a3, &v30))
    {
      return v30;
    }

    v5 = (v30 + 1);
    v6 = *v30;
    if ((*v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v30 + 2);
LABEL_6:
      v30 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v7 - 128));
    v30 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v28;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      v15 = v5 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        v30 = (v15 + 1);
        v17 = *(a1 + 40);
        if (!v17)
        {
          goto LABEL_29;
        }

        v23 = *(a1 + 32);
        v18 = *v17;
        if (v23 < *v17)
        {
          *(a1 + 32) = v23 + 1;
          v20 = *&v17[2 * v23 + 2];
          goto LABEL_33;
        }

        if (v18 == *(a1 + 36))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v17 = *(a1 + 40);
          v18 = *v17;
        }

        *v17 = v18 + 1;
        v19 = MEMORY[0x277C92D50](*(a1 + 24));
        LODWORD(v20) = v19;
        v21 = *(a1 + 32);
        v22 = *(a1 + 40) + 8 * v21;
        *(a1 + 32) = v21 + 1;
        *(v22 + 8) = v19;
        v16 = v30;
LABEL_33:
        v15 = sub_276034C5C(a3, v20, v16);
        v30 = v15;
        if (!v15)
        {
          return 0;
        }

        if (*a3 <= v15 || *v15 != 26)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 2)
    {
      if (v6 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 56);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C92D50](v13);
          LODWORD(v12) = v14;
          *(a1 + 56) = v14;
          v5 = v30;
        }

        v11 = sub_276034C5C(a3, v12, v5);
        goto LABEL_44;
      }
    }

    else if (v8 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v24 = *(a1 + 48);
      if (!v24)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C92D60](v25);
        LODWORD(v24) = v26;
        *(a1 + 48) = v26;
        v5 = v30;
      }

      v11 = sub_27603450C(a3, v24, v5);
      goto LABEL_44;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275FB5524((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
    v30 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v30;
}

unsigned __int8 *sub_275FA91CC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 48);
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

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 56);
    *a2 = 18;
    v14 = *(v13 + 10);
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

    a2 = TSP::UUIDPath::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 26;
      v22 = *(v21 + 10);
      if (v22 > 0x7F)
      {
        a2[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = a2 + 3;
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
          a2[2] = v24;
          v23 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v22;
        v23 = a2 + 2;
      }

      a2 = TSP::UUIDPath::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA941C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
      v7 = TSP::UUIDPath::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TSP::Reference::ByteSizeLong(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TSP::UUIDPath::ByteSizeLong(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275FA9540(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885009E8, 0);
  if (v4)
  {

    return sub_275FA95E8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA95E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB6DA4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
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

        v11 = MEMORY[0x277C92D60](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v11, v13);
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

        v14 = MEMORY[0x277C92D50](v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = MEMORY[0x277D80A10];
      }

      return TSP::UUIDPath::MergeFrom(v14, v16);
    }
  }

  return result;
}

uint64_t *sub_275FA9748(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA8EAC(result);

    return sub_275FA9540(v4, a2);
  }

  return result;
}

uint64_t sub_275FA9794(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUIDPath::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUIDPath::IsInitialized(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275FA9848(uint64_t *a1)
{
  if (a1 != &qword_2812F90D8)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275F912A8(v2);
      MEMORY[0x277C93390](v3, 0x10A1C40290C9B23);
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275FA98AC(uint64_t *a1)
{
  sub_275FA9848(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FA98EC(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_275F91328(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275FB57B8(v2);
  }

  return result;
}

google::protobuf::internal *sub_275FA994C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = sub_275FAF034(v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_276034B8C(a3, v13, v7);
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
            sub_275FB5524((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v15 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *v15;
      v16 = (v16 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_30:
        v22 = v15;
        *(a1 + 32) = v16;
        goto LABEL_31;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v16);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_38:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_275FB1588(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_275FA9B28(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 24);
  *a2 = 18;
  v10 = *(v9 + 40);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      a2[2] = v12;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = sub_275F91574(v9, v11, a3, a4);
LABEL_24:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FA9CB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_275F91698(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_275FA9D38(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v3 = sub_275FA9CB0(a1);
  }

  else
  {
    v2 = sub_275F91698(*(a1 + 24));
    v3 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275FA9DF4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A00, 0);
  if (v4)
  {

    return sub_275FA9E9C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FA9E9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = sub_275FAF034(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &unk_2812F87F0;
      }

      result = sub_275F917F8(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_275FA9F50(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA98EC(result);

    return sub_275FA9DF4(v4, a2);
  }

  return result;
}

uint64_t sub_275FA9FFC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885001F0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812F82B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_275FAA088(_Unwind_Exception *a1)
{
  sub_275FB56E8(v2);
  sub_275FB6E64(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275FAA0AC(uint64_t a1)
{
  if (a1 != &unk_2812F9100)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514((a1 + 8));
  sub_275FB56E8((a1 + 48));
  sub_275FB6E64((a1 + 24));
  return a1;
}

void sub_275FAA128(uint64_t a1)
{
  sub_275FAA0AC(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FAA168(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_275FA98EC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (v1[8] + 8);
    do
    {
      v7 = *v6++;
      result = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  if (v1[2])
  {
    result = TSP::Reference::Clear(v1[9]);
  }

  v9 = *(v1 + 8);
  v8 = v1 + 1;
  *(v8 + 18) = 0;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_275FB57B8(v8);
  }

  return result;
}

google::protobuf::internal *sub_275FAA224(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v41) & 1) == 0)
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
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v38;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_52;
          }

          v15 = v7 - 1;
          while (2)
          {
            v16 = (v15 + 1);
            v41 = (v15 + 1);
            v17 = *(a1 + 64);
            if (!v17)
            {
LABEL_23:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v17 = *(a1 + 64);
              v18 = *v17;
              goto LABEL_24;
            }

            v23 = *(a1 + 56);
            v18 = *v17;
            if (v23 >= *v17)
            {
              if (v18 == *(a1 + 60))
              {
                goto LABEL_23;
              }

LABEL_24:
              *v17 = v18 + 1;
              v19 = MEMORY[0x277C92D60](*(a1 + 48));
              LODWORD(v20) = v19;
              v21 = *(a1 + 56);
              v22 = *(a1 + 64) + 8 * v21;
              *(a1 + 56) = v21 + 1;
              *(v22 + 8) = v19;
              v16 = v41;
            }

            else
            {
              *(a1 + 56) = v23 + 1;
              v20 = *&v17[2 * v23 + 2];
            }

            v15 = sub_27603450C(a3, v20, v16);
            v41 = v15;
            if (!v15)
            {
              goto LABEL_67;
            }

            if (*a3 <= v15 || *v15 != 34)
            {
              goto LABEL_60;
            }

            continue;
          }
        }

        if (v8 != 26)
        {
          goto LABEL_52;
        }

        v28 = (v7 - 1);
        while (2)
        {
          v29 = (v28 + 1);
          v41 = (v28 + 1);
          v30 = *(a1 + 40);
          if (!v30)
          {
LABEL_42:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v30 = *(a1 + 40);
            v31 = *v30;
            goto LABEL_43;
          }

          v35 = *(a1 + 32);
          v31 = *v30;
          if (v35 >= *v30)
          {
            if (v31 == *(a1 + 36))
            {
              goto LABEL_42;
            }

LABEL_43:
            *v30 = v31 + 1;
            v32 = sub_275FB012C(*(a1 + 24));
            v33 = *(a1 + 32);
            v34 = *(a1 + 40) + 8 * v33;
            *(a1 + 32) = v33 + 1;
            *(v34 + 8) = v32;
            v29 = v41;
          }

          else
          {
            *(a1 + 32) = v35 + 1;
            v32 = *&v30[2 * v35 + 2];
          }

          v28 = sub_276036D30(a3, v32, v29);
          v41 = v28;
          if (!v28)
          {
            goto LABEL_67;
          }

          if (*a3 <= v28 || *v28 != 26)
          {
            goto LABEL_60;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v24 = *(a1 + 72);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277C92D60](v25);
            LODWORD(v24) = v26;
            *(a1 + 72) = v26;
            v7 = v41;
          }

          v27 = sub_27603450C(a3, v24, v7);
LABEL_59:
          v41 = v27;
          if (!v27)
          {
            goto LABEL_67;
          }

          goto LABEL_60;
        }

LABEL_52:
        if (v8)
        {
          v36 = (v8 & 7) == 4;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275FB5524((a1 + 8));
        }

        v27 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_59;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_52;
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
        v41 = v12;
        *(a1 + 80) = v13;
        goto LABEL_60;
      }

      v39 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v41 = v39;
      *(a1 + 80) = v40;
      if (!v39)
      {
LABEL_67:
        v41 = 0;
        goto LABEL_2;
      }

LABEL_60:
      if (sub_275FB1588(a3, &v41))
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

unsigned __int8 *sub_275FAA5A8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 72);
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

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 80);
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

  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 26;
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

      a2 = sub_275FA9B28(v19, v21, a3, a4);
    }
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v27 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 34;
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

      a2 = TSP::Reference::_InternalSerialize(v27, v29, a3);
    }
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v33 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FAA89C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_275FAA924(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v3 = sub_275FAA89C(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    v3 = v2 + ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 = *(a1 + 32);
  v5 = v3 + v4;
  v6 = *(a1 + 40);
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
      v10 = sub_275FA9D38(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  v13 = *(a1 + 64);
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
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v12;
    return v12;
  }
}

uint64_t sub_275FAAA8C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A18, 0);
  if (v4)
  {

    return sub_275FAAB34(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FAAB34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB6EE8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_275FB5808(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
  if ((v15 & 3) != 0)
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

        v16 = MEMORY[0x277C92D60](v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v16, v18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 80) = *(a2 + 80);
    }

    *(v3 + 16) |= v15;
  }

  return result;
}

uint64_t *sub_275FAACA0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FAA168(result);

    return sub_275FAAA8C(v4, a2);
  }

  return result;
}

uint64_t sub_275FAACEC(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = sub_275FAAD78(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((IsInitialized & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_275FAAD78(uint64_t a1)
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

  while (sub_275F918EC(*(v4 + 24) + 16));
  return v3 < 1;
}

uint64_t *sub_275FAAE20(uint64_t *a1)
{
  if (a1 != &qword_2812F9158)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C93390]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275FAAEA4(uint64_t *a1)
{
  sub_275FAAE20(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FAAEE4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::UUID::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Reference::Clear(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275FB57B8(v3);
  }

  return result;
}

google::protobuf::internal *sub_275FAAF54(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_275FB1588(a3, &v20) & 1) == 0)
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

        v13 = MEMORY[0x277C92D60](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_27603450C(a3, v11, v5);
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
          sub_275FB5524((a1 + 8));
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

        v16 = MEMORY[0x277C92D20](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_276034ECC(a3, v14, v5);
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

unsigned __int8 *sub_275FAB100(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
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

    a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 32);
    *a2 = 18;
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FAB290(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::UUID::ByteSizeLong(*(a1 + 24));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275FAB324(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v4 = sub_275FAB290(a1);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(*(a1 + 24));
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275FAB3F8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A30, 0);
  if (v4)
  {

    return sub_275FAB4A0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FAB4A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = MEMORY[0x277C92D20](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      result = TSP::UUID::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C92D60](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return result;
}

uint64_t *sub_275FAB5A4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FAAEE4(result);

    return sub_275FAB3F8(v4, a2);
  }

  return result;
}

uint64_t sub_275FAB5F0(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 24));
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 32));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_275FAB68C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288500350;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 40) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_2812F8368, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

void sub_275FAB71C(_Unwind_Exception *a1)
{
  sub_275FB56E8(v3);
  sub_275FB6FA8(v2);
  sub_275FB56E8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275FAB74C(uint64_t *a1)
{
  sub_275F8A514(a1 + 1);
  sub_275FB56E8(a1 + 8);
  sub_275FB6FA8(a1 + 5);
  sub_275FB56E8(a1 + 2);
  return a1;
}

void sub_275FAB7A4(uint64_t *a1)
{
  sub_275FAB74C(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FAB7E4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (result[4] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v5 = *(v1 + 12);
  if (v5 >= 1)
  {
    v6 = (v1[7] + 8);
    do
    {
      v7 = *v6++;
      result = sub_275FAAEE4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 12) = 0;
  }

  v8 = *(v1 + 18);
  if (v8 >= 1)
  {
    v9 = (v1[10] + 8);
    do
    {
      v10 = *v9++;
      result = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 18) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 1;
  if (v12)
  {

    return sub_275FB57B8(v11);
  }

  return result;
}

google::protobuf::internal *sub_275FAB8B0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  if ((sub_275FB1588(a3, &v40) & 1) == 0)
  {
    while (1)
    {
      v6 = (v40 + 1);
      v7 = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v8 - 128));
      v40 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v39;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_13;
        }

        v20 = v6 - 1;
        while (2)
        {
          v21 = (v20 + 1);
          v40 = (v20 + 1);
          v22 = *(a1 + 80);
          if (!v22)
          {
LABEL_38:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64));
            v22 = *(a1 + 80);
            v23 = *v22;
            goto LABEL_39;
          }

          v28 = *(a1 + 72);
          v23 = *v22;
          if (v28 >= *v22)
          {
            if (v23 == *(a1 + 76))
            {
              goto LABEL_38;
            }

LABEL_39:
            *v22 = v23 + 1;
            v24 = MEMORY[0x277C92D60](*(a1 + 64));
            LODWORD(v25) = v24;
            v26 = *(a1 + 72);
            v27 = *(a1 + 80) + 8 * v26;
            *(a1 + 72) = v26 + 1;
            *(v27 + 8) = v24;
            v21 = v40;
          }

          else
          {
            *(a1 + 72) = v28 + 1;
            v25 = *&v22[2 * v28 + 2];
          }

          v20 = sub_27603450C(a3, v25, v21);
          v40 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 26)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      if (v9 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_13;
        }

        v12 = (v6 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v40 = (v12 + 1);
          v14 = *(a1 + 56);
          if (!v14)
          {
LABEL_25:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
            v14 = *(a1 + 56);
            v15 = *v14;
            goto LABEL_26;
          }

          v19 = *(a1 + 48);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 52))
            {
              goto LABEL_25;
            }

LABEL_26:
            *v14 = v15 + 1;
            v16 = sub_275FB0288(*(a1 + 40));
            v17 = *(a1 + 48);
            v18 = *(a1 + 56) + 8 * v17;
            *(a1 + 48) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v40;
          }

          else
          {
            *(a1 + 48) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_276036E00(a3, v16, v13);
          v40 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      if (v9 == 1 && v7 == 10)
      {
        v29 = v6 - 1;
        while (1)
        {
          v30 = (v29 + 1);
          v40 = (v29 + 1);
          v31 = *(a1 + 32);
          if (!v31)
          {
            goto LABEL_50;
          }

          v37 = *(a1 + 24);
          v32 = *v31;
          if (v37 < *v31)
          {
            *(a1 + 24) = v37 + 1;
            v34 = *&v31[2 * v37 + 2];
            goto LABEL_54;
          }

          if (v32 == *(a1 + 28))
          {
LABEL_50:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v31 = *(a1 + 32);
            v32 = *v31;
          }

          *v31 = v32 + 1;
          v33 = MEMORY[0x277C92D60](*(a1 + 16));
          LODWORD(v34) = v33;
          v35 = *(a1 + 24);
          v36 = *(a1 + 32) + 8 * v35;
          *(a1 + 24) = v35 + 1;
          *(v36 + 8) = v33;
          v30 = v40;
LABEL_54:
          v29 = sub_27603450C(a3, v34, v30);
          v40 = v29;
          if (!v29)
          {
            return 0;
          }

          if (*a3 <= v29 || *v29 != 10)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_13:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(a3 + 80) = v7 - 1;
        return v40;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275FB5524((a1 + 8));
      }

      v40 = google::protobuf::internal::UnknownFieldParse();
      if (!v40)
      {
        return 0;
      }

LABEL_20:
      if (sub_275FB1588(a3, &v40))
      {
        return v40;
      }
    }

    v6 = (v40 + 2);
LABEL_6:
    v40 = v6;
    goto LABEL_7;
  }

  return v40;
}

unsigned __int8 *sub_275FABC30(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(a1 + 56) + 8 * j + 8);
      *a2 = 18;
      v17 = *(v16 + 20);
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

      a2 = sub_275FAB100(v16, v18, a3, a4);
    }
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(a1 + 80) + 8 * k + 8);
      *a2 = 26;
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

      a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
    }
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v30 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275FABEBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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

  v8 = *(a1 + 48);
  v9 = v2 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_275FAB324(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 72);
  v16 = v9 + v15;
  v17 = *(a1 + 80);
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
      v21 = TSP::Reference::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 88) = v16;
    return v16;
  }
}

uint64_t sub_275FAC014(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A48, 0);
  if (v4)
  {

    return sub_275FAC0BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FAC0BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_275FB5808(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a2 + 56);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 40));
    result = sub_275FB702C(v3 + 40, v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
    v13 = *(v3 + 48) + v10;
    *(v3 + 48) = v13;
    v14 = *(v3 + 56);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 72);
  if (v15)
  {
    v16 = *(a2 + 80);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 64));
    result = sub_275FB5808(v3 + 64, v17, (v16 + 8), v15, **(v3 + 80) - *(v3 + 72));
    v18 = *(v3 + 72) + v15;
    *(v3 + 72) = v18;
    v19 = *(v3 + 80);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  return result;
}

uint64_t *sub_275FAC214(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FAB7E4(result);

    return sub_275FAC014(v4, a2);
  }

  return result;
}

BOOL sub_275FAC260(uint64_t a1)
{
  v2 = *(a1 + 24);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 32) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 48);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_275FAB5F0(*(*(a1 + 56) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 72);
  do
  {
    v8 = v10 < 1;
    if (v10 < 1)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = TSP::Reference::IsInitialized(*(*(a1 + 80) + 8 * v10));
    v10 = v11;
  }

  while ((v12 & 1) != 0);
  return v8;
}

void *sub_275FAC344(void *a1, uint64_t a2)
{
  *a1 = &unk_288500400;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812F8148, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v3;
  return a1;
}

void *sub_275FAC3DC(void *a1)
{
  v2 = a1[6];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812F91E0)
  {
    v3 = a1[7];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C93390]();
    }

    v4 = a1[8];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  sub_275FB70EC(a1 + 3);
  return a1;
}

void sub_275FAC4A0(void *a1)
{
  sub_275FAC3DC(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275FAC4E0(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSWP::MergeFieldTypeArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v8 = v1[6] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  result = TSP::UUID::Clear(v1[7]);
  if ((v5 & 4) != 0)
  {
LABEL_9:
    result = TSP::UUID::Clear(v1[8]);
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 1;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_275FB57B8(v6);
  }

  return result;
}

google::protobuf::internal *sub_275FAC5C0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275FB1588(a3, &v29))
    {
      return v29;
    }

    v5 = (v29 + 1);
    v6 = *v29;
    if ((*v29 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v29 + 2);
LABEL_6:
      v29 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v7 - 128));
    v29 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v27;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      break;
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
        goto LABEL_42;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 56);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D20](v11);
        LODWORD(v10) = v12;
        *(a1 + 56) = v12;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (v6 != 10)
    {
      goto LABEL_42;
    }

    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Mutable();
    v15 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_49:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  if (v8 != 3)
  {
    if (v8 != 4 || v6 != 34)
    {
      goto LABEL_42;
    }

    *(a1 + 16) |= 4u;
    v10 = *(a1 + 64);
    if (!v10)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C92D20](v13);
      LODWORD(v10) = v14;
      *(a1 + 64) = v14;
LABEL_25:
      v5 = v29;
    }

LABEL_26:
    v15 = sub_276034ECC(a3, v10, v5);
    goto LABEL_49;
  }

  if (v6 == 26)
  {
    v16 = v5 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      v29 = (v16 + 1);
      v18 = *(a1 + 40);
      if (!v18)
      {
        goto LABEL_32;
      }

      v24 = *(a1 + 32);
      v19 = *v18;
      if (v24 < *v18)
      {
        *(a1 + 32) = v24 + 1;
        v21 = *&v18[2 * v24 + 2];
        goto LABEL_36;
      }

      if (v19 == *(a1 + 36))
      {
LABEL_32:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v18 = *(a1 + 40);
        v19 = *v18;
      }

      *v18 = v19 + 1;
      v20 = MEMORY[0x277C92DA0](*(a1 + 24));
      LODWORD(v21) = v20;
      v22 = *(a1 + 32);
      v23 = *(a1 + 40) + 8 * v22;
      *(a1 + 32) = v22 + 1;
      *(v23 + 8) = v20;
      v17 = v29;
LABEL_36:
      v16 = sub_276036ED0(a3, v21, v17);
      v29 = v16;
      if (!v16)
      {
        return 0;
      }

      if (*a3 <= v16 || *v16 != 26)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_42:
  if (v6)
  {
    v25 = (v6 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275FB5524((a1 + 8));
    }

    v15 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_49;
  }

  *(a3 + 80) = v6 - 1;
  return v29;
}

unsigned __int8 *sub_275FAC884(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275F8C698(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(a1 + 56);
    *v4 = 18;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
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
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = TSWP::MergeFieldTypeArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v21 = *(a1 + 64);
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

    v4 = TSP::UUID::_InternalSerialize(v21, v23, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275FACB04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
      v7 = TSWP::MergeFieldTypeArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v14 = TSP::UUID::ByteSizeLong(*(a1 + 56));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = TSP::UUID::ByteSizeLong(*(a1 + 64));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275FACC78(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A60, 0);
  if (v4)
  {

    return sub_275FACD20(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FACD20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB7170(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v11 = MEMORY[0x277D809E0];
    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v12 = *(v3 + 56);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D20](v13);
        *(v3 + 56) = v12;
      }

      if (*(a2 + 56))
      {
        v14 = *(a2 + 56);
      }

      else
      {
        v14 = v11;
      }

      result = TSP::UUID::MergeFrom(v12, v14);
    }

    if ((v10 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v15 = *(v3 + 64);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C92D20](v16);
        *(v3 + 64) = v15;
      }

      if (*(a2 + 64))
      {
        v17 = *(a2 + 64);
      }

      else
      {
        v17 = v11;
      }

      return TSP::UUID::MergeFrom(v15, v17);
    }
  }

  return result;
}

uint64_t *sub_275FACEAC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FAC4E0(result);

    return sub_275FACC78(v4, a2);
  }

  return result;
}

uint64_t sub_275FACEF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275FACF80(uint64_t result, _DWORD *a2)
{
  v2 = a2[8];
  if (v2)
  {
    v4 = result;
    if (v2)
    {
      google::protobuf::internal::ArenaStringPtr::Mutable();
      (*(*a2 + 160))(a2);
      result = google::protobuf::internal::ArenaStringPtr::Set();
      *(v4 + 32) |= 1u;
      v2 = a2[8];
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      if (!*(v4 + 24))
      {
        *(v4 + 24) = MEMORY[0x277C92DA0](v5);
      }

      v6 = (*(*a2 + 168))(a2);
      result = TSWP::MergeFieldTypeArchive::MergeFrom(*(v4 + 24), v6);
      *(v4 + 32) |= 2u;
    }
  }

  return result;
}

uint64_t sub_275FAD0D8(uint64_t result, _DWORD *a2)
{
  v2 = a2[8];
  if (v2)
  {
    v4 = result;
    if (v2)
    {
      google::protobuf::internal::ArenaStringPtr::Mutable();
      (*(*a2 + 160))(a2);
      result = google::protobuf::internal::ArenaStringPtr::Set();
      *(v4 + 32) |= 1u;
      v2 = a2[8];
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      if (!*(v4 + 24))
      {
        *(v4 + 24) = MEMORY[0x277C92DA0](v5);
      }

      v6 = (*(*a2 + 168))(a2);
      result = TSWP::MergeFieldTypeArchive::MergeFrom(*(v4 + 24), v6);
      *(v4 + 32) |= 2u;
    }
  }

  return result;
}

uint64_t sub_275FAD230(google::protobuf::internal::MapFieldBase *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 1)
    {
      v4 = (*(v2 + 16) + 8);
      do
      {
        v5 = *v4++;
        (*(*v5 + 40))(v5);
        --v3;
      }

      while (v3);
      *(v2 + 8) = 0;
    }
  }

  sub_275FB2400(a1 + 96);

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t sub_275FAD2C4(google::protobuf::internal::MapFieldBase *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 1)
    {
      v4 = (*(v2 + 16) + 8);
      do
      {
        v5 = *v4++;
        (*(*v5 + 40))(v5);
        --v3;
      }

      while (v3);
      *(v2 + 8) = 0;
    }
  }

  sub_275FB2400(a1 + 96);

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t sub_275FAD358(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288500630;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_275FB7230(a1 + 24, a2);
  *(a1 + 24) = &unk_288500F80;
  *(a1 + 120) = xmmword_27605AD60;
  *(a1 + 136) = xmmword_27605AD60;
  v4 = MEMORY[0x277D80A88];
  *(a1 + 152) = MEMORY[0x277D80A88];
  *(a1 + 160) = a2;
  sub_275FB7230(a1 + 168, a2);
  *(a1 + 168) = &unk_288500E40;
  *(a1 + 264) = 0;
  *(a1 + 272) = xmmword_27605AD70;
  *(a1 + 288) = 1;
  *(a1 + 296) = v4;
  *(a1 + 304) = a2;
  if (atomic_load_explicit(dword_2812F80F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v5 = MEMORY[0x277D80A90];
  *(a1 + 312) = MEMORY[0x277D80A90];
  *(a1 + 320) = v5;
  *(a1 + 328) = v5;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 364) = 257;
  return a1;
}

void sub_275FAD47C(_Unwind_Exception *a1)
{
  sub_275FAD4A0(v2);
  sub_275FAD4F4(v1);
  _Unwind_Resume(a1);
}

void sub_275FAD4A0(google::protobuf::internal::MapFieldBase *a1)
{
  *a1 = &unk_288500E40;
  sub_275FB23AC(a1 + 96);

  google::protobuf::internal::MapFieldBase::~MapFieldBase(a1);
}

void sub_275FAD4F4(google::protobuf::internal::MapFieldBase *a1)
{
  *a1 = &unk_288500F80;
  sub_275FB23AC(a1 + 96);

  google::protobuf::internal::MapFieldBase::~MapFieldBase(a1);
}

uint64_t sub_275FAD548(uint64_t *a1, google::protobuf::internal::MapFieldBase *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a2);
  sub_275FB72D8(a1 + 12, a2 + 12);

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t sub_275FAD598(uint64_t *a1, google::protobuf::internal::MapFieldBase *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a2);
  sub_275FB72D8(a1 + 12, a2 + 12);

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t *sub_275FAD5E8(uint64_t *a1)
{
  sub_275FAD67C(a1);
  sub_275F8A514(a1 + 1);
  a1[21] = &unk_288500E40;
  sub_275FB23AC((a1 + 33));
  google::protobuf::internal::MapFieldBase::~MapFieldBase((a1 + 21));
  a1[3] = &unk_288500F80;
  sub_275FB23AC((a1 + 15));
  google::protobuf::internal::MapFieldBase::~MapFieldBase((a1 + 3));
  return a1;
}

void *sub_275FAD67C(void *result)
{
  v1 = result;
  v2 = result[39];
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  v4 = v1[40];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C93390](v4, 0x1012C40EC159624);
  }

  v5 = v1[41];
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C93390](v5, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F9288)
  {
    v6 = v1[42];
    if (v6)
    {
      TSP::UUID::~UUID(v6);
      MEMORY[0x277C93390]();
    }

    v7 = v1[43];
    if (v7)
    {
      v8 = sub_275FAC3DC(v7);
      MEMORY[0x277C93390](v8, 0x10A1C408DC1759FLL);
    }

    result = v1[44];
    if (result)
    {
      sub_275FAC3DC(result);

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

void sub_275FAD7BC(uint64_t *a1)
{
  sub_275FAD5E8(a1);

  JUMPOUT(0x277C93390);
}

google::protobuf::internal *sub_275FAD7FC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_275FB1588(a3, &v37))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (v37 + 1);
    v8 = *v37;
    if ((*v37 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v37 + 2);
LABEL_6:
      v37 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v37, (v9 - 128));
    v37 = TagFallback;
    if (!TagFallback)
    {
      goto LABEL_98;
    }

    v7 = TagFallback;
    v8 = v19;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v8 == 24)
        {
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v37 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            if (!v37)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_64:
            v37 = v26;
          }

          if (v25 > 1)
          {
            sub_27603781C();
          }

          else
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 360) = v25;
          }

          goto LABEL_88;
        }

        goto LABEL_80;
      }

      if (v10 != 4)
      {
        if (v10 == 5 && v8 == 42)
        {
          *(a1 + 16) |= 2u;
          goto LABEL_53;
        }

LABEL_80:
        if (v8)
        {
          v32 = (v8 & 7) == 4;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275FB5524((a1 + 8));
        }

        v23 = google::protobuf::internal::UnknownFieldParse();
LABEL_87:
        v37 = v23;
        if (!v23)
        {
          goto LABEL_98;
        }

        goto LABEL_88;
      }

      if (v8 != 34)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 1u;
LABEL_53:
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v23 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_87;
    }

    if (v10 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_80;
      }

      v5 |= 0x80u;
      v21 = (v7 + 1);
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_48;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v7 + 2);
LABEL_48:
        v37 = v21;
        *(a1 + 364) = v20 != 0;
        goto LABEL_88;
      }

      v33 = google::protobuf::internal::VarintParseSlow64(v7, v20);
      v37 = v33;
      *(a1 + 364) = v34 != 0;
      if (!v33)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_80;
      }

      v5 |= 0x100u;
      v16 = (v7 + 1);
      v15 = *v7;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }

      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = (v7 + 2);
LABEL_41:
        v37 = v16;
        *(a1 + 365) = v15 != 0;
        goto LABEL_88;
      }

      v35 = google::protobuf::internal::VarintParseSlow64(v7, v15);
      v37 = v35;
      *(a1 + 365) = v36 != 0;
      if (!v35)
      {
        goto LABEL_98;
      }
    }

LABEL_88:
    if (sub_275FB1588(a3, &v37))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 8)
  {
    if (v10 == 6)
    {
      if (v8 != 50)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 8u;
      v28 = *(a1 + 336);
      if (!v28)
      {
        v29 = *(a1 + 8);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = MEMORY[0x277C92D20](v29);
        LODWORD(v28) = v30;
        *(a1 + 336) = v30;
        v7 = v37;
      }

      v23 = sub_276034ECC(a3, v28, v7);
      goto LABEL_87;
    }

    if (v10 == 7)
    {
      if (v8 != 58)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 4u;
      goto LABEL_53;
    }

    if (v10 != 8 || v8 != 66)
    {
      goto LABEL_80;
    }

    *(a1 + 16) |= 0x10u;
    v11 = *(a1 + 344);
    if (!v11)
    {
      v12 = *(a1 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_275FB03E0(v12);
      *(a1 + 344) = v11;
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  if (v10 == 9)
  {
    if (v8 != 74)
    {
      goto LABEL_80;
    }

    *(a1 + 16) |= 0x20u;
    v11 = *(a1 + 352);
    if (!v11)
    {
      v31 = *(a1 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_275FB03E0(v31);
      *(a1 + 352) = v11;
LABEL_78:
      v7 = v37;
    }

LABEL_79:
    v23 = sub_276036FA0(a3, v11, v7);
    goto LABEL_87;
  }

  if (v10 != 10)
  {
    if (v10 == 11 && v8 == 90)
    {
      v13 = (v7 - 1);
      while (1)
      {
        v37 = (v13 + 1);
        v13 = sub_276037140(a3, a1 + 168, (v13 + 1));
        v37 = v13;
        if (!v13)
        {
          goto LABEL_98;
        }

        if (*a3 <= v13 || *v13 != 90)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_80;
  }

  if (v8 != 82)
  {
    goto LABEL_80;
  }

  v24 = (v7 - 1);
  while (1)
  {
    v37 = (v24 + 1);
    v24 = sub_276037070(a3, a1 + 24, (v24 + 1));
    v37 = v24;
    if (!v24)
    {
      break;
    }

    if (*a3 <= v24 || *v24 != 82)
    {
      goto LABEL_88;
    }
  }

LABEL_98:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

unsigned __int8 *sub_275FADCF8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 364);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

LABEL_17:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(a1 + 360);
      *v4 = 24;
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v10 = v9 >> 7;
        if (v9 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v4;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v4 - 1) = v11;
          if (v6)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v4[2] = v10;
          v4 += 3;
          if (v6)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v4[1] = v9;
        v4 += 2;
        if (v6)
        {
          goto LABEL_28;
        }
      }

LABEL_5:
      if ((v6 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
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

  v8 = *(a1 + 365);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_28:
  v4 = sub_275F8C698(a3, 4, (*(a1 + 312) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4 = sub_275F8C698(a3, 5, (*(a1 + 320) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 336);
  *v4 = 50;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
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
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v4 = sub_275F8C698(a3, 7, (*(a1 + 328) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 344);
  *v4 = 66;
  v20 = *(v19 + 20);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = (v4 + 3);
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        v21 = (v21 + 1);
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v20;
    v21 = (v4 + 2);
  }

  v4 = sub_275FAC884(v19, v21, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_51:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 352);
    *v4 = 74;
    v26 = *(v25 + 20);
    if (v26 > 0x7F)
    {
      v4[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v27 = (v4 + 3);
        do
        {
          *(v27 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          v27 = (v27 + 1);
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v27 - 1) = v29;
      }

      else
      {
        v4[2] = v28;
        v27 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v26;
      v27 = (v4 + 2);
    }

    v4 = sub_275FAC884(v25, v27, a3);
  }

LABEL_61:
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
  if (*(a1 + 120))
  {
    if (*(a3 + 58) == 1)
    {
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
      if (*(a1 + 120) >= 2uLL)
      {
        google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
        operator new[]();
      }
    }

    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
    v31 = *(a1 + 144);
    v32 = *(a1 + 128);
    if (v32 <= v31)
    {
      v34 = 0;
    }

    else
    {
      v33 = *(a1 + 152);
      while (1)
      {
        v34 = *(v33 + 8 * v31);
        if (v34)
        {
          break;
        }

        if (v32 == ++v31)
        {
          v34 = 0;
          v31 = *(a1 + 128);
          goto LABEL_73;
        }
      }

      if (v34 == *(v33 + 8 * (v31 ^ 1)))
      {
        v34 = *(*v34 + 40);
      }
    }

LABEL_73:
    *v42 = v34;
    v43 = a1 + 120;
    v44 = v31;
    while (1)
    {
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
      if (!*v42)
      {
        break;
      }

      v4 = sub_275FAE508(10, *v42, (*v42 + 24), v4, a3);
      sub_275FB4204(v42);
    }
  }

  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
  if (*(a1 + 264))
  {
    if (*(a3 + 58) == 1)
    {
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
      if (*(a1 + 264) >= 2uLL)
      {
        google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
        operator new[]();
      }
    }

    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
    v36 = *(a1 + 288);
    v37 = *(a1 + 272);
    if (v37 <= v36)
    {
      v39 = 0;
    }

    else
    {
      v38 = *(a1 + 296);
      while (1)
      {
        v39 = *(v38 + 8 * v36);
        if (v39)
        {
          break;
        }

        if (v37 == ++v36)
        {
          v39 = 0;
          v36 = *(a1 + 272);
          goto LABEL_88;
        }
      }

      if (v39 == *(v38 + 8 * (v36 ^ 1)))
      {
        v39 = *(*v39 + 40);
      }
    }

LABEL_88:
    *v42 = v39;
    v43 = a1 + 264;
    v44 = v36;
    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
    if (v39)
    {
      do
      {
        v4 = sub_275FAE508(11, v39, (v39 + 24), v4, a3);
        sub_275FB4204(v42);
        google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
        v39 = *v42;
      }

      while (*v42);
    }
  }

  v40 = *(a1 + 8);
  if (v40)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v40 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v35);
  }

  return v4;
}