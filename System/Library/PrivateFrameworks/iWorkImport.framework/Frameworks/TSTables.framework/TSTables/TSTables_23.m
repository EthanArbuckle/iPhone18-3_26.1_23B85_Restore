unsigned __int8 *TSCE::VolatileDependenciesArchive::_InternalSerialize(TSCE::VolatileDependenciesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 3) + 4 * i);
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
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(this + 8);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 4 * j);
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
  }

  v17 = *(this + 12);
  if (v17 >= 1)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 7) + 4 * k);
      *a2 = 24;
      if (v19 > 0x7F)
      {
        a2[1] = v19 | 0x80;
        v20 = v19 >> 7;
        if (v19 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++a2;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(a2 - 1) = v21;
        }

        else
        {
          a2[2] = v20;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v19;
        a2 += 2;
      }
    }
  }

  v23 = *(this + 16);
  if (v23 >= 1)
  {
    for (m = 0; m != v23; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v25 = *(*(this + 9) + 4 * m);
      *a2 = 32;
      if (v25 > 0x7F)
      {
        a2[1] = v25 | 0x80;
        v26 = v25 >> 7;
        if (v25 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++a2;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(a2 - 1) = v27;
        }

        else
        {
          a2[2] = v26;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v25;
        a2 += 2;
      }
    }
  }

  v29 = *(this + 20);
  if (v29 >= 1)
  {
    for (n = 0; n != v29; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(this + 11) + 4 * n);
      *a2 = 40;
      if (v31 > 0x7F)
      {
        a2[1] = v31 | 0x80;
        v32 = v31 >> 7;
        if (v31 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++a2;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(a2 - 1) = v33;
        }

        else
        {
          a2[2] = v32;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v31;
        a2 += 2;
      }
    }
  }

  v35 = *(this + 24);
  if (v35 >= 1)
  {
    for (ii = 0; ii != v35; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v37 = *(*(this + 13) + 4 * ii);
      *a2 = 48;
      if (v37 > 0x7F)
      {
        a2[1] = v37 | 0x80;
        v38 = v37 >> 7;
        if (v37 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v38 | 0x80;
            v39 = v38 >> 7;
            ++a2;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
          *(a2 - 1) = v39;
        }

        else
        {
          a2[2] = v38;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v37;
        a2 += 2;
      }
    }
  }

  v41 = *(this + 28);
  if (v41 >= 1)
  {
    for (jj = 0; jj != v41; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v43 = *(*(this + 15) + 4 * jj);
      *a2 = 56;
      if (v43 > 0x7F)
      {
        a2[1] = v43 | 0x80;
        v44 = v43 >> 7;
        if (v43 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v44 | 0x80;
            v45 = v44 >> 7;
            ++a2;
            v46 = v44 >> 14;
            v44 >>= 7;
          }

          while (v46);
          *(a2 - 1) = v45;
        }

        else
        {
          a2[2] = v44;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v43;
        a2 += 2;
      }
    }
  }

  v47 = *(this + 32);
  if (v47 >= 1)
  {
    for (kk = 0; kk != v47; ++kk)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v49 = *(*(this + 17) + 4 * kk);
      *a2 = 64;
      if (v49 > 0x7F)
      {
        a2[1] = v49 | 0x80;
        v50 = v49 >> 7;
        if (v49 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v50 | 0x80;
            v51 = v50 >> 7;
            ++a2;
            v52 = v50 >> 14;
            v50 >>= 7;
          }

          while (v52);
          *(a2 - 1) = v51;
        }

        else
        {
          a2[2] = v50;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v49;
        a2 += 2;
      }
    }
  }

  v53 = *(this + 36);
  if (v53 >= 1)
  {
    for (mm = 0; mm != v53; ++mm)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v55 = *(*(this + 19) + 4 * mm);
      *a2 = 72;
      if (v55 > 0x7F)
      {
        a2[1] = v55 | 0x80;
        v56 = v55 >> 7;
        if (v55 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v56 | 0x80;
            v57 = v56 >> 7;
            ++a2;
            v58 = v56 >> 14;
            v56 >>= 7;
          }

          while (v58);
          *(a2 - 1) = v57;
        }

        else
        {
          a2[2] = v56;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v55;
        a2 += 2;
      }
    }
  }

  v59 = *(this + 40);
  if (v59 >= 1)
  {
    for (nn = 0; nn != v59; ++nn)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v61 = *(*(this + 21) + 4 * nn);
      *a2 = 80;
      if (v61 > 0x7F)
      {
        a2[1] = v61 | 0x80;
        v62 = v61 >> 7;
        if (v61 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v62 | 0x80;
            v63 = v62 >> 7;
            ++a2;
            v64 = v62 >> 14;
            v62 >>= 7;
          }

          while (v64);
          *(a2 - 1) = v63;
        }

        else
        {
          a2[2] = v62;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v61;
        a2 += 2;
      }
    }
  }

  v65 = *(this + 46);
  if (v65)
  {
    for (i1 = 0; i1 != v65; ++i1)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v67 = *(*(this + 24) + 8 * i1 + 8);
      *a2 = 90;
      v68 = *(v67 + 5);
      if (v68 > 0x7F)
      {
        a2[1] = v68 | 0x80;
        v70 = v68 >> 7;
        if (v68 >> 14)
        {
          v69 = a2 + 3;
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
          a2[2] = v70;
          v69 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v68;
        v69 = a2 + 2;
      }

      a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v67, v69, a3);
    }
  }

  v73 = *(this + 52);
  if (v73)
  {
    for (i2 = 0; i2 != v73; ++i2)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v75 = *(*(this + 27) + 8 * i2 + 8);
      *a2 = 106;
      v76 = *(v75 + 5);
      if (v76 > 0x7F)
      {
        a2[1] = v76 | 0x80;
        v78 = v76 >> 7;
        if (v76 >> 14)
        {
          v77 = a2 + 3;
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
          a2[2] = v78;
          v77 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v76;
        v77 = a2 + 2;
      }

      a2 = TSCE::CellReferenceArchive::_InternalSerialize(v75, v77, a3);
    }
  }

  v81 = *(this + 56);
  if (v81 >= 1)
  {
    for (i3 = 0; i3 != v81; ++i3)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v83 = *(*(this + 29) + 4 * i3);
      *a2 = 120;
      if (v83 > 0x7F)
      {
        a2[1] = v83 | 0x80;
        v84 = v83 >> 7;
        if (v83 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v84 | 0x80;
            v85 = v84 >> 7;
            ++a2;
            v86 = v84 >> 14;
            v84 >>= 7;
          }

          while (v86);
          *(a2 - 1) = v85;
        }

        else
        {
          a2[2] = v84;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v83;
        a2 += 2;
      }
    }
  }

  v87 = *(this + 60);
  if (v87 >= 1)
  {
    for (i4 = 0; i4 != v87; ++i4)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v89 = *(*(this + 31) + 4 * i4);
      *a2 = 384;
      if (v89 > 0x7F)
      {
        a2[2] = v89 | 0x80;
        v90 = v89 >> 7;
        if (v89 >> 14)
        {
          a2 += 4;
          do
          {
            *(a2 - 1) = v90 | 0x80;
            v91 = v90 >> 7;
            ++a2;
            v92 = v90 >> 14;
            v90 >>= 7;
          }

          while (v92);
          *(a2 - 1) = v91;
        }

        else
        {
          a2[3] = v90;
          a2 += 4;
        }
      }

      else
      {
        a2[2] = v89;
        a2 += 3;
      }
    }
  }

  v93 = *(this + 64);
  if (v93 >= 1)
  {
    for (i5 = 0; i5 != v93; ++i5)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v95 = *(*(this + 33) + 4 * i5);
      *a2 = 392;
      if (v95 > 0x7F)
      {
        a2[2] = v95 | 0x80;
        v96 = v95 >> 7;
        if (v95 >> 14)
        {
          a2 += 4;
          do
          {
            *(a2 - 1) = v96 | 0x80;
            v97 = v96 >> 7;
            ++a2;
            v98 = v96 >> 14;
            v96 >>= 7;
          }

          while (v98);
          *(a2 - 1) = v97;
        }

        else
        {
          a2[3] = v96;
          a2 += 4;
        }
      }

      else
      {
        a2[2] = v95;
        a2 += 3;
      }
    }
  }

  v99 = *(this + 68);
  if (v99 >= 1)
  {
    for (i6 = 0; i6 != v99; ++i6)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v101 = *(*(this + 35) + 4 * i6);
      *a2 = 400;
      if (v101 > 0x7F)
      {
        a2[2] = v101 | 0x80;
        v102 = v101 >> 7;
        if (v101 >> 14)
        {
          a2 += 4;
          do
          {
            *(a2 - 1) = v102 | 0x80;
            v103 = v102 >> 7;
            ++a2;
            v104 = v102 >> 14;
            v102 >>= 7;
          }

          while (v104);
          *(a2 - 1) = v103;
        }

        else
        {
          a2[3] = v102;
          a2 += 4;
        }
      }

      else
      {
        a2[2] = v101;
        a2 += 3;
      }
    }
  }

  v105 = *(this + 72);
  if (v105 >= 1)
  {
    for (i7 = 0; i7 != v105; ++i7)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v107 = *(*(this + 37) + 4 * i7);
      *a2 = 408;
      if (v107 > 0x7F)
      {
        a2[2] = v107 | 0x80;
        v108 = v107 >> 7;
        if (v107 >> 14)
        {
          a2 += 4;
          do
          {
            *(a2 - 1) = v108 | 0x80;
            v109 = v108 >> 7;
            ++a2;
            v110 = v108 >> 14;
            v108 >>= 7;
          }

          while (v110);
          *(a2 - 1) = v109;
        }

        else
        {
          a2[3] = v108;
          a2 += 4;
        }
      }

      else
      {
        a2[2] = v107;
        a2 += 3;
      }
    }
  }

  v111 = *(this + 76);
  if (v111 >= 1)
  {
    for (i8 = 0; i8 != v111; ++i8)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v113 = *(*(this + 39) + 4 * i8);
      *a2 = 416;
      if (v113 > 0x7F)
      {
        a2[2] = v113 | 0x80;
        v114 = v113 >> 7;
        if (v113 >> 14)
        {
          a2 += 4;
          do
          {
            *(a2 - 1) = v114 | 0x80;
            v115 = v114 >> 7;
            ++a2;
            v116 = v114 >> 14;
            v114 >>= 7;
          }

          while (v116);
          *(a2 - 1) = v115;
        }

        else
        {
          a2[3] = v114;
          a2 += 4;
        }
      }

      else
      {
        a2[2] = v113;
        a2 += 3;
      }
    }
  }

  v117 = *(this + 1);
  if ((v117 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v117 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::VolatileDependenciesArchive::ByteSizeLong(TSCE::VolatileDependenciesArchive *this)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v46 = *(this + 4);
  v48 = v2;
  v44 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v45 = *(this + 8);
  v42 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v43 = *(this + 12);
  v3 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v40 = *(this + 16);
  v41 = v3;
  v39 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v4 = *(this + 20);
  v5 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v6 = *(this + 24);
  v7 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v8 = *(this + 28);
  v9 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v10 = *(this + 32);
  v11 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v12 = *(this + 36);
  v13 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v14 = *(this + 46);
  v15 = v48 + v44 + v46 + v45 + v42 + v43 + v41 + v40 + v39 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + *(this + 40) + v14;
  v16 = *(this + 24);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = TSCE::CellCoordinateArchive::ByteSizeLong(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(this + 52);
  v22 = v15 + v21;
  v23 = *(this + 27);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = TSCE::CellReferenceArchive::ByteSizeLong(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v47 = *(this + 56);
  v49 = v28;
  v29 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v30 = *(this + 60);
  v31 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v32 = *(this + 64);
  v33 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v34 = *(this + 68);
  v35 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v36 = *(this + 72);
  v37 = v49 + v47 + v29 + v31 + v33 + v35 + google::protobuf::internal::WireFormatLite::UInt32Size() + v22 + 2 * (v32 + v30 + v34 + v36 + *(this + 76));
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v37, this + 320);
  }

  else
  {
    *(this + 80) = v37;
    return v37;
  }
}

uint64_t *TSCE::VolatileDependenciesArchive::MergeFrom(TSCE::VolatileDependenciesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::VolatileDependenciesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::VolatileDependenciesArchive::MergeFrom(uint64_t *this, const TSCE::VolatileDependenciesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = v3[4];
    sub_2210BBC64(v3 + 4, v6 + v5);
    v7 = *(v3 + 3);
    v3[4] += *(a2 + 4);
    this = memcpy((v7 + 4 * v6), *(a2 + 3), 4 * *(a2 + 4));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v3[8];
    sub_2210BBC64(v3 + 8, v9 + v8);
    v10 = *(v3 + 5);
    v3[8] += *(a2 + 8);
    this = memcpy((v10 + 4 * v9), *(a2 + 5), 4 * *(a2 + 8));
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = v3[12];
    sub_2210BBC64(v3 + 12, v12 + v11);
    v13 = *(v3 + 7);
    v3[12] += *(a2 + 12);
    this = memcpy((v13 + 4 * v12), *(a2 + 7), 4 * *(a2 + 12));
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = v3[16];
    sub_2210BBC64(v3 + 16, v15 + v14);
    v16 = *(v3 + 9);
    v3[16] += *(a2 + 16);
    this = memcpy((v16 + 4 * v15), *(a2 + 9), 4 * *(a2 + 16));
  }

  v17 = *(a2 + 20);
  if (v17)
  {
    v18 = v3[20];
    sub_2210BBC64(v3 + 20, v18 + v17);
    v19 = *(v3 + 11);
    v3[20] += *(a2 + 20);
    this = memcpy((v19 + 4 * v18), *(a2 + 11), 4 * *(a2 + 20));
  }

  v20 = *(a2 + 24);
  if (v20)
  {
    v21 = v3[24];
    sub_2210BBC64(v3 + 24, v21 + v20);
    v22 = *(v3 + 13);
    v3[24] += *(a2 + 24);
    this = memcpy((v22 + 4 * v21), *(a2 + 13), 4 * *(a2 + 24));
  }

  v23 = *(a2 + 28);
  if (v23)
  {
    v24 = v3[28];
    sub_2210BBC64(v3 + 28, v24 + v23);
    v25 = *(v3 + 15);
    v3[28] += *(a2 + 28);
    this = memcpy((v25 + 4 * v24), *(a2 + 15), 4 * *(a2 + 28));
  }

  v26 = *(a2 + 32);
  if (v26)
  {
    v27 = v3[32];
    sub_2210BBC64(v3 + 32, v27 + v26);
    v28 = *(v3 + 17);
    v3[32] += *(a2 + 32);
    this = memcpy((v28 + 4 * v27), *(a2 + 17), 4 * *(a2 + 32));
  }

  v29 = *(a2 + 36);
  if (v29)
  {
    v30 = v3[36];
    sub_2210BBC64(v3 + 36, v30 + v29);
    v31 = *(v3 + 19);
    v3[36] += *(a2 + 36);
    this = memcpy((v31 + 4 * v30), *(a2 + 19), 4 * *(a2 + 36));
  }

  v32 = *(a2 + 40);
  if (v32)
  {
    v33 = v3[40];
    sub_2210BBC64(v3 + 40, v33 + v32);
    v34 = *(v3 + 21);
    v3[40] += *(a2 + 40);
    this = memcpy((v34 + 4 * v33), *(a2 + 21), 4 * *(a2 + 40));
  }

  v35 = *(a2 + 46);
  if (v35)
  {
    v36 = *(a2 + 24);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 44));
    this = sub_2215686E0((v3 + 44), v37, (v36 + 8), v35, **(v3 + 24) - v3[46]);
    v38 = v3[46] + v35;
    v3[46] = v38;
    v39 = *(v3 + 24);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 52);
  if (v40)
  {
    v41 = *(a2 + 27);
    v42 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 50));
    this = sub_2215687A0((v3 + 50), v42, (v41 + 8), v40, **(v3 + 27) - v3[52]);
    v43 = v3[52] + v40;
    v3[52] = v43;
    v44 = *(v3 + 27);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 56);
  if (v45)
  {
    v46 = v3[56];
    sub_2210BBC64(v3 + 56, v46 + v45);
    v47 = *(v3 + 29);
    v3[56] += *(a2 + 56);
    this = memcpy((v47 + 4 * v46), *(a2 + 29), 4 * *(a2 + 56));
  }

  v48 = *(a2 + 60);
  if (v48)
  {
    v49 = v3[60];
    sub_2210BBC64(v3 + 60, v49 + v48);
    v50 = *(v3 + 31);
    v3[60] += *(a2 + 60);
    this = memcpy((v50 + 4 * v49), *(a2 + 31), 4 * *(a2 + 60));
  }

  v51 = *(a2 + 64);
  if (v51)
  {
    v52 = v3[64];
    sub_2210BBC64(v3 + 64, v52 + v51);
    v53 = *(v3 + 33);
    v3[64] += *(a2 + 64);
    this = memcpy((v53 + 4 * v52), *(a2 + 33), 4 * *(a2 + 64));
  }

  v54 = *(a2 + 68);
  if (v54)
  {
    v55 = v3[68];
    sub_2210BBC64(v3 + 68, v55 + v54);
    v56 = *(v3 + 35);
    v3[68] += *(a2 + 68);
    this = memcpy((v56 + 4 * v55), *(a2 + 35), 4 * *(a2 + 68));
  }

  v57 = *(a2 + 72);
  if (v57)
  {
    v58 = v3[72];
    sub_2210BBC64(v3 + 72, v58 + v57);
    v59 = *(v3 + 37);
    v3[72] += *(a2 + 72);
    this = memcpy((v59 + 4 * v58), *(a2 + 37), 4 * *(a2 + 72));
  }

  v60 = *(a2 + 76);
  if (v60)
  {
    v61 = v3[76];
    sub_2210BBC64(v3 + 76, v61 + v60);
    v62 = *(v3 + 39);
    v3[76] += *(a2 + 76);
    v63 = *(a2 + 39);
    v64 = 4 * *(a2 + 76);

    return memcpy((v62 + 4 * v61), v63, v64);
  }

  return this;
}

