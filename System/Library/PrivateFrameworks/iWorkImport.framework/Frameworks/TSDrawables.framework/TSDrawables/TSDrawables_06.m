unsigned __int8 *TSD::ThemePresetsArchive::_InternalSerialize(TSD::ThemePresetsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
      v9 = *(v8 + 11);
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

      a2 = TSD::FillArchive::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 7) + 8 * j + 8);
      *a2 = 18;
      v17 = *(v16 + 11);
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

      a2 = TSD::FillArchive::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 18);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(this + 10) + 8 * k + 8);
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

      a2 = TSD::ShadowArchive::_InternalSerialize(v24, v26, a3, a4);
    }
  }

  v30 = *(this + 24);
  if (v30)
  {
    for (m = 0; m != v30; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v32 = *(*(this + 13) + 8 * m + 8);
      *a2 = 34;
      v33 = *(v32 + 5);
      if (v33 > 0x7F)
      {
        a2[1] = v33 | 0x80;
        v35 = v33 >> 7;
        if (v33 >> 14)
        {
          v34 = a2 + 3;
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
          a2[2] = v35;
          v34 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v33;
        v34 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v32, v34, a3);
    }
  }

  v38 = *(this + 30);
  if (v38)
  {
    for (n = 0; n != v38; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v40 = *(*(this + 16) + 8 * n + 8);
      *a2 = 42;
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

      a2 = TSP::Reference::_InternalSerialize(v40, v42, a3);
    }
  }

  v46 = *(this + 36);
  if (v46)
  {
    for (ii = 0; ii != v46; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v48 = *(*(this + 19) + 8 * ii + 8);
      *a2 = 50;
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

      a2 = TSP::Reference::_InternalSerialize(v48, v50, a3);
    }
  }

  v54 = *(this + 42);
  if (v54)
  {
    for (jj = 0; jj != v54; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v56 = *(*(this + 22) + 8 * jj + 8);
      *a2 = 58;
      v57 = *(v56 + 5);
      if (v57 > 0x7F)
      {
        a2[1] = v57 | 0x80;
        v59 = v57 >> 7;
        if (v57 >> 14)
        {
          v58 = a2 + 3;
          do
          {
            *(v58 - 1) = v59 | 0x80;
            v60 = v59 >> 7;
            ++v58;
            v61 = v59 >> 14;
            v59 >>= 7;
          }

          while (v61);
          *(v58 - 1) = v60;
        }

        else
        {
          a2[2] = v59;
          v58 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v57;
        v58 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v56, v58, a3);
    }
  }

  v62 = *(this + 48);
  if (v62)
  {
    for (kk = 0; kk != v62; ++kk)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v64 = *(*(this + 25) + 8 * kk + 8);
      *a2 = 66;
      v65 = *(v64 + 5);
      if (v65 > 0x7F)
      {
        a2[1] = v65 | 0x80;
        v67 = v65 >> 7;
        if (v65 >> 14)
        {
          v66 = a2 + 3;
          do
          {
            *(v66 - 1) = v67 | 0x80;
            v68 = v67 >> 7;
            ++v66;
            v69 = v67 >> 14;
            v67 >>= 7;
          }

          while (v69);
          *(v66 - 1) = v68;
        }

        else
        {
          a2[2] = v67;
          v66 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v65;
        v66 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v64, v66, a3);
    }
  }

  v70 = *(this + 54);
  if (v70)
  {
    for (mm = 0; mm != v70; ++mm)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v72 = *(*(this + 28) + 8 * mm + 8);
      *a2 = 74;
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

      a2 = TSP::Reference::_InternalSerialize(v72, v74, a3);
    }
  }

  v78 = *(this + 1);
  if ((v78 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v78 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ThemePresetsArchive::ByteSizeLong(TSD::ThemePresetsArchive *this)
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
      v7 = TSD::FillArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = v2 + v8;
  v10 = *(this + 7);
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
      v14 = TSD::FillArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 18);
  v16 = v9 + v15;
  v17 = *(this + 10);
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
      v21 = TSD::ShadowArchive::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 24);
  v23 = v16 + v22;
  v24 = *(this + 13);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSP::Reference::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 30);
  v30 = v23 + v29;
  v31 = *(this + 16);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = TSP::Reference::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 36);
  v37 = v30 + v36;
  v38 = *(this + 19);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = TSP::Reference::ByteSizeLong(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(this + 42);
  v44 = v37 + v43;
  v45 = *(this + 22);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = TSP::Reference::ByteSizeLong(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(this + 48);
  v51 = v44 + v50;
  v52 = *(this + 25);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = TSP::Reference::ByteSizeLong(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(this + 54);
  v58 = v51 + v57;
  v59 = *(this + 28);
  if (v59)
  {
    v60 = (v59 + 8);
  }

  else
  {
    v60 = 0;
  }

  if (v57)
  {
    v61 = 8 * v57;
    do
    {
      v62 = *v60++;
      v63 = TSP::Reference::ByteSizeLong(v62);
      v58 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
      v61 -= 8;
    }

    while (v61);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 58) = v58;
    return v58;
  }
}

void TSD::ThemePresetsArchive::MergeFrom(TSD::ThemePresetsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::ThemePresetsArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::ThemePresetsArchive::MergeFrom(TSD::ThemePresetsArchive *this, const TSD::ThemePresetsArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_27676C914(this + 2, v7, (v6 + 8), v5, **(this + 4) - *(this + 6));
    v8 = *(this + 6) + v5;
    *(this + 6) = v8;
    v9 = *(this + 4);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 12);
  if (v10)
  {
    v11 = *(a2 + 7);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40));
    sub_27676C914(this + 5, v12, (v11 + 8), v10, **(this + 7) - *(this + 12));
    v13 = *(this + 12) + v10;
    *(this + 12) = v13;
    v14 = *(this + 7);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 18);
  if (v15)
  {
    v16 = *(a2 + 10);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 64));
    sub_27676C9D4(this + 8, v17, (v16 + 8), v15, **(this + 10) - *(this + 18));
    v18 = *(this + 18) + v15;
    *(this + 18) = v18;
    v19 = *(this + 10);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 24);
  if (v20)
  {
    v21 = *(a2 + 13);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 88));
    sub_27676CA94(this + 88, v22, (v21 + 8), v20, **(this + 13) - *(this + 24));
    v23 = *(this + 24) + v20;
    *(this + 24) = v23;
    v24 = *(this + 13);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 30);
  if (v25)
  {
    v26 = *(a2 + 16);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 112));
    sub_27676CA94(this + 112, v27, (v26 + 8), v25, **(this + 16) - *(this + 30));
    v28 = *(this + 30) + v25;
    *(this + 30) = v28;
    v29 = *(this + 16);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 36);
  if (v30)
  {
    v31 = *(a2 + 19);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 136));
    sub_27676CA94(this + 136, v32, (v31 + 8), v30, **(this + 19) - *(this + 36));
    v33 = *(this + 36) + v30;
    *(this + 36) = v33;
    v34 = *(this + 19);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 42);
  if (v35)
  {
    v36 = *(a2 + 22);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 160));
    sub_27676CA94(this + 160, v37, (v36 + 8), v35, **(this + 22) - *(this + 42));
    v38 = *(this + 42) + v35;
    *(this + 42) = v38;
    v39 = *(this + 22);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 48);
  if (v40)
  {
    v41 = *(a2 + 25);
    v42 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 184));
    sub_27676CA94(this + 184, v42, (v41 + 8), v40, **(this + 25) - *(this + 48));
    v43 = *(this + 48) + v40;
    *(this + 48) = v43;
    v44 = *(this + 25);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 54);
  if (v45)
  {
    v46 = *(a2 + 28);
    v47 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 208));
    sub_27676CA94(this + 208, v47, (v46 + 8), v45, **(this + 28) - *(this + 54));
    v48 = *(this + 54) + v45;
    *(this + 54) = v48;
    v49 = *(this + 28);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }
}

void TSD::ThemePresetsArchive::CopyFrom(TSD::ThemePresetsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::ThemePresetsArchive::Clear(this);

    TSD::ThemePresetsArchive::MergeFrom(this, a2);
  }
}

void TSD::ThemePresetsArchive::CopyFrom(TSD::ThemePresetsArchive *this, const TSD::ThemePresetsArchive *a2)
{
  if (a2 != this)
  {
    TSD::ThemePresetsArchive::Clear(this);

    TSD::ThemePresetsArchive::MergeFrom(this, a2);
  }
}

BOOL TSD::ThemePresetsArchive::IsInitialized(TSD::ThemePresetsArchive *this)
{
  v2 = *(this + 6);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSD::FillArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 12);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSD::FillArchive::IsInitialized(*(*(this + 7) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (!sub_276730394(this + 64))
  {
    return 0;
  }

  v8 = *(this + 24);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSP::Reference::IsInitialized(*(*(this + 13) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(this + 30);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSP::Reference::IsInitialized(*(*(this + 16) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(this + 36);
  while (v16 >= 1)
  {
    v17 = v16 - 1;
    v18 = TSP::Reference::IsInitialized(*(*(this + 19) + 8 * v16));
    v14 = 0;
    v16 = v17;
    if ((v18 & 1) == 0)
    {
      return v14;
    }
  }

  v19 = *(this + 42);
  while (v19 >= 1)
  {
    v20 = v19 - 1;
    v21 = TSP::Reference::IsInitialized(*(*(this + 22) + 8 * v19));
    v14 = 0;
    v19 = v20;
    if ((v21 & 1) == 0)
    {
      return v14;
    }
  }

  v22 = *(this + 48);
  while (v22 >= 1)
  {
    v23 = v22 - 1;
    v24 = TSP::Reference::IsInitialized(*(*(this + 25) + 8 * v22));
    v14 = 0;
    v22 = v23;
    if ((v24 & 1) == 0)
    {
      return v14;
    }
  }

  v25 = *(this + 54);
  do
  {
    v14 = v25 < 1;
    if (v25 < 1)
    {
      break;
    }

    v26 = v25 - 1;
    v27 = TSP::Reference::IsInitialized(*(*(this + 28) + 8 * v25));
    v25 = v26;
  }

  while ((v27 & 1) != 0);
  return v14;
}

__n128 TSD::ThemePresetsArchive::InternalSwap(TSD::ThemePresetsArchive *this, TSD::ThemePresetsArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  v7 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v6;
  *(a2 + 7) = v7;
  v8 = *(this + 9);
  v9 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v8;
  *(a2 + 10) = v9;
  v10 = *(this + 12);
  v11 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v10;
  *(a2 + 13) = v11;
  v12 = *(this + 15);
  v13 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v12;
  *(a2 + 16) = v13;
  v14 = *(this + 18);
  v15 = *(this + 19);
  *(this + 9) = *(a2 + 9);
  *(a2 + 18) = v14;
  *(a2 + 19) = v15;
  v16 = *(this + 21);
  v17 = *(this + 22);
  *(this + 168) = *(a2 + 168);
  *(a2 + 21) = v16;
  *(a2 + 22) = v17;
  v18 = *(this + 24);
  v19 = *(this + 25);
  *(this + 12) = *(a2 + 12);
  *(a2 + 24) = v18;
  *(a2 + 25) = v19;
  v20 = *(this + 27);
  v21 = *(this + 28);
  result = *(a2 + 216);
  *(this + 216) = result;
  *(a2 + 27) = v20;
  *(a2 + 28) = v21;
  return result;
}

TSK::CommandArchive *TSD::ThemeReplaceFillPresetCommandArchive::clear_super(TSD::ThemeReplaceFillPresetCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSD::ThemeReplaceFillPresetCommandArchive::clear_theme(TSD::ThemeReplaceFillPresetCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::ThemeReplaceFillPresetCommandArchive *TSD::ThemeReplaceFillPresetCommandArchive::ThemeReplaceFillPresetCommandArchive(TSD::ThemeReplaceFillPresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577138;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceFillPresetCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288577138;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceFillPresetCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ThemeReplaceFillPresetCommandArchive *TSD::ThemeReplaceFillPresetCommandArchive::ThemeReplaceFillPresetCommandArchive(TSD::ThemeReplaceFillPresetCommandArchive *this, const TSD::ThemeReplaceFillPresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577138;
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
  *(this + 14) = *(a2 + 14);
  return this;
}

void TSD::ThemeReplaceFillPresetCommandArchive::~ThemeReplaceFillPresetCommandArchive(TSD::ThemeReplaceFillPresetCommandArchive *this)
{
  sub_276741090(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ThemeReplaceFillPresetCommandArchive::~ThemeReplaceFillPresetCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_276741090(uint64_t *result)
{
  if (result != &TSD::_ThemeReplaceFillPresetCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::FillArchive::~FillArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[6];
    if (result)
    {
      TSD::FillArchive::~FillArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ThemeReplaceFillPresetCommandArchive::default_instance(TSD::ThemeReplaceFillPresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemeReplaceFillPresetCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ThemeReplaceFillPresetCommandArchive_default_instance_;
}

uint64_t *TSD::ThemeReplaceFillPresetCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  this = TSK::CommandArchive::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  this = TSD::FillArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSD::FillArchive::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ThemeReplaceFillPresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v30) & 1) == 0)
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
        goto LABEL_60;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 1u;
          v22 = *(a1 + 24);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277C9BA50](v23);
            LODWORD(v22) = v24;
            *(a1 + 24) = v24;
            v7 = v30;
          }

          v18 = sub_27680C3D8(a3, v22, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 32);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277C9BB20](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v30;
          }

          v18 = sub_27680B6EC(a3, v15, v7);
        }

LABEL_52:
        v30 = v18;
        if (!v18)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      }

      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_45;
        }

        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v20);
          *(a1 + 40) = v19;
LABEL_37:
          v7 = v30;
        }

LABEL_38:
        v18 = sub_276808E5C(a3, v19, v7);
        goto LABEL_52;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 8u;
          v19 = *(a1 + 48);
          if (!v19)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v21);
            *(a1 + 48) = v19;
            goto LABEL_37;
          }

          goto LABEL_38;
        }

LABEL_45:
        if (v8)
        {
          v25 = (v8 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_52;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_45;
      }

      v5 |= 0x10u;
      v11 = (v7 + 1);
      LODWORD(v12) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v13 = *v11;
      v12 = (v12 + (v13 << 7) - 128);
      if ((v13 & 0x80000000) == 0)
      {
        v11 = (v7 + 2);
LABEL_15:
        v30 = v11;
        *(a1 + 56) = v12;
        goto LABEL_53;
      }

      v28 = google::protobuf::internal::VarintParseSlow32(v7, v12);
      v30 = v28;
      *(a1 + 56) = v29;
      if (!v28)
      {
LABEL_60:
        v30 = 0;
        goto LABEL_2;
      }

LABEL_53:
      if (sub_27670AF08(a3, &v30))
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

unsigned __int8 *TSD::ThemeReplaceFillPresetCommandArchive::_InternalSerialize(TSD::ThemeReplaceFillPresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
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
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 5);
  *a2 = 26;
  v20 = *(v19 + 11);
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

  a2 = TSD::FillArchive::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 6);
  *a2 = 34;
  v26 = *(v25 + 11);
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

  a2 = TSD::FillArchive::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 14);
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

LABEL_56:
  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v35 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ThemeReplaceFillPresetCommandArchive::RequiredFieldsByteSizeFallback(TSD::ThemeReplaceFillPresetCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
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
    v8 = TSD::FillArchive::ByteSizeLong(*(this + 6));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

  v7 = TSD::FillArchive::ByteSizeLong(*(this + 5));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v2 & 0x10) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSD::ThemeReplaceFillPresetCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    v9 = TSD::ThemeReplaceFillPresetCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = TSD::FillArchive::ByteSizeLong(this[5]);
    v5 = TSD::FillArchive::ByteSizeLong(this[6]);
    v6.i32[0] = v2 | 1;
    v6.i32[1] = v3 | 1;
    v6.i32[2] = v4 | 1;
    v6.i32[3] = v5 | 1;
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x4900000049;
    v8.i64[1] = 0x4900000049;
    v9 = v3 + v2 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v8, vmovn_s32(veorq_s8(vclzq_s32(v6), v7)), 0x9000900090009), 6uLL)) + ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + v5 + v4 + 5;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

void TSD::ThemeReplaceFillPresetCommandArchive::MergeFrom(TSD::ThemeReplaceFillPresetCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::ThemeReplaceFillPresetCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::ThemeReplaceFillPresetCommandArchive::MergeFrom(TSD::ThemeReplaceFillPresetCommandArchive *this, const TSD::ThemeReplaceFillPresetCommandArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BA50](v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80718];
      }

      TSK::CommandArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v9 = *(this + 4);
      if (!v9)
      {
        v10 = *(this + 1);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C9BB20](v10);
        *(this + 4) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      TSP::Reference::MergeFrom(v9, v11);
    }

    if ((v5 & 4) != 0)
    {
      *(this + 4) |= 4u;
      v12 = *(this + 5);
      if (!v12)
      {
        v13 = *(this + 1);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v13);
        *(this + 5) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSD::_FillArchive_default_instance_;
      }

      TSD::FillArchive::MergeFrom(v12, v14);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
LABEL_26:
          *(this + 4) |= v5;
          return;
        }

LABEL_25:
        *(this + 14) = *(a2 + 14);
        goto LABEL_26;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(this + 4) |= 8u;
    v15 = *(this + 6);
    if (!v15)
    {
      v16 = *(this + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v16);
      *(this + 6) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSD::_FillArchive_default_instance_;
    }

    TSD::FillArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }
}

void TSD::ThemeReplaceFillPresetCommandArchive::CopyFrom(TSD::ThemeReplaceFillPresetCommandArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::ThemeReplaceFillPresetCommandArchive::Clear(this);

    TSD::ThemeReplaceFillPresetCommandArchive::MergeFrom(this, a2);
  }
}