uint64_t *TSCE::VolatileDependenciesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::VolatileDependenciesArchive::Clear(this);

    return TSCE::VolatileDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::VolatileDependenciesArchive::CopyFrom(uint64_t *this, const TSCE::VolatileDependenciesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::VolatileDependenciesArchive::Clear(this);

    return TSCE::VolatileDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::VolatileDependenciesArchive::IsInitialized(TSCE::VolatileDependenciesArchive *this)
{
  v1 = *(this + 52);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 27) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 7) == 0);
  return v2 < 1;
}

__n128 TSCE::VolatileDependenciesArchive::InternalSwap(TSCE::VolatileDependenciesArchive *this, TSCE::VolatileDependenciesArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 2);
  v5 = *(this + 3);
  *(this + 1) = *(a2 + 1);
  *(a2 + 2) = v4;
  *(a2 + 3) = v5;
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
  v10 = *(this + 8);
  v11 = *(this + 9);
  *(this + 4) = *(a2 + 4);
  *(a2 + 8) = v10;
  *(a2 + 9) = v11;
  v12 = *(this + 10);
  v13 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v12;
  *(a2 + 11) = v13;
  v14 = *(this + 12);
  v15 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v14;
  *(a2 + 13) = v15;
  v16 = *(this + 14);
  v17 = *(this + 15);
  *(this + 7) = *(a2 + 7);
  *(a2 + 14) = v16;
  *(a2 + 15) = v17;
  v18 = *(this + 16);
  v19 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v18;
  *(a2 + 17) = v19;
  v20 = *(this + 18);
  v21 = *(this + 19);
  *(this + 9) = *(a2 + 9);
  *(a2 + 18) = v20;
  *(a2 + 19) = v21;
  v22 = *(this + 20);
  v23 = *(this + 21);
  *(this + 10) = *(a2 + 10);
  *(a2 + 20) = v22;
  *(a2 + 21) = v23;
  v24 = *(this + 23);
  v25 = *(this + 24);
  *(this + 184) = *(a2 + 184);
  *(a2 + 23) = v24;
  *(a2 + 24) = v25;
  v26 = *(this + 26);
  v27 = *(this + 27);
  *(this + 13) = *(a2 + 13);
  *(a2 + 26) = v26;
  *(a2 + 27) = v27;
  v28 = *(this + 28);
  v29 = *(this + 29);
  *(this + 14) = *(a2 + 14);
  *(a2 + 28) = v28;
  *(a2 + 29) = v29;
  v30 = *(this + 30);
  v31 = *(this + 31);
  *(this + 15) = *(a2 + 15);
  *(a2 + 30) = v30;
  *(a2 + 31) = v31;
  v32 = *(this + 32);
  v33 = *(this + 33);
  *(this + 16) = *(a2 + 16);
  *(a2 + 32) = v32;
  *(a2 + 33) = v33;
  v34 = *(this + 34);
  v35 = *(this + 35);
  *(this + 17) = *(a2 + 17);
  *(a2 + 34) = v34;
  *(a2 + 35) = v35;
  v36 = *(this + 36);
  v37 = *(this + 37);
  *(this + 18) = *(a2 + 18);
  *(a2 + 36) = v36;
  *(a2 + 37) = v37;
  v38 = *(this + 38);
  v39 = *(this + 39);
  result = *(a2 + 19);
  *(this + 19) = result;
  *(a2 + 38) = v38;
  *(a2 + 39) = v39;
  return result;
}