void TSD::ThemeReplaceFillPresetCommandArchive::CopyFrom(TSD::ThemeReplaceFillPresetCommandArchive *this, const TSD::ThemeReplaceFillPresetCommandArchive *a2)
{
  if (a2 != this)
  {
    TSD::ThemeReplaceFillPresetCommandArchive::Clear(this);

    TSD::ThemeReplaceFillPresetCommandArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::ThemeReplaceFillPresetCommandArchive::IsInitialized(TSD::ThemeReplaceFillPresetCommandArchive *this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSD::FillArchive::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ThemeReplaceFillPresetCommandArchive::InternalSwap(TSD::ThemeReplaceFillPresetCommandArchive *this, TSD::ThemeReplaceFillPresetCommandArchive *a2)
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
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  return result;
}

TSP::Reference *TSD::DrawableArchive::clear_parent(TSD::DrawableArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSD::DrawableArchive::clear_comment(TSD::DrawableArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

uint64_t TSD::DrawableArchive::clear_pencil_annotations(uint64_t this)
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

TSP::Reference *TSD::DrawableArchive::clear_title(TSD::DrawableArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Reference *TSD::DrawableArchive::clear_caption(TSD::DrawableArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSD::DrawableArchive *TSD::DrawableArchive::DrawableArchive(TSD::DrawableArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885771E8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_DrawableArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = v3;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  return this;
}

TSD::DrawableArchive *TSD::DrawableArchive::DrawableArchive(TSD::DrawableArchive *this, const TSD::DrawableArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885771E8;
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
    sub_27676CA94(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  v12 = *(a2 + 4);
  if (v12)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v12 = *(a2 + 4);
  }

  *(this + 7) = v11;
  if ((v12 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v12 = *(a2 + 4);
  }

  if ((v12 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v12 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v12 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v12 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v12 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v12 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  *(this + 28) = *(a2 + 28);
  return this;
}

void sub_2767423B4(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x1081C407D3F2757);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::DrawableArchive::~DrawableArchive(TSD::DrawableArchive *this)
{
  sub_276742468(this);
  sub_2766FFE58(this + 1);
  sub_27676C890(this + 3);
}

{
  TSD::DrawableArchive::~DrawableArchive(this);

  JUMPOUT(0x277C9C1D0);
}

TSP::Reference *sub_276742468(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 6);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 7);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C9C1D0](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSD::_DrawableArchive_default_instance_)
  {
    v5 = *(v1 + 8);
    if (v5)
    {
      TSD::GeometryArchive::~GeometryArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = *(v1 + 9);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = *(v1 + 10);
    if (v7)
    {
      sub_2766FFE58((v7 + 8));
      MEMORY[0x277C9C1D0](v7, 0x1081C40A76629DFLL);
    }

    v8 = *(v1 + 11);
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x277C9C1D0]();
    }

    v9 = *(v1 + 12);
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x277C9C1D0]();
    }

    result = *(v1 + 13);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::DrawableArchive::default_instance(TSD::DrawableArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableArchive_default_instance_;
}

uint64_t *TSD::DrawableArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    if ((*(v1 + 16) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  this = TSD::GeometryArchive::Clear(*(v1 + 64));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = TSP::Reference::Clear(*(v1 + 72));
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    this = TSP::Reference::Clear(*(v1 + 88));
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = TSD::ExteriorTextWrapArchive::Clear(*(v1 + 80));
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_31:
  this = TSP::Reference::Clear(*(v1 + 96));
  if (v5 < 0)
  {
LABEL_14:
    this = TSP::Reference::Clear(*(v1 + 104));
  }

LABEL_15:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 104) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27670B144(v6);
  }

  return this;
}

uint64_t *TSD::ExteriorTextWrapArchive::Clear(TSD::ExteriorTextWrapArchive *this)
{
  if ((*(this + 16) & 0x3F) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 37) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::DrawableArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v56 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v56) & 1) == 0)
  {
    while (2)
    {
      v7 = (v56 + 1);
      v8 = *v56;
      if (*v56 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v56, (v9 - 128));
          v56 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_101;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 4u;
              v10 = *(a1 + 64);
              if (!v10)
              {
                v11 = *(a1 + 8);
                if (v11)
                {
                  v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
                }

                v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v11);
                *(a1 + 64) = v10;
                v7 = v56;
              }

              v12 = sub_27680C4A8(a3, v10, v7);
              goto LABEL_69;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 8u;
              v24 = *(a1 + 72);
              if (v24)
              {
                goto LABEL_68;
              }

              v29 = *(a1 + 8);
              if (v29)
              {
                v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
              }

              v30 = MEMORY[0x277C9BB20](v29);
              LODWORD(v24) = v30;
              *(a1 + 72) = v30;
              goto LABEL_67;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x10u;
              v27 = *(a1 + 80);
              if (!v27)
              {
                v28 = *(a1 + 8);
                if (v28)
                {
                  v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
                }

                v27 = google::protobuf::Arena::CreateMaybeMessage<TSD::ExteriorTextWrapArchive>(v28);
                *(a1 + 80) = v27;
                v7 = v56;
              }

              v12 = sub_27680C578(a3, v27, v7);
              goto LABEL_69;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 1u;
              goto LABEL_46;
            case 5u:
              if (v8 != 40)
              {
                goto LABEL_85;
              }

              v5 |= 0x100u;
              v19 = (v7 + 1);
              v18 = *v7;
              if ((v18 & 0x8000000000000000) == 0)
              {
                goto LABEL_25;
              }

              v20 = *v19;
              v18 = (v20 << 7) + v18 - 128;
              if (v20 < 0)
              {
                v50 = google::protobuf::internal::VarintParseSlow64(v7, v18);
                v56 = v50;
                *(a1 + 112) = v51 != 0;
                if (!v50)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v19 = (v7 + 2);
LABEL_25:
                v56 = v19;
                *(a1 + 112) = v18 != 0;
              }

              goto LABEL_70;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x20u;
              v24 = *(a1 + 88);
              if (v24)
              {
                goto LABEL_68;
              }

              v31 = *(a1 + 8);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v32 = MEMORY[0x277C9BB20](v31);
              LODWORD(v24) = v32;
              *(a1 + 88) = v32;
              goto LABEL_67;
            case 7u:
              if (v8 != 56)
              {
                goto LABEL_85;
              }

              v5 |= 0x200u;
              v34 = (v7 + 1);
              v33 = *v7;
              if ((v33 & 0x8000000000000000) == 0)
              {
                goto LABEL_61;
              }

              v35 = *v34;
              v33 = (v35 << 7) + v33 - 128;
              if (v35 < 0)
              {
                v54 = google::protobuf::internal::VarintParseSlow64(v7, v33);
                v56 = v54;
                *(a1 + 113) = v55 != 0;
                if (!v54)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v34 = (v7 + 2);
LABEL_61:
                v56 = v34;
                *(a1 + 113) = v33 != 0;
              }

              goto LABEL_70;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 2u;
LABEL_46:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v12 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_69;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_85;
              }

              v38 = v7 - 1;
              break;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x40u;
              v24 = *(a1 + 96);
              if (v24)
              {
                goto LABEL_68;
              }

              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C9BB20](v25);
              LODWORD(v24) = v26;
              *(a1 + 96) = v26;
              goto LABEL_67;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x80u;
              v24 = *(a1 + 104);
              if (v24)
              {
                goto LABEL_68;
              }

              v36 = *(a1 + 8);
              if (v36)
              {
                v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
              }

              v37 = MEMORY[0x277C9BB20](v36);
              LODWORD(v24) = v37;
              *(a1 + 104) = v37;
LABEL_67:
              v7 = v56;
LABEL_68:
              v12 = sub_27680B6EC(a3, v24, v7);
              goto LABEL_69;
            case 0xCu:
              if (v8 != 96)
              {
                goto LABEL_85;
              }

              v5 |= 0x400u;
              v16 = (v7 + 1);
              v15 = *v7;
              if ((v15 & 0x8000000000000000) == 0)
              {
                goto LABEL_20;
              }

              v17 = *v16;
              v15 = (v17 << 7) + v15 - 128;
              if (v17 < 0)
              {
                v48 = google::protobuf::internal::VarintParseSlow64(v7, v15);
                v56 = v48;
                *(a1 + 114) = v49 != 0;
                if (!v48)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v16 = (v7 + 2);
LABEL_20:
                v56 = v16;
                *(a1 + 114) = v15 != 0;
              }

              goto LABEL_70;
            case 0xDu:
              if (v8 != 104)
              {
                goto LABEL_85;
              }

              v5 |= 0x800u;
              v22 = (v7 + 1);
              v21 = *v7;
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_30;
              }

              v23 = *v22;
              v21 = (v23 << 7) + v21 - 128;
              if (v23 < 0)
              {
                v52 = google::protobuf::internal::VarintParseSlow64(v7, v21);
                v56 = v52;
                *(a1 + 115) = v53 != 0;
                if (!v52)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v22 = (v7 + 2);
LABEL_30:
                v56 = v22;
                *(a1 + 115) = v21 != 0;
              }

              goto LABEL_70;
            default:
LABEL_85:
              if (v8)
              {
                v47 = (v8 & 7) == 4;
              }

              else
              {
                v47 = 1;
              }

              if (v47)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_27670AF80((a1 + 8));
              }

              v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_69:
              v56 = v12;
              if (!v12)
              {
LABEL_101:
                v56 = 0;
                goto LABEL_2;
              }

LABEL_70:
              if (sub_27670AF08(a3, &v56))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v39 = (v38 + 1);
            v56 = (v38 + 1);
            v40 = *(a1 + 40);
            if (!v40)
            {
              goto LABEL_75;
            }

            v46 = *(a1 + 32);
            v41 = *v40;
            if (v46 < *v40)
            {
              *(a1 + 32) = v46 + 1;
              v43 = *&v40[2 * v46 + 2];
              goto LABEL_79;
            }

            if (v41 == *(a1 + 36))
            {
LABEL_75:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v40 = *(a1 + 40);
              v41 = *v40;
            }

            *v40 = v41 + 1;
            v42 = MEMORY[0x277C9BB20](*(a1 + 24));
            LODWORD(v43) = v42;
            v44 = *(a1 + 32);
            v45 = *(a1 + 40) + 8 * v44;
            *(a1 + 32) = v44 + 1;
            *(v45 + 8) = v42;
            v39 = v56;
LABEL_79:
            v38 = sub_27680B6EC(a3, v43, v39);
            v56 = v38;
            if (!v38)
            {
              goto LABEL_101;
            }

            if (*a3 <= v38 || *v38 != 74)
            {
              goto LABEL_70;
            }
          }
        }

        v7 = (v56 + 2);
      }

      break;
    }

    v56 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

google::protobuf::UnknownFieldSet *TSD::DrawableArchive::_InternalSerialize(TSD::DrawableArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 8);
    *v4 = 10;
    v16 = *(v15 + 5);
    if (v16 > 0x7F)
    {
      *(v4 + 1) = v16 | 0x80;
      v21 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = v4 + 3;
        do
        {
          *(v17 - 1) = v21 | 0x80;
          v23 = v21 >> 7;
          ++v17;
          v24 = v21 >> 14;
          v21 >>= 7;
        }

        while (v24);
        *(v17 - 1) = v23;
      }

      else
      {
        *(v4 + 2) = v21;
        v17 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v16;
      v17 = v4 + 2;
    }

    v4 = TSD::GeometryArchive::_InternalSerialize(v15, v17, a3, v4);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_63;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 9);
  *v4 = 18;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    *(v4 + 1) = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v35 = v28 >> 7;
        ++v27;
        v36 = v28 >> 14;
        v28 >>= 7;
      }

      while (v36);
      *(v27 - 1) = v35;
    }

    else
    {
      *(v4 + 2) = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v26;
    v27 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_85;
  }

LABEL_63:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 10);
  *v4 = 26;
  v38 = *(v37 + 5);
  if (v38 > 0x7F)
  {
    *(v4 + 1) = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = v4 + 3;
      do
      {
        *(v39 - 1) = v40 | 0x80;
        v47 = v40 >> 7;
        ++v39;
        v48 = v40 >> 14;
        v40 >>= 7;
      }

      while (v48);
      *(v39 - 1) = v47;
    }

    else
    {
      *(v4 + 2) = v40;
      v39 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v38;
    v39 = v4 + 2;
  }

  v4 = TSD::ExteriorTextWrapArchive::_InternalSerialize(v37, v39, a3, v4);
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_86;
  }

LABEL_85:
  v4 = sub_276727B88(a3, 4, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_89;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 112);
  *v4 = 40;
  *(v4 + 1) = v49;
  v4 = (v4 + 2);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_99;
  }

LABEL_89:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v50 = *(this + 11);
  *v4 = 50;
  v51 = *(v50 + 5);
  if (v51 > 0x7F)
  {
    *(v4 + 1) = v51 | 0x80;
    v53 = v51 >> 7;
    if (v51 >> 14)
    {
      v52 = v4 + 3;
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
      *(v4 + 2) = v53;
      v52 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v51;
    v52 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v50, v52, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_8:
    if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_99:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v56 = *(this + 113);
  *v4 = 56;
  *(v4 + 1) = v56;
  v4 = (v4 + 2);
  if ((v6 & 2) != 0)
  {
LABEL_9:
    v4 = sub_276727B88(a3, 8, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_10:
  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
      *v4 = 74;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        *(v4 + 1) = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          *(v4 + 2) = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        *(v4 + 1) = v10;
        v11 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v9, v11, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v18 = *(this + 12);
    *v4 = 82;
    v19 = *(v18 + 5);
    if (v19 > 0x7F)
    {
      *(v4 + 1) = v19 | 0x80;
      v22 = v19 >> 7;
      if (v19 >> 14)
      {
        v20 = v4 + 3;
        do
        {
          *(v20 - 1) = v22 | 0x80;
          v29 = v22 >> 7;
          ++v20;
          v30 = v22 >> 14;
          v22 >>= 7;
        }

        while (v30);
        *(v20 - 1) = v29;
      }

      else
      {
        *(v4 + 2) = v22;
        v20 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v19;
      v20 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v18, v20, a3);
    if ((v6 & 0x80) == 0)
    {
LABEL_24:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_73;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(this + 13);
  *v4 = 90;
  v32 = *(v31 + 5);
  if (v32 > 0x7F)
  {
    *(v4 + 1) = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = v4 + 3;
      do
      {
        *(v33 - 1) = v34 | 0x80;
        v41 = v34 >> 7;
        ++v33;
        v42 = v34 >> 14;
        v34 >>= 7;
      }

      while (v42);
      *(v33 - 1) = v41;
    }

    else
    {
      *(v4 + 2) = v34;
      v33 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v32;
    v33 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_25:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(this + 114);
  *v4 = 96;
  *(v4 + 1) = v43;
  v4 = (v4 + 2);
  if ((v6 & 0x800) != 0)
  {
LABEL_76:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v44 = *(this + 115);
    *v4 = 104;
    *(v4 + 1) = v44;
    v4 = (v4 + 2);
  }

LABEL_79:
  v45 = *(this + 1);
  if ((v45 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v45 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::DrawableArchive::ByteSizeLong(TSD::DrawableArchive *this)
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

  v8 = *(this + 4);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v12 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = TSD::GeometryArchive::ByteSizeLong(*(this + 8));
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = TSP::Reference::ByteSizeLong(*(this + 9));
  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v21 = TSP::Reference::ByteSizeLong(*(this + 11));
    v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_31:
  v20 = TSD::ExteriorTextWrapArchive::ByteSizeLong(*(this + 10));
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_33:
  v22 = TSP::Reference::ByteSizeLong(*(this + 12));
  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v9 = TSP::Reference::ByteSizeLong(*(this + 13));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v8 & 0xF00) != 0)
  {
    v10.i64[0] = 0x200000002;
    v10.i64[1] = 0x200000002;
    v2 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v8), xmmword_276825F60), v10));
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::DrawableArchive::MergeFrom(TSD::DrawableArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableArchive::MergeFrom(uint64_t this, const TSD::DrawableArchive *a2)
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

  v10 = *(a2 + 4);
  if (!v10)
  {
    goto LABEL_67;
  }

  if (v10)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 2) == 0)
    {
LABEL_9:
      if ((v10 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v3 + 16) |= 2u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v10 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  *(v3 + 16) |= 4u;
  v11 = *(v3 + 64);
  if (!v11)
  {
    v12 = *(v3 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v12);
    *(v3 + 64) = v11;
  }

  if (*(a2 + 8))
  {
    v13 = *(a2 + 8);
  }

  else
  {
    v13 = &TSD::_GeometryArchive_default_instance_;
  }

  this = TSD::GeometryArchive::MergeFrom(v11, v13);
LABEL_21:
  v14 = MEMORY[0x277D80A18];
  if ((v10 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 72);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C9BB20](v16);
      *(v3 + 72) = v15;
    }

    if (*(a2 + 9))
    {
      v17 = *(a2 + 9);
    }

    else
    {
      v17 = v14;
    }

    this = TSP::Reference::MergeFrom(v15, v17);
    if ((v10 & 0x10) == 0)
    {
LABEL_23:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_24;
      }

LABEL_43:
      *(v3 + 16) |= 0x20u;
      v21 = *(v3 + 88);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C9BB20](v22);
        *(v3 + 88) = v21;
      }

      if (*(a2 + 11))
      {
        v23 = *(a2 + 11);
      }

      else
      {
        v23 = v14;
      }

      this = TSP::Reference::MergeFrom(v21, v23);
      if ((v10 & 0x40) == 0)
      {
LABEL_25:
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_59;
      }

      goto LABEL_51;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 80);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::ExteriorTextWrapArchive>(v19);
    *(v3 + 80) = v18;
  }

  if (*(a2 + 10))
  {
    v20 = *(a2 + 10);
  }

  else
  {
    v20 = &TSD::_ExteriorTextWrapArchive_default_instance_;
  }

  this = TSD::ExteriorTextWrapArchive::MergeFrom(v18, v20);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_24:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_51:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 96);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x277C9BB20](v25);
    *(v3 + 96) = v24;
  }

  if (*(a2 + 12))
  {
    v26 = *(a2 + 12);
  }

  else
  {
    v26 = v14;
  }

  this = TSP::Reference::MergeFrom(v24, v26);
  if ((v10 & 0x80) != 0)
  {
LABEL_59:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 104);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C9BB20](v28);
      *(v3 + 104) = v27;
    }

    if (*(a2 + 13))
    {
      v29 = *(a2 + 13);
    }

    else
    {
      v29 = v14;
    }

    this = TSP::Reference::MergeFrom(v27, v29);
  }

LABEL_67:
  if ((v10 & 0xF00) == 0)
  {
    return this;
  }

  if ((v10 & 0x100) != 0)
  {
    *(v3 + 112) = *(a2 + 112);
    if ((v10 & 0x200) == 0)
    {
LABEL_70:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_71;
      }

LABEL_77:
      *(v3 + 114) = *(a2 + 114);
      if ((v10 & 0x800) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_70;
  }

  *(v3 + 113) = *(a2 + 113);
  if ((v10 & 0x400) != 0)
  {
    goto LABEL_77;
  }

LABEL_71:
  if ((v10 & 0x800) != 0)
  {
LABEL_72:
    *(v3 + 115) = *(a2 + 115);
  }

LABEL_73:
  *(v3 + 16) |= v10;
  return this;
}

uint64_t TSD::ExteriorTextWrapArchive::MergeFrom(uint64_t this, const TSD::ExteriorTextWrapArchive *a2)
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
      *(v3 + 24) = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 28) = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    *(v3 + 36) = *(a2 + 9);
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
      *(v3 + 44) = *(a2 + 44);
      goto LABEL_11;
    }

LABEL_17:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSD::DrawableArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableArchive::Clear(this);

    return TSD::DrawableArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableArchive::CopyFrom(uint64_t *this, const TSD::DrawableArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableArchive::Clear(this);

    return TSD::DrawableArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawableArchive::IsInitialized(TSD::DrawableArchive *this)
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

  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    result = TSD::GeometryArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x20) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x80) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 13));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::DrawableArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v7;
  v8 = this[3].n128_u64[1];
  this[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v8;
  v9 = this[4].n128_u64[0];
  v10 = this[4].n128_u64[1];
  this[4] = a2[4];
  a2[4].n128_u64[0] = v9;
  a2[4].n128_u64[1] = v10;
  v11 = this[5].n128_u64[0];
  v12 = this[5].n128_u64[1];
  this[5] = a2[5];
  a2[5].n128_u64[0] = v11;
  a2[5].n128_u64[1] = v12;
  v13 = this[6].n128_u64[0];
  v14 = this[6].n128_u64[1];
  result = a2[6];
  this[6] = result;
  a2[6].n128_u64[0] = v13;
  a2[6].n128_u64[1] = v14;
  LODWORD(v13) = this[7].n128_u32[0];
  this[7].n128_u32[0] = a2[7].n128_u32[0];
  a2[7].n128_u32[0] = v13;
  return result;
}