TSCE::VolatileDependenciesExpandedArchive *TSCE::VolatileDependenciesExpandedArchive::VolatileDependenciesExpandedArchive(TSCE::VolatileDependenciesExpandedArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABA20;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_VolatileDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834ABA20;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_VolatileDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::VolatileDependenciesExpandedArchive *TSCE::VolatileDependenciesExpandedArchive::VolatileDependenciesExpandedArchive(TSCE::VolatileDependenciesExpandedArchive *this, const TSCE::VolatileDependenciesExpandedArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ABA20;
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
  return this;
}

void TSCE::VolatileDependenciesExpandedArchive::~VolatileDependenciesExpandedArchive(TSCE::VolatileDependenciesExpandedArchive *this)
{
  sub_2214FC600(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::VolatileDependenciesExpandedArchive::~VolatileDependenciesExpandedArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2214FC600(uint64_t *result)
{
  if (result != &TSCE::_VolatileDependenciesExpandedArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSCE::CellCoordSetArchive::~CellCoordSetArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSCE::CellCoordSetArchive::~CellCoordSetArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSCE::CellCoordSetArchive::~CellCoordSetArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSCE::CellCoordSetArchive::~CellCoordSetArchive(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSCE::CellCoordSetArchive::~CellCoordSetArchive(v6);
      MEMORY[0x223DA1450]();
    }

    result = v1[8];
    if (result)
    {
      TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSCE::VolatileDependenciesExpandedArchive::default_instance(TSCE::VolatileDependenciesExpandedArchive *this)
{
  if (atomic_load_explicit(scc_info_VolatileDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_VolatileDependenciesExpandedArchive_default_instance_;
}

uint64_t *TSCE::VolatileDependenciesExpandedArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    this = TSCE::CellCoordSetArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSCE::CellCoordSetArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    this = TSCE::CellCoordSetArchive::Clear(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = TSCE::CellCoordSetArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  this = TSCE::CellCoordSetArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    this = TSCE::InternalCellRefSetArchive::Clear(*(v1 + 64));
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::VolatileDependenciesExpandedArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_221567030(a3, &v23) & 1) == 0)
  {
    v5 = (v23 + 1);
    v6 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v23 + 2);
LABEL_6:
      v23 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v21;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 3)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 1u;
        v10 = *(a1 + 24);
        if (!v10)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v15);
          *(a1 + 24) = v10;
          goto LABEL_48;
        }
      }

      else if (v8 == 2)
      {
        if (v6 != 18)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 2u;
        v10 = *(a1 + 32);
        if (!v10)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v17);
          *(a1 + 32) = v10;
          goto LABEL_48;
        }
      }

      else
      {
        if (v8 != 3 || v6 != 26)
        {
LABEL_52:
          if (v6)
          {
            v19 = (v6 & 7) == 4;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            *(a3 + 80) = v6 - 1;
            return v23;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v14 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_50;
        }

        *(a1 + 16) |= 4u;
        v10 = *(a1 + 40);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v11);
          *(a1 + 40) = v10;
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    if (v8 == 4)
    {
      if (v6 != 34)
      {
        goto LABEL_52;
      }

      *(a1 + 16) |= 8u;
      v10 = *(a1 + 48);
      if (!v10)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v16);
        *(a1 + 48) = v10;
LABEL_48:
        v5 = v23;
      }

LABEL_49:
      v14 = sub_2216F854C(a3, v10, v5);
      goto LABEL_50;
    }

    if (v8 == 5)
    {
      if (v6 != 42)
      {
        goto LABEL_52;
      }

      *(a1 + 16) |= 0x10u;
      v10 = *(a1 + 56);
      if (!v10)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v18);
        *(a1 + 56) = v10;
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (v8 != 7 || v6 != 58)
    {
      goto LABEL_52;
    }

    *(a1 + 16) |= 0x20u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v13);
      *(a1 + 64) = v12;
      v5 = v23;
    }

    v14 = sub_2216F8AFC(a3, v12, v5);
LABEL_50:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSCE::VolatileDependenciesExpandedArchive::_InternalSerialize(TSCE::VolatileDependenciesExpandedArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = *(v6 + 10);
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

    a2 = TSCE::CellCoordSetArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
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

  a2 = TSCE::CellCoordSetArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_28:
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

  a2 = TSCE::CellCoordSetArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
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

  v24 = *(this + 6);
  *a2 = 34;
  v25 = *(v24 + 10);
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

  a2 = TSCE::CellCoordSetArchive::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 7);
  *a2 = 42;
  v31 = *(v30 + 10);
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

  a2 = TSCE::CellCoordSetArchive::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_58:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v36 = *(this + 8);
    *a2 = 58;
    v37 = *(v36 + 10);
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

    a2 = TSCE::InternalCellRefSetArchive::_InternalSerialize(v36, v38, a3);
  }

LABEL_68:
  v42 = *(this + 1);
  if ((v42 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v42 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::VolatileDependenciesExpandedArchive::ByteSizeLong(TSCE::VolatileDependenciesExpandedArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v9 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v10 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 7));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v6 = TSCE::InternalCellRefSetArchive::ByteSizeLong(*(this + 8));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
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

uint64_t TSCE::VolatileDependenciesExpandedArchive::MergeFrom(TSCE::VolatileDependenciesExpandedArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::VolatileDependenciesExpandedArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::VolatileDependenciesExpandedArchive::MergeFrom(uint64_t this, const TSCE::VolatileDependenciesExpandedArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) == 0)
  {
    return this;
  }

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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v7);
      *(v3 + 24) = v6;
    }

    if (*(a2 + 3))
    {
      v8 = *(a2 + 3);
    }

    else
    {
      v8 = &TSCE::_CellCoordSetArchive_default_instance_;
    }

    this = TSCE::CellCoordSetArchive::MergeFrom(v6, v8);
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
  v9 = *(v3 + 32);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v10);
    *(v3 + 32) = v9;
  }

  if (*(a2 + 4))
  {
    v11 = *(a2 + 4);
  }

  else
  {
    v11 = &TSCE::_CellCoordSetArchive_default_instance_;
  }

  this = TSCE::CellCoordSetArchive::MergeFrom(v9, v11);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSCE::_CellCoordSetArchive_default_instance_;
    }

    this = TSCE::CellCoordSetArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return this;
      }

      goto LABEL_51;
    }

    goto LABEL_43;
  }

LABEL_27:
  *(v3 + 16) |= 4u;
  v12 = *(v3 + 40);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v13);
    *(v3 + 40) = v12;
  }

  if (*(a2 + 5))
  {
    v14 = *(a2 + 5);
  }

  else
  {
    v14 = &TSCE::_CellCoordSetArchive_default_instance_;
  }

  this = TSCE::CellCoordSetArchive::MergeFrom(v12, v14);
  if ((v5 & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_43:
  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 56);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v19);
    *(v3 + 56) = v18;
  }

  if (*(a2 + 7))
  {
    v20 = *(a2 + 7);
  }

  else
  {
    v20 = &TSCE::_CellCoordSetArchive_default_instance_;
  }

  this = TSCE::CellCoordSetArchive::MergeFrom(v18, v20);
  if ((v5 & 0x20) != 0)
  {
LABEL_51:
    *(v3 + 16) |= 0x20u;
    v21 = *(v3 + 64);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v22);
      *(v3 + 64) = v21;
    }

    if (*(a2 + 8))
    {
      v23 = *(a2 + 8);
    }

    else
    {
      v23 = &TSCE::_InternalCellRefSetArchive_default_instance_;
    }

    return TSCE::InternalCellRefSetArchive::MergeFrom(v21, v23);
  }

  return this;
}