TSP::Reference *TSD::ContainerArchive::clear_parent(TSD::ContainerArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSD::ContainerArchive::clear_children(uint64_t this)
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

TSD::ContainerArchive *TSD::ContainerArchive::ContainerArchive(TSD::ContainerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577298;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ContainerArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TSD::ContainerArchive *TSD::ContainerArchive::ContainerArchive(TSD::ContainerArchive *this, const TSD::ContainerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577298;
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
    sub_27676CA94(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void sub_276744014(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x1081C407D3F2757);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::ContainerArchive::~ContainerArchive(TSD::ContainerArchive *this)
{
  if (this != &TSD::_ContainerArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSD::GeometryArchive::~GeometryArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C890(this + 3);
}

{
  TSD::ContainerArchive::~ContainerArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::ContainerArchive::default_instance(TSD::ContainerArchive *this)
{
  if (atomic_load_explicit(scc_info_ContainerArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ContainerArchive_default_instance_;
}

uint64_t *TSD::ContainerArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSD::GeometryArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27670B144(v6);
  }

  return this;
}

google::protobuf::internal *TSD::ContainerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v29))
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
        v29 = (v15 + 1);
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
        v19 = MEMORY[0x277C9BB20](*(a1 + 24));
        LODWORD(v20) = v19;
        v21 = *(a1 + 32);
        v22 = *(a1 + 40) + 8 * v21;
        *(a1 + 32) = v21 + 1;
        *(v22 + 8) = v19;
        v16 = v29;
LABEL_33:
        v15 = sub_27680B6EC(a3, v20, v16);
        v29 = v15;
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

          v14 = MEMORY[0x277C9BB20](v13);
          LODWORD(v12) = v14;
          *(a1 + 56) = v14;
          v5 = v29;
        }

        v11 = sub_27680B6EC(a3, v12, v5);
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

        v24 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v25);
        *(a1 + 48) = v24;
        v5 = v29;
      }

      v11 = sub_27680C4A8(a3, v24, v5);
      goto LABEL_44;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
    v29 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v29;
}

unsigned __int8 *TSD::ContainerArchive::_InternalSerialize(TSD::ContainerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
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

    a2 = TSD::GeometryArchive::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 7);
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

  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v22 = *(v21 + 5);
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

      a2 = TSP::Reference::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ContainerArchive::ByteSizeLong(TSD::ContainerArchive *this)
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

  v8 = *(this + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TSD::GeometryArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TSP::Reference::ByteSizeLong(*(this + 7));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::ContainerArchive::MergeFrom(TSD::ContainerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ContainerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ContainerArchive::MergeFrom(uint64_t this, const TSD::ContainerArchive *a2)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TSD::_GeometryArchive_default_instance_;
      }

      this = TSD::GeometryArchive::MergeFrom(v11, v13);
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

        v14 = MEMORY[0x277C9BB20](v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v14, v16);
    }
  }

  return this;
}

uint64_t *TSD::ContainerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerArchive::Clear(this);

    return TSD::ContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ContainerArchive::CopyFrom(uint64_t *this, const TSD::ContainerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerArchive::Clear(this);

    return TSD::ContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ContainerArchive::IsInitialized(TSD::ContainerArchive *this)
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

  v6 = *(this + 4);
  if (v6)
  {
    result = TSD::GeometryArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::ContainerArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
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

uint64_t TSD::GroupArchive::clear_children(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TSP::Reference *TSD::GroupArchive::clear_fake_shape_for_empty_group(TSD::GroupArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~2u;
  return result;
}

TSD::GroupArchive *TSD::GroupArchive::GroupArchive(TSD::GroupArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577348;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_GroupArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  return this;
}

void sub_276744CE0(_Unwind_Exception *a1)
{
  sub_27676C890(v2);
  MEMORY[0x277C9BC30](v1 + 16);
  _Unwind_Resume(a1);
}

TSD::GroupArchive *TSD::GroupArchive::GroupArchive(TSD::GroupArchive *this, const TSD::GroupArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_288577348;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_27676CA94(this + 48, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27670B0F8(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  v12 = *(a2 + 10);
  if (v12)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  return this;
}

void sub_276744E78(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v3, 0x1081C407D3F2757);
  sub_27676C890((v1 + 48));
  MEMORY[0x277C9BC30](v2);
  _Unwind_Resume(a1);
}

void TSD::GroupArchive::~GroupArchive(TSD::GroupArchive *this)
{
  if (this != &TSD::_GroupArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSD::DrawableArchive::~DrawableArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 10);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C890(this + 6);
  MEMORY[0x277C9BC30](this + 16);
}

{
  TSD::GroupArchive::~GroupArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::GroupArchive::default_instance(TSD::GroupArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GroupArchive_default_instance_;
}

uint64_t *TSD::GroupArchive::Clear(TSD::GroupArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = TSP::Reference::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v6 = *(this + 10);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      result = TSD::DrawableArchive::Clear(*(this + 9));
    }

    if ((v6 & 2) != 0)
    {
      result = TSP::Reference::Clear(*(this + 10));
    }
  }

  v8 = *(this + 8);
  v7 = this + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_27670B144(v7);
  }

  return result;
}

google::protobuf::internal *TSD::GroupArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  if ((sub_27670AF08(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v6 = (v27 + 1);
      LODWORD(v7) = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, v7);
      v27 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
LABEL_7:
      v8 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 40) |= 2u;
          v21 = *(a1 + 80);
          if (!v21)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = MEMORY[0x277C9BB20](v22);
            LODWORD(v21) = v23;
            *(a1 + 80) = v23;
            v6 = v27;
          }

          v11 = sub_27680B6EC(a3, v21, v6);
          goto LABEL_48;
        }
      }

      else
      {
        if (v8 != 2)
        {
          if (v8 == 1 && v7 == 10)
          {
            *(a1 + 40) |= 1u;
            v24 = *(a1 + 72);
            if (!v24)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v25);
              *(a1 + 72) = v24;
              v6 = v27;
            }

            v11 = sub_27680C648(a3, v24, v6);
            goto LABEL_48;
          }

          goto LABEL_13;
        }

        if (v7 == 18)
        {
          v12 = v6 - 1;
          while (1)
          {
            v13 = (v12 + 1);
            v27 = (v12 + 1);
            v14 = *(a1 + 64);
            if (!v14)
            {
              goto LABEL_22;
            }

            v20 = *(a1 + 56);
            v15 = *v14;
            if (v20 < *v14)
            {
              *(a1 + 56) = v20 + 1;
              v17 = *&v14[2 * v20 + 2];
              goto LABEL_26;
            }

            if (v15 == *(a1 + 60))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v14 = *(a1 + 64);
              v15 = *v14;
            }

            *v14 = v15 + 1;
            v16 = MEMORY[0x277C9BB20](*(a1 + 48));
            LODWORD(v17) = v16;
            v18 = *(a1 + 56);
            v19 = *(a1 + 64) + 8 * v18;
            *(a1 + 56) = v18 + 1;
            *(v19 + 8) = v16;
            v13 = v27;
LABEL_26:
            v12 = sub_27680B6EC(a3, v17, v13);
            v27 = v12;
            if (!v12)
            {
              return 0;
            }

            if (*a3 <= v12 || *v12 != 18)
            {
              goto LABEL_49;
            }
          }
        }
      }

LABEL_13:
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
        return v27;
      }

      if (v7 < 0x320)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
      }

      else
      {
        v11 = google::protobuf::internal::ExtensionSet::ParseField();
      }

LABEL_48:
      v27 = v11;
      if (!v11)
      {
        return 0;
      }

LABEL_49:
      if (sub_27670AF08(a3, &v27))
      {
        return v27;
      }
    }

    v6 = (v27 + 2);
LABEL_6:
    v27 = v6;
    goto LABEL_7;
  }

  return v27;
}

const google::protobuf::UnknownFieldSet *TSD::GroupArchive::_InternalSerialize(TSD::GroupArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 9);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = (v4 + 3);
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          v9 = (v9 + 1);
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v8;
      v9 = (v4 + 2);
    }

    v4 = TSD::DrawableArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(this + 8) + 8 * i + 8);
      *v4 = 18;
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
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v21 = *(this + 10);
    *v4 = 26;
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
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 100, 0x20000000, v4, a3);
  v29 = *(this + 1);
  if (v29)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v28);
  }

  return result;
}

uint64_t TSD::GroupArchive::ByteSizeLong(TSD::DrawableArchive **this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 2));
  if (this[5])
  {
    v3 = TSD::DrawableArchive::ByteSizeLong(this[9]);
    v2 += v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = *(this + 14);
  v5 = v2 + v4;
  v6 = this[8];
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
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if ((this[5] & 2) != 0)
  {
    v11 = TSP::Reference::ByteSizeLong(this[10]);
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 11) = v5;
    return v5;
  }
}

uint64_t TSD::GroupArchive::MergeFrom(TSD::GroupArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GroupArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GroupArchive::MergeFrom(TSD::GroupArchive *this, const TSD::GroupArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    result = sub_27676CA94(this + 48, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 10);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      *(this + 10) |= 1u;
      v12 = *(this + 9);
      if (!v12)
      {
        v13 = *(this + 1);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v13);
        *(this + 9) = v12;
      }

      if (*(a2 + 9))
      {
        v14 = *(a2 + 9);
      }

      else
      {
        v14 = &TSD::_DrawableArchive_default_instance_;
      }

      result = TSD::DrawableArchive::MergeFrom(v12, v14);
    }

    if ((v11 & 2) != 0)
    {
      *(this + 10) |= 2u;
      v15 = *(this + 10);
      if (!v15)
      {
        v16 = *(this + 1);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C9BB20](v16);
        *(this + 10) = v15;
      }

      if (*(a2 + 10))
      {
        v17 = *(a2 + 10);
      }

      else
      {
        v17 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v15, v17);
    }
  }

  return result;
}

TSD::GroupArchive *TSD::GroupArchive::CopyFrom(TSD::GroupArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupArchive::Clear(this);

    return TSD::GroupArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::GroupArchive *TSD::GroupArchive::CopyFrom(TSD::GroupArchive *this, const TSD::GroupArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupArchive::Clear(this);

    return TSD::GroupArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::GroupArchive::IsInitialized(TSD::GroupArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    if ((*(this + 40) & 1) == 0)
    {
      return 0;
    }

    v3 = *(this + 14);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      IsInitialized = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v3));
      v3 = v4;
      if ((IsInitialized & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(this + 10);
    if (v6)
    {
      result = TSD::DrawableArchive::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v6 = *(this + 10);
    }

    if ((v6 & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 10));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::GroupArchive::InternalSwap(TSD::GroupArchive *this, TSD::GroupArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap();
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  v7 = *(this + 9);
  v8 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v7;
  *(a2 + 10) = v8;
  return result;
}

uint64_t TSD::FreehandDrawingAnimationArchive::FreehandDrawingAnimationArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2885773F8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_2885773F8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSD::FreehandDrawingAnimationArchive *TSD::FreehandDrawingAnimationArchive::FreehandDrawingAnimationArchive(TSD::FreehandDrawingAnimationArchive *this, const TSD::FreehandDrawingAnimationArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885773F8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 32) = *(a2 + 32);
  *(this + 3) = v6;
  return this;
}

void TSD::FreehandDrawingAnimationArchive::~FreehandDrawingAnimationArchive(TSD::FreehandDrawingAnimationArchive *this)
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

uint64_t *TSD::FreehandDrawingAnimationArchive::default_instance(TSD::FreehandDrawingAnimationArchive *this)
{
  if (atomic_load_explicit(scc_info_FreehandDrawingAnimationArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_FreehandDrawingAnimationArchive_default_instance_;
}

uint64_t *TSD::FreehandDrawingAnimationArchive::Clear(TSD::FreehandDrawingAnimationArchive *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 32) = 0;
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::FreehandDrawingAnimationArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v19) & 1) == 0)
  {
    while (1)
    {
      v7 = (v19 + 1);
      v8 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_33;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 9)
        {
          v5 |= 1u;
          *(a1 + 24) = *v7;
          v19 = (v7 + 8);
          goto LABEL_26;
        }

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
          sub_27670AF80((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
        if (!v19)
        {
LABEL_33:
          v19 = 0;
          goto LABEL_2;
        }

        goto LABEL_26;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_24:
        v19 = v13;
        *(a1 + 32) = v12 != 0;
        goto LABEL_26;
      }

      v17 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v19 = v17;
      *(a1 + 32) = v18 != 0;
      if (!v17)
      {
        goto LABEL_33;
      }

LABEL_26:
      if (sub_27670AF08(a3, &v19))
      {
        goto LABEL_2;
      }
    }

    v7 = (v19 + 2);
LABEL_6:
    v19 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v19;
}

unsigned __int8 *TSD::FreehandDrawingAnimationArchive::_InternalSerialize(TSD::FreehandDrawingAnimationArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 32);
    *a2 = 16;
    a2[1] = v8;
    a2 += 2;
  }

  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::FreehandDrawingAnimationArchive::ByteSizeLong(TSD::FreehandDrawingAnimationArchive *this)
{
  v1 = *(this + 4);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  v3 = v2 | v1 & 2;
  if ((v1 & 3) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v4;
  return v4;
}

uint64_t TSD::FreehandDrawingAnimationArchive::MergeFrom(TSD::FreehandDrawingAnimationArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::FreehandDrawingAnimationArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::FreehandDrawingAnimationArchive::MergeFrom(uint64_t this, const TSD::FreehandDrawingAnimationArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 3);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSD::FreehandDrawingAnimationArchive *TSD::FreehandDrawingAnimationArchive::CopyFrom(TSD::FreehandDrawingAnimationArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingAnimationArchive::Clear(this);

    return TSD::FreehandDrawingAnimationArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::FreehandDrawingAnimationArchive *TSD::FreehandDrawingAnimationArchive::CopyFrom(TSD::FreehandDrawingAnimationArchive *this, const TSD::FreehandDrawingAnimationArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingAnimationArchive::Clear(this);

    return TSD::FreehandDrawingAnimationArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::FreehandDrawingAnimationArchive::InternalSwap(TSD::FreehandDrawingAnimationArchive *this, TSD::FreehandDrawingAnimationArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

TSP::Reference *TSD::FreehandDrawingArchive::clear_spacer_shape(TSD::FreehandDrawingArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::FreehandDrawingArchive *TSD::FreehandDrawingArchive::FreehandDrawingArchive(TSD::FreehandDrawingArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885774A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2885774A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::FreehandDrawingArchive *TSD::FreehandDrawingArchive::FreehandDrawingArchive(TSD::FreehandDrawingArchive *this, const TSD::FreehandDrawingArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885774A8;
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
  *(this + 40) = *(a2 + 40);
  return this;
}

void TSD::FreehandDrawingArchive::~FreehandDrawingArchive(TSD::FreehandDrawingArchive *this)
{
  if (this != &TSD::_FreehandDrawingArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      sub_2766FFE58((v3 + 8));
      MEMORY[0x277C9C1D0](v3, 0x1081C401EA54B31);
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::FreehandDrawingArchive::~FreehandDrawingArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::FreehandDrawingArchive::default_instance(TSD::FreehandDrawingArchive *this)
{
  if (atomic_load_explicit(scc_info_FreehandDrawingArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_FreehandDrawingArchive_default_instance_;
}

uint64_t *TSD::FreehandDrawingArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSD::FreehandDrawingAnimationArchive::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
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

google::protobuf::internal *TSD::FreehandDrawingArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v24) & 1) == 0)
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
LABEL_45:
        v24 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v19 = *(a1 + 32);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::FreehandDrawingAnimationArchive>(v20);
              *(a1 + 32) = v19;
              v7 = v24;
            }

            v18 = sub_27680C718(a3, v19, v7);
            goto LABEL_39;
          }
        }

        else if (v10 == 4 && v8 == 33)
        {
          v14 = *v7;
          v12 = (v7 + 8);
          v5 |= 8u;
          *(a1 + 48) = v14;
          goto LABEL_19;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277C9BB20](v16);
            LODWORD(v15) = v17;
            *(a1 + 24) = v17;
            v7 = v24;
          }

          v18 = sub_27680B6EC(a3, v15, v7);
          goto LABEL_39;
        }
      }

      else if (v10 == 2 && v8 == 17)
      {
        v13 = *v7;
        v12 = (v7 + 8);
        v5 |= 4u;
        *(a1 + 40) = v13;
LABEL_19:
        v24 = v12;
        goto LABEL_40;
      }

      if (v8)
      {
        v21 = (v8 & 7) == 4;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_39:
      v24 = v18;
      if (!v18)
      {
        goto LABEL_45;
      }

LABEL_40:
      if (sub_27670AF08(a3, &v24))
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

unsigned __int8 *TSD::FreehandDrawingArchive::_InternalSerialize(TSD::FreehandDrawingArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
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
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 5);
  *a2 = 17;
  *(a2 + 1) = v13;
  a2 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 4);
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

  a2 = TSD::FreehandDrawingAnimationArchive::_InternalSerialize(v14, v16, a3, a4);
  if ((v6 & 8) != 0)
  {
LABEL_29:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 6);
    *a2 = 33;
    *(a2 + 1) = v20;
    a2 += 9;
  }

LABEL_32:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::FreehandDrawingArchive::ByteSizeLong(TSD::FreehandDrawingArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::Reference::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSD::FreehandDrawingAnimationArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v4 = v7 + 9;
  }

  else
  {
    v4 = v7;
  }

LABEL_13:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::FreehandDrawingArchive::MergeFrom(TSD::FreehandDrawingArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::FreehandDrawingArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::FreehandDrawingArchive::MergeFrom(uint64_t this, const TSD::FreehandDrawingArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C9BB20](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v6, v8);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::FreehandDrawingAnimationArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSD::_FreehandDrawingAnimationArchive_default_instance_;
    }

    this = TSD::FreehandDrawingAnimationArchive::MergeFrom(v9, v11);
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
      *(v3 + 48) = *(a2 + 6);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 40) = *(a2 + 5);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSD::FreehandDrawingArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingArchive::Clear(this);

    return TSD::FreehandDrawingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::FreehandDrawingArchive::CopyFrom(uint64_t *this, const TSD::FreehandDrawingArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingArchive::Clear(this);

    return TSD::FreehandDrawingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::FreehandDrawingArchive::IsInitialized(TSD::FreehandDrawingArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::FreehandDrawingArchive::InternalSwap(TSD::FreehandDrawingArchive *this, TSD::FreehandDrawingArchive *a2)
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
  return result;
}

TSP::Reference *TSD::ShapeArchive::clear_style(TSD::ShapeArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::ShapeArchive *TSD::ShapeArchive::ShapeArchive(TSD::ShapeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577558;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288577558;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ShapeArchive *TSD::ShapeArchive::ShapeArchive(TSD::ShapeArchive *this, const TSD::ShapeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577558;
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
  *(this + 16) = *(a2 + 16);
  return this;
}

void TSD::ShapeArchive::~ShapeArchive(TSD::ShapeArchive *this)
{
  sub_27674713C(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ShapeArchive::~ShapeArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_27674713C(uint64_t *result)
{
  if (result != &TSD::_ShapeArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSD::DrawableArchive::~DrawableArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::PathSourceArchive::~PathSourceArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSD::LineEndArchive::~LineEndArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[7];
    if (result)
    {
      TSD::LineEndArchive::~LineEndArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ShapeArchive::default_instance(TSD::ShapeArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ShapeArchive_default_instance_;
}

uint64_t *TSD::ShapeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSD::DrawableArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      this = TSD::PathSourceArchive::Clear(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Reference::Clear(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  this = TSD::LineEndArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSD::LineEndArchive::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ShapeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v7 = (v26 + 1);
      v8 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v9 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
LABEL_62:
        v26 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 8u;
            v17 = *(a1 + 48);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v18);
              *(a1 + 48) = v17;
LABEL_47:
              v7 = v26;
            }

LABEL_48:
            v14 = sub_276808F2C(a3, v17, v7);
            goto LABEL_56;
          }
        }

        else if (v10 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 0x10u;
            v17 = *(a1 + 56);
            if (!v17)
            {
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v22);
              *(a1 + 56) = v17;
              goto LABEL_47;
            }

            goto LABEL_48;
          }
        }

        else if (v10 == 6 && v8 == 53)
        {
          v5 |= 0x20u;
          *(a1 + 64) = *v7;
          v26 = (v7 + 4);
          goto LABEL_57;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v16);
            *(a1 + 24) = v15;
            v7 = v26;
          }

          v14 = sub_27680C648(a3, v15, v7);
          goto LABEL_56;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v19 = *(a1 + 32);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277C9BB20](v20);
            LODWORD(v19) = v21;
            *(a1 + 32) = v21;
            v7 = v26;
          }

          v14 = sub_27680B6EC(a3, v19, v7);
          goto LABEL_56;
        }
      }

      else if (v10 == 3 && v8 == 26)
      {
        *(a1 + 16) |= 4u;
        v12 = *(a1 + 40);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v13);
          *(a1 + 40) = v12;
          v7 = v26;
        }

        v14 = sub_27680C7E8(a3, v12, v7);
        goto LABEL_56;
      }

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
        sub_27670AF80((a1 + 8));
      }

      v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_56:
      v26 = v14;
      if (!v14)
      {
        goto LABEL_62;
      }