uint64_t *TSCE::VolatileDependenciesExpandedArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::VolatileDependenciesExpandedArchive::Clear(this);

    return TSCE::VolatileDependenciesExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::VolatileDependenciesExpandedArchive::CopyFrom(uint64_t *this, const TSCE::VolatileDependenciesExpandedArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::VolatileDependenciesExpandedArchive::Clear(this);

    return TSCE::VolatileDependenciesExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::VolatileDependenciesExpandedArchive::IsInitialized(TSCE::VolatileDependenciesExpandedArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = sub_2214E5E48(*(this + 3) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_2214E5E48(*(this + 4) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_2214E5E48(*(this + 5) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_2214E5E48(*(this + 6) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_2214E5E48(*(this + 7) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = sub_2214E71E0(*(this + 8) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::VolatileDependenciesExpandedArchive::InternalSwap(TSCE::VolatileDependenciesExpandedArchive *this, TSCE::VolatileDependenciesExpandedArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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
  return result;
}

TSCE::RTreeInternalNodeContentsArchive *TSCE::RTreeInternalNodeContentsArchive::RTreeInternalNodeContentsArchive(TSCE::RTreeInternalNodeContentsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABAD0;
  *(this + 1) = a2;
  *(this + 4) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  if (atomic_load_explicit(scc_info_RTreeInternalNodeContentsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2214FD5F0(_Unwind_Exception *a1)
{
  if (*(v1 + 44) >= 1)
  {
    sub_2216FF128(v3);
  }

  sub_2216FF1A4((v1 + 28), v2);
  _Unwind_Resume(a1);
}

TSCE::RTreeInternalNodeContentsArchive *TSCE::RTreeInternalNodeContentsArchive::RTreeInternalNodeContentsArchive(TSCE::RTreeInternalNodeContentsArchive *this, const TSCE::RTreeInternalNodeContentsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ABAD0;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_2210BBC64(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 10);
  if (v7)
  {
    sub_2210BBC64(this + 10, v7);
    v8 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v8, *(a2 + 6), 4 * *(a2 + 10));
  }

  v9 = *(a2 + 1);
  if (v9)
  {
    sub_22156734C(v4, (v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2214FD744(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C4003271616);
  if (*(v1 + 44) >= 1)
  {
    v4 = *(v1 + 48);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v7 = *(v1 + 32);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  _Unwind_Resume(a1);
}

void TSCE::RTreeInternalNodeContentsArchive::~RTreeInternalNodeContentsArchive(TSCE::RTreeInternalNodeContentsArchive *this)
{
  if (this != &TSCE::_RTreeInternalNodeContentsArchive_default_instance_)
  {
    v2 = *(this + 7);
    if (v2)
    {
      TSCE::RTreeNodeArchive::~RTreeNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  if (*(this + 11) >= 1)
  {
    v3 = *(this + 6);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 7) >= 1)
  {
    v6 = *(this + 4);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }
}

{
  TSCE::RTreeInternalNodeContentsArchive::~RTreeInternalNodeContentsArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RTreeInternalNodeContentsArchive::default_instance(TSCE::RTreeInternalNodeContentsArchive *this)
{
  if (atomic_load_explicit(scc_info_RTreeInternalNodeContentsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RTreeInternalNodeContentsArchive_default_instance_;
}

uint64_t *TSCE::RTreeInternalNodeContentsArchive::Clear(uint64_t *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 10) = 0;
  if (this[2])
  {
    this = TSCE::RTreeNodeArchive::Clear(this[7]);
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

uint64_t *TSCE::RTreeNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::RTreeInternalNodeContentsArchive::Clear(v4);
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
      this = TSCE::RTreeLeafNodeContentsArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 72) = 0;
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

google::protobuf::internal *TSCE::RTreeInternalNodeContentsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
LABEL_2:
  while ((sub_221567030(a3, &v29) & 1) == 0)
  {
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
    v6 = v26;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_50;
      }

      *(a1 + 16) |= 1u;
      v21 = *(a1 + 56);
      if (!v21)
      {
        v22 = *(a1 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RTreeNodeArchive>(v22);
        LODWORD(v21) = v23;
        *(a1 + 56) = v23;
        v5 = v29;
      }

      v24 = sub_2216F93EC(a3, v21, v5);
    }

    else
    {
      if (v8 == 2)
      {
        if (v6 == 16)
        {
          v15 = v5 - 1;
          while (1)
          {
            v29 = (v15 + 1);
            v16 = v15[1];
            if (v15[1] < 0)
            {
              v17 = v16 + (v15[2] << 7);
              v16 = v17 - 128;
              if (v15[2] < 0)
              {
                v15 = google::protobuf::internal::VarintParseSlow32((v15 + 1), (v17 - 128));
                v16 = v18;
              }

              else
              {
                v15 += 3;
              }
            }

            else
            {
              v15 += 2;
            }

            v29 = v15;
            v19 = *(a1 + 40);
            if (v19 == *(a1 + 44))
            {
              v20 = v19 + 1;
              sub_2210BBC64((a1 + 40), v19 + 1);
              *(*(a1 + 48) + 4 * v19) = v16;
              v15 = v29;
            }

            else
            {
              *(*(a1 + 48) + 4 * v19) = v16;
              v20 = v19 + 1;
            }

            *(a1 + 40) = v20;
            if (!v15)
            {
              return 0;
            }

            if (*a3 <= v15 || *v15 != 16)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 18)
        {
LABEL_50:
          if (v6)
          {
            v27 = (v6 & 7) == 4;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            *(a3 + 80) = v6 - 1;
            return v29;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v24 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_57;
        }
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_50;
        }

        if (v6 == 8)
        {
          v9 = v5 - 1;
          while (1)
          {
            v29 = (v9 + 1);
            v10 = v9[1];
            if (v9[1] < 0)
            {
              v11 = v10 + (v9[2] << 7);
              v10 = v11 - 128;
              if (v9[2] < 0)
              {
                v9 = google::protobuf::internal::VarintParseSlow32((v9 + 1), (v11 - 128));
                v10 = v12;
              }

              else
              {
                v9 += 3;
              }
            }

            else
            {
              v9 += 2;
            }

            v29 = v9;
            v13 = *(a1 + 24);
            if (v13 == *(a1 + 28))
            {
              v14 = v13 + 1;
              sub_2210BBC64((a1 + 24), v13 + 1);
              *(*(a1 + 32) + 4 * v13) = v10;
              v9 = v29;
            }

            else
            {
              *(*(a1 + 32) + 4 * v13) = v10;
              v14 = v13 + 1;
            }

            *(a1 + 24) = v14;
            if (!v9)
            {
              return 0;
            }

            if (*a3 <= v9 || *v9 != 8)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 10)
        {
          goto LABEL_50;
        }
      }

      v24 = google::protobuf::internal::PackedUInt32Parser();
    }

LABEL_57:
    v29 = v24;
    if (!v24)
    {
      return 0;
    }
  }

  return v29;
}

unsigned __int8 *TSCE::RTreeInternalNodeContentsArchive::_InternalSerialize(TSCE::RTreeInternalNodeContentsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 4 * i);
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
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(this + 10);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 6) + 4 * j);
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
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v17 = *(this + 7);
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

    a2 = TSCE::RTreeNodeArchive::_InternalSerialize(v17, v19, a3);
  }

  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v23 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RTreeInternalNodeContentsArchive::ByteSizeLong(TSCE::RTreeNodeArchive **this)
{
  if (this[2])
  {
    v3 = TSCE::RTreeNodeArchive::ByteSizeLong(this[7]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v5 = *(this + 6);
  v6 = v4 + v2 + google::protobuf::internal::WireFormatLite::UInt32Size() + v5 + *(this + 10);
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TSCE::RTreeInternalNodeContentsArchive::MergeFrom(TSCE::RTreeInternalNodeContentsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RTreeInternalNodeContentsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RTreeInternalNodeContentsArchive::MergeFrom(uint64_t this, const TSCE::RTreeInternalNodeContentsArchive *a2)
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
    v6 = *(v3 + 24);
    sub_2210BBC64((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2210BBC64((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 4 * v9), *(a2 + 6), 4 * *(a2 + 10));
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 7);
    *(v3 + 16) |= 1u;
    v12 = *(v3 + 56);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RTreeNodeArchive>(v13);
      *(v3 + 56) = v12;
      v11 = *(a2 + 7);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = &TSCE::_RTreeNodeArchive_default_instance_;
    }

    return TSCE::RTreeNodeArchive::MergeFrom(v12, v14);
  }

  return this;
}

uint64_t TSCE::RTreeNodeArchive::MergeFrom(uint64_t this, const TSCE::RTreeNodeArchive *a2)
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
    this = sub_221568968(v3 + 24, v7, v6 + 8, v5, (**(v3 + 40) - *(v3 + 32)));
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
    this = sub_221568A28(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      *(v3 + 72) = *(a2 + 18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 76) = *(a2 + 19);
    }

    *(v3 + 16) |= v15;
  }

  return this;
}

uint64_t *TSCE::RTreeInternalNodeContentsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RTreeInternalNodeContentsArchive::Clear(this);

    return TSCE::RTreeInternalNodeContentsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RTreeInternalNodeContentsArchive::CopyFrom(uint64_t *this, const TSCE::RTreeInternalNodeContentsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RTreeInternalNodeContentsArchive::Clear(this);

    return TSCE::RTreeInternalNodeContentsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::RTreeInternalNodeContentsArchive::IsInitialized(TSCE::RTreeNodeArchive **this)
{
  if (this[2])
  {
    return TSCE::RTreeNodeArchive::IsInitialized(this[7]);
  }

  else
  {
    return 0;
  }
}

BOOL TSCE::RTreeNodeArchive::IsInitialized(TSCE::RTreeNodeArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = sub_2214FFED0(this + 24);
  if (result)
  {
    v3 = *(this + 14);
    do
    {
      result = v3 < 1;
      if (v3 < 1)
      {
        break;
      }

      v4 = *(*(this + 8) + 8 * v3);
      if ((*(v4 + 16) & 1) == 0)
      {
        break;
      }

      --v3;
    }

    while ((~*(*(v4 + 56) + 16) & 7) == 0);
  }

  return result;
}

__n128 TSCE::RTreeInternalNodeContentsArchive::InternalSwap(TSCE::RTreeInternalNodeContentsArchive *this, TSCE::RTreeInternalNodeContentsArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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

TSCE::RTreeLeafNodeContentsArchive *TSCE::RTreeLeafNodeContentsArchive::RTreeLeafNodeContentsArchive(TSCE::RTreeLeafNodeContentsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABB80;
  *(this + 1) = a2;
  *(this + 4) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  if (atomic_load_explicit(scc_info_RTreeLeafNodeContentsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2214FE594(_Unwind_Exception *a1)
{
  if (*(v1 + 44) >= 1)
  {
    sub_2216FF128(v3);
  }

  sub_2216FF1A4((v1 + 28), v2);
  _Unwind_Resume(a1);
}

TSCE::RTreeLeafNodeContentsArchive *TSCE::RTreeLeafNodeContentsArchive::RTreeLeafNodeContentsArchive(TSCE::RTreeLeafNodeContentsArchive *this, const TSCE::RTreeLeafNodeContentsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ABB80;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_2210BBC64(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 10);
  if (v7)
  {
    sub_2210BBC64(this + 10, v7);
    v8 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v8, *(a2 + 6), 4 * *(a2 + 10));
  }

  v9 = *(a2 + 1);
  if (v9)
  {
    sub_22156734C(v4, (v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2214FE6E8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C406130BDD3);
  if (*(v1 + 44) >= 1)
  {
    v4 = *(v1 + 48);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v7 = *(v1 + 32);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  _Unwind_Resume(a1);
}

void TSCE::RTreeLeafNodeContentsArchive::~RTreeLeafNodeContentsArchive(TSCE::RTreeLeafNodeContentsArchive *this)
{
  if (this != &TSCE::_RTreeLeafNodeContentsArchive_default_instance_)
  {
    v2 = *(this + 7);
    if (v2)
    {
      TSCE::CellReferenceArchive::~CellReferenceArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  if (*(this + 11) >= 1)
  {
    v3 = *(this + 6);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 7) >= 1)
  {
    v6 = *(this + 4);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }
}

{
  TSCE::RTreeLeafNodeContentsArchive::~RTreeLeafNodeContentsArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RTreeLeafNodeContentsArchive::default_instance(TSCE::RTreeLeafNodeContentsArchive *this)
{
  if (atomic_load_explicit(scc_info_RTreeLeafNodeContentsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RTreeLeafNodeContentsArchive_default_instance_;
}

uint64_t *TSCE::RTreeLeafNodeContentsArchive::Clear(uint64_t *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 10) = 0;
  if (this[2])
  {
    this = TSCE::CellReferenceArchive::Clear(this[7]);
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

google::protobuf::internal *TSCE::RTreeLeafNodeContentsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
LABEL_2:
  while ((sub_221567030(a3, &v28) & 1) == 0)
  {
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
    v6 = v25;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_50;
      }

      *(a1 + 16) |= 1u;
      v21 = *(a1 + 56);
      if (!v21)
      {
        v22 = *(a1 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v22);
        *(a1 + 56) = v21;
        v5 = v28;
      }

      v23 = sub_2216F8E3C(a3, v21, v5);
    }

    else
    {
      if (v8 == 2)
      {
        if (v6 == 16)
        {
          v15 = v5 - 1;
          while (1)
          {
            v28 = (v15 + 1);
            v16 = v15[1];
            if (v15[1] < 0)
            {
              v17 = v16 + (v15[2] << 7);
              v16 = v17 - 128;
              if (v15[2] < 0)
              {
                v15 = google::protobuf::internal::VarintParseSlow32((v15 + 1), (v17 - 128));
                v16 = v18;
              }

              else
              {
                v15 += 3;
              }
            }

            else
            {
              v15 += 2;
            }

            v28 = v15;
            v19 = *(a1 + 40);
            if (v19 == *(a1 + 44))
            {
              v20 = v19 + 1;
              sub_2210BBC64((a1 + 40), v19 + 1);
              *(*(a1 + 48) + 4 * v19) = v16;
              v15 = v28;
            }

            else
            {
              *(*(a1 + 48) + 4 * v19) = v16;
              v20 = v19 + 1;
            }

            *(a1 + 40) = v20;
            if (!v15)
            {
              return 0;
            }

            if (*a3 <= v15 || *v15 != 16)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 18)
        {
LABEL_50:
          if (v6)
          {
            v26 = (v6 & 7) == 4;
          }

          else
          {
            v26 = 1;
          }

          if (v26)
          {
            *(a3 + 80) = v6 - 1;
            return v28;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v23 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_57;
        }
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_50;
        }

        if (v6 == 8)
        {
          v9 = v5 - 1;
          while (1)
          {
            v28 = (v9 + 1);
            v10 = v9[1];
            if (v9[1] < 0)
            {
              v11 = v10 + (v9[2] << 7);
              v10 = v11 - 128;
              if (v9[2] < 0)
              {
                v9 = google::protobuf::internal::VarintParseSlow32((v9 + 1), (v11 - 128));
                v10 = v12;
              }

              else
              {
                v9 += 3;
              }
            }

            else
            {
              v9 += 2;
            }

            v28 = v9;
            v13 = *(a1 + 24);
            if (v13 == *(a1 + 28))
            {
              v14 = v13 + 1;
              sub_2210BBC64((a1 + 24), v13 + 1);
              *(*(a1 + 32) + 4 * v13) = v10;
              v9 = v28;
            }

            else
            {
              *(*(a1 + 32) + 4 * v13) = v10;
              v14 = v13 + 1;
            }

            *(a1 + 24) = v14;
            if (!v9)
            {
              return 0;
            }

            if (*a3 <= v9 || *v9 != 8)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 10)
        {
          goto LABEL_50;
        }
      }

      v23 = google::protobuf::internal::PackedUInt32Parser();
    }

LABEL_57:
    v28 = v23;
    if (!v23)
    {
      return 0;
    }
  }

  return v28;
}

unsigned __int8 *TSCE::RTreeLeafNodeContentsArchive::_InternalSerialize(TSCE::RTreeLeafNodeContentsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 4 * i);
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
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(this + 10);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 6) + 4 * j);
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
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v17 = *(this + 7);
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

    a2 = TSCE::CellReferenceArchive::_InternalSerialize(v17, v19, a3);
  }

  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v23 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RTreeLeafNodeContentsArchive::ByteSizeLong(TSP::CFUUIDArchive ***this)
{
  if (this[2])
  {
    v3 = TSCE::CellReferenceArchive::ByteSizeLong(this[7]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v5 = *(this + 6);
  v6 = v4 + v2 + google::protobuf::internal::WireFormatLite::UInt32Size() + v5 + *(this + 10);
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TSCE::RTreeLeafNodeContentsArchive::MergeFrom(TSCE::RTreeLeafNodeContentsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RTreeLeafNodeContentsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RTreeLeafNodeContentsArchive::MergeFrom(uint64_t this, const TSCE::RTreeLeafNodeContentsArchive *a2)
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
    v6 = *(v3 + 24);
    sub_2210BBC64((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2210BBC64((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 4 * v9), *(a2 + 6), 4 * *(a2 + 10));
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 7);
    *(v3 + 16) |= 1u;
    v12 = *(v3 + 56);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v13);
      *(v3 + 56) = v12;
      v11 = *(a2 + 7);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = TSCE::_CellReferenceArchive_default_instance_;
    }

    return TSCE::CellReferenceArchive::MergeFrom(v12, v14);
  }

  return this;
}

uint64_t *TSCE::RTreeLeafNodeContentsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RTreeLeafNodeContentsArchive::Clear(this);

    return TSCE::RTreeLeafNodeContentsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RTreeLeafNodeContentsArchive::CopyFrom(uint64_t *this, const TSCE::RTreeLeafNodeContentsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RTreeLeafNodeContentsArchive::Clear(this);

    return TSCE::RTreeLeafNodeContentsArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::RTreeLeafNodeContentsArchive::InternalSwap(TSCE::RTreeLeafNodeContentsArchive *this, TSCE::RTreeLeafNodeContentsArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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

TSCE::RTreeNodeArchive *TSCE::RTreeNodeArchive::RTreeNodeArchive(TSCE::RTreeNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABC30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_RTreeInternalNodeContentsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2214FF2DC(_Unwind_Exception *a1)
{
  sub_2215688E4(v2);
  sub_221568860(v1);
  _Unwind_Resume(a1);
}

TSCE::RTreeNodeArchive *TSCE::RTreeNodeArchive::RTreeNodeArchive(TSCE::RTreeNodeArchive *this, const TSCE::RTreeNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ABC30;
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
    sub_221568968(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_221568A28(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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

  *(this + 9) = *(a2 + 9);
  return this;
}

void sub_2214FF45C(_Unwind_Exception *a1)
{
  sub_2215688E4(v2);
  sub_221568860((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::RTreeNodeArchive::~RTreeNodeArchive(TSCE::RTreeNodeArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2215688E4(this + 6);
  sub_221568860(this + 3);
}

{
  TSCE::RTreeNodeArchive::~RTreeNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RTreeNodeArchive::default_instance(TSCE::RTreeNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_RTreeInternalNodeContentsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RTreeNodeArchive_default_instance_;
}

google::protobuf::internal *TSCE::RTreeNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v41) & 1) == 0)
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
      v8 = v36;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4 && v8 == 34)
          {
            v15 = (v7 - 1);
            while (1)
            {
              v16 = (v15 + 1);
              v41 = (v15 + 1);
              v17 = *(a1 + 64);
              if (!v17)
              {
                goto LABEL_23;
              }

              v22 = *(a1 + 56);
              v18 = *v17;
              if (v22 < *v17)
              {
                *(a1 + 56) = v22 + 1;
                v19 = *&v17[2 * v22 + 2];
                goto LABEL_27;
              }

              if (v18 == *(a1 + 60))
              {
LABEL_23:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                v17 = *(a1 + 64);
                v18 = *v17;
              }

              *v17 = v18 + 1;
              v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RTreeLeafNodeContentsArchive>(*(a1 + 48));
              v20 = *(a1 + 56);
              v21 = *(a1 + 64) + 8 * v20;
              *(a1 + 56) = v20 + 1;
              *(v21 + 8) = v19;
              v16 = v41;
LABEL_27:
              v15 = sub_2216F958C(a3, v19, v16);
              v41 = v15;
              if (!v15)
              {
                goto LABEL_67;
              }

              if (*a3 <= v15 || *v15 != 34)
              {
                goto LABEL_58;
              }
            }
          }

LABEL_51:
          if (v8)
          {
            v34 = (v8 & 7) == 4;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v41 = google::protobuf::internal::UnknownFieldParse();
          if (!v41)
          {
LABEL_67:
            v41 = 0;
            goto LABEL_2;
          }

          goto LABEL_58;
        }

        if (v8 != 26)
        {
          goto LABEL_51;
        }

        v26 = (v7 - 1);
        while (2)
        {
          v27 = (v26 + 1);
          v41 = (v26 + 1);
          v28 = *(a1 + 40);
          if (!v28)
          {
LABEL_41:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v28 = *(a1 + 40);
            v29 = *v28;
            goto LABEL_42;
          }

          v33 = *(a1 + 32);
          v29 = *v28;
          if (v33 >= *v28)
          {
            if (v29 == *(a1 + 36))
            {
              goto LABEL_41;
            }

LABEL_42:
            *v28 = v29 + 1;
            v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RTreeInternalNodeContentsArchive>(*(a1 + 24));
            v31 = *(a1 + 32);
            v32 = *(a1 + 40) + 8 * v31;
            *(a1 + 32) = v31 + 1;
            *(v32 + 8) = v30;
            v27 = v41;
          }

          else
          {
            *(a1 + 32) = v33 + 1;
            v30 = *&v28[2 * v33 + 2];
          }

          v26 = sub_2216F94BC(a3, v30, v27);
          v41 = v26;
          if (!v26)
          {
            goto LABEL_67;
          }

          if (*a3 <= v26 || *v26 != 26)
          {
            goto LABEL_58;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_51;
        }

        v5 |= 1u;
        v23 = (v7 + 1);
        LODWORD(v24) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v25 = *v23;
        v24 = (v24 + (v25 << 7) - 128);
        if ((v25 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_37:
          v41 = v23;
          *(a1 + 72) = v24;
          goto LABEL_58;
        }

        v39 = google::protobuf::internal::VarintParseSlow32(v7, v24);
        v41 = v39;
        *(a1 + 72) = v40;
        if (!v39)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_51;
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
          *(a1 + 76) = v13;
          goto LABEL_58;
        }

        v37 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v41 = v37;
        *(a1 + 76) = v38;
        if (!v37)
        {
          goto LABEL_67;
        }
      }

LABEL_58:
      if (sub_221567030(a3, &v41))
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

unsigned __int8 *TSCE::RTreeNodeArchive::_InternalSerialize(TSCE::RTreeNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 18);
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

  v8 = *(this + 19);
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

      a2 = TSCE::RTreeInternalNodeContentsArchive::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 14);
  if (v22)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(this + 8) + 8 * j + 8);
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

      a2 = TSCE::RTreeLeafNodeContentsArchive::_InternalSerialize(v24, v26, a3);
    }
  }

  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RTreeNodeArchive::RequiredFieldsByteSizeFallback(TSCE::RTreeNodeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    result += ((9 * (__clz(*(this + 19) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::RTreeNodeArchive::ByteSizeLong(TSCE::RTreeNodeArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSCE::RTreeNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 19) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 = *(this + 8);
  v4 = v2 + v3;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = TSCE::RTreeInternalNodeContentsArchive::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 14);
  v11 = v4 + v10;
  v12 = *(this + 8);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = TSCE::RTreeLeafNodeContentsArchive::ByteSizeLong(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v11, this + 20);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

uint64_t TSCE::RTreeNodeArchive::MergeFrom(TSCE::RTreeNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RTreeNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::RTreeNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RTreeNodeArchive::Clear(this);

    return TSCE::RTreeNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RTreeNodeArchive::CopyFrom(uint64_t *this, const TSCE::RTreeNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RTreeNodeArchive::Clear(this);

    return TSCE::RTreeNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_2214FFED0(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSCE::RTreeInternalNodeContentsArchive::IsInitialized(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::RTreeNodeArchive::InternalSwap(TSCE::RTreeNodeArchive *this, TSCE::RTreeNodeArchive *a2)
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
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  return result;
}

TSCE::RTreeArchive *TSCE::RTreeArchive::RTreeArchive(TSCE::RTreeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABCE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RTreeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834ABCE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RTreeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::RTreeArchive *TSCE::RTreeArchive::RTreeArchive(TSCE::RTreeArchive *this, const TSCE::RTreeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ABCE0;
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
  v7 = *(a2 + 2);
  *(this + 44) = *(a2 + 44);
  *(this + 2) = v7;
  return this;
}

void TSCE::RTreeArchive::~RTreeArchive(TSCE::RTreeArchive *this)
{
  if (this != TSCE::_RTreeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::RTreeNodeArchive::~RTreeNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RTreeArchive::~RTreeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RTreeArchive::default_instance(TSCE::RTreeArchive *this)
{
  if (atomic_load_explicit(scc_info_RTreeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_RTreeArchive_default_instance_;
}

uint64_t *TSCE::RTreeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSCE::RTreeNodeArchive::Clear(this[3]);
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
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

google::protobuf::internal *TSCE::RTreeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v53 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v53) & 1) == 0)
  {
    while (1)
    {
      v7 = (v53 + 1);
      v8 = *v53;
      if ((*v53 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v53, (v9 - 128));
      v53 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_89;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 != 7)
          {
            if (v10 == 8 && v8 == 66)
            {
              *(a1 + 16) |= 1u;
              v21 = *(a1 + 24);
              if (!v21)
              {
                v22 = *(a1 + 8);
                if (v22)
                {
                  v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
                }

                v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RTreeNodeArchive>(v22);
                *(a1 + 24) = v21;
                v7 = v53;
              }

              v23 = sub_2216F93EC(a3, v21, v7);
            }

            else
            {
LABEL_64:
              if (v8)
              {
                v38 = (v8 & 7) == 4;
              }

              else
              {
                v38 = 1;
              }

              if (v38)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_221567188((a1 + 8));
              }

              v23 = google::protobuf::internal::UnknownFieldParse();
            }

            v53 = v23;
            if (!v23)
            {
              goto LABEL_89;
            }

            goto LABEL_72;
          }

          if (v8 != 56)
          {
            goto LABEL_64;
          }

          v5 |= 0x80u;
          v35 = (v7 + 1);
          LODWORD(v36) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          v37 = *v35;
          v36 = (v36 + (v37 << 7) - 128);
          if ((v37 & 0x80000000) == 0)
          {
            v35 = (v7 + 2);
LABEL_63:
            v53 = v35;
            *(a1 + 56) = v36;
            goto LABEL_72;
          }

          v45 = google::protobuf::internal::VarintParseSlow32(v7, v36);
          v53 = v45;
          *(a1 + 56) = v46;
          if (!v45)
          {
            goto LABEL_89;
          }
        }

        else if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_64;
          }

          v5 |= 0x20u;
          v29 = (v7 + 1);
          LODWORD(v30) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          v31 = *v29;
          v30 = (v30 + (v31 << 7) - 128);
          if ((v31 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_53:
            v53 = v29;
            *(a1 + 48) = v30;
            goto LABEL_72;
          }

          v41 = google::protobuf::internal::VarintParseSlow32(v7, v30);
          v53 = v41;
          *(a1 + 48) = v42;
          if (!v41)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_64;
          }

          v5 |= 0x40u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_26:
            v53 = v15;
            *(a1 + 52) = v16;
            goto LABEL_72;
          }

          v49 = google::protobuf::internal::VarintParseSlow32(v7, v16);
          v53 = v49;
          *(a1 + 52) = v50;
          if (!v49)
          {
            goto LABEL_89;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_64;
          }

          v5 |= 8u;
          v32 = (v7 + 1);
          LODWORD(v33) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          v34 = *v32;
          v33 = (v33 + (v34 << 7) - 128);
          if ((v34 & 0x80000000) == 0)
          {
            v32 = (v7 + 2);
LABEL_58:
            v53 = v32;
            *(a1 + 40) = v33;
            goto LABEL_72;
          }

          v43 = google::protobuf::internal::VarintParseSlow32(v7, v33);
          v53 = v43;
          *(a1 + 40) = v44;
          if (!v43)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_64;
          }

          v5 |= 0x10u;
          v18 = (v7 + 1);
          LODWORD(v19) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          v20 = *v18;
          v19 = (v19 + (v20 << 7) - 128);
          if ((v20 & 0x80000000) == 0)
          {
            v18 = (v7 + 2);
LABEL_33:
            v53 = v18;
            *(a1 + 44) = v19;
            goto LABEL_72;
          }

          v51 = google::protobuf::internal::VarintParseSlow32(v7, v19);
          v53 = v51;
          *(a1 + 44) = v52;
          if (!v51)
          {
LABEL_89:
            v53 = 0;
            goto LABEL_2;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_64;
        }

        v5 |= 2u;
        v26 = (v7 + 1);
        LODWORD(v27) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        v28 = *v26;
        v27 = (v27 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_48:
          v53 = v26;
          *(a1 + 32) = v27;
          goto LABEL_72;
        }

        v39 = google::protobuf::internal::VarintParseSlow32(v7, v27);
        v53 = v39;
        *(a1 + 32) = v40;
        if (!v39)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_64;
        }

        v5 |= 4u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v53 = v12;
          *(a1 + 36) = v13;
          goto LABEL_72;
        }

        v47 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v53 = v47;
        *(a1 + 36) = v48;
        if (!v47)
        {
          goto LABEL_89;
        }
      }

LABEL_72:
      if (sub_221567030(a3, &v53))
      {
        goto LABEL_2;
      }
    }

    v7 = (v53 + 2);
LABEL_6:
    v53 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v53;
}

unsigned __int8 *TSCE::RTreeArchive::_InternalSerialize(TSCE::RTreeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 9);
    *a2 = 16;
    if (v18 > 0x7F)
    {
      a2[1] = v18 | 0x80;
      v19 = v18 >> 7;
      if (v18 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++a2;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(a2 - 1) = v20;
        if ((v5 & 8) != 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        a2[2] = v19;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      a2[1] = v18;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_54:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 11);
    *a2 = 32;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v27 = v26 >> 7;
      if (v26 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++a2;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(a2 - 1) = v28;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        a2[2] = v27;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_76:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v34 = *(this + 13);
    *a2 = 48;
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v35 = v34 >> 7;
      if (v34 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v35 | 0x80;
          v36 = v35 >> 7;
          ++a2;
          v37 = v35 >> 14;
          v35 >>= 7;
        }

        while (v37);
        *(a2 - 1) = v36;
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        a2[2] = v35;
        a2 += 3;
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      a2[1] = v34;
      a2 += 2;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_87;
      }
    }

LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 8);
  *a2 = 8;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v11 | 0x80;
        v16 = v11 >> 7;
        ++a2;
        v17 = v11 >> 14;
        v11 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
      if ((v5 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_3:
  if ((v5 & 8) == 0)
  {
    goto LABEL_4;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 10);
  *a2 = 24;
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
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      a2[2] = v23;
      a2 += 3;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_54;
      }
    }
  }

  else
  {
    a2[1] = v22;
    a2 += 2;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_54;
    }
  }

LABEL_5:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_65:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 12);
  *a2 = 40;
  if (v30 > 0x7F)
  {
    a2[1] = v30 | 0x80;
    v31 = v30 >> 7;
    if (v30 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v31 | 0x80;
        v32 = v31 >> 7;
        ++a2;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
      *(a2 - 1) = v32;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      a2[2] = v31;
      a2 += 3;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_76;
      }
    }
  }

  else
  {
    a2[1] = v30;
    a2 += 2;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_76;
    }
  }

LABEL_7:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_8;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 14);
  *a2 = 56;
  if (v38 > 0x7F)
  {
    a2[1] = v38 | 0x80;
    v39 = v38 >> 7;
    if (v38 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v39 | 0x80;
        v40 = v39 >> 7;
        ++a2;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
      *(a2 - 1) = v40;
      if ((v5 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      a2[2] = v39;
      a2 += 3;
      if ((v5 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    a2[1] = v38;
    a2 += 2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_9:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 3);
  *a2 = 66;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v10 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++v8;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(v8 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSCE::RTreeNodeArchive::_InternalSerialize(v6, v8, a3);
LABEL_27:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RTreeArchive::RequiredFieldsByteSizeFallback(TSCE::RTreeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::RTreeNodeArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
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
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  result += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  result += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_18:
  result += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) == 0)
  {
    return result;
  }

LABEL_12:
  result += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return result;
}

uint64_t TSCE::RTreeArchive::ByteSizeLong(TSCE::RTreeArchive *this)
{
  if (*(this + 16) != 0xFF)
  {
    v9 = TSCE::RTreeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::RTreeNodeArchive::ByteSizeLong(*(this + 3));
    v3.i32[0] = v2 | 1;
    v3.i32[1] = *(this + 8) | 1;
    v3.i64[1] = *(this + 36) | 0x100000001;
    v4.i64[0] = 0x1F0000001FLL;
    v4.i64[1] = 0x1F0000001FLL;
    v5.i64[0] = 0x4900000049;
    v5.i64[1] = 0x4900000049;
    v6.i64[0] = 0x4900000049;
    v6.i64[1] = 0x4900000049;
    v7 = vshrq_n_u32(vmlal_u16(v6, vmovn_s32(veorq_s8(vclzq_s32(v3), v4)), 0x9000900090009), 6uLL);
    v8 = vshrq_n_u32(vmlal_u16(v5, vmovn_s32(veorq_s8(vclzq_s32((*(this + 44) | __PAIR128__(0x100000001, 0x100000001))), v4)), 0x9000900090009), 6uLL);
    v9 = vaddvq_s64(vaddq_s64(vaddl_u32(*v7.i8, *v8.i8), vaddl_high_u32(v7, v8))) + v2 + 8;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TSCE::RTreeArchive::MergeFrom(TSCE::RTreeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RTreeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RTreeArchive::MergeFrom(uint64_t this, const TSCE::RTreeArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RTreeNodeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_RTreeNodeArchive_default_instance_;
      }

      this = TSCE::RTreeNodeArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v3 + 44) = *(a2 + 11);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v3 + 48) = *(a2 + 12);
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
      *(v3 + 56) = *(a2 + 14);
      goto LABEL_13;
    }

LABEL_28:
    *(v3 + 52) = *(a2 + 13);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

uint64_t *TSCE::RTreeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RTreeArchive::Clear(this);

    return TSCE::RTreeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RTreeArchive::CopyFrom(uint64_t *this, const TSCE::RTreeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RTreeArchive::Clear(this);

    return TSCE::RTreeArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::RTreeArchive::InternalSwap(TSCE::RTreeArchive *this, TSCE::RTreeArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  return result;
}

TSCE::RangeBackDependencyArchive *TSCE::RangeBackDependencyArchive::RangeBackDependencyArchive(TSCE::RangeBackDependencyArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABD90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RangeBackDependencyArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834ABD90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RangeBackDependencyArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSCE::RangeBackDependencyArchive *TSCE::RangeBackDependencyArchive::RangeBackDependencyArchive(TSCE::RangeBackDependencyArchive *this, const TSCE::RangeBackDependencyArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ABD90;
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
  *(this + 5) = *(a2 + 5);
  return this;
}

void TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive(TSCE::RangeBackDependencyArchive *this)
{
  if (this != TSCE::_RangeBackDependencyArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::RangeReferenceArchive::~RangeReferenceArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCE::InternalRangeReferenceArchive::~InternalRangeReferenceArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RangeBackDependencyArchive::default_instance(TSCE::RangeBackDependencyArchive *this)
{
  if (atomic_load_explicit(scc_info_RangeBackDependencyArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_RangeBackDependencyArchive_default_instance_;
}

uint64_t *TSCE::RangeBackDependencyArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::RangeReferenceArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::InternalRangeReferenceArchive::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
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

google::protobuf::internal *TSCE::RangeBackDependencyArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v7 = (v30 + 1);
      v8 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_37;
          }

          *(a1 + 16) |= 1u;
          v21 = *(a1 + 24);
          if (!v21)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v22);
            *(a1 + 24) = v21;
            v7 = v30;
          }

          v17 = sub_2216F8F0C(a3, v21, v7);
        }

        else
        {
          if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 2u;
            v15 = *(a1 + 32);
            if (!v15)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalRangeReferenceArchive>(v16);
              *(a1 + 32) = v15;
              v7 = v30;
            }

            v17 = sub_2216F8BCC(a3, v15, v7);
            goto LABEL_44;
          }

LABEL_37:
          if (v8)
          {
            v23 = (v8 & 7) == 4;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v17 = google::protobuf::internal::UnknownFieldParse();
        }

LABEL_44:
        v30 = v17;
        if (!v17)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_37;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_30:
          v30 = v18;
          *(a1 + 40) = v19;
          goto LABEL_45;
        }

        v28 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v30 = v28;
        *(a1 + 40) = v29;
        if (!v28)
        {
LABEL_54:
          v30 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_37;
        }

        v5 |= 8u;
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
          v30 = v12;
          *(a1 + 44) = v13;
          goto LABEL_45;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v30 = v26;
        *(a1 + 44) = v27;
        if (!v26)
        {
          goto LABEL_54;
        }
      }

LABEL_45:
      if (sub_221567030(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v7 = (v30 + 2);
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *TSCE::RangeBackDependencyArchive::_InternalSerialize(TSCE::RangeBackDependencyArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 11);
    *a2 = 16;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++a2;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if (v5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if (v5)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if (v5)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 10);
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
      if ((v5 & 8) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a2[2] = v7;
      a2 += 3;
      if ((v5 & 8) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 8) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_3:
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 3);
  *a2 = 26;
  v15 = *(v14 + 5);
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

  a2 = TSCE::RangeReferenceArchive::_InternalSerialize(v14, v16, a3);
  if ((v5 & 2) != 0)
  {
LABEL_38:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 4);
    *a2 = 34;
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

    a2 = TSCE::InternalRangeReferenceArchive::_InternalSerialize(v20, v22, a3);
  }

LABEL_48:
  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RangeBackDependencyArchive::RequiredFieldsByteSizeFallback(TSCE::RangeBackDependencyArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    result = ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::RangeBackDependencyArchive::ByteSizeLong(TSCE::RangeBackDependencyArchive *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0xC) != 0)
  {
    v3 = TSCE::RangeBackDependencyArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v4 = TSCE::RangeReferenceArchive::ByteSizeLong(*(this + 3));
      v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v5 = TSCE::InternalRangeReferenceArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSCE::RangeBackDependencyArchive::MergeFrom(TSCE::RangeBackDependencyArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RangeBackDependencyArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RangeBackDependencyArchive::MergeFrom(uint64_t this, const TSCE::RangeBackDependencyArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_RangeReferenceArchive_default_instance_;
      }

      this = TSCE::RangeReferenceArchive::MergeFrom(v6, v8);
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
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalRangeReferenceArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = TSCE::_InternalRangeReferenceArchive_default_instance_;
    }

    this = TSCE::InternalRangeReferenceArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 44) = *(a2 + 11);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSCE::RangeBackDependencyArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeBackDependencyArchive::Clear(this);

    return TSCE::RangeBackDependencyArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RangeBackDependencyArchive::CopyFrom(uint64_t *this, const TSCE::RangeBackDependencyArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeBackDependencyArchive::Clear(this);

    return TSCE::RangeBackDependencyArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::RangeBackDependencyArchive::IsInitialized(TSCE::RangeBackDependencyArchive *this)
{
  v1 = *(this + 4);
  result = 0;
  if ((~v1 & 0xC) == 0 && ((v1 & 1) == 0 || (~*(*(this + 3) + 16) & 0x1F) == 0))
  {
    if ((v1 & 2) == 0)
    {
      return 1;
    }

    v3 = *(this + 4);
    if ((~*(v3 + 16) & 3) == 0 && (~*(*(v3 + 24) + 16) & 0xF) == 0)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::RangeBackDependencyArchive::InternalSwap(TSCE::RangeBackDependencyArchive *this, TSCE::RangeBackDependencyArchive *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TSCE::RangeDependenciesArchive *TSCE::RangeDependenciesArchive::RangeDependenciesArchive(TSCE::RangeDependenciesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABE40;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_RangeDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::RangeDependenciesArchive *TSCE::RangeDependenciesArchive::RangeDependenciesArchive(TSCE::RangeDependenciesArchive *this, const TSCE::RangeDependenciesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834ABE40;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221568B6C(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::RangeDependenciesArchive::~RangeDependenciesArchive(TSCE::RangeDependenciesArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221568AE8(this + 2);
}

{
  TSCE::RangeDependenciesArchive::~RangeDependenciesArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RangeDependenciesArchive::default_instance(TSCE::RangeDependenciesArchive *this)
{
  if (atomic_load_explicit(scc_info_RangeDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RangeDependenciesArchive_default_instance_;
}

uint64_t *TSCE::RangeDependenciesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::RangeBackDependencyArchive::Clear(v4);
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

google::protobuf::internal *TSCE::RangeDependenciesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v6 == 18)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeBackDependencyArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F965C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 18)
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

unsigned __int8 *TSCE::RangeDependenciesArchive::_InternalSerialize(TSCE::RangeDependenciesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::RangeBackDependencyArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RangeDependenciesArchive::ByteSizeLong(TSCE::RangeDependenciesArchive *this)
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
      v7 = TSCE::RangeBackDependencyArchive::ByteSizeLong(v6);
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

uint64_t TSCE::RangeDependenciesArchive::MergeFrom(TSCE::RangeDependenciesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RangeDependenciesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RangeDependenciesArchive::MergeFrom(uint64_t this, const TSCE::RangeDependenciesArchive *a2)
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
    this = sub_221568B6C(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::RangeDependenciesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeDependenciesArchive::Clear(this);

    return TSCE::RangeDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RangeDependenciesArchive::CopyFrom(uint64_t *this, const TSCE::RangeDependenciesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeDependenciesArchive::Clear(this);

    return TSCE::RangeDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::RangeDependenciesArchive::IsInitialized(TSCE::RangeDependenciesArchive *this)
{
  v1 = *(this + 6);
  v2 = *(this + 4);
  do
  {
    v3 = v1;
    if (v1 < 1)
    {
      break;
    }

    v4 = v1 - 1;
    IsInitialized = TSCE::RangeBackDependencyArchive::IsInitialized(*(v2 + 8 * v1));
    v1 = v4;
  }

  while (IsInitialized);
  return v3 < 1;
}

__n128 TSCE::RangeDependenciesArchive::InternalSwap(TSCE::RangeDependenciesArchive *this, TSCE::RangeDependenciesArchive *a2)
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

TSCE::RangePrecedentsTileArchive_FromToRangeArchive *TSCE::RangePrecedentsTileArchive_FromToRangeArchive::RangePrecedentsTileArchive_FromToRangeArchive(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABEF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RangePrecedentsTileArchive_FromToRangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834ABEF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RangePrecedentsTileArchive_FromToRangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::RangePrecedentsTileArchive_FromToRangeArchive *TSCE::RangePrecedentsTileArchive_FromToRangeArchive::RangePrecedentsTileArchive_FromToRangeArchive(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this, const TSCE::RangePrecedentsTileArchive_FromToRangeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ABEF0;
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

void TSCE::RangePrecedentsTileArchive_FromToRangeArchive::~RangePrecedentsTileArchive_FromToRangeArchive(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this)
{
  if (this != TSCE::_RangePrecedentsTileArchive_FromToRangeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40B7564605);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCE::CellRectArchive::~CellRectArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RangePrecedentsTileArchive_FromToRangeArchive::~RangePrecedentsTileArchive_FromToRangeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RangePrecedentsTileArchive_FromToRangeArchive::default_instance(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this)
{
  if (atomic_load_explicit(scc_info_RangePrecedentsTileArchive_FromToRangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_RangePrecedentsTileArchive_FromToRangeArchive_default_instance_;
}

uint64_t *TSCE::RangePrecedentsTileArchive_FromToRangeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::CellCoordinateArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::CellRectArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSCE::RangePrecedentsTileArchive_FromToRangeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  while ((sub_221567030(a3, &v18) & 1) == 0)
  {
    v5 = (v18 + 1);
    v6 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v18 + 2);
LABEL_6:
      v18 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v7 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v16;
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRectArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_2216F972C(a3, v11, v5);
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
          return v18;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_2216F806C(a3, v13, v5);
    }

LABEL_30:
    v18 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TSCE::RangePrecedentsTileArchive_FromToRangeArchive::_InternalSerialize(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v6, v8, a3);
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

    a2 = TSCE::CellRectArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RangePrecedentsTileArchive_FromToRangeArchive::RequiredFieldsByteSizeFallback(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this)
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

  v4 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::CellRectArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::RangePrecedentsTileArchive_FromToRangeArchive::ByteSizeLong(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::RangePrecedentsTileArchive_FromToRangeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 3));
    v3 = TSCE::CellRectArchive::ByteSizeLong(*(this + 4));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TSCE::RangePrecedentsTileArchive_FromToRangeArchive::MergeFrom(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RangePrecedentsTileArchive_FromToRangeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RangePrecedentsTileArchive_FromToRangeArchive::MergeFrom(uint64_t this, const TSCE::RangePrecedentsTileArchive_FromToRangeArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      this = TSCE::CellCoordinateArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRectArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = TSCE::_CellRectArchive_default_instance_;
      }

      return TSCE::CellRectArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCE::RangePrecedentsTileArchive_FromToRangeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangePrecedentsTileArchive_FromToRangeArchive::Clear(this);

    return TSCE::RangePrecedentsTileArchive_FromToRangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RangePrecedentsTileArchive_FromToRangeArchive::CopyFrom(uint64_t *this, const TSCE::RangePrecedentsTileArchive_FromToRangeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangePrecedentsTileArchive_FromToRangeArchive::Clear(this);

    return TSCE::RangePrecedentsTileArchive_FromToRangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::RangePrecedentsTileArchive_FromToRangeArchive::InternalSwap(TSCE::RangePrecedentsTileArchive_FromToRangeArchive *this, TSCE::RangePrecedentsTileArchive_FromToRangeArchive *a2)
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

TSCE::RangePrecedentsTileArchive *TSCE::RangePrecedentsTileArchive::RangePrecedentsTileArchive(TSCE::RangePrecedentsTileArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ABFA0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_RangePrecedentsTileArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TSCE::RangePrecedentsTileArchive *TSCE::RangePrecedentsTileArchive::RangePrecedentsTileArchive(TSCE::RangePrecedentsTileArchive *this, const TSCE::RangePrecedentsTileArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ABFA0;
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
    sub_221568CB0(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void TSCE::RangePrecedentsTileArchive::~RangePrecedentsTileArchive(TSCE::RangePrecedentsTileArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221568C2C(this + 3);
}

{
  TSCE::RangePrecedentsTileArchive::~RangePrecedentsTileArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RangePrecedentsTileArchive::default_instance(TSCE::RangePrecedentsTileArchive *this)
{
  if (atomic_load_explicit(scc_info_RangePrecedentsTileArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RangePrecedentsTileArchive_default_instance_;
}

uint64_t *TSCE::RangePrecedentsTileArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::RangePrecedentsTileArchive_FromToRangeArchive::Clear(v4);
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

google::protobuf::internal *TSCE::RangePrecedentsTileArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
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

          goto LABEL_37;
        }

        v12 = (v7 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v27 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_24;
          }

          v19 = *(a1 + 32);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangePrecedentsTileArchive_FromToRangeArchive>(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v27;
          }

          else
          {
            *(a1 + 32) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_2216F97FC(a3, v16, v13);
          v27 = v12;
          if (!v12)
          {
            goto LABEL_44;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v20 = (v7 + 1);
      LODWORD(v21) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v22 = *v20;
      v21 = (v21 + (v22 << 7) - 128);
      if ((v22 & 0x80000000) == 0)
      {
        v20 = (v7 + 2);
LABEL_36:
        v27 = v20;
        *(a1 + 48) = v21;
        v5 = 1;
        goto LABEL_37;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v21);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_37:
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

unsigned __int8 *TSCE::RangePrecedentsTileArchive::_InternalSerialize(TSCE::RangePrecedentsTileArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSCE::RangePrecedentsTileArchive_FromToRangeArchive::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RangePrecedentsTileArchive::ByteSizeLong(TSCE::RangePrecedentsTileArchive *this)
{
  if (*(this + 16))
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 8);
  v4 = v2 + v3;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = TSCE::RangePrecedentsTileArchive_FromToRangeArchive::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
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

uint64_t TSCE::RangePrecedentsTileArchive::MergeFrom(TSCE::RangePrecedentsTileArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RangePrecedentsTileArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RangePrecedentsTileArchive::MergeFrom(uint64_t this, const TSCE::RangePrecedentsTileArchive *a2)
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
    this = sub_221568CB0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *TSCE::RangePrecedentsTileArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangePrecedentsTileArchive::Clear(this);

    return TSCE::RangePrecedentsTileArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RangePrecedentsTileArchive::CopyFrom(uint64_t *this, const TSCE::RangePrecedentsTileArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangePrecedentsTileArchive::Clear(this);

    return TSCE::RangePrecedentsTileArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::RangePrecedentsTileArchive::IsInitialized(TSCE::RangePrecedentsTileArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((~*(*(v4 + 32) + 16) & 3) == 0);
  return result;
}

__n128 TSCE::RangePrecedentsTileArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t TSCE::RangeDependenciesTiledArchive::clear_range_precedents_tile(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TSCE::RangeDependenciesTiledArchive *TSCE::RangeDependenciesTiledArchive::RangeDependenciesTiledArchive(TSCE::RangeDependenciesTiledArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC050;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_RangeDependenciesTiledArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::RangeDependenciesTiledArchive *TSCE::RangeDependenciesTiledArchive::RangeDependenciesTiledArchive(TSCE::RangeDependenciesTiledArchive *this, const TSCE::RangeDependenciesTiledArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AC050;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221568514(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::RangeDependenciesTiledArchive::~RangeDependenciesTiledArchive(TSCE::RangeDependenciesTiledArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 2);
}

{
  TSCE::RangeDependenciesTiledArchive::~RangeDependenciesTiledArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RangeDependenciesTiledArchive::default_instance(TSCE::RangeDependenciesTiledArchive *this)
{
  if (atomic_load_explicit(scc_info_RangeDependenciesTiledArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RangeDependenciesTiledArchive_default_instance_;
}

uint64_t *TSCE::RangeDependenciesTiledArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
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

google::protobuf::internal *TSCE::RangeDependenciesTiledArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_221567030(a3, &v21) & 1) == 0)
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
          v13 = MEMORY[0x223DA0390](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_22170B7F8(a3, v14, v10);
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
        sub_221567188((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v21))
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

unsigned __int8 *TSCE::RangeDependenciesTiledArchive::_InternalSerialize(TSCE::RangeDependenciesTiledArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RangeDependenciesTiledArchive::ByteSizeLong(TSCE::RangeDependenciesTiledArchive *this)
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

uint64_t TSCE::RangeDependenciesTiledArchive::MergeFrom(TSCE::RangeDependenciesTiledArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RangeDependenciesTiledArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RangeDependenciesTiledArchive::MergeFrom(uint64_t this, const TSCE::RangeDependenciesTiledArchive *a2)
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
    this = sub_221568514(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::RangeDependenciesTiledArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeDependenciesTiledArchive::Clear(this);

    return TSCE::RangeDependenciesTiledArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RangeDependenciesTiledArchive::CopyFrom(uint64_t *this, const TSCE::RangeDependenciesTiledArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeDependenciesTiledArchive::Clear(this);

    return TSCE::RangeDependenciesTiledArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::RangeDependenciesTiledArchive::IsInitialized(TSCE::RangeDependenciesTiledArchive *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::RangeDependenciesTiledArchive::InternalSwap(TSCE::RangeDependenciesTiledArchive *this, TSCE::RangeDependenciesTiledArchive *a2)
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

TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::SpanningDependenciesArchive_ReferringColumnToLocalCells(TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC100;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpanningDependenciesArchive_ReferringColumnToLocalCells_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::SpanningDependenciesArchive_ReferringColumnToLocalCells(TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *this, const TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC100;
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
    sub_2215686E0(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::~SpanningDependenciesArchive_ReferringColumnToLocalCells(TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *this)
{
  sub_2214DFCF8(this + 1);
  sub_2215685C4(this + 3);
}

{
  TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::~SpanningDependenciesArchive_ReferringColumnToLocalCells(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::default_instance(TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *this)
{
  if (atomic_load_explicit(scc_info_SpanningDependenciesArchive_ReferringColumnToLocalCells_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_SpanningDependenciesArchive_ReferringColumnToLocalCells_default_instance_;
}

uint64_t *TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
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

google::protobuf::internal *TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v31) & 1) == 0)
  {
    while (1)
    {
      v7 = (v31 + 1);
      v8 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v16 = (v7 - 1);
        while (2)
        {
          v17 = (v16 + 1);
          v31 = (v16 + 1);
          v18 = *(a1 + 40);
          if (!v18)
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v18 = *(a1 + 40);
            v19 = *v18;
            goto LABEL_32;
          }

          v23 = *(a1 + 32);
          v19 = *v18;
          if (v23 >= *v18)
          {
            if (v19 == *(a1 + 36))
            {
              goto LABEL_31;
            }

LABEL_32:
            *v18 = v19 + 1;
            v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(a1 + 24));
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v20;
            v17 = v31;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v18[2 * v23 + 2];
          }

          v16 = sub_2216F806C(a3, v20, v17);
          v31 = v16;
          if (!v16)
          {
            goto LABEL_55;
          }

          if (*a3 <= v16 || *v16 != 26)
          {
            goto LABEL_45;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 == 16)
        {
          v14 = (v7 + 1);
          v13 = *v7;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v31 = google::protobuf::internal::VarintParseSlow64(v7, v13);
            if (!v31)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v14 = (v7 + 2);
LABEL_25:
            v31 = v14;
          }

          if (v13 > 1)
          {
            sub_2216FF1C4();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 52) = v13;
          }

          goto LABEL_45;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v31 = google::protobuf::internal::UnknownFieldParse();
        if (!v31)
        {
LABEL_55:
          v31 = 0;
          goto LABEL_2;
        }

        goto LABEL_45;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v24 = (v7 + 1);
      LODWORD(v25) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v26 = *v24;
      v25 = (v25 + (v26 << 7) - 128);
      if ((v26 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_44:
        v31 = v24;
        *(a1 + 48) = v25;
        v5 = 1;
        goto LABEL_45;
      }

      v29 = google::protobuf::internal::VarintParseSlow32(v7, v25);
      v31 = v29;
      *(a1 + 48) = v30;
      v5 = 1;
      if (!v29)
      {
        goto LABEL_55;
      }

LABEL_45:
      if (sub_221567030(a3, &v31))
      {
        goto LABEL_2;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

unsigned __int8 *TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::_InternalSerialize(TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::RequiredFieldsByteSizeFallback(TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v4 = *(this + 13);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v5;
  return result;
}

uint64_t TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::ByteSizeLong(TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v6 = TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 13);
    v3 = (9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6;
    v4 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    if (v2 >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 10;
    }

    v6 = v5 + v3 + 2;
  }

  v7 = *(this + 8);
  v8 = v6 + v7;
  v9 = *(this + 5);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = TSCE::CellCoordinateArchive::ByteSizeLong(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v8, this + 20);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::MergeFrom(TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::MergeFrom(uint64_t this, const TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *a2)
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
    this = sub_2215686E0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 48) = *(a2 + 12);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 52) = *(a2 + 13);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::Clear(this);

    return TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::CopyFrom(uint64_t *this, const TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::Clear(this);

    return TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::SpanningDependenciesArchive_ReferringColumnToRemoteCells(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC1B0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpanningDependenciesArchive_ReferringColumnToRemoteCells_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::SpanningDependenciesArchive_ReferringColumnToRemoteCells(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this, const TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC1B0;
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
    sub_221568DF4(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 6) = *(a2 + 6);
  return this;
}