LABEL_57:
      if (sub_27670AF08(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v7 = (v26 + 2);
LABEL_6:
    v26 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

unsigned __int8 *TSD::ShapeArchive::_InternalSerialize(TSD::ShapeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
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

    a2 = TSD::DrawableArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
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
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
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

  v19 = *(this + 5);
  *a2 = 26;
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

  a2 = TSD::PathSourceArchive::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
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

  v25 = *(this + 6);
  *a2 = 34;
  v26 = *(v25 + 5);
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

  a2 = TSD::LineEndArchive::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 7);
  *a2 = 42;
  v32 = *(v31 + 5);
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

  a2 = TSD::LineEndArchive::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_58:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 16);
    *a2 = 53;
    *(a2 + 1) = v37;
    a2 += 5;
  }

LABEL_61:
  v38 = *(this + 1);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v38 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ShapeArchive::ByteSizeLong(TSD::ShapeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::DrawableArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x3E) == 0)
  {
    goto LABEL_12;
  }

  if ((v2 & 2) != 0)
  {
    v7 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v8 = TSD::PathSourceArchive::ByteSizeLong(*(this + 5));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:
  v9 = TSD::LineEndArchive::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_9:
    v5 = TSD::LineEndArchive::ByteSizeLong(*(this + 7));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 0x20) != 0)
  {
    v3 += 5;
  }

LABEL_12:
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

uint64_t TSD::ShapeArchive::MergeFrom(TSD::ShapeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ShapeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ShapeArchive::MergeFrom(uint64_t this, const TSD::ShapeArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_DrawableArchive_default_instance_;
      }

      this = TSD::DrawableArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
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

      v9 = MEMORY[0x277C9BB20](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_32:
      if ((v5 & 8) != 0)
      {
        *(v3 + 16) |= 8u;
        v15 = *(v3 + 48);
        if (!v15)
        {
          v16 = *(v3 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v16);
          *(v3 + 48) = v15;
        }

        if (*(a2 + 6))
        {
          v17 = *(a2 + 6);
        }

        else
        {
          v17 = &TSD::_LineEndArchive_default_instance_;
        }

        this = TSD::LineEndArchive::MergeFrom(v15, v17);
        if ((v5 & 0x10) == 0)
        {
LABEL_34:
          if ((v5 & 0x20) == 0)
          {
LABEL_36:
            *(v3 + 16) |= v5;
            return this;
          }

LABEL_35:
          *(v3 + 64) = *(a2 + 16);
          goto LABEL_36;
        }
      }

      else if ((v5 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      *(v3 + 16) |= 0x10u;
      v18 = *(v3 + 56);
      if (!v18)
      {
        v19 = *(v3 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v19);
        *(v3 + 56) = v18;
      }

      if (*(a2 + 7))
      {
        v20 = *(a2 + 7);
      }

      else
      {
        v20 = &TSD::_LineEndArchive_default_instance_;
      }

      this = TSD::LineEndArchive::MergeFrom(v18, v20);
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_24:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSD::_PathSourceArchive_default_instance_;
    }

    this = TSD::PathSourceArchive::MergeFrom(v12, v14);
    goto LABEL_32;
  }

  return this;
}

uint64_t *TSD::ShapeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ShapeArchive::Clear(this);

    return TSD::ShapeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ShapeArchive::CopyFrom(uint64_t *this, const TSD::ShapeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ShapeArchive::Clear(this);

    return TSD::ShapeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ShapeArchive::IsInitialized(TSD::ShapeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::DrawableArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSD::PathSourceArchive::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSD::LineEndArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = TSD::LineEndArchive::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ShapeArchive::InternalSwap(TSD::ShapeArchive *this, TSD::ShapeArchive *a2)
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
  LODWORD(v10) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  return result;
}

TSP::Reference *TSD::ConnectionLineArchive::clear_connected_from(TSD::ConnectionLineArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::ConnectionLineArchive::clear_connected_to(TSD::ConnectionLineArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::UUID *TSD::ConnectionLineArchive::clear_connected_to_uuid(TSD::ConnectionLineArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUID *TSD::ConnectionLineArchive::clear_connected_from_uuid(TSD::ConnectionLineArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSD::ConnectionLineArchive *TSD::ConnectionLineArchive::ConnectionLineArchive(TSD::ConnectionLineArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577608;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLineArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288577608;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLineArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ConnectionLineArchive *TSD::ConnectionLineArchive::ConnectionLineArchive(TSD::ConnectionLineArchive *this, const TSD::ConnectionLineArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577608;
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
  return this;
}

void TSD::ConnectionLineArchive::~ConnectionLineArchive(TSD::ConnectionLineArchive *this)
{
  sub_2767483D4(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ConnectionLineArchive::~ConnectionLineArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767483D4(uint64_t *result)
{
  if (result != &TSD::_ConnectionLineArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSD::ShapeArchive::~ShapeArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[7];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ConnectionLineArchive::default_instance(TSD::ConnectionLineArchive *this)
{
  if (atomic_load_explicit(scc_info_ConnectionLineArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ConnectionLineArchive_default_instance_;
}

uint64_t *TSD::ConnectionLineArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSD::ShapeArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      this = TSP::Reference::Clear(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Reference::Clear(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  this = TSP::UUID::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSP::UUID::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ConnectionLineArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  while ((sub_27670AF08(a3, &v27) & 1) == 0)
  {
    v5 = (v27 + 1);
    v6 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v27 + 2);
LABEL_6:
      v27 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v7 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v25;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 != 3)
      {
        if (v8 == 4)
        {
          if (v6 != 34)
          {
            goto LABEL_46;
          }

          *(a1 + 16) |= 8u;
          v9 = *(a1 + 48);
          if (!v9)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x277C9BAE0](v19);
            LODWORD(v9) = v20;
            *(a1 + 48) = v20;
LABEL_38:
            v5 = v27;
          }
        }

        else
        {
          if (v8 != 5 || v6 != 42)
          {
            goto LABEL_46;
          }

          *(a1 + 16) |= 0x10u;
          v9 = *(a1 + 56);
          if (!v9)
          {
            v10 = *(a1 + 8);
            if (v10)
            {
              v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = MEMORY[0x277C9BAE0](v10);
            LODWORD(v9) = v11;
            *(a1 + 56) = v11;
            goto LABEL_38;
          }
        }

        v18 = sub_27680C988(a3, v9, v5);
        goto LABEL_53;
      }

      if (v6 != 26)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 4u;
      v13 = *(a1 + 40);
      if (!v13)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277C9BB20](v16);
        LODWORD(v13) = v17;
        *(a1 + 40) = v17;
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_46:
        if (v6)
        {
          v23 = (v6 & 7) == 4;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          *(a3 + 80) = v6 - 1;
          return v27;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_53;
      }

      *(a1 + 16) |= 2u;
      v13 = *(a1 + 32);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C9BB20](v14);
        LODWORD(v13) = v15;
        *(a1 + 32) = v15;
LABEL_31:
        v5 = v27;
      }

LABEL_32:
      v18 = sub_27680B6EC(a3, v13, v5);
      goto LABEL_53;
    }

    if (v6 != 10)
    {
      goto LABEL_46;
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

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShapeArchive>(v22);
      *(a1 + 24) = v21;
      v5 = v27;
    }

    v18 = sub_27680C8B8(a3, v21, v5);
LABEL_53:
    v27 = v18;
    if (!v18)
    {
      return 0;
    }
  }

  return v27;
}

unsigned __int8 *TSD::ConnectionLineArchive::_InternalSerialize(TSD::ConnectionLineArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
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

    a2 = TSD::ShapeArchive::_InternalSerialize(v7, v9, a3, a4);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
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
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 5);
  *a2 = 26;
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

  a2 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 6);
  *a2 = 34;
  v26 = *(v25 + 5);
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

  a2 = TSP::UUID::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 7);
    *a2 = 42;
    v32 = *(v31 + 5);
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

    a2 = TSP::UUID::_InternalSerialize(v31, v33, a3);
  }

LABEL_57:
  v37 = *(this + 1);
  if ((v37 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v37 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ConnectionLineArchive::ByteSizeLong(TSD::ConnectionLineArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::ShapeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x1E) == 0)
  {
    goto LABEL_10;
  }

  if ((v2 & 2) == 0)
  {
    if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v7 = TSP::Reference::ByteSizeLong(*(this + 4));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v9 = TSP::UUID::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_9:
    v5 = TSP::UUID::ByteSizeLong(*(this + 7));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

uint64_t TSD::ConnectionLineArchive::MergeFrom(TSD::ConnectionLineArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ConnectionLineArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ConnectionLineArchive::MergeFrom(uint64_t this, const TSD::ConnectionLineArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShapeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_ShapeArchive_default_instance_;
      }

      this = TSD::ShapeArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A18];
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

        v10 = MEMORY[0x277C9BB20](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C9BB20](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = v9;
      }

      this = TSP::Reference::MergeFrom(v13, v15);
    }

    v16 = MEMORY[0x277D809E0];
    if ((v5 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v17 = *(v3 + 48);
      if (!v17)
      {
        v18 = *(v3 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277C9BAE0](v18);
        *(v3 + 48) = v17;
      }

      if (*(a2 + 6))
      {
        v19 = *(a2 + 6);
      }

      else
      {
        v19 = v16;
      }

      this = TSP::UUID::MergeFrom(v17, v19);
    }

    if ((v5 & 0x10) != 0)
    {
      *(v3 + 16) |= 0x10u;
      v20 = *(v3 + 56);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x277C9BAE0](v21);
        *(v3 + 56) = v20;
      }

      if (*(a2 + 7))
      {
        v22 = *(a2 + 7);
      }

      else
      {
        v22 = v16;
      }

      return TSP::UUID::MergeFrom(v20, v22);
    }
  }

  return this;
}

uint64_t *TSD::ConnectionLineArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ConnectionLineArchive::Clear(this);

    return TSD::ConnectionLineArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ConnectionLineArchive::CopyFrom(uint64_t *this, const TSD::ConnectionLineArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ConnectionLineArchive::Clear(this);

    return TSD::ConnectionLineArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ConnectionLineArchive::IsInitialized(TSD::ConnectionLineArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::ShapeArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 5));
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

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ConnectionLineArchive::InternalSwap(TSD::ConnectionLineArchive *this, TSD::ConnectionLineArchive *a2)
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

TSP::DataReference *TSD::ImageArchive::clear_data(TSD::ImageArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x200u;
  return result;
}

TSP::Reference *TSD::ImageArchive::clear_style(TSD::ImageArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~4u;
  return result;
}

TSP::Size *TSD::ImageArchive::clear_originalsize(TSD::ImageArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 10) &= ~8u;
  return result;
}

TSP::Reference *TSD::ImageArchive::clear_mask(TSD::ImageArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x10u;
  return result;
}

TSP::DataReference *TSD::ImageArchive::clear_thumbnaildata(TSD::ImageArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x400u;
  return result;
}

TSP::DataReference *TSD::ImageArchive::clear_originaldata(TSD::ImageArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x800u;
  return result;
}

TSP::DataReference *TSD::ImageArchive::clear_originalsvgdata(TSD::ImageArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x40000u;
  return result;
}

TSP::Size *TSD::ImageArchive::clear_naturalsize(TSD::ImageArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 10) &= ~0x80u;
  return result;
}

TSP::Path *TSD::ImageArchive::clear_instantalphapath(TSD::ImageArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 10) &= ~0x100u;
  return result;
}

TSP::DataReference *TSD::ImageArchive::clear_enhancedimagedata(TSD::ImageArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x8000u;
  return result;
}

TSP::DataReference *TSD::ImageArchive::clear_adjustedimagedata(TSD::ImageArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x2000u;
  return result;
}

TSP::DataReference *TSD::ImageArchive::clear_thumbnailadjustedimagedata(TSD::ImageArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x4000u;
  return result;
}

TSP::Reference *TSD::ImageArchive::clear_database_data(TSD::ImageArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~2u;
  return result;
}

TSP::Reference *TSD::ImageArchive::clear_database_thumbnaildata(TSD::ImageArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x20u;
  return result;
}

TSP::Reference *TSD::ImageArchive::clear_database_originaldata(TSD::ImageArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x40u;
  return result;
}

TSP::Path *TSD::ImageArchive::clear_traced_path(TSD::ImageArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 10) &= ~0x10000u;
  return result;
}

TSD::ImageArchive *TSD::ImageArchive::ImageArchive(TSD::ImageArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885776B8;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ImageArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 191) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
  return this;
}

TSD::ImageArchive *TSD::ImageArchive::ImageArchive(TSD::ImageArchive *this, const TSD::ImageArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_2885776B8;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 11) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v6 = *(a2 + 10);
  if (v6)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  v7 = *(a2 + 50);
  *(this + 203) = *(a2 + 203);
  *(this + 50) = v7;
  return this;
}

void sub_276749B24(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x1081C404FE48876);
  MEMORY[0x277C9BC30](v1);
  _Unwind_Resume(a1);
}

void TSD::ImageArchive::~ImageArchive(TSD::ImageArchive *this)
{
  sub_276749C28(this);
  sub_2766FFE58(this + 1);
  MEMORY[0x277C9BC30](this + 16);
}

{
  TSD::ImageArchive::~ImageArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *sub_276749C28(void *result)
{
  if (result != &TSD::_ImageArchive_default_instance_)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      TSD::DrawableArchive::~DrawableArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[7];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[8];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[9];
    if (v5)
    {
      TSP::Size::~Size(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = v1[10];
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = v1[11];
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C9C1D0]();
    }

    v8 = v1[12];
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x277C9C1D0]();
    }

    v9 = v1[13];
    if (v9)
    {
      TSP::Size::~Size(v9);
      MEMORY[0x277C9C1D0]();
    }

    if (v1[14])
    {
      v10 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v10, 0x10A1C40290C9B23);
    }

    v11 = v1[15];
    if (v11)
    {
      TSP::DataReference::~DataReference(v11);
      MEMORY[0x277C9C1D0]();
    }

    v12 = v1[16];
    if (v12)
    {
      TSP::DataReference::~DataReference(v12);
      MEMORY[0x277C9C1D0]();
    }

    v13 = v1[17];
    if (v13)
    {
      TSP::DataReference::~DataReference(v13);
      MEMORY[0x277C9C1D0]();
    }

    v14 = v1[18];
    if (v14)
    {
      sub_2766FFE58((v14 + 8));
      MEMORY[0x277C9C1D0](v14, 0x1081C40008F4D46);
    }

    v15 = v1[19];
    if (v15)
    {
      TSP::DataReference::~DataReference(v15);
      MEMORY[0x277C9C1D0]();
    }

    v16 = v1[20];
    if (v16)
    {
      TSP::DataReference::~DataReference(v16);
      MEMORY[0x277C9C1D0]();
    }

    v17 = v1[21];
    if (v17)
    {
      TSP::DataReference::~DataReference(v17);
      MEMORY[0x277C9C1D0]();
    }

    if (v1[22])
    {
      v18 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v18, 0x10A1C40290C9B23);
    }

    v19 = v1[23];
    if (v19)
    {
      TSD::Attribution::~Attribution(v19);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[24];
    if (result)
    {
      TSP::DataReference::~DataReference(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::ImageArchive::default_instance(TSD::ImageArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageArchive_default_instance_;
}

uint64_t *TSD::ImageArchive::Clear(TSD::ImageArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 10);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSD::DrawableArchive::Clear(*(this + 6));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSP::Reference::Clear(*(this + 7));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = TSP::Reference::Clear(*(this + 8));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = TSP::Size::Clear(*(this + 9));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_37:
    result = TSP::Reference::Clear(*(this + 11));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_36:
  result = TSP::Reference::Clear(*(this + 10));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_38:
  result = TSP::Reference::Clear(*(this + 12));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSP::Size::Clear(*(this + 13));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSP::Path::Clear(*(this + 14));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSP::DataReference::Clear(*(this + 15));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = TSP::DataReference::Clear(*(this + 16));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = TSP::DataReference::Clear(*(this + 17));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = TSD::ImageAdjustmentsArchive::Clear(*(this + 18));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = TSP::DataReference::Clear(*(this + 19));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_46:
  result = TSP::DataReference::Clear(*(this + 20));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSP::DataReference::Clear(*(this + 21));
  }

LABEL_21:
  if ((v3 & 0x70000) == 0)
  {
    goto LABEL_26;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSP::Path::Clear(*(this + 22));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSD::Attribution::Clear(*(this + 23));
  if ((v3 & 0x40000) != 0)
  {
LABEL_25:
    result = TSP::DataReference::Clear(*(this + 24));
  }

LABEL_26:
  if ((v3 & 0x780000) != 0)
  {
    *(this + 203) = 0;
    *(this + 50) = 0;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_27670B144(v4);
  }

  return result;
}