void sub_1C307CC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::Rbm::Reconstruct(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[3] != *(a2 + 16))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "Reconstruct", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 258);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Nonmatching dims, component:", 28);
    v15 = MEMORY[0x1C692A960](v14, a1[3]);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " data:", 6);
    MEMORY[0x1C692A960](v16, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  v8 = a1[2];
  v9 = *(a2 + 20);
  if (__PAIR64__(v9, v8) != *(a3 + 16))
  {
    kaldi::CuMatrix<float>::Resize(a3, v9, v8, 0, 0);
  }

  kaldi::CuMatrixBase<float>::AddVecToRows(a3, (a1 + 30), v8, a4, a5, 1.0, 0.0);
  result = kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, (a1 + 18), 0x6F);
  if (!a1[74])
  {

    return kaldi::CuMatrixBase<float>::Sigmoid(a3, a3, v11, v12, v13);
  }

  return result;
}

void kaldi::nnet1::Rbm::RbmUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 20);
  v7 = v5 == *(a3 + 20) && v5 == *(a4 + 20) && v5 == *(a5 + 20);
  if (!v7 || (v10 = *(a2 + 16), v10 != *(a4 + 16)) || (v13 = *(a3 + 16), v13 != *(a5 + 16)) || v10 != *(a1 + 8) || v13 != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("RbmUpdate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 0x11A, "pos_vis.NumRows() == pos_hid.NumRows() && pos_vis.NumRows() == neg_vis.NumRows() && pos_vis.NumRows() == neg_hid.NumRows() && pos_vis.NumCols() == neg_vis.NumCols() && pos_hid.NumCols() == neg_hid.NumCols() && pos_vis.NumCols() == input_dim_ && pos_hid.NumCols() == output_dim_", a5);
  }

  v15 = *(a1 + 92);
  if (*(a1 + 204) == v15)
  {
    v16 = *(a1 + 88);
    if (*(a1 + 200) == v16)
    {
      if (*(a1 + 248) == *(a1 + 136))
      {
        v16 = *(a1 + 200);
        if (*(a1 + 280) == *(a1 + 168))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = *(a1 + 200);
      }
    }
  }

  else
  {
    v16 = *(a1 + 88);
  }

  kaldi::CuMatrix<float>::Resize(a1 + 184, v15, v16, 0, 0);
  kaldi::CuVector<float>::Resize(a1 + 232, *(a1 + 136), 0, v17, v18);
  kaldi::CuVector<float>::Resize(a1 + 264, *(a1 + 168), 0, v19, v20);
LABEL_20:
  if (*(a1 + 296) == 1 && (kaldi::nnet1::CheckNanInf<float>(a2, "pos_vis", v16, a4, a5), kaldi::nnet1::CheckNanInf<float>(a3, "pos_hid", v21, v22, v23), kaldi::nnet1::CheckNanInf<float>(a4, "neg_vis", v24, v25, v26), kaldi::nnet1::CheckNanInf<float>(a5, "pos_hid", v27, v28, v29), v34 = kaldi::nnet1::ComputeStdDev<float>(a2, v30, v31, v32, v33), v39 = kaldi::nnet1::ComputeStdDev<float>(a4, v35, v36, v37, v38), (v34 + v34) < v39))
  {
    kaldi::CuMatrixBase<float>::Scale(a1 + 72, v34 / v39);
    kaldi::CuVectorBase<float>::Scale(a1 + 120);
    kaldi::CuVectorBase<float>::Scale(a1 + 152);
    v40 = *(a1 + 48) * 0.9;
    *(a1 + 48) = v40;
    kaldi::CuMatrixBase<float>::SetZero(a1 + 184);
    kaldi::CuVectorBase<float>::SetZero(a1 + 232);
    kaldi::CuVectorBase<float>::SetZero(a1 + 264);
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v75, "RbmUpdate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-rbm.h", 337);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "Mismatch between pos_vis and neg_vis variances, ", 48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "danger of weight explosion. a) Reducing weights with scale ", 59);
      v42 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " b) Lowering learning rate to ", 30);
      v43 = *(a1 + 48);
      v44 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " [pos_vis_std:", 14);
      v45 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ",neg_vis_std:", 13);
      v46 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "]", 1);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v75);
    }
  }

  else
  {
    v48 = *(a1 + 48);
    v47 = *(a1 + 52);
    v49 = *(a1 + 68);
    v50 = *(a2 + 20);
    kaldi::CuMatrixBase<float>::AddMatMat(a1 + 184, a5, 112, a4, 0x6F);
    kaldi::CuMatrixBase<float>::AddMatMat(a1 + 184, a3, 112, a2, 0x6F);
    kaldi::CuMatrixBase<float>::AddMat(a1 + 184, a1 + 72, 111, v51, v52, -(v48 * v49), 1.0);
    kaldi::CuMatrixBase<float>::AddMat(a1 + 72, a1 + 184, 111, v53, v54, 1.0, 1.0);
    kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 232, a4, v55, v56, v57);
    kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 232, a2, v58, v59, v60);
    LODWORD(v61) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(a1 + 120, a1 + 232, v62, v63, v64, v61, 1.0);
    kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 264, a5, v65, v66, v67);
    kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 264, a3, v68, v69, v70);
    LODWORD(v74) = 1.0;

    kaldi::CuVectorBase<float>::AddVec(a1 + 152, a1 + 264, v71, v72, v73, v74, 1.0);
  }
}

void *kaldi::nnet1::Rbm::WriteAsNnet(unsigned int *a1, void *a2, uint64_t a3)
{
  kaldi::nnet1::Component::TypeToMarker(0x101, &__p);
  kaldi::WriteToken(a2, a3, &__p, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteBasicType<int>(a2, a3, a1[3]);
  kaldi::WriteBasicType<int>(a2, a3, a1[2]);
  if ((a3 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  kaldi::CuMatrixBase<float>::Write((a1 + 18), a2, a3, 0);
  kaldi::CuVectorBase<float>::Write(a1 + 38, a2, a3, v8, v9);
  result = (*(*a1 + 200))(a1);
  if (result)
  {
    if (a3)
    {
      return result;
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  kaldi::nnet1::Component::TypeToMarker(0x204, &__p);
  kaldi::WriteToken(a2, a3, &__p, v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteBasicType<int>(a2, a3, a1[3]);
  result = kaldi::WriteBasicType<int>(a2, a3, a1[3]);
  if ((a3 & 1) == 0)
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  return result;
}

void sub_1C307D380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::MultiSoftmax::InitData(std::vector<int> *this, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v7 = a2 + 4;
  while ((*(v7 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v15, a4, a5);
    if (SHIBYTE(v17) < 0)
    {
      if (v16 != 8)
      {
        goto LABEL_13;
      }

      v8 = v15;
    }

    else
    {
      if (SHIBYTE(v17) != 8)
      {
        goto LABEL_13;
      }

      v8 = &v15;
    }

    if (*v8 != 0x3E736D6944534D3CLL)
    {
LABEL_13:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-multisoftmax-component.h", 36);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unknown token ", 14);
      if (v17 >= 0)
      {
        v10 = &v15;
      }

      else
      {
        v10 = v15;
      }

      if (v17 >= 0)
      {
        v11 = HIBYTE(v17);
      }

      else
      {
        v11 = v16;
      }

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " (MSDims)", 9);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
    }

    kaldi::ReadIntegerVector<int>(a2, 0, this + 2, 0, 0, 0, 0);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  kaldi::nnet1::BlockSoftmax::InitOffset(this);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v15);
  }
}

void sub_1C307D5BC(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::Recurrent::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xD9, "batch_idx >= 0 && batch_idx < ropts_.num_subbatches", v8);
  }

  v9 = a2[1];
  v10 = *(a1 + 8) + 48 * a4;
  if (v9 != *(v10 + 20))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xDA, "sequence_idx.size() == history_state_[batch_idx].NumRows()", v8);
  }

  *(v10 + 32) = a3;
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      if ((*(*a2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i))
      {
        v12 = *(a1 + 8) + 48 * a4;
        if (i >= *(v12 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v8);
        }

        v13 = *(v12 + 8) + 4 * *(v12 + 24) * i;
        v14 = *(v12 + 16);
        v15 = *(v12 + 32);
        v16[1] = v13;
        v16[0] = &unk_1F42BFF30;
        v16[2] = v14;
        v16[3] = v15;
        kaldi::CuVectorBase<float>::SetZero(v16);
        v9 = a2[1];
      }
    }
  }
}

void kaldi::nnet1::Recurrent::ResetHistoryState(kaldi::nnet1::Recurrent *this)
{
  (*(*this + 88))(this);
  for (i = *(this + 1); i != *(this + 2); i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

unsigned int *kaldi::nnet1::Recurrent::GetHistoryState(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a3 & 0x80000000) != 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xEA, "batch_idx >= 0 && batch_idx < ropts_.num_subbatches", a5);
  }

  v8 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v8 + 20), *(v8 + 16), 1u, 0);
  v11 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v11, 111, v9, v10);
}

_DWORD *kaldi::nnet1::Recurrent::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xF0, "batch_idx >= 0 && batch_idx < ropts_.num_subbatches", a5);
  }

  if ((a3 & 0x80000000) != 0 || (v7 = *(a1 + 8) + 48 * a4, *(v7 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xF1, "sequence_idx >= 0 && sequence_idx < history_state_[batch_idx].NumRows()", a5);
  }

  v9 = a4;
  kaldi::CuVector<float>::Resize(a2, *(v7 + 16), 1u, a4, a5);
  v13 = *(a1 + 8) + 48 * v9;
  if (*(v13 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
  }

  v14 = *(v13 + 8) + 4 * (*(v13 + 24) * a3);
  v15 = *(v13 + 16);
  v16 = *(v13 + 32);
  v18[1] = v14;
  v18[0] = &unk_1F42BFF30;
  v18[2] = v15;
  v18[3] = v16;
  return kaldi::CuVectorBase<float>::CopyFromVec(a2, v18, v10, v11, v12);
}

unsigned int *kaldi::nnet1::Recurrent::SetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 88))(a1);
  if ((a3 & 0x80000000) != 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xF8, "batch_idx >= 0 && batch_idx < ropts_.num_subbatches", v7);
  }

  v8 = (*(a1 + 8) + 48 * a3);
  if (*(a2 + 20) != v8[5])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xF9, "history.NumRows() == history_state_[batch_idx].NumRows()", v7);
  }

  if (*(a2 + 16) != v8[4])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xFA, "history.NumCols() == history_state_[batch_idx].NumCols()", v7);
  }

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v8, a2, 111, v6, v7);
}

_DWORD *kaldi::nnet1::Recurrent::SetHistoryState(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x100, "batch_idx >= 0 && batch_idx < ropts_.num_subbatches", v10);
  }

  if (a3 < 0 || (v11 = *(a1 + 8) + 48 * a4, *(v11 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x101, "sequence_idx >= 0 && sequence_idx < history_state_[batch_idx].NumRows()", v10);
  }

  v12 = *(a2 + 16);
  if (v12 != *(v11 + 16))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x102, "history.Dim() == history_state_[batch_idx].NumCols()", v10);
  }

  v13 = *(v11 + 8) + 4 * *(v11 + 24) * a3;
  v14 = *(v11 + 32);
  v16[1] = v13;
  v16[0] = &unk_1F42BFF30;
  v16[2] = v12;
  v16[3] = v14;
  return kaldi::CuVectorBase<float>::CopyFromVec(v16, a2, v8, v9, v10);
}

void kaldi::nnet1::Recurrent::EnsureBuffers(kaldi::nnet1::Recurrent *this)
{
  if ((*(this + 388) & 1) == 0)
  {
    if (*(this + *(*this - 24) + 8) != *(this + *(*this - 24) + 12))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "EnsureBuffers", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 588);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "this implementation only models the strict recurrent component, i.e, it requests the input ", 91);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "and output dimensions be the same,  you set input/out dimension to ", 67);
      v9 = MEMORY[0x1C692A960](v8, *(this + *(*this - 24) + 8));
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " and ", 5);
      MEMORY[0x1C692A960](v10, *(this + *(*this - 24) + 12));
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
    }

    v2 = *(this + 20);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize(this + 1, v3);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 42, v3);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = (*(this + 24) + *(this + 24) * *(this + 25));
      v6 = this + 12;
      do
      {
        kaldi::CuMatrix<float>::Resize(*(this + 1) + v4, *(this + 24), *&v6[*(*this - 24)], 0, 0);
        kaldi::CuMatrix<float>::Resize(*(this + 42) + v4, v5, *&v6[*(*this - 24)], 0, 0);
        v4 += 48;
      }

      while (48 * v3 != v4);
    }

    std::vector<float>::resize(this + 17, v3);
    *(this + 388) = 1;
  }
}

_DWORD *kaldi::nnet1::Recurrent::SetInternalBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v8 = *(a1 + 480);
  if (v8 == *(a1 + 488))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 480), *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 504), *(a1 + 80));
    v8 = *(a1 + 480);
  }

  kaldi::CuVector<float>::Resize(v8 + 32 * v5, *(a2 + 16), 1u, a4, a5);
  v12 = (*(a1 + 480) + 32 * v5);

  return kaldi::CuVectorBase<float>::CopyFromVec(v12, a2, v9, v10, v11);
}

void kaldi::nnet1::Recurrent::InitData(uint64_t *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v93 = 2.0;
  v94 = -1073741824;
  v92 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v91);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 39), &v90);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 96), &v89);
  v88 = -1;
  memset(v87, 0, sizeof(v87));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_159;
    }

    kaldi::ReadToken(a2, 0, v87, v6, v7);
    if ((SHIBYTE(v87[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v87[2]) > 0xCu)
      {
        if (HIBYTE(v87[2]) > 0xEu)
        {
          if (HIBYTE(v87[2]) != 15)
          {
            if (HIBYTE(v87[2]) != 18)
            {
              if (HIBYTE(v87[2]) != 19)
              {
                goto LABEL_192;
              }

              v11 = v87[0] == 0x61654C736169423CLL && v87[1] == 0x6F43657461526E72 && *(&v87[1] + 3) == 0x3E66656F43657461;
              v12 = a1 + 99;
              if (v11)
              {
                goto LABEL_137;
              }

              v13 = v87;
              goto LABEL_29;
            }

            if (v87[0] != 0x6E6569646172473CLL || v87[1] != 0x7079546D726F4E74 || LOWORD(v87[2]) != 15973)
            {
              goto LABEL_192;
            }

LABEL_146:
            v21 = &v90;
            goto LABEL_147;
          }

          v32 = v87[0] == 0x61526E7261654C3CLL && *(v87 + 7) == 0x3E66656F43657461;
          goto LABEL_135;
        }

        if (HIBYTE(v87[2]) != 13)
        {
          if (v87[0] != 0x656E696C6E6F4E3CLL || *(v87 + 6) != 0x3E7974697261656ELL)
          {
            goto LABEL_192;
          }

LABEL_80:
          v21 = &v89;
          goto LABEL_147;
        }

        if (v87[0] != 0x74536D617261503CLL || *(v87 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_192;
        }

LABEL_131:
        v12 = &v92;
        goto LABEL_137;
      }

      if (HIBYTE(v87[2]) <= 0xAu)
      {
        if (HIBYTE(v87[2]) == 9)
        {
          v28 = v87[0] == 0x6D726F4E78614D3CLL && LOBYTE(v87[1]) == 62;
          v12 = (a1 + 50);
          if (!v28)
          {
            v29 = v87[0] == 0x6461724778614D3CLL && LOBYTE(v87[1]) == 62;
            v12 = (a1 + 19);
            if (!v29)
            {
              goto LABEL_192;
            }
          }

          goto LABEL_137;
        }

        if (HIBYTE(v87[2]) != 10)
        {
          goto LABEL_192;
        }

        if (v87[0] != 0x61654D736169423CLL || LOWORD(v87[1]) != 15982)
        {
          goto LABEL_192;
        }

        goto LABEL_54;
      }

      if (HIBYTE(v87[2]) != 11)
      {
        if (v87[0] != 0x536D6F646E61523CLL || LODWORD(v87[1]) != 1046766949)
        {
          goto LABEL_151;
        }

LABEL_73:
        kaldi::ReadBasicType<int>(a2, 0, &v88);
        goto LABEL_148;
      }

      if (v87[0] != 0x6E6152736169423CLL || *(v87 + 3) != 0x3E65676E61527361)
      {
        goto LABEL_192;
      }

      goto LABEL_125;
    }

    if (v87[1] <= 12)
    {
      if (v87[1] <= 10)
      {
        if (v87[1] == 9)
        {
          v35 = *v87[0] == 0x6D726F4E78614D3CLL && *(v87[0] + 8) == 62;
          v12 = (a1 + 50);
          if (!v35)
          {
            v36 = *v87[0] == 0x6461724778614D3CLL && *(v87[0] + 8) == 62;
            v12 = (a1 + 19);
            if (!v36)
            {
              goto LABEL_152;
            }
          }

          goto LABEL_137;
        }

        if (v87[1] != 10)
        {
          goto LABEL_192;
        }

        if (*v87[0] != 0x61654D736169423CLL || *(v87[0] + 4) != 15982)
        {
          goto LABEL_192;
        }

LABEL_54:
        v12 = &v94;
LABEL_137:
        kaldi::ReadBasicType<float>(a2, 0, v12);
        goto LABEL_148;
      }

      if (v87[1] != 11)
      {
        if (*v87[0] != 0x536D6F646E61523CLL || *(v87[0] + 2) != 1046766949)
        {
          goto LABEL_153;
        }

        goto LABEL_73;
      }

      if (*v87[0] != 0x6E6152736169423CLL || *(v87[0] + 3) != 0x3E65676E61527361)
      {
        goto LABEL_192;
      }

LABEL_125:
      v12 = &v93;
      goto LABEL_137;
    }

    if (v87[1] <= 14)
    {
      if (v87[1] != 13)
      {
        if (*v87[0] != 0x656E696C6E6F4E3CLL || *(v87[0] + 6) != 0x3E7974697261656ELL)
        {
          goto LABEL_192;
        }

        goto LABEL_80;
      }

      if (*v87[0] != 0x74536D617261503CLL || *(v87[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_192;
      }

      goto LABEL_131;
    }

    if (v87[1] == 15)
    {
      v32 = *v87[0] == 0x61526E7261654C3CLL && *(v87[0] + 7) == 0x3E66656F43657461;
LABEL_135:
      v12 = (a1 + 49);
      if (!v32)
      {
        goto LABEL_192;
      }

      goto LABEL_137;
    }

    if (v87[1] == 18)
    {
      if (*v87[0] != 0x6E6569646172473CLL || *(v87[0] + 1) != 0x7079546D726F4E74 || *(v87[0] + 8) != 15973)
      {
        goto LABEL_192;
      }

      goto LABEL_146;
    }

    if (v87[1] != 19)
    {
      goto LABEL_192;
    }

    v13 = v87[0];
    v15 = *v87[0] == 0x61654C736169423CLL && *(v87[0] + 1) == 0x6F43657461526E72 && *(v87[0] + 11) == 0x3E66656F43657461;
    v12 = a1 + 99;
    if (v15)
    {
      goto LABEL_137;
    }

LABEL_29:
    v16 = *v13;
    v17 = v13[1];
    v18 = *(v13 + 11);
    v19 = v16 == 0x61725474696E493CLL && v17 == 0x79546D726F66736ELL;
    if (!v19 || v18 != 0x3E657079546D726FLL)
    {
      break;
    }

    v21 = &v91;
LABEL_147:
    kaldi::ReadToken(a2, 0, v21, v8, v9);
LABEL_148:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if ((HIBYTE(v87[2]) & 0x80) == 0)
  {
    if (HIBYTE(v87[2]) == 12)
    {
LABEL_151:
      v41 = v87;
      goto LABEL_154;
    }

    goto LABEL_192;
  }

LABEL_152:
  if (v87[1] != 12)
  {
    goto LABEL_192;
  }

LABEL_153:
  v41 = v87[0];
LABEL_154:
  v42 = *v41;
  v43 = *(v41 + 2);
  if (v42 != 0x6E6F706D6F432F3CLL || v43 != 1047817829)
  {
LABEL_192:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v83, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 79);
    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Unknown token ", 14);
    if (SHIBYTE(v87[2]) >= 0)
    {
      v74 = v87;
    }

    else
    {
      v74 = v87[0];
    }

    if (SHIBYTE(v87[2]) >= 0)
    {
      v75 = HIBYTE(v87[2]);
    }

    else
    {
      v75 = v87[1];
    }

    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, v74, v75);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, " (Nonlinearity|ParamStddev|BiasMean|BiasRange|LearnRateCoef|BiasLearnRateCoef|MaxNorm|RandomSeed|MaxGrad|InitTransformType|GradientNormType)", 140);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v83);
  }

LABEL_159:
  *(a1 + 96) = kaldi::nnet1::Component::MarkerToComponentType(&v89);
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v91);
  *(a1 + 39) = kaldi::nnet1::Component::MarkerToGradientNormType(&v90);
  if (v88 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v88);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v83, a3);
  kaldi::Matrix<float>::Matrix(v81, *(a1 + *(*a1 - 24) + 12), *(a1 + *(*a1 - 24) + 8), 0, 0);
  v50 = a1 + 12;
  v49 = *a1;
  if (*(a1 + *(*a1 - 24) + 12) >= 1)
  {
    v51 = 0;
    v52 = a1 + 1;
    while (1)
    {
      v53 = *(v49 - 24);
      if (*(v52 + v53) >= 1)
      {
        break;
      }

LABEL_175:
      if (++v51 >= *(v50 + v53))
      {
        goto LABEL_176;
      }
    }

    v54 = 0;
    while (2)
    {
      if (inited)
      {
        if (inited != 2)
        {
          if (inited == 1)
          {
            v55 = *&v92;
            v56 = (kaldi::UniformRandomNumber::RandUniform(a3, 0, v46, v47, v48) + -0.5) * (v55 + v55);
            break;
          }

LABEL_174:
          ++v54;
          v53 = *(v49 - 24);
          if (v54 >= *(v52 + v53))
          {
            goto LABEL_175;
          }

          continue;
        }

        v57 = *&v92;
        kaldi::GaussRandomNumber::Rand(v83, 0, v46, v47, v48);
        v56 = v57 * v58;
      }

      else if (v51 == v54)
      {
        v56 = 1.0;
      }

      else
      {
        v56 = 0.0;
      }

      break;
    }

    *(v81[0] + v51 * v82 + v54) = v56;
    v49 = *a1;
    goto LABEL_174;
  }

LABEL_176:
  kaldi::CuMatrix<float>::operator=((a1 + 20), v81);
  v59 = *(a1 + *(*a1 - 24) + 12);
  v79 = 0;
  v80 = 0;
  v78 = 0;
  kaldi::Vector<float>::Resize(&v78, v59, 0, v60, v61);
  if (*(v50 + *(*a1 - 24)) < 1)
  {
    v69 = v79;
  }

  else
  {
    v65 = 0;
    do
    {
      v66 = *&v94;
      v67 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v62, v63, v64);
      v68 = v66 + (v67 + -0.5) * v93;
      v69 = v79;
      v78[v65++] = v68;
    }

    while (v65 < *(v50 + *(*a1 - 24)));
  }

  kaldi::CuVector<float>::Resize((a1 + 26), v69, 1u, v63, v64);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 52, &v78, v70, v71, v72);
  kaldi::Vector<float>::Destroy(&v78);
  kaldi::Matrix<float>::~Matrix(v81);
  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  v81[0] = &v84;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v81);
  if (SHIBYTE(v87[2]) < 0)
  {
    operator delete(v87[0]);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }
}

void sub_1C307E9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (*(v19 - 217) < 0)
  {
    operator delete(*(v19 - 240));
  }

  if (*(v19 - 185) < 0)
  {
    operator delete(*(v19 - 208));
  }

  if (*(v19 - 161) < 0)
  {
    operator delete(*(v19 - 184));
  }

  if (*(v19 - 137) < 0)
  {
    operator delete(*(v19 - 160));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Recurrent::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v42, 0, 24);
    kaldi::ReadToken(a2, a3, v42, v7, v8);
    if (SHIBYTE(v42[2]) < 0)
    {
      if (v42[1] != 15 || (*v42[0] == 0x61526E7261654C3CLL ? (v14 = *(v42[0] + 7) == 0x3E66656F43657461) : (v14 = 0), v13 = (a1 + 392), !v14))
      {
        if (v42[1] != 19 || (*v42[0] == 0x61654C736169423CLL ? (v15 = *(v42[0] + 1) == 0x6F43657461526E72) : (v15 = 0), v15 ? (v16 = *(v42[0] + 11) == 0x3E66656F43657461) : (v16 = 0), v13 = (a1 + 396), !v16))
        {
          if (v42[1] != 9)
          {
            if (v42[1] == 14 && *v42[0] == 0x656E696C6E6F4E3CLL && *(v42[0] + 6) == 0x3E7974697261656ELL)
            {
              goto LABEL_57;
            }

LABEL_39:
            if (v42[1] != 9)
            {
              if (v42[1] != 18 || (*v42[0] == 0x6E6569646172473CLL ? (v19 = *(v42[0] + 1) == 0x7079546D726F4E74) : (v19 = 0), v19 ? (v20 = *(v42[0] + 8) == 15973) : (v20 = 0), !v20))
              {
LABEL_92:
                kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 134);
                v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "unrecognized config token ", 26);
                if (SHIBYTE(v42[2]) >= 0)
                {
                  v36 = v42;
                }

                else
                {
                  v36 = v42[0];
                }

                if (SHIBYTE(v42[2]) >= 0)
                {
                  v37 = HIBYTE(v42[2]);
                }

                else
                {
                  v37 = v42[1];
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
              }

              goto LABEL_71;
            }

            v21 = v42[0];
LABEL_79:
            v27 = *v21;
            v28 = *(v21 + 8);
            v29 = v27 == 0x6461724778614D3CLL && v28 == 62;
            v13 = (a1 + 152);
            if (!v29)
            {
              goto LABEL_92;
            }

            goto LABEL_84;
          }

          v18 = *v42[0] == 0x6D726F4E78614D3CLL && *(v42[0] + 8) == 62;
          v13 = (a1 + 400);
          if (!v18)
          {
            goto LABEL_39;
          }
        }
      }
    }

    else if (HIBYTE(v42[2]) <= 0xEu)
    {
      if (HIBYTE(v42[2]) != 9)
      {
        if (HIBYTE(v42[2]) != 14)
        {
          goto LABEL_92;
        }

        if (v42[0] != 0x656E696C6E6F4E3CLL || *(v42 + 6) != 0x3E7974697261656ELL)
        {
          goto LABEL_92;
        }

LABEL_57:
        __p = 0;
        v40 = 0;
        v41 = 0;
        kaldi::ReadToken(a2, a3, &__p, v9, v10);
        *(a1 + 384) = kaldi::nnet1::Component::MarkerToComponentType(&__p);
LABEL_72:
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_85;
      }

      v26 = v42[0] == 0x6D726F4E78614D3CLL && LOBYTE(v42[1]) == 62;
      v13 = (a1 + 400);
      if (!v26)
      {
        v21 = v42;
        goto LABEL_79;
      }
    }

    else
    {
      switch(HIBYTE(v42[2]))
      {
        case 0xFu:
          v23 = v42[0] == 0x61526E7261654C3CLL && *(v42 + 7) == 0x3E66656F43657461;
          v13 = (a1 + 392);
          if (!v23)
          {
            goto LABEL_92;
          }

          break;
        case 0x12u:
          if (v42[0] != 0x6E6569646172473CLL || v42[1] != 0x7079546D726F4E74 || LOWORD(v42[2]) != 15973)
          {
            goto LABEL_92;
          }

LABEL_71:
          __p = 0;
          v40 = 0;
          v41 = 0;
          kaldi::ReadToken(a2, a3, &__p, v9, v10);
          *(a1 + 156) = kaldi::nnet1::Component::MarkerToGradientNormType(&__p);
          goto LABEL_72;
        case 0x13u:
          v11 = v42[0] == 0x61654C736169423CLL && v42[1] == 0x6F43657461526E72;
          v12 = v11 && *(&v42[1] + 3) == 0x3E66656F43657461;
          v13 = (a1 + 396);
          if (!v12)
          {
            goto LABEL_92;
          }

          break;
        default:
          goto LABEL_92;
      }
    }

LABEL_84:
    kaldi::ReadBasicType<float>(a2, a3, v13);
LABEL_85:
    if (SHIBYTE(v42[2]) < 0)
    {
      operator delete(v42[0]);
    }
  }

  kaldi::CuMatrix<float>::Read(a1 + 160, a2, a3, a4);
  kaldi::CuVector<float>::Read(a1 + 208, a2, a3, v30, v31);
  v33 = *(a1 + 180);
  v34 = a1 + *(*a1 - 24);
  if (v33 != *(v34 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x8D, "linearity_.NumRows() == output_dim_", v32);
  }

  if (*(a1 + 176) != *(v34 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x8E, "linearity_.NumCols() == input_dim_", v32);
  }

  if (*(a1 + 224) != v33)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x8F, "bias_.Dim() == output_dim_", v32);
  }
}

void *kaldi::nnet1::Recurrent::WriteConfig(_DWORD *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[98];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v9, v10);
  v11 = a1[99];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v12, v13);
  v14 = a1[100];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<Nonlinearity>", v15, v16);
  kaldi::nnet1::Component::TypeToMarker(a1[96], &__p);
  kaldi::WriteToken(a2, a3, &__p, v17, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<GradientNormType>", v19, v20);
  kaldi::nnet1::Component::TypeToMarker(a1[39], &__p);
  kaldi::WriteToken(a2, a3, &__p, v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v23, v24);
  v25 = a1[38];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1C307F0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Recurrent::WriteData(_DWORD *a1, void *a2, int a3, int a4)
{
  v8 = a1 + 52;
  (*(*a1 + 168))(a1);
  kaldi::CuMatrixBase<float>::Write((a1 + 40), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write(v8, a2, a3, v9, v10);
}

_DWORD *kaldi::nnet1::Recurrent::GetParams(_DWORD *a1, uint64_t a2)
{
  v4 = (*(*a1 + 184))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v10 = a1[44] * a1[45];
  v16 = 0;
  v17 = 0;
  if (v10 > *(a2 + 8) || (v15 = *a2, LODWORD(v16) = v10, kaldi::VectorBase<float>::CopyRowsFromMat(&v15, (a1 + 40), v7, v8, v9), v13 = a1[56], v16 = 0, v17 = 0, (v13 + v10) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v15 = (*a2 + 4 * v10);
  LODWORD(v16) = v13;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(a1 + 52, &v15, v11, v12, v9);
}

_DWORD *kaldi::nnet1::Recurrent::SetParams(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 184))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0xB1, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[44] * a1[45];
  v12 = 0;
  v13 = 0;
  if (v6 > *(a2 + 8) || (v11 = *a2, LODWORD(v12) = v6, kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 40), &v11), v9 = a1[56], v12 = 0, v13 = 0, (v9 + v6) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v11 = (*a2 + 4 * v6);
  LODWORD(v12) = v9;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 52, &v11, v7, v8, v5);
}

float kaldi::nnet1::Recurrent::SumParams(kaldi::nnet1::Recurrent *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = kaldi::CuMatrixBase<float>::Sum(this + 160, a2, a3, a4, a5);
  v7 = kaldi::CuVectorBase<float>::Sum(this + 208);
  return v6 + *&v7;
}

uint64_t kaldi::nnet1::Recurrent::PerturbParams(kaldi::nnet1::Recurrent *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v15, *(this + 45), *(this + 44), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v15);
  kaldi::CuMatrixBase<float>::AddMat(this + 160, v15, 111, v4, v5, a2, 1.0);
  v6 = *(this + 56);
  v14[0] = &unk_1F42BFF70;
  memset(&v14[1], 0, 24);
  kaldi::CuVector<float>::Resize(v14, v6, 1u, v7, v8);
  kaldi::CuVectorBase<float>::SetRandn(v14);
  *&v9 = a2;
  kaldi::CuVectorBase<float>::AddVec(this + 208, v14, v10, v11, v12, v9, 1.0);
  kaldi::CuVector<float>::~CuVector(v14);
  return kaldi::CuMatrix<float>::~CuMatrix(v15);
}

void sub_1C307F498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Recurrent::Info(kaldi::nnet1::Recurrent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  (*(*this + 168))(this, &v18, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "\n linearity", 11);
  kaldi::nnet1::MomentStatistics<float>(this + 160);
  if ((v17 & 0x80u) == 0)
  {
    v3 = v16;
  }

  else
  {
    v3 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v16[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n bias", 6);
  kaldi::nnet1::MomentStatistics<float>(this + 52, v7, v8, v9, v10);
  if ((v15 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v12 = v15;
  }

  else
  {
    v12 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v11, v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::stringbuf::str();
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v22);
}

void sub_1C307F6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Recurrent::InfoGradient(kaldi::nnet1::Recurrent *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 388) == 1 && (*(this + 389) & 1) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v50, "\n  linearity_grad");
    kaldi::nnet1::MomentStatistics<float>(this + 30, v4, v5, v6, v7);
    if ((v49 & 0x80u) == 0)
    {
      v8 = v48;
    }

    else
    {
      v8 = v48[0];
    }

    if ((v49 & 0x80u) == 0)
    {
      v9 = v49;
    }

    else
    {
      v9 = v48[1];
    }

    v10 = std::string::append(&v50, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v51, ", lr-coef ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 98);
    if ((v47 & 0x80u) == 0)
    {
      v14 = v46;
    }

    else
    {
      v14 = v46[0];
    }

    if ((v47 & 0x80u) == 0)
    {
      v15 = v47;
    }

    else
    {
      v15 = v46[1];
    }

    v16 = std::string::append(&v52, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v53, ", max-norm ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 100);
    if ((v45 & 0x80u) == 0)
    {
      v20 = v44;
    }

    else
    {
      v20 = v44[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v21 = v45;
    }

    else
    {
      v21 = v44[1];
    }

    v22 = std::string::append(&v54, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v55, "\n  bias_grad");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::MomentStatistics<float>(this + 33, v26, v27, v28, v29);
    if ((v43 & 0x80u) == 0)
    {
      v30 = v42;
    }

    else
    {
      v30 = v42[0];
    }

    if ((v43 & 0x80u) == 0)
    {
      v31 = v43;
    }

    else
    {
      v31 = v42[1];
    }

    v32 = std::string::append(&v56, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v57, ", lr-coef ");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 99);
    if ((v41 & 0x80u) == 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    if ((v41 & 0x80u) == 0)
    {
      v37 = v41;
    }

    else
    {
      v37 = __p[1];
    }

    v38 = std::string::append(&v58, v36, v37);
    v39 = *&v38->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v38->__r_.__value_.__l + 2);
    *a2 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  linearity_grad is uninitialized\n  bias_grad is uninitialized");
  }
}

void sub_1C307FAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 41) < 0)
  {
    operator delete(*(v64 - 64));
  }

  if (*(v64 - 73) < 0)
  {
    operator delete(*(v64 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v64 - 105) < 0)
  {
    operator delete(*(v64 - 128));
  }

  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v64 - 169) < 0)
  {
    operator delete(*(v64 - 192));
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Recurrent::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 388) = 0;
  return result;
}

uint64_t kaldi::nnet1::Recurrent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  (*(*a1 + 88))(a1);
  v9 = *(a1 + 96);
  v10 = *(a1 + 100);
  v11 = *(a2 + 20);
  if (v11 != v9 * v10)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x121, "in.NumRows() == num_sequences * T", v8);
  }

  v12 = *(a3 + 32);
  v13 = a4;
  v14 = *(a1 + 336);
  v15 = v14 + 48 * a4;
  *(v15 + 32) = v12;
  *(*(a1 + 8) + 48 * a4 + 32) = v12;
  v16 = *(a1 + 480);
  v55 = a3;
  if (*(a1 + 488) == v16 || (v17 = *(v16 + 32 * a4 + 16), v17 < 1))
  {
    v56 = 0;
  }

  else
  {
    if (v17 != v11)
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x128, "boundary_[batch_idx].Dim() == in.NumRows()", v8);
    }

    v18 = *(a1 + 504) + 48 * a4;
    *(v18 + 32) = v12;
    v56 = 1;
    kaldi::CuMatrix<float>::Resize(v18, v9, *(v15 + 16), 1u, 0);
    v14 = *(a1 + 336);
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v58, v14 + 48 * a4, 0, v9, 0, *(v14 + 48 * a4 + 16));
  v54 = 3 * a4;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v58, *(a1 + 8) + 48 * a4, 111, v19, v20);
  v58 = &unk_1F42BFE90;
  v59 = 0u;
  v60 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v58);
  v21 = *(a1 + 336) + 48 * a4;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v58, v21, v9, v11, 0, *(v21 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v58, a2, 111, v22, v23);
  v58 = &unk_1F42BFE90;
  v59 = 0u;
  v60 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v58);
  v24 = *(a1 + 336) + 48 * a4;
  v53 = v11;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v58, v24, v9, v11, 0, *(v24 + 16));
  kaldi::CuMatrixBase<float>::AddVecToRows(&v58, a1 + 208, v25, v26, v27, 1.0, 1.0);
  v58 = &unk_1F42BFE90;
  v59 = 0u;
  v60 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v58);
  if (v10 >= 1)
  {
    v28 = 0;
    v29 = 1;
    do
    {
      v30 = *(a1 + 336) + 48 * v13;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v61, v30, v9 + v28, v9, 0, *(v30 + 16));
      if (v29 > 1)
      {
        v32 = v56;
      }

      else
      {
        v32 = 0;
      }

      v33 = v28;
      if (v32 == 1)
      {
        v34 = *(a1 + 504);
        kaldi::CuSubVector<float>::CuSubVector(&v58, *(a1 + 480) + 32 * v13, v28, v9, v31);
        kaldi::CuMatrixBase<float>::CopySelectedRows(v34 + 48 * v13, &v61, &v58, 0, v35);
        v33 = (v29 - 1) * v9;
      }

      v36 = *(a1 + 336) + 48 * v13;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v58, v36, v33, v9, 0, *(v36 + 16));
      kaldi::CuMatrixBase<float>::AddMatMat(&v61, &v58, 111, a1 + 160, 0x70);
      v58 = &unk_1F42BFE90;
      v59 = 0u;
      v60 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v58);
      if (v32)
      {
        v40 = *(a1 + 504);
        kaldi::CuSubVector<float>::CuSubVector(&v58, *(a1 + 480) + 32 * v13, v33, v9, v39);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v61, v40 + 48 * v13, &v58, 0, v41);
      }

      v42 = *(a1 + 384);
      switch(v42)
      {
        case 520:
          kaldi::CuMatrixBase<float>::ApplyFloor(&v61, 0.0);
          break;
        case 517:
          kaldi::CuMatrixBase<float>::Tanh(&v61, &v61, v37, v38, v39);
          break;
        case 516:
          kaldi::CuMatrixBase<float>::Sigmoid(&v61, &v61, v37, v38, v39);
          break;
        default:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&v58, "PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 343);
          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "Unknown nonlinearity type: ", 27);
          kaldi::nnet1::Component::TypeToMarker(*(a1 + 384), &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v58);
      }

      v61 = &unk_1F42BFE90;
      v62 = 0u;
      v63 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v61);
      ++v29;
      v28 += v9;
      --v10;
    }

    while (v10);
  }

  v43 = *(a1 + 336) + 48 * v13;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v58, v43, v9, v11, 0, *(v43 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v55, &v58, 111, v44, v45);
  v58 = &unk_1F42BFE90;
  v59 = 0u;
  v60 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v58);
  v46 = (*(a1 + 8) + 16 * v54);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v58, *(a1 + 336) + 16 * v54, v53, v9, 0, *(*(a1 + 336) + 16 * v54 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v46, &v58, 111, v47, v48);
  v58 = &unk_1F42BFE90;
  v59 = 0u;
  v60 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v58);
}

void sub_1C308021C()
{
  v1 = v0 - 128;
  *(v0 - 128) = &unk_1F42BFE90;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  JUMPOUT(0x1C3080268);
}

void sub_1C3080274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, __int128 a18, __int128 a19)
{
  a17 = &unk_1F42BFE90;
  a18 = 0u;
  a19 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a17);
  JUMPOUT(0x1C3080238);
}

uint64_t kaldi::nnet1::Recurrent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 8);
  v11 = &unk_1F42BFE90;
  *&v12 = v4;
  *(&v12 + 1) = v3 | 0x100000000;
  LODWORD(v13) = v3;
  DWORD1(v13) = v3;
  *(&v13 + 1) = *(a2 + 24);
  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  v8 = &unk_1F42BFE90;
  *&v9 = v6;
  *(&v9 + 1) = v5 | 0x100000000;
  LODWORD(v10) = v5;
  DWORD1(v10) = v5;
  *(&v10 + 1) = *(a3 + 24);
  (*(*a1 + 248))(a1, &v11, &v8, 0);
  v8 = &unk_1F42BFE90;
  v9 = 0u;
  v10 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v8);
  v11 = &unk_1F42BFE90;
  v12 = 0u;
  v13 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v11);
}

void sub_1C30803C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16)
{
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  a15 = 0u;
  a16 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Recurrent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6)
{
  (*(*a1 + 88))(a1);
  kaldi::nnet1::Recurrent::EnsureTrainingBuffers(a1);
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = a4;
  }

  v12 = *(v11 + 32);
  v13 = a6;
  *(*(a1 + 336) + 48 * a6 + 32) = v12;
  v14 = *(a1 + 360);
  v15 = v14 + 48 * a6;
  *(v15 + 32) = v12;
  v16 = *(a1 + 96);
  v48 = *(a1 + 100);
  v17 = *(a1 + 480);
  if (*(a1 + 488) == v17 || (v18 = *(v17 + 32 * v13 + 16), v18 < 1))
  {
    v47 = 0;
  }

  else
  {
    if (v18 != *(a4 + 20))
    {
      kaldi::KaldiAssertFailure_("BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x17B, "boundary_[batch_idx].Dim() == out_diff.NumRows()", v10);
    }

    v19 = *(a1 + 504) + 48 * v13;
    *(v19 + 32) = v12;
    v47 = 1;
    kaldi::CuMatrix<float>::Resize(v19, v16, *(v15 + 16), 1u, 0);
    v14 = *(a1 + 360);
  }

  v46 = a5;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v50, v14 + 48 * v13, 0, v16 * v48, 0, *(v14 + 48 * v13 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v50, a4, 111, v20, v21);
  v50 = &unk_1F42BFE90;
  v51 = 0u;
  v52 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v50);
  v22 = *(a1 + 360) + 48 * v13;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v50, v22, v16 * v48, v16, 0, *(v22 + 16));
  kaldi::CuMatrixBase<float>::SetZero(&v50);
  v50 = &unk_1F42BFE90;
  v51 = 0u;
  v52 = 0u;
  result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v50);
  if (v48 >= 1)
  {
    v24 = v48;
    v25 = v48 * v16;
    v26 = v16 * (v48 - 1);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v56, *(a1 + 336) + 48 * v13, v25, v16, 0, *(*(a1 + 336) + 48 * v13 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v53, *(a1 + 360) + 48 * v13, v26, v16, 0, *(*(a1 + 360) + 48 * v13 + 16));
      if (v24 < v48)
      {
        v28 = v47;
      }

      else
      {
        v28 = 0;
      }

      if (v28 == 1)
      {
        v29 = *(a1 + 504);
        kaldi::CuSubVector<float>::CuSubVector(&v50, *(a1 + 480) + 32 * v13, v25, v16, v27);
        kaldi::CuMatrixBase<float>::CopySelectedRows(v29 + 48 * v13, &v53, &v50, 0, v30);
      }

      v31 = *(a1 + 360) + 48 * v13;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v50, v31, v25, v16, 0, *(v31 + 16));
      kaldi::CuMatrixBase<float>::AddMatMat(&v53, &v50, 111, a1 + 160, 0x6F);
      v50 = &unk_1F42BFE90;
      v51 = 0u;
      v52 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v50);
      if (v28)
      {
        v34 = *(a1 + 504);
        kaldi::CuSubVector<float>::CuSubVector(&v50, *(a1 + 480) + 32 * v13, v25, v16, v33);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v53, v34 + 48 * v13, &v50, 0, v35);
      }

      v36 = *(a1 + 384);
      switch(v36)
      {
        case 520:
          kaldi::CuMatrixBase<float>::ApplyHeaviside(&v56);
          kaldi::CuMatrixBase<float>::MulElements(&v53, &v56, v37, v38, v39);
          break;
        case 517:
          kaldi::CuMatrixBase<float>::DiffTanh(&v53, &v56, &v53, v32, v33);
          break;
        case 516:
          kaldi::CuMatrixBase<float>::DiffSigmoid(&v53, &v56, &v53, v32, v33);
          break;
        default:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&v50, "BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 420);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Unknown nonlinearity type: ", 27);
          kaldi::nnet1::Component::TypeToMarker(*(a1 + 384), &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v50);
      }

      v53 = &unk_1F42BFE90;
      --v24;
      v54 = 0u;
      v55 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v53);
      v56 = &unk_1F42BFE90;
      v57 = 0u;
      v58 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v56);
      v25 -= v16;
      v26 -= v16;
    }

    while ((v24 + 1) > 1);
  }

  if (v46)
  {
    v40 = *(a1 + 360) + 48 * v13;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v50, v40, 0, v16 * v48, 0, *(v40 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(v46, &v50, 111, v41, v42);
    v50 = &unk_1F42BFE90;
    v51 = 0u;
    v52 = 0u;
    return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v50);
  }

  return result;
}

void sub_1C3080984()
{
  v1 = v0 - 168;
  *(v0 - 168) = &unk_1F42BFE90;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v0 - 168);
  *(v0 - 128) = &unk_1F42BFE90;
  *(v0 - 120) = 0u;
  *(v0 - 104) = 0u;
  JUMPOUT(0x1C3080A50);
}

uint64_t kaldi::nnet1::Recurrent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  (*(*a1 + 88))(a1);
  kaldi::nnet1::Recurrent::EnsureTrainingBuffers(a1);
  v10 = a5;
  v11 = *(a1 + 240) + 48 * a5;
  *(v11 + 32) = a4;
  *(*(a1 + 264) + 32 * a5 + 24) = a4;
  v12 = *(a1 + 96);
  v13 = *(a1 + 100);
  v14 = *(a1 + 60);
  v15 = *(a2 + 20);
  *(*(a1 + 408) + 4 * a5) = v15;
  if (v15 != *(a1 + 96) * *(a1 + 100))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x1BC, "num_frames_[batch_idx] == ropts_.bptt_steps * ropts_.num_sequences", v9);
  }

  v16 = *(a1 + 360) + 48 * a5;
  v17 = v13 * v12;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v27, v16, 0, v13 * v12, 0, *(v16 + 16));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v24, *(a1 + 336) + 48 * v10, 0, v17, 0, *(*(a1 + 336) + 48 * v10 + 16));
  kaldi::CuMatrixBase<float>::AddMatMat(v11, &v27, 112, &v24, 0x6F);
  v24 = &unk_1F42BFE90;
  v25 = 0u;
  v26 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v24);
  v27 = &unk_1F42BFE90;
  v28 = 0u;
  v29 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v27);
  v18 = *(a1 + 264) + 32 * v10;
  v19 = *(a1 + 360) + 48 * v10;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v27, v19, 0, v17, 0, *(v19 + 16));
  kaldi::CuVectorBase<float>::AddRowSumMat(v18, &v27, v20, v21, v22);
  v27 = &unk_1F42BFE90;
  v28 = 0u;
  v29 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v27);
}

void sub_1C3080C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, __int128 a15, __int128 a16)
{
  a14 = &unk_1F42BFE90;
  a15 = 0u;
  a16 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Recurrent::NormalizeGradients(kaldi::nnet1::Recurrent *this, float a2, unsigned int a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if ((a3 & 0x80000000) != 0 || *(this + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("NormalizeGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x1C5, "batch_idx >= 0 && batch_idx < ropts_.num_subbatches", a6);
  }

  v7 = a2;
  v8 = *(this + 39);
  if (v8 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      v10 = a3;
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 30) + 48 * a3, *(this + 36) + 48 * a3, a2);
      v14 = *(this + 33) + 32 * v10;
      v15 = *(this + 39) + 32 * v10;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v14, v15, v7, v11, v12, v13);
    }
  }

  else if (v8 == 1)
  {
    if (a2 > 0.0)
    {
      v9 = a3;
      if (*(this + 84))
      {
        v7 = *(*(this + 51) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 30) + 48 * a3, v7);
      v17 = *(this + 33) + 32 * v9;

      kaldi::nnet1::UpdatableComponent::ClipGradient(v17, v7);
    }
  }

  else if (a2 > 0.0 && v8 == 2)
  {
    v16 = a3;
    if (*(this + 84))
    {
      v7 = *(*(this + 51) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 30) + 48 * a3, (*(this + 36) + 48 * a3), v7, a4, a5, a6);
    v21 = *(this + 33) + 32 * v16;
    v22 = (*(this + 39) + 32 * v16);

    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, v22, v18, v19, v20, v7);
  }
}

void *kaldi::nnet1::Recurrent::UpdateWeights(kaldi::nnet1::Recurrent *this, void *a2, int a3)
{
  (*(*this + 88))(this);
  kaldi::nnet1::Recurrent::EnsureTrainingBuffers(this);
  v9 = *(this + *(*this - 24) + 56);
  v11 = *(this + 16);
  v10 = *(this + 17);
  *(this + 24) = a2;
  *(this + 29) = a2;
  v12 = *(this + 20);
  if (a3 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *(this + 20);
  }

  if (v12 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > v12)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-recurrent.h", 0x1E9, "batch_idx <= ropts_.num_subbatches", v8);
  }

  v15 = *(this + 30);
  v16 = v15 + 48 * v14;
  *(v16 + 32) = a2;
  *(*(this + 33) + 32 * v14 + 24) = a2;
  *(*(this + 36) + 48 * v14 + 32) = a2;
  *(*(this + 39) + 32 * v14 + 24) = a2;
  if (v14 == v12)
  {
    kaldi::CuMatrixBase<float>::AddMat(v16, v15, 111, v7, v8, 1.0, 0.0);
    LODWORD(v17) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(*(this + 33) + 32 * v14, *(this + 33), v18, v19, v20, v17, 0.0);
    if (*(this + 20) > 1)
    {
      v21 = 1;
      v22 = 32;
      v23 = 48;
      do
      {
        kaldi::CuMatrixBase<float>::AddMat(*(this + 30) + 48 * v14, *(this + 30) + v23, 111, v7, v8, 1.0, 1.0);
        LODWORD(v24) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(*(this + 33) + 32 * v14, *(this + 33) + v22, v25, v26, v27, v24, 1.0);
        ++v21;
        v23 += 48;
        v22 += 32;
      }

      while (v21 < *(this + 20));
    }

    v28 = *(this + 51);
    v28[v14] = 0;
    if (v12 >= 1)
    {
      v29 = 0;
      v30 = v28;
      do
      {
        v31 = *v30++;
        v29 += v31;
        v28[v14] = v29;
        --v12;
      }

      while (v12);
    }
  }

  if (*(this + 84) == 1)
  {
    v9 = v9 / *(*(this + 51) + 4 * v14);
  }

  if (*(this + 38) >= 0.0)
  {
    (*(*this + 280))(this, v14);
  }

  if (v11 != 0.0)
  {
    kaldi::CuMatrixBase<float>::AddMat(this + 160, this + 160, 111, v7, v8, -(v9 * v11) * *(*(this + 51) + 4 * v14), 1.0);
  }

  v32 = *(this + 30);
  if (v10 != 0.0)
  {
    kaldi::cu::RegularizeL1<float>(this + 160, v32 + 48 * v14, (v10 * v9) * *(*(this + 51) + 4 * v14), v9, v6, v7, v8);
    v32 = *(this + 30);
  }

  kaldi::CuMatrixBase<float>::AddMat(this + 160, v32 + 48 * v14, 111, v7, v8, -(v9 * *(this + 98)), 1.0);
  *&v33 = -(v9 * *(this + 99));
  result = kaldi::CuVectorBase<float>::AddVec(this + 208, *(this + 33) + 32 * v14, v34, v35, v36, v33, 1.0);
  if (*(this + 100) > 0.0)
  {
    *(this + 58) = a2;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(this + 108, this + 160, 111, v38, v39);
    kaldi::CuMatrixBase<float>::MulElements(this + 432, this + 160, v40, v41, v42);
    v43 = *(this + *(*this - 24) + 12);
    v57[2] = 0;
    v58 = 0;
    v57[0] = &unk_1F42BFF70;
    v57[1] = 0;
    kaldi::CuVector<float>::Resize(v57, v43, 0, v44, v45);
    v58 = a2;
    kaldi::CuVectorBase<float>::AddColSumMat(v57, this + 432, v46, v47, v48);
    kaldi::CuVectorBase<float>::ApplyPow(v57, 0.5);
    kaldi::CuVector<float>::CuVector(v56, v57, v49, v50, v51);
    v52 = 1.0 / *(this + 100);
    kaldi::CuVectorBase<float>::Scale(v56);
    kaldi::CuVectorBase<float>::ApplyFloor(v56, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(v56);
    kaldi::CuMatrixBase<float>::MulRowsVec(this + 160, v56, v53, v54, v55);
    kaldi::CuVector<float>::~CuVector(v56);
    return kaldi::CuVector<float>::~CuVector(v57);
  }

  return result;
}

void sub_1C30812AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Recurrent::GetGradient(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
    v9 = **v8;
  }

  else
  {
    v10 = 0;
  }

  (*(*v10 + 272))(v10, a2, a3, 0, 0);
  v11 = (*(*a1 + 184))(a1);
  kaldi::Vector<float>::Resize(a4, v11, 1, v12, v13);
  v17 = a1[44] * a1[45];
  v23 = 0;
  v24 = 0;
  if (v17 > *(a4 + 8) || (v22 = *a4, LODWORD(v23) = v17, kaldi::VectorBase<float>::CopyRowsFromMat(&v22, v10[30], v14, v15, v16), v20 = a1[56], v23 = 0, v24 = 0, (v20 + v17) > *(a4 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v16);
  }

  v22 = (*a4 + 4 * v17);
  LODWORD(v23) = v20;
  kaldi::CuVectorBase<float>::CopyToVec<float>(v10[33], &v22, v18, v19, v16);
  return (*(*v10 + 8))(v10);
}

float virtual thunk tokaldi::nnet1::Recurrent::SumParams(kaldi::nnet1::Recurrent *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = this + *(*this - 224);
  v6 = kaldi::CuMatrixBase<float>::Sum((v5 + 160), a2, a3, a4, a5);
  v7 = kaldi::CuVectorBase<float>::Sum((v5 + 208));
  return v6 + *&v7;
}

void *virtual thunk tokaldi::nnet1::Recurrent::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 388) = 0;
  return result;
}

void virtual thunk tokaldi::nnet1::Recurrent::SetTrainOptions(kaldi::nnet1::Recurrent *this, char **a2)
{
  v2 = (this + *(*this - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 194) = 0;
}

void kaldi::nnet1::AveragePoolingComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v7 = a2 + 4;
  v8 = (a1 + 56);
  v9 = (a1 + 52);
  v10 = (a1 + 48);
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_56;
    }

    kaldi::ReadToken(a2, 0, &v33, a4, a5);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      switch(HIBYTE(v35))
      {
        case 7u:
          v15 = &v33;
          goto LABEL_31;
        case 0xAu:
          v16 = v33 == 0x7A69536C6F6F503CLL && v34 == 15973;
          v12 = v10;
          if (!v16)
          {
            v17 = v33 == 0x6574536C6F6F503CLL && v34 == 15984;
            v12 = v9;
            if (!v17)
            {
              goto LABEL_62;
            }
          }

          break;
        case 0xCu:
          v11 = v33 == 0x7274536C6F6F503CLL && v34 == 1046832233;
          v12 = v8;
          if (!v11)
          {
            v23 = &v33;
            goto LABEL_51;
          }

          break;
        default:
          goto LABEL_62;
      }

      goto LABEL_46;
    }

    v13 = v34;
    if (v34 != 10 || (*v33 == 0x7A69536C6F6F503CLL ? (v21 = *(v33 + 4) == 15973) : (v21 = 0), (v12 = v10, !v21) && (*v33 == 0x6574536C6F6F503CLL ? (v22 = *(v33 + 4) == 15984) : (v22 = 0), v12 = v9, !v22)))
    {
      if (v34 != 12)
      {
        goto LABEL_19;
      }

      v14 = *v33 == 0x7274536C6F6F503CLL && v33[2] == 1046832233;
      v12 = v8;
      if (!v14)
      {
        break;
      }
    }

LABEL_46:
    kaldi::ReadBasicType<int>(a2, 0, v12);
LABEL_47:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v13 = v34;
LABEL_19:
  if (v13 != 7)
  {
    goto LABEL_49;
  }

  v15 = v33;
LABEL_31:
  v18 = *v15;
  v19 = *(v15 + 3);
  if (v18 == 1633899324 && v19 == 1046834273)
  {
    kaldi::ReadBasicType<float>(a2, 0, (a1 + 60));
    goto LABEL_47;
  }

  if ((v35 & 0x8000000000000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_49:
  if (v34 != 12)
  {
    goto LABEL_62;
  }

  v23 = v33;
LABEL_51:
  v24 = *v23;
  v25 = *(v23 + 2);
  if (v24 != 0x6E6F706D6F432F3CLL || v25 != 1047817829)
  {
LABEL_62:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-component.h", 63);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Unknown token ", 14);
    if (v35 >= 0)
    {
      v28 = &v33;
    }

    else
    {
      v28 = v33;
    }

    if (v35 >= 0)
    {
      v29 = HIBYTE(v35);
    }

    else
    {
      v29 = v34;
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " (PoolSize|PoolStep|PoolStride|Scale)", 37);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
  }

LABEL_56:
  if (!*v10 || !*v9 || !*v8)
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-component.h", 0x44, "pool_size_ != 0 && pool_step_ != 0 && pool_stride_ != 0", a5);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }
}

void sub_1C3081BC8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::AveragePoolingComponent::WriteData(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<PoolSize>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<PoolStep>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<PoolStride>", v10, v11);
  kaldi::WriteBasicType<int>(a2, a3, a1[14]);
  kaldi::WriteToken(a2, a3, "<Scale>", v12, v13);
  v14 = a1[15];

  return kaldi::WriteBasicType<float>(a2, a3);
}

float *kaldi::nnet1::AveragePoolingComponent::PropagateFnc(float *result, uint64_t a2, uint64_t a3)
{
  v3 = (*(result + 2) / *(result + 14) - *(result + 12)) / *(result + 13);
  if ((v3 & 0x80000000) == 0)
  {
    v6 = result;
    v7 = 0;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, a3, 0, *(a3 + 20), (*(v6 + 14) * v7), *(v6 + 14));
      kaldi::CuMatrixBase<float>::SetZero(&v16);
      v8 = *(v6 + 12);
      if (v8 >= 1)
      {
        for (i = 0; i < v8; ++i)
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v13, a2, 0, *(a2 + 20), ((i + v7 * *(v6 + 13)) * *(v6 + 14)), *(v6 + 14));
          kaldi::CuMatrixBase<float>::AddMat(&v16, &v13, 111, v10, v11, 1.0, 1.0);
          v13 = &unk_1F42BFE90;
          v14 = 0u;
          v15 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v13);
          v8 = *(v6 + 12);
        }
      }

      kaldi::CuMatrixBase<float>::Scale(&v16, v6[15] / v8);
      v16 = &unk_1F42BFE90;
      v17 = 0u;
      v18 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v16);
    }

    while (v7++ != v3);
  }

  return result;
}

void sub_1C3081E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  a14 = &unk_1F42BFE90;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AveragePoolingComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 52);
  v9 = (*(a1 + 8) / *(a1 + 56));
  v10 = *(a1 + 48);
  LODWORD(v26) = 0;
  std::vector<int>::vector[abi:ne200100](__p, v9);
  kaldi::CuMatrixBase<float>::SetZero(a5);
  v11 = *(a1 + 48);
  v12 = (v9 - v10) / v8;
  if ((v12 & 0x80000000) == 0)
  {
    v13 = 0;
    do
    {
      if (v11 >= 1)
      {
        v14 = 0;
        do
        {
          v15 = *(a1 + 52);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v26, a5, 0, *(a5 + 20), ((v14 + v13 * v15) * *(a1 + 56)), *(a1 + 56));
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v23, a4, 0, *(a4 + 20), (*(a1 + 56) * v13), *(a1 + 56));
          kaldi::CuMatrixBase<float>::AddMat(&v26, &v23, 111, v16, v17, 1.0, 1.0);
          ++*(__p[0] + v14 + v13 * v15);
          v23 = &unk_1F42BFE90;
          v24 = 0u;
          v25 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v23);
          v26 = &unk_1F42BFE90;
          v27 = 0u;
          v28 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v26);
          v11 = *(a1 + 48);
          ++v14;
        }

        while (v14 < v11);
      }
    }

    while (v13++ != v12);
  }

  kaldi::CuMatrixBase<float>::Scale(a5, *(a1 + 60) / v11);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v26, a5, 0, *(a5 + 20), (*(a1 + 56) * i), *(a1 + 56));
      v21 = *(__p[0] + i);
      if (v21 <= 0)
      {
        kaldi::KaldiAssertFailure_("BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-component.h", 0xA0, "patch_summands[p] > 0", v20);
      }

      v22 = 1.0 / v21;
      kaldi::CuMatrixBase<float>::Scale(&v26, v22);
      v26 = &unk_1F42BFE90;
      v27 = 0u;
      v28 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v26);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1C3082118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::AveragePoolingComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<PoolSize>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 48);
  kaldi::ExpectToken(a2, a3, "<PoolStep>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 52);
  kaldi::ExpectToken(a2, a3, "<PoolStride>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 56);
  kaldi::ExpectToken(a2, a3, "<Scale>");
  result = kaldi::ReadBasicType<float>(a2, a3, (a1 + 60));
  v8 = *(a1 + 8);
  v9 = *(a1 + 56);
  if (v8 % v9)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-component.h", 0x56, "input_dim_ % pool_stride_ == 0", v7);
  }

  v10 = *(a1 + 52);
  v11 = v8 / v9 - *(a1 + 48);
  if (v11 % v10)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-component.h", 0x59, "(num_patches - pool_size_) % pool_step_ == 0", v7);
  }

  if (*(a1 + 12) != v9 + v9 * (v11 / v10))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-component.h", 0x5C, "output_dim_ == num_pools * pool_stride_", v7);
  }

  return result;
}

uint64_t kaldi::nnet1::ConvolutionalComponent::Info(kaldi::nnet1::ConvolutionalComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  (*(*this + 168))(this, &v18, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "\n filters: ", 11);
  kaldi::nnet1::MomentStatistics<float>(this + 104);
  if ((v17 & 0x80u) == 0)
  {
    v3 = v16;
  }

  else
  {
    v3 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v16[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n bias: ", 8);
  kaldi::nnet1::MomentStatistics<float>(this + 38, v7, v8, v9, v10);
  if ((v15 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v12 = v15;
  }

  else
  {
    v12 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v11, v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::stringbuf::str();
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v22);
}

void sub_1C30825E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalComponent::InfoGradient(kaldi::nnet1::ConvolutionalComponent *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v49, "\n  filters_grad");
  kaldi::nnet1::MomentStatistics<float>(this + 24, v4, v5, v6, v7);
  if ((v48 & 0x80u) == 0)
  {
    v8 = v47;
  }

  else
  {
    v8 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v9 = v48;
  }

  else
  {
    v9 = v47[1];
  }

  v10 = std::string::append(&v49, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v50, ", lr-coef ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>(this + 72);
  if ((v46 & 0x80u) == 0)
  {
    v14 = v45;
  }

  else
  {
    v14 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v15 = v46;
  }

  else
  {
    v15 = v45[1];
  }

  v16 = std::string::append(&v51, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v52, ", max-norm ");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>(this + 74);
  if ((v44 & 0x80u) == 0)
  {
    v20 = v43;
  }

  else
  {
    v20 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v21 = v44;
  }

  else
  {
    v21 = v43[1];
  }

  v22 = std::string::append(&v53, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v54, "\n  bias_grad");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(this + 27, v26, v27, v28, v29);
  if ((v42 & 0x80u) == 0)
  {
    v30 = v41;
  }

  else
  {
    v30 = v41[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v31 = v42;
  }

  else
  {
    v31 = v41[1];
  }

  v32 = std::string::append(&v55, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v56, ", lr-coef ");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>(this + 73);
  if ((v40 & 0x80u) == 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v37 = v40;
  }

  else
  {
    v37 = __p[1];
  }

  v38 = std::string::append(&v57, v36, v37);
  *a2 = *v38;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }
}

void sub_1C3082958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 41) < 0)
  {
    operator delete(*(v64 - 64));
  }

  if (*(v64 - 73) < 0)
  {
    operator delete(*(v64 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v64 - 105) < 0)
  {
    operator delete(*(v64 - 128));
  }

  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v64 - 169) < 0)
  {
    operator delete(*(v64 - 192));
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalComponent::InitData(_DWORD *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v100 = 2.0;
  v101 = -1073741824;
  v99 = 1036831949;
  v98 = -1;
  kaldi::nnet1::Component::TypeToMarker(a1[46], &v97);
  memset(v96, 0, sizeof(v96));
  v85 = a1 + 23;
  v86 = a1 + 22;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_171;
    }

    kaldi::ReadToken(a2, 0, v96, v6, v7);
    if (SHIBYTE(v96[2]) < 0)
    {
      v13 = v96[1];
      if (v96[1] > 12)
      {
        if (v96[1] > 17)
        {
          if (v96[1] == 18)
          {
            if (*v96[0] == 0x6E6569646172473CLL && *(v96[0] + 1) == 0x7079546D726F4E74 && *(v96[0] + 8) == 15973)
            {
              goto LABEL_115;
            }

            goto LABEL_152;
          }

          if (v96[1] == 19)
          {
            v24 = *v96[0] == 0x61654C736169423CLL && *(v96[0] + 1) == 0x6F43657461526E72 && *(v96[0] + 11) == 0x3E66656F43657461;
            v17 = (a1 + 73);
            if (v24)
            {
              goto LABEL_160;
            }

            goto LABEL_152;
          }

          goto LABEL_153;
        }

        if (v96[1] != 13)
        {
          if (v96[1] == 15)
          {
            v18 = *v96[0] == 0x61526E7261654C3CLL && *(v96[0] + 7) == 0x3E66656F43657461;
            v17 = (a1 + 72);
            if (v18)
            {
              goto LABEL_160;
            }

            goto LABEL_152;
          }

LABEL_153:
          if (v13 != 9)
          {
            goto LABEL_164;
          }

          v26 = v96[0];
          goto LABEL_155;
        }

        if (*v96[0] != 0x74536D617261503CLL || *(v96[0] + 5) != 0x3E7665646474536DLL)
        {
          v35 = *v96[0] == 0x745368637461503CLL && *(v96[0] + 5) == 0x3E65646972745368;
          v12 = a1 + 24;
          if (v35)
          {
            goto LABEL_106;
          }

          goto LABEL_152;
        }

        goto LABEL_133;
      }

      if (v96[1] > 10)
      {
        if (v96[1] != 11)
        {
          if (*v96[0] == 0x536D6F646E61523CLL && *(v96[0] + 2) == 1046766949)
          {
            goto LABEL_54;
          }

          goto LABEL_152;
        }

        if (*v96[0] != 0x6E6152736169423CLL || *(v96[0] + 3) != 0x3E65676E61527361)
        {
          v37 = *v96[0] == 0x745368637461503CLL && *(v96[0] + 3) == 0x3E70657453686374;
          v12 = a1 + 23;
          if (v37)
          {
            goto LABEL_106;
          }

          goto LABEL_152;
        }

        goto LABEL_144;
      }

      if (v96[1] == 9)
      {
        v33 = *v96[0] == 0x6D726F4E78614D3CLL && *(v96[0] + 8) == 62;
        v17 = (a1 + 74);
        if (v33)
        {
          goto LABEL_160;
        }

LABEL_152:
        v13 = v96[1];
        goto LABEL_153;
      }

      if (v96[1] != 10)
      {
        goto LABEL_153;
      }

      if (*v96[0] != 0x61654D736169423CLL || *(v96[0] + 4) != 15982)
      {
        v15 = *v96[0] == 0x694468637461503CLL && *(v96[0] + 4) == 15981;
        v12 = a1 + 22;
        if (v15)
        {
          goto LABEL_106;
        }

        goto LABEL_152;
      }

LABEL_116:
      v17 = &v101;
      goto LABEL_160;
    }

    if (HIBYTE(v96[2]) <= 0xCu)
    {
      break;
    }

    if (HIBYTE(v96[2]) <= 0x11u)
    {
      if (HIBYTE(v96[2]) != 13)
      {
        if (HIBYTE(v96[2]) != 15)
        {
          goto LABEL_202;
        }

        v16 = v96[0] == 0x61526E7261654C3CLL && *(v96 + 7) == 0x3E66656F43657461;
        v17 = (a1 + 72);
        if (!v16)
        {
          goto LABEL_202;
        }

        goto LABEL_160;
      }

      if (v96[0] != 0x74536D617261503CLL || *(v96 + 5) != 0x3E7665646474536DLL)
      {
        v28 = v96[0] == 0x745368637461503CLL && *(v96 + 5) == 0x3E65646972745368;
        v12 = a1 + 24;
        if (!v28)
        {
          goto LABEL_202;
        }

        goto LABEL_106;
      }

LABEL_133:
      v17 = &v99;
      goto LABEL_160;
    }

    if (HIBYTE(v96[2]) == 18)
    {
      if (v96[0] != 0x6E6569646172473CLL || v96[1] != 0x7079546D726F4E74 || LOWORD(v96[2]) != 15973)
      {
        goto LABEL_202;
      }

LABEL_115:
      kaldi::ReadToken(a2, 0, &v97, v8, v9);
      goto LABEL_161;
    }

    if (HIBYTE(v96[2]) != 19)
    {
      goto LABEL_202;
    }

    v20 = v96[0] == 0x61654C736169423CLL && v96[1] == 0x6F43657461526E72;
    v21 = v20 && *(&v96[1] + 3) == 0x3E66656F43657461;
    v17 = (a1 + 73);
    if (!v21)
    {
      goto LABEL_202;
    }

LABEL_160:
    kaldi::ReadBasicType<float>(a2, 0, v17);
LABEL_161:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v96[2]) > 0xAu)
  {
    if (HIBYTE(v96[2]) != 11)
    {
      if (v96[0] != 0x536D6F646E61523CLL || LODWORD(v96[1]) != 1046766949)
      {
        v79 = v96;
        goto LABEL_166;
      }

LABEL_54:
      v12 = &v98;
LABEL_106:
      kaldi::ReadBasicType<int>(a2, 0, v12);
      goto LABEL_161;
    }

    if (v96[0] != 0x6E6152736169423CLL || *(v96 + 3) != 0x3E65676E61527361)
    {
      v30 = v96[0] == 0x745368637461503CLL && *(v96 + 3) == 0x3E70657453686374;
      v12 = a1 + 23;
      if (!v30)
      {
        goto LABEL_202;
      }

      goto LABEL_106;
    }

LABEL_144:
    v17 = &v100;
    goto LABEL_160;
  }

  if (HIBYTE(v96[2]) != 9)
  {
    if (HIBYTE(v96[2]) != 10)
    {
      goto LABEL_202;
    }

    if (v96[0] != 0x61654D736169423CLL || LOWORD(v96[1]) != 15982)
    {
      v11 = v96[0] == 0x694468637461503CLL && LOWORD(v96[1]) == 15981;
      v12 = a1 + 22;
      if (!v11)
      {
        goto LABEL_202;
      }

      goto LABEL_106;
    }

    goto LABEL_116;
  }

  v25 = v96[0] == 0x6D726F4E78614D3CLL && LOBYTE(v96[1]) == 62;
  v17 = (a1 + 74);
  if (v25)
  {
    goto LABEL_160;
  }

  v26 = v96;
LABEL_155:
  v40 = *v26;
  v41 = *(v26 + 8);
  v42 = v40 == 0x6461724778614D3CLL && v41 == 62;
  v17 = (a1 + 47);
  if (v42)
  {
    goto LABEL_160;
  }

  if ((HIBYTE(v96[2]) & 0x80) == 0)
  {
    goto LABEL_202;
  }

  v13 = v96[1];
LABEL_164:
  if (v13 != 12)
  {
    goto LABEL_202;
  }

  v79 = v96[0];
LABEL_166:
  v43 = *v79;
  v44 = *(v79 + 2);
  if (v43 != 0x6E6F706D6F432F3CLL || v44 != 1047817829)
  {
LABEL_202:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v92, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 121);
    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "Unknown token ", 14);
    if (SHIBYTE(v96[2]) >= 0)
    {
      v81 = v96;
    }

    else
    {
      v81 = v96[0];
    }

    if (SHIBYTE(v96[2]) >= 0)
    {
      v82 = HIBYTE(v96[2]);
    }

    else
    {
      v82 = v96[1];
    }

    v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v81, v82);
    v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, " (ParamStddev|BiasMean|BiasRange|PatchDim|PatchStep|PatchStride|MaxNorm|GradientNormType|MaxGrad|RandomSeed)", 108);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v92);
  }

LABEL_171:
  a1[46] = kaldi::nnet1::Component::MarkerToGradientNormType(&v97);
  v47 = a1[2];
  v48 = a1[24];
  v49 = (v47 / v48);
  if (v47 % v48)
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0x85, "input_dim_ % patch_stride_ == 0", v46);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v92, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 135);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "num_splice ", 11);
    MEMORY[0x1C692A960](v50, v49);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v92);
    v48 = a1[24];
  }

  v51 = v48 - *v86;
  if (v51 % *v85)
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0x89, "(patch_stride_ - patch_dim_) % patch_step_ == 0", v46);
  }

  v52 = (v51 / *v85 + 1);
  if (kaldi::g_kaldi_verbose_level < 0)
  {
    v54 = (*v86 * v49);
  }

  else
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v92, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 139);
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "num_patches ", 12);
    MEMORY[0x1C692A960](v53, v52);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v92);
    v54 = (*v86 * v49);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v92, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 142);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "filter_dim ", 11);
      MEMORY[0x1C692A960](v55, v54);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v92);
    }
  }

  v56 = a1[3];
  v57 = (v56 / v52);
  if (v56 % v52)
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0x90, "output_dim_ % num_patches == 0", v46);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v92, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 146);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "num_filters ", 12);
    MEMORY[0x1C692A960](v58, v57);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v92);
  }

  if (v98 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v98);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v92, a3);
  kaldi::Matrix<float>::Matrix(v90, v57, v54, 0, 0);
  if (v57 >= 1)
  {
    v62 = 0;
    do
    {
      if (v54 >= 1)
      {
        v63 = 0;
        do
        {
          v64 = *&v99;
          kaldi::GaussRandomNumber::Rand(v92, 0, v59, v60, v61);
          *(v90[0] + v62 * v91 + v63++) = v64 * v65;
        }

        while (v54 != v63);
      }

      ++v62;
    }

    while (v62 != v57);
  }

  kaldi::CuMatrix<float>::operator=((a1 + 26), v90);
  v87 = 0;
  v88 = 0;
  v89 = 0;
  kaldi::Vector<float>::Resize(&v87, v57, 0, v66, v67);
  if (v57 <= 0)
  {
    v75 = v88;
  }

  else
  {
    for (i = 0; i != v57; ++i)
    {
      v72 = *&v101;
      v73 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v68, v69, v70);
      v74 = v72 + (v73 + -0.5) * v100;
      v75 = v88;
      v87[i] = v74;
    }
  }

  kaldi::CuVector<float>::Resize((a1 + 38), v75, 1u, v69, v70);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 38, &v87, v76, v77, v78);
  kaldi::Vector<float>::Destroy(&v87);
  kaldi::Matrix<float>::~Matrix(v90);
  if (__p)
  {
    v95 = __p;
    operator delete(__p);
  }

  v90[0] = &v93;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v90);
  if (SHIBYTE(v96[2]) < 0)
  {
    operator delete(v96[0]);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }
}

void sub_1C3083684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (*(v20 - 145) < 0)
  {
    operator delete(*(v20 - 168));
  }

  if (*(v20 - 121) < 0)
  {
    operator delete(*(v20 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalComponent::WriteData(_DWORD *a1, void *a2, int a3)
{
  v6 = a1 + 38;
  (*(*a1 + 168))(a1);
  kaldi::CuMatrixBase<float>::Write((a1 + 26), a2, a3, 0);

  kaldi::CuVectorBase<float>::Write(v6, a2, a3, v7, v8);
}

void *kaldi::nnet1::ConvolutionalComponent::PropagateFnc(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 2);
  v6 = *(result + 24);
  v37 = *(a2 + 20);
  v7 = *(result + 31);
  v8 = *(result + 30);
  v9 = (v6 - *(result + 22)) / *(result + 23);
  if (result[39] == result[38])
  {
    std::vector<kaldi::CuMatrix<float>>::resize(result + 38, v9 + 1);
    result = std::vector<kaldi::CuMatrix<float>>::resize(v4 + 41, v9 + 1);
    if (v9 < 0)
    {
      return result;
    }
  }

  else if (v9 < 0)
  {
    return result;
  }

  v34 = v7;
  v35 = v8;
  v10 = 0;
  v38 = (v9 + 1);
  v39 = v5 / v6;
  do
  {
    kaldi::CuMatrix<float>::Resize(v4[38] + 48 * v10, v37, v8, 0, 0);
    __src = 0;
    v41 = 0uLL;
    if (v39 < 1)
    {
      v28 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v4 + 22);
      do
      {
        if (v15 >= 1)
        {
          for (i = 0; i < v15; ++i)
          {
            v17 = i + v14 * *(v4 + 24) + v10 * *(v4 + 23);
            if (v13 >= *(&v41 + 1))
            {
              v18 = __src;
              v19 = v13 - __src;
              v20 = (v13 - __src) >> 2;
              v21 = v20 + 1;
              if ((v20 + 1) >> 62)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v22 = *(&v41 + 1) - __src;
              if ((*(&v41 + 1) - __src) >> 1 > v21)
              {
                v21 = v22 >> 1;
              }

              if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v23 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v21;
              }

              if (v23)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v23);
              }

              v24 = v20;
              v25 = (4 * v20);
              v26 = &v25[-v24];
              *v25 = v17;
              v13 = (v25 + 1);
              memcpy(v26, v18, v19);
              v27 = __src;
              __src = v26;
              v41 = v13;
              if (v27)
              {
                operator delete(v27);
              }
            }

            else
            {
              *v13 = v17;
              v13 += 4;
            }

            *&v41 = v13;
            v15 = *(v4 + 22);
          }
        }

        ++v14;
      }

      while (v14 != v39);
      v28 = (v13 - __src) >> 2;
      v8 = v35;
    }

    if (v28 != v8)
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0x14D, "column_mask.size() == filter_dim", v12);
    }

    kaldi::CuMatrixBase<float>::CopyCols(v4[38] + 48 * v10, a2, &__src, v11, v12);
    if (__src)
    {
      *&v41 = __src;
      operator delete(__src);
    }

    ++v10;
  }

  while (v10 != v38);
  v29 = 0;
  v30 = 0;
  do
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__src, a3, 0, *(a3 + 20), v30, v34);
    kaldi::CuMatrixBase<float>::AddVecToRows(&__src, (v4 + 19), v31, v32, v33, 1.0, 0.0);
    kaldi::CuMatrixBase<float>::AddMatMat(&__src, v4[38] + v29, 111, (v4 + 13), 0x70);
    __src = &unk_1F42BFE90;
    v41 = 0u;
    v42 = 0u;
    result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&__src);
    v30 = (v30 + v34);
    v29 += 48;
  }

  while (48 * v38 != v29);
  return result;
}

void sub_1C3083A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *kaldi::nnet1::ConvolutionalComponent::BackpropagateFnc(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[24];
  v6 = (v5 - result[22]) / result[23];
  if ((v6 & 0x80000000) == 0)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v20 = *(a2 + 20);
    v13 = result[30];
    v12 = result[31];
    v19 = (v6 + 1);
    v14 = result[2] / v5;
    do
    {
      kaldi::CuMatrix<float>::Resize(*(v9 + 41) + v10, v20, v13, 0, 0);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v24, a4, 0, *(a4 + 20), v11, v12);
      kaldi::CuMatrixBase<float>::AddMatMat(*(v9 + 41) + v10, &v24, 111, (v9 + 26), 0x6F);
      v24 = &unk_1F42BFE90;
      v25 = 0u;
      v26 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v24);
      v11 = (v11 + v12);
      v10 += 48;
    }

    while (48 * v19 != v10);
    v15 = 0;
    do
    {
      if (v14 >= 1)
      {
        for (i = 0; i != v14; ++i)
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v24, *(v9 + 41) + 48 * v15, 0, *(*(v9 + 41) + 48 * v15 + 20), (v9[22] * i), v9[22]);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v21, a5, 0, *(a5 + 20), (v9[23] * v15 + v9[24] * i), v9[22]);
          kaldi::CuMatrixBase<float>::AddMat(&v21, &v24, 111, v17, v18, 1.0, 1.0);
          v21 = &unk_1F42BFE90;
          v22 = 0u;
          v23 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v21);
          v24 = &unk_1F42BFE90;
          v25 = 0u;
          v26 = 0u;
          result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v24);
        }
      }

      ++v15;
    }

    while (v15 != v19);
  }

  return result;
}

void sub_1C3083CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  a16 = &unk_1F42BFE90;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalComponent::ReadData(float *a1, uint64_t *a2, uint64_t a3)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v52, 0, 24);
    kaldi::ReadToken(a2, a3, v52, v6, v7);
    if (SHIBYTE(v52[2]) < 0)
    {
      if (v52[1] == 10)
      {
        v12 = *v52[0] == 0x694468637461503CLL && *(v52[0] + 4) == 15981;
        v13 = (a1 + 22);
        if (v12)
        {
          goto LABEL_97;
        }
      }

      if (v52[1] == 11)
      {
        v14 = *v52[0] == 0x745368637461503CLL && *(v52[0] + 3) == 0x3E70657453686374;
        v13 = (a1 + 23);
        if (v14)
        {
          goto LABEL_97;
        }
      }

      if (v52[1] == 15)
      {
        v16 = *v52[0] == 0x61526E7261654C3CLL && *(v52[0] + 7) == 0x3E66656F43657461;
        v11 = a1 + 72;
        if (v16)
        {
          goto LABEL_91;
        }
      }

      else if (v52[1] == 13)
      {
        v15 = *v52[0] == 0x745368637461503CLL && *(v52[0] + 5) == 0x3E65646972745368;
        v13 = (a1 + 24);
        if (v15)
        {
          goto LABEL_97;
        }
      }

      if (v52[1] == 9)
      {
        v19 = *v52[0] == 0x6D726F4E78614D3CLL && *(v52[0] + 8) == 62;
        v11 = a1 + 74;
        if (!v19)
        {
LABEL_47:
          if (v52[1] != 9)
          {
            if (v52[1] != 18 || (*v52[0] == 0x6E6569646172473CLL ? (v20 = *(v52[0] + 1) == 0x7079546D726F4E74) : (v20 = 0), v20 ? (v21 = *(v52[0] + 8) == 15973) : (v21 = 0), !v21))
            {
LABEL_119:
              kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 195);
              v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
              if (SHIBYTE(v52[2]) >= 0)
              {
                v48 = v52;
              }

              else
              {
                v48 = v52[0];
              }

              if (SHIBYTE(v52[2]) >= 0)
              {
                v49 = HIBYTE(v52[2]);
              }

              else
              {
                v49 = v52[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
            }

            goto LABEL_110;
          }

          v22 = v52[0];
          goto LABEL_86;
        }
      }

      else
      {
        if (v52[1] != 19)
        {
          goto LABEL_47;
        }

        v17 = *v52[0] == 0x61654C736169423CLL && *(v52[0] + 1) == 0x6F43657461526E72;
        v18 = v17 && *(v52[0] + 11) == 0x3E66656F43657461;
        v11 = a1 + 73;
        if (!v18)
        {
          goto LABEL_47;
        }
      }
    }

    else if (HIBYTE(v52[2]) <= 0xCu)
    {
      if (HIBYTE(v52[2]) != 9)
      {
        if (HIBYTE(v52[2]) == 10)
        {
          v26 = v52[0] == 0x694468637461503CLL && LOWORD(v52[1]) == 15981;
          v13 = (a1 + 22);
          if (!v26)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (HIBYTE(v52[2]) != 11)
          {
            goto LABEL_119;
          }

          v23 = v52[0] == 0x745368637461503CLL && *(v52 + 3) == 0x3E70657453686374;
          v13 = (a1 + 23);
          if (!v23)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_97;
      }

      v27 = v52[0] == 0x6D726F4E78614D3CLL && LOBYTE(v52[1]) == 62;
      v11 = a1 + 74;
      if (!v27)
      {
        v22 = v52;
LABEL_86:
        v28 = *v22;
        v29 = *(v22 + 8);
        v30 = v28 == 0x6461724778614D3CLL && v29 == 62;
        v11 = a1 + 47;
        if (!v30)
        {
          goto LABEL_119;
        }
      }
    }

    else if (HIBYTE(v52[2]) > 0x11u)
    {
      if (HIBYTE(v52[2]) == 18)
      {
        if (v52[0] != 0x6E6569646172473CLL || v52[1] != 0x7079546D726F4E74 || LOWORD(v52[2]) != 15973)
        {
          goto LABEL_119;
        }

LABEL_110:
        __p[0] = 0;
        __p[1] = 0;
        v51 = 0;
        kaldi::ReadToken(a2, a3, __p, v8, v9);
        *(a1 + 46) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_98;
      }

      if (HIBYTE(v52[2]) != 19)
      {
        goto LABEL_119;
      }

      v24 = v52[0] == 0x61654C736169423CLL && v52[1] == 0x6F43657461526E72;
      v25 = v24 && *(&v52[1] + 3) == 0x3E66656F43657461;
      v11 = a1 + 73;
      if (!v25)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if (HIBYTE(v52[2]) == 13)
      {
        v31 = v52[0] == 0x745368637461503CLL && *(v52 + 5) == 0x3E65646972745368;
        v13 = (a1 + 24);
        if (!v31)
        {
          goto LABEL_119;
        }

LABEL_97:
        kaldi::ReadBasicType<int>(a2, a3, v13);
        goto LABEL_98;
      }

      if (HIBYTE(v52[2]) != 15)
      {
        goto LABEL_119;
      }

      v10 = v52[0] == 0x61526E7261654C3CLL && *(v52 + 7) == 0x3E66656F43657461;
      v11 = a1 + 72;
      if (!v10)
      {
        goto LABEL_119;
      }
    }

LABEL_91:
    kaldi::ReadBasicType<float>(a2, a3, v11);
LABEL_98:
    if (SHIBYTE(v52[2]) < 0)
    {
      operator delete(v52[0]);
    }
  }

  kaldi::CuMatrix<float>::Read((a1 + 26), a2, a3, 0);
  kaldi::CuVector<float>::Read((a1 + 38), a2, a3, v34, v35);
  v37 = *(a1 + 2);
  v38 = *(a1 + 24);
  v39 = v37 / v38;
  if (v37 % v38)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0xCF, "input_dim_ % patch_stride_ == 0", v36);
  }

  v40 = *(a1 + 22);
  v41 = *(a1 + 23);
  v42 = v38 - v40;
  v43 = (v38 - v40) / v41;
  if (v42 % v41)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0xD2, "(patch_stride_ - patch_dim_) % patch_step_ == 0", v36);
  }

  v44 = v43 + 1;
  v45 = *(a1 + 3);
  v46 = v45 / (v43 + 1);
  if (v45 != v46 * v44)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0xD7, "output_dim_ % num_patches == 0", v36);
  }

  if (v46 != *(a1 + 31))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0xDA, "num_filters == filters_.NumRows()", v36);
  }

  if (v46 != *(a1 + 42))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0xDB, "num_filters == bias_.Dim()", v36);
  }

  if (v39 * v40 != *(a1 + 30))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0xDC, "filter_dim == filters_.NumCols()", v36);
  }
}

void *kaldi::nnet1::ConvolutionalComponent::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<PatchDim>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, a1[22]);
  kaldi::WriteToken(a2, a3, "<PatchStep>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, a1[23]);
  kaldi::WriteToken(a2, a3, "<PatchStride>", v10, v11);
  kaldi::WriteBasicType<int>(a2, a3, a1[24]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v12, v13);
  v14 = a1[72];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v15, v16);
  v17 = a1[73];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v18, v19);
  v20 = a1[74];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v21, v22);
  kaldi::nnet1::Component::TypeToMarker(a1[46], &__p);
  kaldi::WriteToken(a2, a3, &__p, v23, v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v25, v26);
  v27 = a1[47];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1C3084634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *kaldi::nnet1::ConvolutionalComponent::GetParams(_DWORD *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v10 = a1[30] * a1[31];
  v16 = 0;
  v17 = 0;
  if (v10 > *(a2 + 8) || (v15 = *a2, LODWORD(v16) = v10, kaldi::VectorBase<float>::CopyRowsFromMat(&v15, (a1 + 26), v7, v8, v9), v13 = a1[42], v16 = 0, v17 = 0, (v13 + v10) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v15 = (*a2 + 4 * v10);
  LODWORD(v16) = v13;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(a1 + 38, &v15, v11, v12, v9);
}

_DWORD *kaldi::nnet1::ConvolutionalComponent::SetParams(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0x10B, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[30] * a1[31];
  v12 = 0;
  v13 = 0;
  if (v6 > *(a2 + 8) || (v11 = *a2, LODWORD(v12) = v6, kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 26), &v11), v9 = a1[42], v12 = 0, v13 = 0, (v9 + v6) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v11 = (*a2 + 4 * v6);
  LODWORD(v12) = v9;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 38, &v11, v7, v8, v5);
}

float kaldi::nnet1::ConvolutionalComponent::SumParams(kaldi::nnet1::ConvolutionalComponent *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = kaldi::CuMatrixBase<float>::Sum(this + 104, a2, a3, a4, a5);
  v7 = kaldi::CuVectorBase<float>::Sum(this + 152);
  return v6 + *&v7;
}

uint64_t kaldi::nnet1::ConvolutionalComponent::PerturbParams(kaldi::nnet1::ConvolutionalComponent *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v15, *(this + 31), *(this + 30), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v15);
  kaldi::CuMatrixBase<float>::AddMat(this + 104, v15, 111, v4, v5, a2, 1.0);
  kaldi::CuVector<float>::CuVector(v14, this + 152, v6, v7, v8);
  kaldi::CuVectorBase<float>::SetRandn(v14);
  *&v9 = a2;
  kaldi::CuVectorBase<float>::AddVec(this + 152, v14, v10, v11, v12, v9, 1.0);
  kaldi::CuVector<float>::~CuVector(v14);
  return kaldi::CuMatrix<float>::~CuMatrix(v15);
}

void sub_1C3084938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalComponent::GetGradient(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v12 = a1[30] * a1[31];
  v18 = 0;
  v19 = 0;
  if (v12 > *(a4 + 8) || (v17 = *a4, LODWORD(v18) = v12, kaldi::VectorBase<float>::CopyRowsFromMat(&v17, *(v8 + 192), v9, v10, v11), v15 = a1[42], v18 = 0, v19 = 0, (v15 + v12) > *(a4 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v11);
  }

  v17 = *a4 + 4 * v12;
  LODWORD(v18) = v15;
  kaldi::CuVectorBase<float>::CopyToVec<float>(*(v8 + 216), &v17, v13, v14, v11);
  return (*(*v8 + 8))(v8);
}

void kaldi::nnet1::ConvolutionalComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::ConvolutionalComponent::EnsureCorrs(a1);
  v10 = *(a1 + 92);
  v11 = *(a1 + 96) - *(a1 + 88);
  v12 = *(a1 + 124);
  v13 = *(a2 + 20);
  v14 = a5;
  *(*(a1 + 352) + 4 * a5) = v13;
  v15 = *(a1 + 192) + 48 * a5;
  *(*(a1 + 216) + 32 * a5 + 24) = a4;
  *(v15 + 32) = a4;
  v16 = v11 / v10;
  kaldi::CuMatrixBase<float>::SetZero(v15);
  kaldi::CuVectorBase<float>::SetZero(*(a1 + 216) + 32 * a5);
  if ((v16 & 0x80000000) == 0)
  {
    v17 = 0;
    v18 = 0;
    v19 = 48 * (v16 + 1);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v23, a3, 0, *(a3 + 20), v18, v12);
      kaldi::CuMatrixBase<float>::AddMatMat(*(a1 + 192) + 48 * v14, &v23, 112, *(a1 + 304) + v17, 0x6F);
      kaldi::CuVectorBase<float>::AddRowSumMat(*(a1 + 216) + 32 * v14, &v23, v20, v21, v22);
      v23 = &unk_1F42BFE90;
      v24 = 0u;
      v25 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v23);
      v18 = (v18 + v12);
      v17 += 48;
    }

    while (v19 != v17);
  }
}

void sub_1C3084C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10 = &unk_1F42BFE90;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalComponent::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 188) = a3;
  *(result + 184) = a2;
  *(result + 376) = 0;
  return result;
}

void kaldi::nnet1::ConvolutionalComponent::NormalizeGradients(kaldi::nnet1::ConvolutionalComponent *this, float a2, int a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = a2;
  v8 = *(this + 46);
  if (v8 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      v12 = a3;
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 24) + 48 * a3, *(this + 30) + 48 * a3, a2);
      v16 = *(this + 27) + 32 * v12;
      v17 = *(this + 33) + 32 * v12;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v16, v17, v6, v13, v14, v15);
    }
  }

  else if (v8 == 2)
  {
    if (a2 > 0.0)
    {
      v10 = a3;
      if (*(this + 84))
      {
        v6 = *(*(this + 44) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 24) + 48 * a3, (*(this + 30) + 48 * a3), v6, a4, a5, a6);
      v21 = *(this + 27) + 32 * v10;
      v22 = (*(this + 33) + 32 * v10);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, v22, v18, v19, v20, v6);
    }
  }

  else if (v8 == 1 && a2 > 0.0)
  {
    v9 = a3;
    if (*(this + 84))
    {
      v6 = *(*(this + 44) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 24) + 48 * a3, v6);
    v23 = *(this + 27) + 32 * v9;

    kaldi::nnet1::UpdatableComponent::ClipGradient(v23, v6);
  }
}

void kaldi::nnet1::ConvolutionalComponent::UpdateWeights(kaldi::nnet1::ConvolutionalComponent *this, void *a2, int a3)
{
  kaldi::nnet1::ConvolutionalComponent::EnsureCorrs(this);
  v8 = *(this + 20);
  if (a3 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(this + 20);
  }

  if (v8 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v10 > v8)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-component.h", 0x1BA, "batch_idx <= opts_.num_subbatches", v7);
  }

  v11 = *(this + 23);
  v12 = *(this + 24) - *(this + 22);
  v13 = *(this + 14);
  v14 = *(this + 24);
  *(*(this + 27) + 32 * v10 + 24) = a2;
  v15 = *(this + 30) + 48 * v10;
  v16 = v14 + 48 * v10;
  *(v16 + 32) = a2;
  *(v15 + 32) = a2;
  *(*(this + 33) + 32 * v10 + 24) = a2;
  v17 = v12 / v11;
  if (v10 == v8)
  {
    kaldi::CuMatrixBase<float>::AddMat(v16, v14, 111, v6, v7, 1.0, 0.0);
    LODWORD(v18) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(*(this + 27) + 32 * v10, *(this + 27), v19, v20, v21, v18, 0.0);
    if (*(this + 20) > 1)
    {
      v24 = 1;
      v25 = 32;
      v26 = 48;
      do
      {
        kaldi::CuMatrixBase<float>::AddMat(*(this + 24) + 48 * v10, *(this + 24) + v26, 111, v22, v23, 1.0, 1.0);
        LODWORD(v27) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(*(this + 27) + 32 * v10, *(this + 27) + v25, v28, v29, v30, v27, 1.0);
        ++v24;
        v26 += 48;
        v25 += 32;
      }

      while (v24 < *(this + 20));
    }

    v31 = *(this + 44);
    v31[v10] = 0;
    if (v8 >= 1)
    {
      v32 = 0;
      v33 = v31;
      do
      {
        v34 = *v33++;
        v32 += v34;
        v31[v10] = v32;
        --v8;
      }

      while (v8);
    }
  }

  if (*(this + 84) == 1)
  {
    v13 = v13 / *(*(this + 44) + 4 * v10);
  }

  v35 = 1.0 / (v17 + 1);
  kaldi::CuMatrixBase<float>::Scale(*(this + 24) + 48 * v10, v35);
  kaldi::CuVectorBase<float>::Scale(*(this + 27) + 32 * v10);
  if (*(this + 47) >= 0.0)
  {
    (*(*this + 248))(this, v10);
  }

  *(this + 17) = a2;
  *(this + 22) = a2;
  kaldi::CuMatrixBase<float>::AddMat(this + 104, *(this + 24) + 48 * v10, 111, v36, v37, -(v13 * *(this + 72)), 1.0);
  *&v38 = -(v13 * *(this + 73));
  kaldi::CuVectorBase<float>::AddVec(this + 152, *(this + 27) + 32 * v10, v39, v40, v41, v38, 1.0);
  if (*(this + 74) > 0.0)
  {
    kaldi::CuMatrix<float>::CuMatrix(v63, this + 104, 111);
    kaldi::CuMatrixBase<float>::MulElements(v63, this + 104, v42, v43, v44);
    v45 = *(this + 31);
    v61[2] = 0;
    v62 = 0;
    v61[0] = &unk_1F42BFF70;
    v61[1] = 0;
    kaldi::CuVector<float>::Resize(v61, v45, 0, v46, v47);
    v62 = a2;
    kaldi::CuVectorBase<float>::AddColSumMat(v61, v63, v48, v49, v50);
    kaldi::CuVectorBase<float>::ApplyPow(v61, 0.5);
    kaldi::CuVector<float>::CuVector(v60, v61, v51, v52, v53);
    v54 = 1.0 / *(this + 74);
    kaldi::CuVectorBase<float>::Scale(v60);
    kaldi::CuVectorBase<float>::ApplyFloor(v60, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(v60);
    kaldi::CuMatrixBase<float>::MulRowsVec(this + 104, v60, v55, v56, v57);
    kaldi::CuVector<float>::~CuVector(v60);
    kaldi::CuVector<float>::~CuVector(v61);
    kaldi::CuMatrix<float>::~CuMatrix(v63);
  }

  v58 = *(this + 44);
  if (v10 == *(this + 20))
  {
    v59 = *(this + 45);
    if (v58 != v59)
    {
      bzero(v58, v59 - v58);
    }
  }

  else
  {
    *&v58[4 * v10] = 0;
  }
}

void sub_1C3085180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  kaldi::CuVector<float>::~CuVector(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MaxPoolingComponent::InitData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v6 = a2 + 4;
  v7 = a1 + 14;
  v8 = a1 + 13;
  v9 = a1 + 12;
  while (1)
  {
    if ((*(v6 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_43;
    }

    kaldi::ReadToken(a2, 0, &v29, a4, a5);
    if (SHIBYTE(v31) < 0)
    {
      break;
    }

    if (HIBYTE(v31) != 10)
    {
      if (HIBYTE(v31) != 12)
      {
        goto LABEL_49;
      }

      v10 = &v29;
      goto LABEL_18;
    }

    v17 = v29 == 0x7A69536C6F6F503CLL && v30 == 15973;
    v12 = v9;
    if (!v17)
    {
      v18 = v29 == 0x6574536C6F6F503CLL && v30 == 15984;
      v12 = v8;
      if (!v18)
      {
        goto LABEL_49;
      }
    }

LABEL_32:
    kaldi::ReadBasicType<int>(a2, 0, v12);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v30 == 10)
  {
    v11 = *v29 == 0x7A69536C6F6F503CLL && v29[4] == 15973;
    v12 = v9;
    if (v11)
    {
      goto LABEL_32;
    }

    v13 = *v29 == 0x6574536C6F6F503CLL && v29[4] == 15984;
    v12 = v8;
    if (v13)
    {
      goto LABEL_32;
    }
  }

  if (v30 != 12)
  {
    goto LABEL_49;
  }

  v10 = v29;
LABEL_18:
  v14 = *v10;
  v15 = *(v10 + 2);
  v16 = v14 == 0x7274536C6F6F503CLL && v15 == 1046832233;
  v12 = v7;
  if (v16)
  {
    goto LABEL_32;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v31) == 12)
    {
      v19 = &v29;
      goto LABEL_38;
    }

    goto LABEL_49;
  }

  if (v30 != 12)
  {
    goto LABEL_49;
  }

  v19 = v29;
LABEL_38:
  v20 = *v19;
  v21 = *(v19 + 2);
  if (v20 != 0x6E6F706D6F432F3CLL || v21 != 1047817829)
  {
LABEL_49:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-component.h", 61);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Unknown token ", 14);
    if (v31 >= 0)
    {
      v24 = &v29;
    }

    else
    {
      v24 = v29;
    }

    if (v31 >= 0)
    {
      v25 = HIBYTE(v31);
    }

    else
    {
      v25 = v30;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " (PoolSize|PoolStep|PoolStride)", 31);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

LABEL_43:
  if (!*v9 || !*v8 || !*v7)
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-component.h", 0x42, "pool_size_ != 0 && pool_step_ != 0 && pool_stride_ != 0", a5);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }
}

void sub_1C3085570(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MaxPoolingComponent::WriteData(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<PoolSize>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<PoolStep>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<PoolStride>", v10, v11);
  v12 = a1[14];

  return kaldi::WriteBasicType<int>(a2, a3, v12);
}

_DWORD *kaldi::nnet1::MaxPoolingComponent::PropagateFnc(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = (result[2] / result[14] - result[12]) / result[13];
  if ((v3 & 0x80000000) == 0)
  {
    v6 = result;
    v7 = 0;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v17, a3, 0, *(a3 + 20), (v6[14] * v7), v6[14]);
      v8.i32[0] = -525502228;
      kaldi::CuMatrixBase<float>::Set(&v17, v8);
      if (v6[12] >= 1)
      {
        v9 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a2, 0, *(a2 + 20), ((v9 + v7 * v6[13]) * v6[14]), v6[14]);
          kaldi::CuMatrixBase<float>::Max(&v17, &v14, v10, v11, v12);
          v14 = &unk_1F42BFE90;
          v15 = 0u;
          v16 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v14);
          ++v9;
        }

        while (v9 < v6[12]);
      }

      v17 = &unk_1F42BFE90;
      v18 = 0u;
      v19 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v17);
    }

    while (v7++ != v3);
  }

  return result;
}

void sub_1C308579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  a14 = &unk_1F42BFE90;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MaxPoolingComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[13];
  v11 = (a1[2] / a1[14]);
  v12 = a1[12];
  LODWORD(v35) = 0;
  std::vector<int>::vector[abi:ne200100](v47, v11);
  kaldi::CuMatrixBase<float>::SetZero(a5);
  v29 = v11;
  v30 = (v11 - v12) / v10;
  if ((v30 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = a1[12];
    do
    {
      if (v14 >= 1)
      {
        v15 = 0;
        do
        {
          v16 = v13 * a1[13];
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v44, a2, 0, *(a2 + 20), ((v15 + v16) * a1[14]), a1[14]);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, a3, 0, *(a3 + 20), (a1[14] * v13), a1[14]);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v38, a5, 0, *(a5 + 20), (a1[14] * (v15 + v16)), a1[14]);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v31, a4, 0, *(a4 + 20), (a1[14] * v13), a1[14]);
          kaldi::CuMatrix<float>::CuMatrix(&v35, &v31, 111);
          v31 = &unk_1F42BFE90;
          v32 = 0u;
          v33 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v31);
          v33 = 0u;
          v32 = 0u;
          v31 = &unk_1F42BFED8;
          v34 = 0;
          kaldi::CuMatrixBase<float>::EqualElementMask(&v44, &v41, &v31, v17, v18);
          kaldi::CuMatrixBase<float>::MulElements(&v35, &v31, v19, v20, v21);
          kaldi::CuMatrixBase<float>::AddMat(&v38, &v35, 111, v22, v23, 1.0, 1.0);
          ++*(v47[0] + v15 + v16);
          kaldi::CuMatrix<float>::~CuMatrix(&v31);
          kaldi::CuMatrix<float>::~CuMatrix(&v35);
          v38 = &unk_1F42BFE90;
          v39 = 0u;
          v40 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v38);
          v41 = &unk_1F42BFE90;
          v42 = 0u;
          v43 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v41);
          v44 = &unk_1F42BFE90;
          v45 = 0u;
          v46 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v44);
          v14 = a1[12];
          ++v15;
        }

        while (v15 < v14);
      }
    }

    while (v13++ != v30);
  }

  if (v29 >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v35, a5, 0, *(a5 + 20), (a1[14] * i), a1[14]);
      v27 = *(v47[0] + i);
      if (v27 <= 0)
      {
        kaldi::KaldiAssertFailure_("BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-component.h", 0xA1, "patch_summands[p] > 0", v26);
      }

      v28 = 1.0 / v27;
      kaldi::CuMatrixBase<float>::Scale(&v35, v28);
      v35 = &unk_1F42BFE90;
      v36 = 0u;
      v37 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v35);
    }
  }

  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }
}

void sub_1C3085B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MaxPoolingComponent::ReadData(_DWORD *a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<PoolSize>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 12));
  kaldi::ExpectToken(a2, a3, "<PoolStep>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 13));
  kaldi::ExpectToken(a2, a3, "<PoolStride>");
  result = kaldi::ReadBasicType<int>(a2, a3, (a1 + 14));
  v8 = a1[2];
  v9 = a1[14];
  if (v8 % v9)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-component.h", 0x52, "input_dim_ % pool_stride_ == 0", v7);
  }

  v10 = a1[13];
  v11 = v8 / v9 - a1[12];
  if (v11 % v10)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-component.h", 0x55, "(num_patches - pool_size_) % pool_step_ == 0", v7);
  }

  if (a1[3] != v9 + v9 * (v11 / v10))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-component.h", 0x58, "output_dim_ == num_pools * pool_stride_", v7);
  }

  return result;
}

uint64_t kaldi::nnet1::TemporalMaxPoolingComponent::PropagateFnc(int16x4_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (*(a4 + 20) != 1)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-temporal-max-pooling-component.h", 0x32, "out->NumRows() == 1", a6);
  }

  a1.i32[0] = -525502228;
  result = kaldi::CuMatrixBase<float>::Set(a4, a1);
  if (*(a3 + 20) >= 1)
  {
    v9 = 0;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v13, a3, v9, 1, 0, *(a3 + 16));
      kaldi::CuMatrixBase<float>::Max(a4, &v13, v10, v11, v12);
      v13 = &unk_1F42BFE90;
      v14 = 0u;
      v15 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v13);
      ++v9;
    }

    while (v9 < *(a3 + 20));
  }

  return result;
}

void sub_1C3085FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10 = &unk_1F42BFE90;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::TemporalMaxPoolingComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 20) != 1)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-temporal-max-pooling-component.h", 0x3F, "out.NumRows() == 1", a5);
  }

  if (*(a4 + 20) != 1)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-temporal-max-pooling-component.h", 0x40, "out_diff.NumRows() == 1", a5);
  }

  v23 = 0u;
  v22 = 0u;
  v21 = &unk_1F42BFED8;
  v24 = 0;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v18 = *(a3 + 8);
  v17 = &unk_1F42BFF30;
  v19 = v7;
  v20 = v8;
  kaldi::CuMatrixBase<float>::EqualElementColMask(a2, &v17, &v21, a4, a5);
  if (!*(a4 + 20))
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v11);
  }

  v12 = *(a4 + 16);
  v13 = *(a4 + 32);
  v18 = *(a4 + 8);
  v17 = &unk_1F42BFF30;
  v19 = v12;
  v20 = v13;
  kaldi::CuMatrixBase<float>::MulColsVec(&v21, &v17, v9, v10, v11);
  kaldi::CuMatrixBase<float>::AddMat(a5, &v21, 111, v14, v15, 1.0, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(&v21);
}

void sub_1C30861C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AveragePooling2DComponent::InitData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v37 = 0uLL;
  v38 = 0;
  v6 = a2 + 4;
  v7 = a1 + 17;
  v8 = a1 + 16;
  v34 = a1 + 15;
  v35 = a1 + 14;
  v9 = a1 + 13;
  v10 = a1 + 12;
  while (1)
  {
    if ((*(v6 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_70;
    }

    kaldi::ReadToken(a2, 0, &v37, a4, a5);
    if (SHIBYTE(v38) < 0)
    {
      break;
    }

    if (HIBYTE(v38) == 10)
    {
      v18 = v37 == 0x654C5870616D463CLL && WORD4(v37) == 15982;
      v12 = v10;
      if (!v18)
      {
        v19 = v37 == 0x654C5970616D463CLL && WORD4(v37) == 15982;
        v12 = v9;
        if (!v19)
        {
          v20 = v37 == 0x654C586C6F6F503CLL && WORD4(v37) == 15982;
          v12 = v35;
          if (!v20)
          {
            v21 = v37 == 0x654C596C6F6F503CLL && WORD4(v37) == 15982;
            v12 = v34;
            if (!v21)
            {
              goto LABEL_75;
            }
          }
        }
      }

      goto LABEL_59;
    }

    if (HIBYTE(v38) != 11)
    {
      if (HIBYTE(v38) == 12)
      {
        v13 = &v37;
        goto LABEL_65;
      }

      goto LABEL_75;
    }

    v11 = v37 == 0x7453586C6F6F503CLL && *(&v37 + 3) == 0x3E70657453586C6FLL;
    v12 = v8;
    if (!v11)
    {
      v13 = &v37;
LABEL_54:
      v23 = *v13;
      v24 = *(v13 + 3);
      v25 = v23 == 0x7453596C6F6F503CLL && v24 == 0x3E70657453596C6FLL;
      v12 = v7;
      if (!v25)
      {
        if (v38 < 0)
        {
LABEL_63:
          if (*(&v37 + 1) == 12)
          {
            v13 = v37;
            goto LABEL_65;
          }
        }

        goto LABEL_75;
      }
    }

LABEL_59:
    kaldi::ReadBasicType<int>(a2, 0, v12);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (*(&v37 + 1) == 10)
  {
    v14 = *v37 == 0x654C5870616D463CLL && *(v37 + 8) == 15982;
    v12 = v10;
    if (v14)
    {
      goto LABEL_59;
    }

    v15 = *v37 == 0x654C5970616D463CLL && *(v37 + 8) == 15982;
    v12 = v9;
    if (v15)
    {
      goto LABEL_59;
    }

    v16 = *v37 == 0x654C586C6F6F503CLL && *(v37 + 8) == 15982;
    v12 = v35;
    if (v16)
    {
      goto LABEL_59;
    }

    v17 = *v37 == 0x654C596C6F6F503CLL && *(v37 + 8) == 15982;
    v12 = v34;
    if (v17)
    {
      goto LABEL_59;
    }
  }

  if (*(&v37 + 1) != 11)
  {
    goto LABEL_63;
  }

  v13 = v37;
  v22 = *v37 == 0x7453586C6F6F503CLL && *(v37 + 3) == 0x3E70657453586C6FLL;
  v12 = v8;
  if (v22)
  {
    goto LABEL_59;
  }

  if (v38 < 0)
  {
    goto LABEL_54;
  }

  v13 = &v37;
  if (HIBYTE(v38) == 11)
  {
    goto LABEL_54;
  }

  if (HIBYTE(v38) != 12)
  {
    goto LABEL_75;
  }

LABEL_65:
  v26 = *v13;
  v27 = *(v13 + 2);
  if (v26 != 0x6E6F706D6F432F3CLL || v27 != 1047817829)
  {
LABEL_75:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-2d-component.h", 74);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Unknown token ", 14);
    if (v38 >= 0)
    {
      v30 = &v37;
    }

    else
    {
      v30 = v37;
    }

    if (v38 >= 0)
    {
      v31 = HIBYTE(v38);
    }

    else
    {
      v31 = *(&v37 + 1);
    }

    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " (FmapXLen|FmapYLen|PoolXLen|PoolYLen|PoolXStep|PoolYStep)", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

LABEL_70:
  if (!(*v9 * *v10 * *v35 * *v34 * *v8 * *v7))
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-2d-component.h", 0x4F, "fmap_x_len_ * fmap_y_len_ * pool_x_len_ * pool_y_len_ * pool_x_step_ * pool_y_step_ != 0", a5);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1C30866F0(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::AveragePooling2DComponent::WriteData(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<FmapXLen>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<FmapYLen>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<PoolXLen>", v10, v11);
  kaldi::WriteBasicType<int>(a2, a3, a1[14]);
  kaldi::WriteToken(a2, a3, "<PoolYLen>", v12, v13);
  kaldi::WriteBasicType<int>(a2, a3, a1[15]);
  kaldi::WriteToken(a2, a3, "<PoolXStep>", v14, v15);
  kaldi::WriteBasicType<int>(a2, a3, a1[16]);
  kaldi::WriteToken(a2, a3, "<PoolYStep>", v16, v17);
  v18 = a1[17];

  return kaldi::WriteBasicType<int>(a2, a3, v18);
}

uint64_t kaldi::nnet1::AveragePooling2DComponent::PropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[12];
  v6 = a1[13];
  v8 = a1[2] / (v6 * v7);
  v22 = a1[15];
  v23 = a1[14];
  v10 = a1[16];
  v9 = a1[17];
  kaldi::CuMatrixBase<float>::SetZero(a3);
  if (v8 >= 1)
  {
    v27 = (v7 - v23) / v10;
    v24 = (v6 - v22) / v9;
    for (i = 0; i != v8; ++i)
    {
      if ((v24 & 0x80000000) == 0)
      {
        v26 = 0;
        do
        {
          if ((v27 & 0x80000000) == 0)
          {
            v11 = 0;
            do
            {
              kaldi::CuSubMatrix<float>::CuSubMatrix(&v31, a3, 0, *(a3 + 20), (v11 + (v26 + i * (v24 + 1)) * (v27 + 1)), 1);
              v12 = a1[15];
              if (v12 >= 1)
              {
                v13 = 0;
                v14 = a1[14];
                v15 = a1[12] * (v26 * a1[17] + i * a1[13]) + a1[16] * v11;
                do
                {
                  if (v14 >= 1)
                  {
                    for (j = 0; j < v14; ++j)
                    {
                      kaldi::CuSubMatrix<float>::CuSubMatrix(&v28, a2, 0, *(a2 + 20), (v15 + j + v13 * a1[12]), 1);
                      kaldi::CuMatrixBase<float>::AddMat(&v31, &v28, 111, v17, v18, 1.0, 1.0);
                      v28 = &unk_1F42BFE90;
                      v29 = 0u;
                      v30 = 0u;
                      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v28);
                      v14 = a1[14];
                    }

                    v12 = a1[15];
                  }

                  ++v13;
                }

                while (v13 < v12);
              }

              v31 = &unk_1F42BFE90;
              v32 = 0u;
              v33 = 0u;
              kaldi::CuMatrixBase<float>::~CuMatrixBase(&v31);
              v19 = v11++ == v27;
            }

            while (!v19);
          }

          v19 = v26++ == v24;
        }

        while (!v19);
      }
    }
  }

  v20 = 1.0 / (v22 * v23);
  return kaldi::CuMatrixBase<float>::Scale(a3, v20);
}

void sub_1C3086A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  a20 = &unk_1F42BFE90;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a20);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AveragePooling2DComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[12];
  v8 = a1[13];
  v10 = a1[2] / (v8 * v9);
  v11 = a1[14];
  v12 = a1[15];
  v14 = a1[16];
  v13 = a1[17];
  kaldi::CuMatrixBase<float>::SetZero(a5);
  if (v10 >= 1)
  {
    v28 = (v9 - v11) / v14;
    v25 = (v8 - v12) / v13;
    v26 = 0;
    v15 = 1.0 / (v12 * v11);
    do
    {
      if ((v25 & 0x80000000) == 0)
      {
        v27 = 0;
        do
        {
          if ((v28 & 0x80000000) == 0)
          {
            v16 = 0;
            do
            {
              kaldi::CuSubMatrix<float>::CuSubMatrix(&v32, a4, 0, *(a4 + 20), (v16 + (v27 + v26 * (v25 + 1)) * (v28 + 1)), 1);
              v17 = a1[15];
              if (v17 >= 1)
              {
                v18 = 0;
                v19 = a1[14];
                v20 = a1[12] * (v27 * a1[17] + v26 * a1[13]) + a1[16] * v16;
                do
                {
                  if (v19 >= 1)
                  {
                    for (i = 0; i < v19; ++i)
                    {
                      kaldi::CuSubMatrix<float>::CuSubMatrix(&v29, a5, 0, *(a5 + 20), (v20 + i + v18 * a1[12]), 1);
                      kaldi::CuMatrixBase<float>::AddMat(&v29, &v32, 111, v22, v23, v15, 1.0);
                      v29 = &unk_1F42BFE90;
                      v30 = 0u;
                      v31 = 0u;
                      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v29);
                      v19 = a1[14];
                    }

                    v17 = a1[15];
                  }

                  ++v18;
                }

                while (v18 < v17);
              }

              v32 = &unk_1F42BFE90;
              v33 = 0u;
              v34 = 0u;
              kaldi::CuMatrixBase<float>::~CuMatrixBase(&v32);
              v24 = v16++ == v28;
            }

            while (!v24);
          }

          v24 = v27++ == v25;
        }

        while (!v24);
      }

      ++v26;
    }

    while (v26 != v10);
  }
}

void sub_1C3086D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  a18 = &unk_1F42BFE90;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a18);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AveragePooling2DComponent::ReadData(_DWORD *a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<FmapXLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 12));
  kaldi::ExpectToken(a2, a3, "<FmapYLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 13));
  kaldi::ExpectToken(a2, a3, "<PoolXLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 14));
  kaldi::ExpectToken(a2, a3, "<PoolYLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 15));
  kaldi::ExpectToken(a2, a3, "<PoolXStep>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 16));
  kaldi::ExpectToken(a2, a3, "<PoolYStep>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 17));
  v7 = a1[2];
  v8 = a1[12];
  v9 = a1[13] * v8;
  v10 = (v7 / v9);
  if (v7 % v9)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-2d-component.h", 0x66, "input_dim_ % (fmap_x_len_ * fmap_y_len_) == 0", v6);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v20, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-2d-component.h", 104);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "num_fmaps ", 10);
    MEMORY[0x1C692A960](v11, v10);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v20);
    v8 = a1[12];
  }

  v12 = v8 - a1[14];
  v13 = a1[16];
  v14 = v12 / v13;
  if (v12 % v13)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-2d-component.h", 0x6A, "(fmap_x_len_ - pool_x_len_) % (pool_x_step_) == 0", v6);
  }

  v15 = a1[13] - a1[15];
  v16 = a1[17];
  v17 = v15 / v16;
  if (v15 % v16)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-2d-component.h", 0x6B, "(fmap_y_len_ - pool_y_len_) % (pool_y_step_) == 0", v6);
  }

  v18 = a1[3];
  v19 = v14 + 1 + (v14 + 1) * v17;
  if (v18 % v19)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-2d-component.h", 0x70, "output_dim_ % (out_fmap_x_len * out_fmap_y_len) == 0", v6);
  }

  if (v10 != v18 / v19)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-average-pooling-2d-component.h", 0x72, "num_input_fmaps == num_output_fmaps", v6);
  }
}

void kaldi::nnet1::MaxPooling2DComponent::InitData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v39 = 0uLL;
  v40 = 0;
  v7 = a2 + 4;
  v8 = a1 + 17;
  v9 = a1 + 16;
  v36 = a1 + 15;
  v37 = a1 + 14;
  v10 = a1 + 13;
  v11 = a1 + 12;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_70;
    }

    kaldi::ReadToken(a2, 0, &v39, a4, a5);
    if (SHIBYTE(v40) < 0)
    {
      break;
    }

    if (HIBYTE(v40) == 10)
    {
      v19 = v39 == 0x654C5870616D463CLL && WORD4(v39) == 15982;
      v13 = v11;
      if (!v19)
      {
        v20 = v39 == 0x654C5970616D463CLL && WORD4(v39) == 15982;
        v13 = v10;
        if (!v20)
        {
          v21 = v39 == 0x654C586C6F6F503CLL && WORD4(v39) == 15982;
          v13 = v37;
          if (!v21)
          {
            v22 = v39 == 0x654C596C6F6F503CLL && WORD4(v39) == 15982;
            v13 = v36;
            if (!v22)
            {
              goto LABEL_76;
            }
          }
        }
      }

      goto LABEL_59;
    }

    if (HIBYTE(v40) != 11)
    {
      if (HIBYTE(v40) == 12)
      {
        v14 = &v39;
        goto LABEL_65;
      }

      goto LABEL_76;
    }

    v12 = v39 == 0x7453586C6F6F503CLL && *(&v39 + 3) == 0x3E70657453586C6FLL;
    v13 = v9;
    if (!v12)
    {
      v14 = &v39;
LABEL_54:
      v24 = *v14;
      v25 = *(v14 + 3);
      v26 = v24 == 0x7453596C6F6F503CLL && v25 == 0x3E70657453596C6FLL;
      v13 = v8;
      if (!v26)
      {
        if (v40 < 0)
        {
LABEL_63:
          if (*(&v39 + 1) == 12)
          {
            v14 = v39;
            goto LABEL_65;
          }
        }

        goto LABEL_76;
      }
    }

LABEL_59:
    kaldi::ReadBasicType<int>(a2, 0, v13);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (*(&v39 + 1) == 10)
  {
    v15 = *v39 == 0x654C5870616D463CLL && *(v39 + 8) == 15982;
    v13 = v11;
    if (v15)
    {
      goto LABEL_59;
    }

    v16 = *v39 == 0x654C5970616D463CLL && *(v39 + 8) == 15982;
    v13 = v10;
    if (v16)
    {
      goto LABEL_59;
    }

    v17 = *v39 == 0x654C586C6F6F503CLL && *(v39 + 8) == 15982;
    v13 = v37;
    if (v17)
    {
      goto LABEL_59;
    }

    v18 = *v39 == 0x654C596C6F6F503CLL && *(v39 + 8) == 15982;
    v13 = v36;
    if (v18)
    {
      goto LABEL_59;
    }
  }

  if (*(&v39 + 1) != 11)
  {
    goto LABEL_63;
  }

  v14 = v39;
  v23 = *v39 == 0x7453586C6F6F503CLL && *(v39 + 3) == 0x3E70657453586C6FLL;
  v13 = v9;
  if (v23)
  {
    goto LABEL_59;
  }

  if (v40 < 0)
  {
    goto LABEL_54;
  }

  v14 = &v39;
  if (HIBYTE(v40) == 11)
  {
    goto LABEL_54;
  }

  if (HIBYTE(v40) != 12)
  {
    goto LABEL_76;
  }

LABEL_65:
  v27 = *v14;
  v28 = *(v14 + 2);
  if (v27 != 0x6E6F706D6F432F3CLL || v28 != 1047817829)
  {
LABEL_76:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-2d-component.h", 120);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Unknown token ", 14);
    if (v40 >= 0)
    {
      v32 = &v39;
    }

    else
    {
      v32 = v39;
    }

    if (v40 >= 0)
    {
      v33 = HIBYTE(v40);
    }

    else
    {
      v33 = *(&v39 + 1);
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " (FmapXLen|FmapYLen|PoolXLen|PoolYLen|PoolXStep|PoolYStep)", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

LABEL_70:
  v30 = a1[13] * a1[12];
  if (a1[2] % v30)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-2d-component.h", 125);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Invalid component parameters", 28);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

  if (!(*v37 * v30 * *v36 * *v9 * *v8))
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-2d-component.h", 0x7E, "fmap_x_len_ * fmap_y_len_ * pool_x_len_ * pool_y_len_ * pool_x_step_ * pool_y_step_ != 0", a5);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }
}

void sub_1C3087564(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MaxPooling2DComponent::PropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, int16x4_t a4)
{
  v8 = a1[12];
  v7 = a1[13];
  v9 = a1[2] / (v7 * v8);
  v11 = a1[14];
  v10 = a1[15];
  v13 = a1[16];
  v12 = a1[17];
  a4.i32[0] = -525502228;
  result = kaldi::CuMatrixBase<float>::Set(a3, a4);
  if (v9 >= 1)
  {
    v28 = (v8 - v11) / v13;
    v25 = (v7 - v10) / v12;
    for (i = 0; i != v9; ++i)
    {
      if ((v25 & 0x80000000) == 0)
      {
        v27 = 0;
        do
        {
          if ((v28 & 0x80000000) == 0)
          {
            v15 = 0;
            do
            {
              kaldi::CuSubMatrix<float>::CuSubMatrix(&v32, a3, 0, *(a3 + 20), (v15 + (v27 + i * (v25 + 1)) * (v28 + 1)), 1);
              v16 = a1[15];
              if (v16 >= 1)
              {
                v17 = 0;
                v18 = a1[14];
                v19 = a1[12] * (v27 * a1[17] + i * a1[13]) + a1[16] * v15;
                do
                {
                  if (v18 >= 1)
                  {
                    for (j = 0; j < v18; ++j)
                    {
                      kaldi::CuSubMatrix<float>::CuSubMatrix(&v29, a2, 0, *(a2 + 20), (v19 + j + v17 * a1[12]), 1);
                      kaldi::CuMatrixBase<float>::Max(&v32, &v29, v21, v22, v23);
                      v29 = &unk_1F42BFE90;
                      v30 = 0u;
                      v31 = 0u;
                      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v29);
                      v18 = a1[14];
                    }

                    v16 = a1[15];
                  }

                  ++v17;
                }

                while (v17 < v16);
              }

              v32 = &unk_1F42BFE90;
              v33 = 0u;
              v34 = 0u;
              result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v32);
              v24 = v15++ == v28;
            }

            while (!v24);
          }

          v24 = v27++ == v25;
        }

        while (!v24);
      }
    }
  }

  return result;
}

void sub_1C30877BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  a18 = &unk_1F42BFE90;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a18);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MaxPooling2DComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[12];
  v8 = a1[13];
  v10 = a1[2] / (v8 * v9);
  v12 = a1[14];
  v11 = a1[15];
  v14 = a1[16];
  v13 = a1[17];
  kaldi::CuMatrixBase<float>::SetZero(a5);
  if (v10 >= 1)
  {
    v38 = (v9 - v12) / v14;
    v15 = (v8 - v11) / v13;
    v31 = v15 + 1;
    v32 = v15;
    for (i = 0; i != v10; ++i)
    {
      if ((v15 & 0x80000000) == 0)
      {
        v34 = 0;
        do
        {
          if ((v38 & 0x80000000) == 0)
          {
            v16 = 0;
            v37 = (v34 + i * v31) * (v38 + 1);
            do
            {
              kaldi::CuSubMatrix<float>::CuSubMatrix(&v53, a3, 0, *(a3 + 20), (v16 + v37), 1);
              kaldi::CuSubMatrix<float>::CuSubMatrix(&v50, a4, 0, *(a4 + 20), (v16 + v37), 1);
              v39 = v16;
              v17 = a1[15];
              if (v17 >= 1)
              {
                v18 = 0;
                v19 = a1[14];
                v20 = a1[12] * (v34 * a1[17] + i * a1[13]) + a1[16] * v16;
                do
                {
                  if (v19 >= 1)
                  {
                    for (j = 0; j < v19; ++j)
                    {
                      v22 = (v20 + j + v18 * a1[12]);
                      kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, a2, 0, *(a2 + 20), v22, 1);
                      kaldi::CuSubMatrix<float>::CuSubMatrix(&v44, a5, 0, *(a5 + 20), v22, 1);
                      v42 = 0u;
                      v41 = 0u;
                      v40 = &unk_1F42BFED8;
                      v43 = 0;
                      kaldi::CuMatrixBase<float>::EqualElementMask(&v47, &v53, &v40, v23, v24);
                      kaldi::CuMatrixBase<float>::MulElements(&v40, &v50, v25, v26, v27);
                      kaldi::CuMatrixBase<float>::AddMat(&v44, &v40, 111, v28, v29, 1.0, 1.0);
                      kaldi::CuMatrix<float>::~CuMatrix(&v40);
                      v44 = &unk_1F42BFE90;
                      v45 = 0u;
                      v46 = 0u;
                      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v44);
                      v47 = &unk_1F42BFE90;
                      v48 = 0u;
                      v49 = 0u;
                      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v47);
                      v19 = a1[14];
                    }

                    v17 = a1[15];
                  }

                  ++v18;
                }

                while (v18 < v17);
              }

              v50 = &unk_1F42BFE90;
              v51 = 0u;
              v52 = 0u;
              kaldi::CuMatrixBase<float>::~CuMatrixBase(&v50);
              v53 = &unk_1F42BFE90;
              v54 = 0u;
              v55 = 0u;
              kaldi::CuMatrixBase<float>::~CuMatrixBase(&v53);
              v16 = v39 + 1;
            }

            while (v39 != v38);
          }

          v15 = v32;
        }

        while (v34++ != v32);
      }
    }
  }
}

void sub_1C3087B78(_Unwind_Exception *a1)
{
  v3 = v1 - 128;
  *(v1 - 128) = &unk_1F42BFE90;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v1 - 128);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MaxPooling2DComponent::ReadData(_DWORD *a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<FmapXLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 12));
  kaldi::ExpectToken(a2, a3, "<FmapYLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 13));
  kaldi::ExpectToken(a2, a3, "<PoolXLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 14));
  kaldi::ExpectToken(a2, a3, "<PoolYLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 15));
  kaldi::ExpectToken(a2, a3, "<PoolXStep>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 16));
  kaldi::ExpectToken(a2, a3, "<PoolYStep>");
  result = kaldi::ReadBasicType<int>(a2, a3, (a1 + 17));
  v8 = a1[2];
  v10 = a1[12];
  v9 = a1[13];
  v11 = v8 / (v9 * v10);
  if (v8 % (v9 * v10))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-2d-component.h", 0xA5, "input_dim_ % (fmap_x_len_ * fmap_y_len_) == 0", v7);
  }

  v12 = (v10 - a1[14]) / a1[16] + 1;
  v13 = a1[3];
  v14 = v12 + v12 * ((v9 - a1[15]) / a1[17]);
  if (v13 % v14)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-2d-component.h", 0xAA, "output_dim_ % (out_fmap_x_len * out_fmap_y_len) == 0", v7);
  }

  if (v11 != v13 / v14)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-max-pooling-2d-component.h", 0xAC, "num_input_fmaps == num_output_fmaps", v7);
  }

  return result;
}

void kaldi::nnet1::Desplice::InitData(kaldi::nnet1::Desplice *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v29 = 0uLL;
  v30 = 0;
  v6 = a2 + 4;
  v7 = a1 + 56;
  v8 = a1 + 52;
  v9 = a1 + 48;
  while (1)
  {
    if ((*(v6 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_47;
    }

    kaldi::ReadToken(a2, 0, &v29, a4, a5);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      switch(HIBYTE(v30))
      {
        case 0xBu:
          v17 = v29 == 0x69727453776F523CLL && *(&v29 + 3) == 0x3E65646972745377;
          a3 = v8;
          if (!v17)
          {
            goto LABEL_50;
          }

          break;
        case 0xCu:
          v13 = &v29;
          goto LABEL_26;
        case 0xEu:
          v10 = v29 == 0x4C6563696C70533CLL && *(&v29 + 6) == 0x3E6874676E654C65;
          a3 = v9;
          if (!v10)
          {
            goto LABEL_50;
          }

          break;
        default:
          goto LABEL_50;
      }

      goto LABEL_36;
    }

    if (*(&v29 + 1) == 11)
    {
      break;
    }

    if (*(&v29 + 1) != 14)
    {
      goto LABEL_23;
    }

    v11 = *v29 == 0x4C6563696C70533CLL && *(v29 + 6) == 0x3E6874676E654C65;
    a3 = v9;
    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_36:
    kaldi::ReadBasicType<int>(a2, 0, a3);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v12 = *v29 == 0x69727453776F523CLL && *(v29 + 3) == 0x3E65646972745377;
  a3 = v8;
  if (v12)
  {
    goto LABEL_36;
  }

LABEL_23:
  if (*(&v29 + 1) != 12)
  {
    goto LABEL_50;
  }

  v13 = v29;
LABEL_26:
  v14 = *v13;
  v15 = *(v13 + 2);
  v16 = v14 == 0x6E654C656D69543CLL && v15 == 1047032935;
  a3 = v7;
  if (v16)
  {
    goto LABEL_36;
  }

  if ((v30 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v30) == 12)
    {
      v18 = &v29;
      goto LABEL_42;
    }

    goto LABEL_50;
  }

  if (*(&v29 + 1) != 12)
  {
    goto LABEL_50;
  }

  v18 = v29;
LABEL_42:
  v19 = *v18;
  v20 = *(v18 + 2);
  if (v19 != 0x6E6F706D6F432F3CLL || v20 != 1047817829)
  {
LABEL_50:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolution-splicer.h", 62);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Unknown token ", 14);
    if (v30 >= 0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = v29;
    }

    if (v30 >= 0)
    {
      v24 = HIBYTE(v30);
    }

    else
    {
      v24 = *(&v29 + 1);
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (FmapXLen|FmapYLen|PoolXLen|PoolYLen|PoolXStep|PoolYStep)", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

LABEL_47:
  kaldi::nnet1::Desplice::Init(a1, a2, a3, a4, a5);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_1C30881AC(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Desplice::WriteData(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<SpliceLength>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<RowStride>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<TimeLength>", v10, v11);
  v12 = a1[14];

  return kaldi::WriteBasicType<int>(a2, a3, v12);
}

unint64_t kaldi::nnet1::Desplice::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 52);
  if (*(a2 + 20) % v6)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolution-splicer.h", 0x5D, "(in.NumRows() % row_stride_) == 0", a5);
  }

  v7 = *(a2 + 24) * v6;

  return kaldi::CuMatrixBase<float>::CopyIndexedItems(a3, a2, (a1 + 64), a1 + 88, v7);
}

unint64_t kaldi::nnet1::Desplice::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[12];
  if (*(a4 + 20) != v6 * *(a2 + 20))
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolution-splicer.h", 0x66, "out_diff.NumRows() == in.NumRows() * splice_length_", a5);
  }

  v7 = a1[13] * v6 * *(a4 + 24);

  return kaldi::CuMatrixBase<float>::CopyIndexedItems(a5, a4, a1 + 28, (a1 + 34), v7);
}

void kaldi::nnet1::Desplice::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 48) = 0x100000001;
  v6 = a1 + 48;
  *(a1 + 56) = 1;
  v7 = a1 + 56;
  kaldi::ExpectToken(a2, a3, "<SpliceLength>");
  kaldi::ReadBasicType<int>(a2, a3, v6);
  kaldi::ExpectToken(a2, a3, "<RowStride>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 52);
  kaldi::ExpectToken(a2, a3, "<TimeLength>");
  kaldi::ReadBasicType<int>(a2, a3, v7);

  kaldi::nnet1::Desplice::Init(a1, v8, v9, v10, v11);
}

uint64_t kaldi::nnet1::FramePoolingComponent::Info(kaldi::nnet1::FramePoolingComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n  (offset,weights) : ", 22);
  if (*(this + 16) != *(this + 15))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
      v5 = MEMORY[0x1C692A960](v4, *(*(this + 12) + 4 * v3));
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ",", 1);
      kaldi::VectorBase<float>::Write((*(this + 15) + v2), v6, 0);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "), ", 3);
      ++v3;
      v2 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 3) > v3);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v12);
}

void sub_1C30886B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FramePoolingComponent::InfoGradient(kaldi::nnet1::FramePoolingComponent *this)
{
  v21 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "\n  lr-coef ", 11);
  kaldi::nnet1::ToString<float>(this + 42);
  if ((v19 & 0x80u) == 0)
  {
    v3 = v18;
  }

  else
  {
    v3 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v4 = v19;
  }

  else
  {
    v4 = v18[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "\n  (offset,weights_grad) : ", 27);
  if (*(this + 19) != *(this + 18))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "(", 1);
      v8 = MEMORY[0x1C692A960](v7, *(*(this + 12) + 4 * v6));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ",", 1);
      kaldi::VectorBase<float>::Write((*(this + 18) + v5), &v12, 0);
      MEMORY[0x1C692A8E0](v17, &v12);
      v9 = &v12 + *(v12 - 24);
      if ((v9[32] & 5) == 0)
      {
        (*(**(v9 + 5) + 32))(v18);
        if (v20 == -1)
        {
          std::ios_base::clear((&v12 + *(v12 - 24)), *(&v14[2].__locale_ + *(v12 - 24)) | 4);
        }
      }

      MEMORY[0x1C692A8F0](v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "), ", 3);
      ++v6;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - *(this + 18)) >> 3) > v6);
  }

  std::stringbuf::str();
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  result = MEMORY[0x1C692AD30](&v16);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C3088A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 209) < 0)
  {
    operator delete(*(v9 - 232));
  }

  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FramePoolingComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 1008981770;
  v7 = a2 + 4;
  v67 = 0uLL;
  v68 = 0;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_84;
    }

    kaldi::ReadToken(a2, 0, &v67, a4, a5);
    if ((SHIBYTE(v68) & 0x80000000) == 0)
    {
      break;
    }

    if (*(&v67 + 1) == 12 && *v67 == 0x657275746165463CLL && *(v67 + 8) == 1047357764)
    {
      goto LABEL_65;
    }

    if (*(&v67 + 1) == 15 && *v67 == 0x6C6172746E65433CLL && *(v67 + 7) == 0x3E74657366664F6CLL)
    {
      goto LABEL_63;
    }

    if (*(&v67 + 1) == 12)
    {
      if (*v67 == 0x6965576C6F6F503CLL && *(v67 + 8) == 1047816295)
      {
        goto LABEL_62;
      }
    }

    else if (*(&v67 + 1) == 10 && *v67 == 0x7A69536C6F6F503CLL && *(v67 + 8) == 15973)
    {
      goto LABEL_52;
    }

    v13 = *(&v67 + 1);
    if (*(&v67 + 1) != 15)
    {
      goto LABEL_66;
    }

    if (*v67 != 0x61526E7261654C3CLL || *(v67 + 7) != 0x3E66656F43657461)
    {
      v13 = *(&v67 + 1);
LABEL_66:
      if (v13 != 11)
      {
        goto LABEL_77;
      }

      v8 = v67;
      goto LABEL_68;
    }

LABEL_75:
    kaldi::ReadBasicType<float>(a2, 0, &v69);
LABEL_74:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v68) > 0xBu)
  {
    if (HIBYTE(v68) == 12)
    {
      if (v67 != 0x657275746165463CLL || DWORD2(v67) != 1047357764)
      {
        if (v67 != 0x6965576C6F6F503CLL || DWORD2(v67) != 1047816295)
        {
          v55 = &v67;
          goto LABEL_79;
        }

LABEL_62:
        kaldi::Vector<float>::Read(&v70, a2, 0, 0, a5);
        goto LABEL_74;
      }

LABEL_65:
      kaldi::ReadBasicType<int>(a2, 0, a1 + 88);
      goto LABEL_74;
    }

    if (HIBYTE(v68) != 15)
    {
      goto LABEL_119;
    }

    if (v67 == 0x6C6172746E65433CLL && *(&v67 + 7) == 0x3E74657366664F6CLL)
    {
LABEL_63:
      v18 = &v73;
      goto LABEL_64;
    }

    if (v67 != 0x61526E7261654C3CLL || *(&v67 + 7) != 0x3E66656F43657461)
    {
      goto LABEL_119;
    }

    goto LABEL_75;
  }

  if (HIBYTE(v68) == 10)
  {
    if (v67 != 0x7A69536C6F6F503CLL || WORD4(v67) != 15973)
    {
      goto LABEL_119;
    }

LABEL_52:
    v18 = &v76;
LABEL_64:
    kaldi::ReadIntegerVector<int>(a2, 0, v18, 0, 0, 0, 0);
    goto LABEL_74;
  }

  if (HIBYTE(v68) != 11)
  {
    goto LABEL_119;
  }

  v8 = &v67;
LABEL_68:
  v21 = *v8;
  v22 = *(v8 + 3);
  if (v21 == 0x696C616D726F4E3CLL && v22 == 0x3E657A696C616D72)
  {
    kaldi::ReadBasicType<BOOL>(a2, 0, (a1 + 172));
    goto LABEL_74;
  }

  if ((v68 & 0x8000000000000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_77:
  if (*(&v67 + 1) != 12)
  {
    goto LABEL_119;
  }

  v55 = v67;
LABEL_79:
  v24 = *v55;
  v25 = *(v55 + 2);
  if (v24 != 0x6E6F706D6F432F3CLL || v25 != 1047817829)
  {
LABEL_119:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v64, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 79);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Unknown token ", 14);
    if (v68 >= 0)
    {
      v57 = &v67;
    }

    else
    {
      v57 = v67;
    }

    if (v68 >= 0)
    {
      v58 = HIBYTE(v68);
    }

    else
    {
      v58 = *(&v67 + 1);
    }

    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " (FeatureDim|CentralOffset <vec>|PoolSize <vec>|LearnRateCoef|Normalize)", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v64);
  }

LABEL_84:
  v27 = *(a1 + 88);
  if (v27 <= 0)
  {
    v62 = "feature_dim_ > 0";
    v63 = 84;
    goto LABEL_133;
  }

  v28 = v74 - v73;
  if (v74 == v73)
  {
    v62 = "central_offset.size() > 0";
    v63 = 85;
    goto LABEL_133;
  }

  if (v28 != v77 - v76)
  {
    v62 = "central_offset.size() == pool_size.size()";
    v63 = 86;
LABEL_133:
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", v63, v62, a5);
  }

  v29 = *(a1 + 8);
  std::vector<float>::resize((a1 + 96), (v28 >> 2));
  std::vector<kaldi::Vector<float>>::resize((a1 + 120), (v28 >> 2));
  v33 = v28 >> 2;
  v34 = (v28 >> 2) & 0x7FFFFFFF;
  v35 = v29 / v27;
  if ((v28 >> 2) >= 1)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = v76;
      v39 = *&v76[4 * v37];
      if (v39 >= -1)
      {
        v39 = -1;
      }

      *(*(a1 + 96) + 4 * v37) = (v35 - 1) / 2 + 1 + v73[v37] + v39;
      v40 = *&v38[4 * v37];
      if (v40 >= 0)
      {
        v41 = v40;
      }

      else
      {
        v41 = -v40;
      }

      kaldi::Vector<float>::Resize((*(a1 + 120) + v36), v41, 0, v31, v32);
      v42 = *&v76[4 * v37];
      if (v42 < 0)
      {
        v42 = -v42;
      }

      v43 = 1.0 / v42;
      *&v43 = v43;
      kaldi::VectorBase<float>::Set((*(a1 + 120) + v36), *&v43);
      ++v37;
      v36 += 24;
    }

    while (v34 != v37);
  }

  *(a1 + 168) = v69;
  if (v71)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v64, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 100);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Initializing from pool-weight vector", 36);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v64);
    }

    if (v33 < 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = 0;
      v45 = *(a1 + 120);
      v46 = 8;
      v47 = v34;
      do
      {
        v48 = v45 + v46 - 8;
        v49 = *(v45 + v46);
        v65 = 0;
        v66 = 0;
        if (v49 + v44 > v71)
        {
          kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v32);
        }

        v64.__locale_ = (v70 + 4 * v44);
        LODWORD(v65) = v49;
        kaldi::VectorBase<float>::CopyFromVec(v48, &v64, v30, v31, v32);
        v45 = *(a1 + 120);
        v44 += *(v45 + v46);
        v46 += 24;
        --v47;
      }

      while (v47);
    }

    if (v44 != v71)
    {
      kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0x6A, "num_weights == pool_weight.Dim()", v32);
    }
  }

  if (v33 >= 1)
  {
    v50 = *(a1 + 96);
    v51 = 8;
    v52 = "offset_[p] >= 0";
    while (1)
    {
      v54 = *v50++;
      v53 = v54;
      if (v54 < 0)
      {
        break;
      }

      if (*(*(a1 + 120) + v51) + v53 > v35)
      {
        v61 = 111;
        v52 = "offset_[p] + weight_[p].Dim() <= num_frames";
        goto LABEL_128;
      }

      v51 += 24;
      if (!--v34)
      {
        goto LABEL_112;
      }
    }

    v61 = 110;
LABEL_128:
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", v61, v52, v32);
  }

LABEL_112:
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  kaldi::Vector<float>::Destroy(&v70);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }
}

void sub_1C3089220(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  kaldi::Vector<float>::Destroy(v1 - 176);
  kaldi::nnet1::FramePoolingComponent::InitData(v1 - 176, v1 - 152, v1 - 128);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FramePoolingComponent::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<FeatureDim>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 88));
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v8, v9);
  v10 = *(a1 + 168);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<Normalize>", v11, v12);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 172));
  kaldi::WriteToken(a2, a3, "<FrameOffset>", v13, v14);
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, (*(a1 + 104) - *(a1 + 96)) >> 2, *(a1 + 96));
  kaldi::WriteToken(a2, a3, "<FrameWeight>", v15, v16);
  v17 = *(a1 + 104) - *(a1 + 96);
  if ((v17 >> 2) >= 1)
  {
    v18 = 0;
    v19 = (v17 >> 2) & 0x7FFFFFFF;
    do
    {
      kaldi::VectorBase<float>::Write((*(a1 + 120) + v18), a2, a3);
      v18 += 24;
      --v19;
    }

    while (v19);
  }
}

uint64_t kaldi::nnet1::FramePoolingComponent::PropagateFnc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 88);
  if (*(a2 + 16) % v5)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0xE5, "in.NumCols() % feature_dim_ == 0", a5);
  }

  if (*(a3 + 16) % v5)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0xE6, "out->NumCols() % feature_dim_ == 0", a5);
  }

  v7 = result;
  v8 = *(result + 104) - *(result + 96);
  if ((v8 >> 2) >= 1)
  {
    v10 = 0;
    v11 = (v8 >> 2) & 0x7FFFFFFF;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v20, a3, 0, *(a3 + 20), (*(v7 + 88) * v10), *(v7 + 88));
      kaldi::CuMatrixBase<float>::SetZero(&v20);
      v12 = *(v7 + 120) + 24 * v10;
      if (*(v12 + 8) >= 1)
      {
        v13 = 0;
        do
        {
          v14 = *(*v12 + 4 * v13);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v17, a2, 0, *(a2 + 20), ((v13 + *(*(v7 + 96) + 4 * v10)) * *(v7 + 88)), *(v7 + 88));
          kaldi::CuMatrixBase<float>::AddMat(&v20, &v17, 111, v15, v16, v14, 1.0);
          v17 = &unk_1F42BFE90;
          v18 = 0u;
          v19 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v17);
          ++v13;
          v12 = *(v7 + 120) + 24 * v10;
        }

        while (v13 < *(v12 + 8));
      }

      v20 = &unk_1F42BFE90;
      v21 = 0u;
      v22 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v20);
      ++v10;
    }

    while (v10 != v11);
  }

  return result;
}

void sub_1C3089568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  a14 = &unk_1F42BFE90;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FramePoolingComponent::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 248);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::FramePoolingComponent::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  kaldi::ExpectToken(a2, a3, "<FeatureDim>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 88);
  kaldi::ExpectToken(a2, a3, "<LearnRateCoef>");
  kaldi::ReadBasicType<float>(a2, a3, (a1 + 168));
  kaldi::ExpectToken(a2, a3, "<Normalize>");
  kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 172));
  kaldi::ExpectToken(a2, a3, "<FrameOffset>");
  kaldi::ReadIntegerVector<int>(a2, a3, (a1 + 96), 0, 0, 0, 0);
  kaldi::ExpectToken(a2, a3, "<FrameWeight>");
  v6 = *(a1 + 104) - *(a1 + 96);
  v7 = v6 >> 2;
  std::vector<kaldi::Vector<float>>::resize((a1 + 120), (v6 >> 2));
  v9 = (v6 >> 2) & 0x7FFFFFFF;
  if (v7 >= 1)
  {
    v10 = 0;
    v11 = v9;
    do
    {
      kaldi::Vector<float>::Read(*(a1 + 120) + v10, a2, a3, 0, v8);
      v10 += 24;
      --v11;
    }

    while (v11);
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 88);
  v14 = v12 / v13;
  if (v12 % v13)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0x8C, "input_dim_ % feature_dim_ == 0", v8);
  }

  v15 = *(a1 + 12);
  if (v15 % v13)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0x8D, "output_dim_ % feature_dim_ == 0", v8);
  }

  if (v15 / v13 != v7)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0x8E, "output_dim_ / feature_dim_ == num_pools", v8);
  }

  v16 = *(a1 + 96);
  v17 = *(a1 + 120);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v17) >> 3) != (*(a1 + 104) - v16) >> 2)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0x8F, "offset_.size() == weight_.size()", v8);
  }

  if (v7 >= 1)
  {
    v18 = (v17 + 8);
    do
    {
      v20 = *v16++;
      v19 = v20;
      if (v20 < 0)
      {
        kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0x93, "offset_[p] >= 0", v8);
      }

      if (v19 + *v18 - 1 >= v14)
      {
        kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0x94, "offset_[p] + (weight_[p].Dim() - 1) < total_frame", v8);
      }

      v18 += 6;
      --v9;
    }

    while (v9);
  }
}

uint64_t kaldi::nnet1::FramePoolingComponent::NumParams(kaldi::nnet1::FramePoolingComponent *this)
{
  v2 = *(this + 15);
  v1 = *(this + 16);
  result = 0;
  v4 = v1 - v2;
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (v2 + 8);
    do
    {
      v7 = *v6;
      v6 += 6;
      result = (v7 + result);
      --v5;
    }

    while (v5);
  }

  return result;
}

void kaldi::nnet1::FramePoolingComponent::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v10 = a1[15];
  if (a1[16] == v10)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 8;
    do
    {
      v14 = v10 + v13 - 8;
      v15 = *(v10 + v13);
      v17 = 0;
      v18 = 0;
      if ((v15 + v12) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
      }

      v16 = *a2 + 4 * v12;
      LODWORD(v17) = v15;
      kaldi::VectorBase<float>::CopyFromVec(&v16, v14, v7, v8, v9);
      v10 = a1[15];
      v12 += *(v10 + v13);
      ++v11;
      v13 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[16] - v10) >> 3) > v11);
  }

  if (v12 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0xB7, "offset == wei_copy->Dim()", v9);
  }
}

uint64_t kaldi::nnet1::FramePoolingComponent::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0xBB, "wei_src.Dim() == NumParams()", v7);
  }

  v8 = a1[15];
  if (a1[16] == v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 8;
    do
    {
      v12 = v8 + v11 - 8;
      v13 = *(v8 + v11);
      v17 = 0;
      v18 = 0;
      if ((v13 + v10) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v7);
      }

      v16 = *a2 + 4 * v10;
      LODWORD(v17) = v13;
      kaldi::VectorBase<float>::CopyFromVec(v12, &v16, v5, v6, v7);
      v8 = a1[15];
      v10 += *(v8 + v11);
      ++v9;
      v11 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[16] - v8) >> 3) > v9);
  }

  result = (*(*a1 + 176))(a1);
  if (v10 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 0xC1, "offset == NumParams()", v15);
  }

  return result;
}

float kaldi::nnet1::FramePoolingComponent::SumParams(kaldi::nnet1::FramePoolingComponent *this)
{
  v1 = *(this + 15);
  if (*(this + 16) == v1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = kaldi::VectorBase<float>::Sum(v1 + v3);
    v5 = v5 + *&v6;
    ++v4;
    v1 = *(this + 15);
    v3 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - v1) >> 3) > v4);
  return v5;
}

void kaldi::nnet1::FramePoolingComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 144);
  v9 = (a1 + 144);
  v11 = *(v9 - 5) - *(v9 - 6);
  if (0xAAAAAAAAAAAAAAABLL * ((v9[1] - v10) >> 3) != (v11 >> 2))
  {
    std::vector<kaldi::Vector<float>>::resize(v9, (v11 >> 2));
  }

  if ((v11 >> 2) >= 1)
  {
    v12 = 0;
    v13 = (v11 >> 2) & 0x7FFFFFFF;
    v14 = *(a1 + 120);
    do
    {
      kaldi::Vector<float>::Resize((*(a1 + 144) + 24 * v12), *(v14 + 24 * v12 + 8), 0, a4, a5);
      v14 = *(a1 + 120);
      if (*(v14 + 24 * v12 + 8) >= 1)
      {
        v16 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v33, a2, 0, *(a2 + 20), ((v16 + *(*(a1 + 96) + 4 * v12)) * *(a1 + 88)), *(a1 + 88));
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v30, a3, 0, *(a3 + 20), (*(a1 + 88) * v12), *(a1 + 88));
          *(&v35 + 1) = a4;
          *(&v32 + 1) = a4;
          kaldi::CuMatrix<float>::CuMatrix(v29, &v33, 111);
          kaldi::CuMatrixBase<float>::MulElements(v29, &v30, v17, v18, v19);
          *(*(*(a1 + 144) + 24 * v12) + 4 * v16) = kaldi::CuMatrixBase<float>::Sum(v29, v20, v21, v22, v23);
          kaldi::CuMatrix<float>::~CuMatrix(v29);
          v30 = &unk_1F42BFE90;
          v31 = 0u;
          v32 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v30);
          v33 = &unk_1F42BFE90;
          v34 = 0u;
          v35 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v33);
          ++v16;
          v14 = *(a1 + 120);
        }

        while (v16 < *(v14 + 24 * v12 + 8));
      }

      ++v12;
    }

    while (v12 != v13);
    v24 = 0;
    v25 = v13;
    do
    {
      v26 = -(*(a1 + 168) * *(a1 + 56));
      kaldi::VectorBase<float>::AddVec<float>((*(a1 + 120) + v24), (*(a1 + 144) + v24), v15, a4, a5);
      v24 += 24;
      --v25;
    }

    while (v25);
    if (*(a1 + 172) == 1)
    {
      v27 = 0;
      do
      {
        kaldi::VectorBase<float>::ApplyFloor(*(a1 + 120) + v27, 0.0);
        v28 = *(a1 + 120);
        kaldi::VectorBase<float>::Sum(v28 + v27);
        kaldi::VectorBase<float>::Scale((v28 + v27));
        v27 += 24;
        --v13;
      }

      while (v13);
    }
  }
}

void sub_1C3089ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  a20 = &unk_1F42BFE90;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a20);
  _Unwind_Resume(a1);
}

__n128 kaldi::nnet1::FramePoolingComponent::SetTrainOptions(kaldi::nnet1::FramePoolingComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  if (*(a2 + 8) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "SetTrainOptions", "../engine/common/libquasar/libkaldi/src/nnet/nnet-frame-pooling-component.h", 301);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "the multi subbatch version for this class is not implemented yet");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  result = *(a2 + 8);
  *(this + 71) = *(a2 + 23);
  *(this + 56) = result;
  return result;
}

void kaldi::nnet1::InterpolationComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = (a1 + 48);
  *(a1 + 56) = *(a1 + 48);
  kaldi::ExpectToken(a2, 0, "<NumComponents>");
  kaldi::ReadBasicType<int>(a2, 0, &v8);
  if (v8 < 1 || (v5 = *(a1 + 8), v5 % v8))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-interpolation-component.h", 102);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "The input dimension is not divisible by the number of components");
    goto LABEL_9;
  }

  if (v5 / v8 != *(a1 + 12))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-interpolation-component.h", 105);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "The output dimension does not match the dimension of individual component");
LABEL_9:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  v6 = 0;
  do
  {
    kaldi::ExpectToken(a2, 0, "<ComponentWeight>");
    kaldi::ReadBasicType<float>(a2, 0, &v8 + 1);
    std::vector<float>::push_back[abi:ne200100](v4, &v8 + 1);
    ++v6;
  }

  while (v6 < v8);
  kaldi::ExpectToken(a2, 0, "</InterpolationComponent>");
}

void *kaldi::nnet1::InterpolationComponent::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<NumComponents>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, (*(a1 + 56) - *(a1 + 48)) >> 2);
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v10 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a1 + 56) != *(a1 + 48))
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E5318];
    do
    {
      kaldi::WriteToken(a2, a3, "<ComponentWeight>", v8, v9);
      v13 = *(*(a1 + 48) + 4 * v11);
      kaldi::WriteBasicType<float>(a2, a3);
      if ((a3 & 1) == 0)
      {
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v14 = std::locale::use_facet(&v17, v12);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v17);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v11;
    }

    while (v11 < (*(a1 + 56) - *(a1 + 48)) >> 2);
  }

  result = kaldi::WriteToken(a2, a3, "</InterpolationComponent>", v8, v9);
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v16 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t kaldi::nnet1::InterpolationComponent::PropagateFnc(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56) - *(result + 48);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = *(result + 8) / (v3 >> 2);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v12, a2, 0, *(a2 + 20), (v7 * v8), v8);
      if (v7)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      kaldi::CuMatrixBase<float>::AddMat(a3, &v12, 111, v9, v10, *(*(v6 + 48) + 4 * v7), v11);
      v12 = &unk_1F42BFE90;
      v13 = 0u;
      v14 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v12);
      ++v7;
    }

    while (v7 < (*(v6 + 56) - *(v6 + 48)) >> 2);
  }

  return result;
}

void sub_1C308A54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10 = &unk_1F42BFE90;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::InterpolationComponent::PropagateFnc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v9 = *(result + 56) - *(result + 48);
  if (v9)
  {
    v21[4] = v8;
    v21[5] = v7;
    v21[14] = v5;
    v21[15] = v6;
    v12 = result;
    v13 = 0;
    v14 = *(result + 8) / (v9 >> 2);
    do
    {
      v15 = v13 + 1;
      kaldi::CuSubVector<float>::CuSubVector(v21, a2, v13 * v14, (v13 + 1) * v14 - 1, a5);
      if (v13)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      LODWORD(v19) = *(*(v12 + 48) + 4 * v13);
      result = kaldi::CuVectorBase<float>::AddVec(a3, v21, v16, v17, v18, v19, v20);
      ++v13;
    }

    while (v15 < (*(v12 + 56) - *(v12 + 48)) >> 2);
  }

  return result;
}

uint64_t kaldi::nnet1::InterpolationComponent::BackpropagateFnc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 56) - *(result + 48);
  if (v5)
  {
    v8 = result;
    v9 = 0;
    v10 = *(a4 + 32);
    v11 = *(result + 8) / (v5 >> 2);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a5, 0, *(a5 + 20), (v9 * v11), v11);
      *(&v16 + 1) = v10;
      kaldi::CuMatrixBase<float>::AddMat(&v14, a4, 111, v12, v13, *(*(v8 + 48) + 4 * v9), 0.0);
      v14 = &unk_1F42BFE90;
      v15 = 0u;
      v16 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v14);
      ++v9;
    }

    while (v9 < (*(v8 + 56) - *(v8 + 48)) >> 2);
  }

  return result;
}

void sub_1C308A73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10 = &unk_1F42BFE90;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::InterpolationComponent::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v9 = *(a1 + 8);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = *(a4 + 24);
  v13 = *(a4 + 16);
  v28[2] = 0;
  v29 = 0;
  v28[0] = &unk_1F42BFF70;
  v28[1] = 0;
  kaldi::CuVector<float>::Resize(v28, v13, 0, a4, a5);
  v29 = v12;
  if (*(a1 + 56) != *(a1 + 48))
  {
    v14 = 0;
    v15 = v9 / ((v10 - v11) >> 2);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v25, a2, 0, *(a2 + 20), (a3 + v14 * v15), 1);
      *(&v27 + 1) = v12;
      kaldi::CuVectorBase<float>::CopyRowsFromMat(v28, &v25, v16, v17, v18);
      if (v14)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      LODWORD(v22) = *(*(a1 + 48) + 4 * v14);
      kaldi::CuVectorBase<float>::AddVec(a4, v28, v19, v20, v21, v22, v23);
      v25 = &unk_1F42BFE90;
      v26 = 0u;
      v27 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v25);
      ++v14;
    }

    while (v14 < (*(a1 + 56) - *(a1 + 48)) >> 2);
  }

  return kaldi::CuVector<float>::~CuVector(v28);
}

void sub_1C308A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::InterpolationComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v10 = 0;
  v6 = (a1 + 48);
  *(a1 + 56) = *(a1 + 48);
  kaldi::ExpectToken(a2, a3, "<NumComponents>");
  kaldi::ReadBasicType<int>(a2, a3, &v10);
  if (v10 < 1 || (v7 = *(a1 + 8), v7 % v10))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-interpolation-component.h", 124);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "The input dimension is not divisible by the number of components");
    goto LABEL_9;
  }

  if (v7 / v10 != *(a1 + 12))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-interpolation-component.h", 127);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "The output dimension does not match the dimension of individual component");
LABEL_9:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v8 = 0;
  do
  {
    kaldi::ExpectToken(a2, a3, "<ComponentWeight>");
    kaldi::ReadBasicType<float>(a2, a3, &v10 + 1);
    std::vector<float>::push_back[abi:ne200100](v6, &v10 + 1);
    ++v8;
  }

  while (v8 < v10);
  kaldi::ExpectToken(a2, a3, "</InterpolationComponent>");
}

char **kaldi::nnet1::InterpolationComponent::SetComponentWeights(uint64_t a1, char **a2)
{
  result = (a1 + 48);
  if (result != a2)
  {
    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

uint64_t kaldi::nnet1::ParallelComponent::HistoryStateSize(kaldi::nnet1::ParallelComponent *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 == v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v3 = kaldi::nnet1::Nnet::HistoryStateSize(v1) + v3;
    v1 = (v1 + 376);
  }

  while (v1 != v2);
  return v3;
}

void *kaldi::nnet1::ParallelComponent::ResetHistoryState(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = result[23];
  for (i = result[24]; v5 != i; v5 += 47)
  {
    result = kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v5, a2, a3, a4, a5);
  }

  return result;
}

uint64_t kaldi::nnet1::ParallelComponent::ResetHistoryState(uint64_t this)
{
  v1 = *(this + 184);
  v2 = *(this + 192);
  while (v1 != v2)
  {
    this = kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v1);
    v1 += 376;
  }

  return this;
}

void kaldi::nnet1::ParallelComponent::GetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 96);
  v7 = (*(*a1 + 16))(a1);
  v17 = v7;
  kaldi::CuMatrix<float>::Resize(a2, v6, v7, 1u, 0);
  v9 = *(a1 + 184);
  v10 = *(a1 + 192);
  if (v9 == v10)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      kaldi::nnet1::Nnet::GetHistoricalComponents(v9, &v21);
      v13 = v21;
      v12 = v22;
      if (v21)
      {
        *&v22 = v21;
        operator delete(v21);
      }

      if (v13 != v12)
      {
        v23 = 0u;
        v22 = 0u;
        v21 = &unk_1F42BFED8;
        v24 = 0;
        kaldi::nnet1::Nnet::GetHistoryState(v9, &v21, a3);
        if (HIDWORD(v22) != v6)
        {
          kaldi::KaldiAssertFailure_("GetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0xCA, "comp_history.NumRows() == num_seq", v14);
        }

        kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, a2, 0, *(a2 + 20), v11, SDWORD2(v22));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v18, &v21, 111, v15, v16);
        v18 = &unk_1F42BFE90;
        v19 = 0u;
        v20 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v18);
        v11 = (DWORD2(v22) + v11);
        kaldi::CuMatrix<float>::~CuMatrix(&v21);
      }

      v9 = (v9 + 376);
    }

    while (v9 != v10);
  }

  if (v11 != v17)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0xCF, "count == history_size", v8);
  }
}

void sub_1C308AD9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v4 = &unk_1F42BFE90;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ParallelComponent::GetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  v9 = v8;
  kaldi::CuVector<float>::Resize(a2, v8, 1u, v10, v11);
  v13 = a1[23];
  v14 = a1[24];
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      kaldi::nnet1::Nnet::GetHistoricalComponents(v13, &v23);
      v16 = v23;
      v17 = v24;
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v16 != v17)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v23 = &unk_1F42BFF70;
        kaldi::nnet1::Nnet::GetHistoryState(v13, &v23, a3, a4, v12);
        kaldi::CuSubVector<float>::CuSubVector(v22, a2, v15, v25, v18);
        kaldi::CuVectorBase<float>::CopyFromVec(v22, &v23, v19, v20, v21);
        v15 += v25;
        kaldi::CuVector<float>::~CuVector(&v23);
      }

      v13 = (v13 + 376);
    }

    while (v13 != v14);
  }

  if (v15 != v9)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0xE1, "count == history_size", v12);
  }
}

void sub_1C308AF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ParallelComponent::SetHistoryState(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*a1 + 16))(a1);
  if (*(a2 + 16) != v7)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v19, "SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 232);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "the ParallelComponent has history size ", 39);
    v17 = MEMORY[0x1C692A960](v16, v7);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " , but the input history data has dimension ", 44);
    MEMORY[0x1C692A960](v18, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v19);
  }

  v8 = a1[23];
  v9 = a1[24];
  if (v8 == v9)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      kaldi::nnet1::Nnet::GetHistoricalComponents(v8, &v19);
      v11 = v19;
      v12 = v20;
      if (v19)
      {
        *&v20 = v19;
        operator delete(v19);
      }

      if (v11 != v12)
      {
        v13 = kaldi::nnet1::Nnet::HistoryStateSize(v8);
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a2, 0, *(a2 + 20), v10, v13);
        kaldi::nnet1::Nnet::SetHistoryState(v8, &v19, a3, v14, v15);
        v19 = &unk_1F42BFE90;
        v20 = 0u;
        v21 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v19);
        v10 = (v13 + v10);
      }

      v8 = (v8 + 376);
    }

    while (v8 != v9);
  }

  if (v10 != v7)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0xF4, "count == history_size", v6);
  }
}

void sub_1C308B14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  a9 = &unk_1F42BFE90;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ParallelComponent::SetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*a1 + 16))(a1);
  if (*(a2 + 16) != v9)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v21, "SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 253);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "the network has history size ", 29);
    v19 = MEMORY[0x1C692A960](v18, v9);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " , but the input history data has dimension ", 44);
    MEMORY[0x1C692A960](v20, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v21);
  }

  v10 = a1[23];
  v11 = a1[24];
  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      kaldi::nnet1::Nnet::GetHistoricalComponents(v10, &v21);
      v13 = v21;
      v14 = v22;
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v13 != v14)
      {
        v15 = kaldi::nnet1::Nnet::HistoryStateSize(v10);
        kaldi::CuSubVector<float>::CuSubVector(&v21, a2, v12, v15, v16);
        kaldi::nnet1::Nnet::SetHistoryState(v10, &v21, a3, a4, v17);
        v12 += v15;
      }

      v10 = (v10 + 376);
    }

    while (v10 != v11);
  }

  if (v12 != v9)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0x109, "count == history_size", v8);
  }
}

void kaldi::nnet1::ParallelComponent::SetHistoryOptions(kaldi::nnet1::ParallelComponent *this, const kaldi::nnet1::HistoryOptions *a2)
{
  v4 = (*(*this + 120))(this);
  v5 = **v4;
  if (v6)
  {
    v7 = *(v6 + 8);
    *&v12[15] = *(v6 + 23);
    *v12 = v7;
    v11 = &unk_1F42CB1D8;
    v13 = &unk_1F42CB1F8;
    v8 = *(v6 + 13);
    v14 = *(a2 + 2);
    v15 = v8;
    (*(*this + 104))(this, &v11);
    *(this + 10) = *(a2 + 2);
    v10 = *(this + 23);
    v9 = *(this + 24);
    while (v10 != v9)
    {
      kaldi::nnet1::Nnet::SetHistoryOptions(v10, a2, 1);
      v10 = (v10 + 376);
    }

    kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions(&v11);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11, "SetHistoryOptions", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 491);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v11);
  }
}

uint64_t kaldi::nnet1::ParallelComponent::SetInternalBoundary(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 184);
  for (i = *(result + 192); v3 != i; v3 += 376)
  {
    result = kaldi::nnet1::Nnet::SetInternalBoundary(v3, a2, a3);
  }

  return result;
}

void kaldi::nnet1::ParallelComponent::SetTrainOptions(kaldi::nnet1::ParallelComponent *this, const kaldi::nnet1::NnetTrainOptions *lpsrc)
{
  if (*(lpsrc + 8) == 1)
  {
    *(this + 178) = *(lpsrc + 38);
    v2 = **lpsrc;
    {
      operator new();
    }

    operator new();
  }

  kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "SetTrainOptions", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 509);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "the multi subbatch version for this class is not implemented yet");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
}

void kaldi::nnet1::ParallelComponent::InitData(kaldi::nnet1::ParallelComponent *this, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v7 = a2 + 4;
  v41 = 0;
  v42 = 0;
  v43 = 0;
LABEL_2:
  if ((*(v7 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v41, a4, a5);
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      if (HIBYTE(v43) != 17)
      {
        if (HIBYTE(v43) == 20)
        {
          v10 = v41 == 0x4E64657473654E3CLL && v42 == 0x6E656C694674656ELL;
          if (v10 && v43 == 1046834529)
          {
            goto LABEL_14;
          }
        }

LABEL_80:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 72);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
        if (v43 >= 0)
        {
          v35 = &v41;
        }

        else
        {
          v35 = v41;
        }

        if (v43 >= 0)
        {
          v36 = HIBYTE(v43);
        }

        else
        {
          v36 = v42;
        }

        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", typo in config?", 17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " (NestedNnetFilename|NestedNnetProto)", 37);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      v21 = &v41;
      goto LABEL_45;
    }

    if (v42 == 17)
    {
      v21 = v41;
LABEL_45:
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v21 + 16);
      if (v22 != 0x4E64657473654E3CLL || v23 != 0x6F746F725074656ELL || v24 != 62)
      {
        goto LABEL_80;
      }

      while (1)
      {
        if ((*(v7 + *(*a2 - 24)) & 2) != 0)
        {
          goto LABEL_71;
        }

        __p = 0uLL;
        v40 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        if (SHIBYTE(v40) < 0)
        {
          if (*(&__p + 1) != 18)
          {
            goto LABEL_66;
          }

          p_p = __p;
        }

        else
        {
          if (SHIBYTE(v40) != 18)
          {
            goto LABEL_66;
          }

          p_p = &__p;
        }

        v28 = *p_p;
        v29 = *(p_p + 1);
        v30 = *(p_p + 8);
        if (v28 == 0x64657473654E2F3CLL && v29 == 0x746F725074656E4ELL && v30 == 15983)
        {
          v33 = 0;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

LABEL_70:
          operator delete(__p);
          if ((v33 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
LABEL_66:
          std::vector<std::string>::push_back[abi:ne200100](&v47, &__p);
          v33 = 1;
          if (v40 < 0)
          {
            goto LABEL_70;
          }

LABEL_67:
          if ((v33 & 1) == 0)
          {
            goto LABEL_71;
          }
        }
      }
    }

    if (v42 != 20)
    {
      goto LABEL_80;
    }

    v19 = *v41 == 0x4E64657473654E3CLL && v41[1] == 0x6E656C694674656ELL;
    if (!v19 || *(v41 + 4) != 1046834529)
    {
      goto LABEL_80;
    }

    while (1)
    {
LABEL_14:
      if ((*(v7 + *(*a2 - 24)) & 2) != 0)
      {
LABEL_71:
        std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
        goto LABEL_2;
      }

      __p = 0uLL;
      v40 = 0;
      kaldi::ReadToken(a2, 0, &__p, v8, v9);
      if (SHIBYTE(v40) < 0)
      {
        if (*(&__p + 1) != 21)
        {
          goto LABEL_27;
        }

        v12 = __p;
      }

      else
      {
        if (SHIBYTE(v40) != 21)
        {
          goto LABEL_27;
        }

        v12 = &__p;
      }

      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(v12 + 13);
      if (v13 == 0x64657473654E2F3CLL && v14 == 0x656C694674656E4ELL && v15 == 0x3E656D616E656C69)
      {
        v18 = 0;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_28:
        operator delete(__p);
        goto LABEL_29;
      }

LABEL_27:
      std::vector<std::string>::push_back[abi:ne200100](&v44, &__p);
      v18 = 1;
      if (v40 < 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      if ((v18 & 1) == 0)
      {
        goto LABEL_71;
      }
    }
  }

  if ((v48 != v47) == (v45 != v44))
  {
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0x4D, "(nested_nnet_proto.size() > 0) ^ (nested_nnet_filename.size() > 0)", a5);
  }

  if (v45 != v44)
  {
    kaldi::nnet1::Nnet::Nnet(&__p);
  }

  if (v48 != v47)
  {
    kaldi::nnet1::Nnet::Nnet(&__p);
  }

  kaldi::nnet1::ParallelComponent::CheckNetworkDimensions(this, a2, a3, a4, a5);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v41);
  }

  *&__p = &v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  *&__p = &v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C308BD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  kaldi::nnet1::Nnet::~Nnet(&a10);
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = v10 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1C308BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = (v10 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1C308BD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  __p = (v15 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v15 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::nnet1::ParallelComponent::ReadData(uint64_t *a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<NestedNnetCount>");
  v14 = 0;
  kaldi::ReadBasicType<int>(a2, a3, &v14);
  std::vector<kaldi::nnet1::Nnet>::resize(a1 + 23, v14);
  if (v14 >= 1)
  {
    v6 = 0;
    for (i = 0; i < v14; ++i)
    {
      kaldi::ExpectToken(a2, a3, "<NestedNnet>");
      v13 = 0;
      kaldi::ReadBasicType<int>(a2, a3, &v13);
      kaldi::nnet1::Nnet::Read((a1[23] + v6), a2, a3);
      v6 += 376;
    }
  }

  kaldi::ExpectToken(a2, a3, "</ParallelComponent>");
  return kaldi::nnet1::ParallelComponent::CheckNetworkDimensions(a1, v8, v9, v10, v11);
}

void *kaldi::nnet1::ParallelComponent::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v9 = 0x51B3BEA3677D46CFLL * ((*(a1 + 192) - *(a1 + 184)) >> 3);
  kaldi::WriteToken(a2, a3, "<NestedNnetCount>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, v9);
  if (v9 >= 1)
  {
    v12 = 0;
    v13 = v9 & 0x7FFFFFFF;
    v14 = 1;
    do
    {
      kaldi::WriteToken(a2, a3, "<NestedNnet>", v10, v11);
      kaldi::WriteBasicType<int>(a2, a3, v14);
      kaldi::nnet1::Nnet::Write((*(a1 + 184) + v12), a2, a3, a4, v15);
      v12 += 376;
      v14 = (v14 + 1);
      --v13;
    }

    while (v13);
  }

  return kaldi::WriteToken(a2, a3, "</ParallelComponent>", v10, v11);
}

uint64_t kaldi::nnet1::ParallelComponent::NumParams(kaldi::nnet1::ParallelComponent *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 == v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v3 = kaldi::nnet1::Nnet::NumParams(v1) + v3;
    v1 = (v1 + 376);
  }

  while (v1 != v2);
  return v3;
}

uint64_t kaldi::nnet1::ParallelComponent::CountZeroCorr(uint64_t this, int *a2, int *a3, uint64_t a4, const char *a5)
{
  *a2 = 0;
  *a3 = 0;
  v5 = *(this + 184);
  for (i = *(this + 192); v5 != i; v5 = (v5 + 376))
  {
    if (((*(v5 + 1) - *v5) >> 3) >= 1)
    {
      v9 = 0;
      do
      {
        this = kaldi::nnet1::Nnet::IsComponentFrozen(v5, v9, a3, a4, a5);
        if ((this & 1) == 0)
        {
          Component = kaldi::nnet1::Nnet::GetComponent(v5, v9, a3, a4, a5);
          this = (*(*Component + 4))(Component);
          if (this)
          {
            v11 = **Component;
            v13 = 0;
            this = (*(*v12 + 40))(v12, &v13 + 4, &v13);
            *a2 += HIDWORD(v13);
            *a3 += v13;
          }
        }

        ++v9;
      }

      while (v9 < ((*(v5 + 1) - *v5) >> 3));
    }
  }

  return this;
}

uint64_t kaldi::nnet1::ParallelComponent::VectorizeWeightsCorrs(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 184);
  for (i = *(result + 192); v5 != i; v5 = (v5 + 376))
  {
    if (((*(v5 + 1) - *v5) >> 3) >= 1)
    {
      v10 = 0;
      do
      {
        Component = kaldi::nnet1::Nnet::GetComponent(v5, v10, a3, a4, a5);
        result = (*(*Component + 4))(Component);
        if (result)
        {
          v12 = **Component;
          result = (*(*v13 + 48))(v13, a2, a3, a4);
        }

        ++v10;
      }

      while (v10 < ((*(v5 + 1) - *v5) >> 3));
    }
  }

  return result;
}

uint64_t kaldi::nnet1::ParallelComponent::GetNormalizedLearningRate(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 184);
  v6 = *(this + 192);
  if (v5 != v6)
  {
    v8 = 0;
    v9 = NAN;
    while (((*(v5 + 1) - *v5) >> 3) < 1)
    {
      v12 = v9;
LABEL_15:
      v5 = (v5 + 376);
      v9 = v12;
      if (v5 == v6)
      {
        return this;
      }
    }

    v10 = 0;
    while (1)
    {
      Component = kaldi::nnet1::Nnet::GetComponent(v5, v10, a3, a4, a5);
      this = (*(*Component + 32))(Component);
      if (this)
      {
        this = (*(*Component + 200))(Component, a2);
        if ((v8 & 1) == 0)
        {
          v8 = 1;
          goto LABEL_12;
        }

        if (v9 != v12)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "GetNormalizedLearningRate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 323);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Two different learning rates: ", 30);
          v13 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
          std::ostream::operator<<();
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
        }

        v8 = 1;
      }

      v12 = v9;
LABEL_12:
      ++v10;
      v9 = v12;
      if (v10 >= ((*(v5 + 1) - *v5) >> 3))
      {
        goto LABEL_15;
      }
    }
  }

  return this;
}

uint64_t kaldi::nnet1::ParallelComponent::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = a1[23];
  v8 = a1[24];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      kaldi::nnet1::Nnet::GetParams(v7, &v19);
      v17 = 0;
      v18 = 0;
      if ((v20 + v9) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v12);
      }

      v16 = *a2 + 4 * v9;
      LODWORD(v17) = v20;
      kaldi::VectorBase<float>::CopyFromVec(&v16, &v19, v10, v11, v12);
      v13 = v20;
      kaldi::Vector<float>::Destroy(&v19);
      v9 += v13;
      v7 = (v7 + 376);
    }

    while (v7 != v8);
  }

  result = (*(*a1 + 176))(a1);
  if (v9 != result)
  {
    kaldi::KaldiAssertFailure_("GetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0x154, "offset == NumParams()", v15);
  }

  return result;
}

void sub_1C308C5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ParallelComponent::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0x158, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[23];
  v7 = a1[24];
  if (v6 == v7)
  {
    v11 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = kaldi::nnet1::Nnet::NumParams(v6);
      v15 = 0;
      v16 = 0;
      v11 = v9 + v8;
      if ((v9 + v8) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v10);
      }

      v14 = *a2 + 4 * v8;
      LODWORD(v15) = v9;
      kaldi::nnet1::Nnet::SetParams(v6, &v14);
      v6 = (v6 + 376);
      v8 = v11;
    }

    while (v6 != v7);
  }

  result = (*(*a1 + 176))(a1);
  if (v11 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 0x15F, "offset == NumParams()", v13);
  }

  return result;
}

float kaldi::nnet1::ParallelComponent::SumParams(kaldi::nnet1::ParallelComponent *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  v3 = 0.0;
  while (v1 != v2)
  {
    v3 = v3 + kaldi::nnet1::Nnet::SumParams(v1);
    v1 = (v1 + 376);
  }

  return v3;
}

uint64_t kaldi::nnet1::ParallelComponent::Info@<X0>(kaldi::nnet1::ParallelComponent *this@<X0>, std::string *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  if (*(this + 24) != *(this + 23))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "nested_network #", 16);
      v7 = MEMORY[0x1C692A960](v6, ++v5);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "{\n", 2);
      kaldi::nnet1::Nnet::Info(__p, (*(this + 23) + v4));
      if ((v18 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v18 & 0x80u) == 0)
      {
        v10 = v18;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "}\n", 2);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v4 += 376;
    }

    while (0x51B3BEA3677D46CFLL * ((*(this + 24) - *(this + 23)) >> 3) > v5);
  }

  std::stringbuf::str();
  v12 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = a2 + v12;
  if (v13 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v14 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v14 + ~v15, 1uLL);
  v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v23);
}

void sub_1C308CA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ParallelComponent::InfoGradient@<X0>(kaldi::nnet1::ParallelComponent *this@<X0>, std::string *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  if (*(this + 24) != *(this + 23))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "nested_gradient #", 17);
      v7 = MEMORY[0x1C692A960](v6, ++v5);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "{\n", 2);
      kaldi::nnet1::Nnet::InfoGradient((*(this + 23) + v4), __p);
      if ((v18 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v18 & 0x80u) == 0)
      {
        v10 = v18;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "}\n", 2);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v4 += 376;
    }

    while (0x51B3BEA3677D46CFLL * ((*(this + 24) - *(this + 23)) >> 3) > v5);
  }

  std::stringbuf::str();
  v12 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = a2 + v12;
  if (v13 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v14 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v14 + ~v15, 1uLL);
  v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v23);
}

void sub_1C308CCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ParallelComponent::InfoPropagate(kaldi::nnet1::ParallelComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  if (*(this + 24) != *(this + 23))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "nested_propagate #", 18);
      v5 = MEMORY[0x1C692A960](v4, ++v3);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "{\n", 2);
      kaldi::nnet1::Nnet::InfoPropagate((*(this + 23) + v2), __p);
      if ((v12 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v8 = v12;
      }

      else
      {
        v8 = __p[1];
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "}\n", 2);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v2 += 376;
    }

    while (0x51B3BEA3677D46CFLL * ((*(this + 24) - *(this + 23)) >> 3) > v3);
  }

  std::stringbuf::str();
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v17);
}

uint64_t kaldi::nnet1::ParallelComponent::InfoBackPropagate(kaldi::nnet1::ParallelComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  if (*(this + 24) != *(this + 23))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "nested_backpropagate #", 22);
      v5 = MEMORY[0x1C692A960](v4, ++v3);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "{\n", 2);
      kaldi::nnet1::Nnet::InfoBackPropagate((*(this + 23) + v2), __p);
      if ((v12 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v8 = v12;
      }

      else
      {
        v8 = __p[1];
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "}\n", 2);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v2 += 376;
    }

    while (0x51B3BEA3677D46CFLL * ((*(this + 24) - *(this + 23)) >> 3) > v3);
  }

  std::stringbuf::str();
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v17);
}

uint64_t kaldi::nnet1::ParallelComponent::BackpropagateFnc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a4;
  }

  v7 = *(result + 184);
  v8 = *(result + 192);
  if (v7 != v8)
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    v14 = *(v6 + 32);
    do
    {
      v15 = kaldi::nnet1::Nnet::OutputDim(v7, a2, a3, a4, a5);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v34, a4, 0, *(a4 + 20), v13, v15);
      *(&v36 + 1) = v14;
      if (a5)
      {
        v20 = kaldi::nnet1::Nnet::InputDim(v7, v16, v17, v18, v19);
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v31, a5, 0, *(a5 + 20), v12, v20);
        *(&v33 + 1) = v14;
        memset(&v29[1], 0, 24);
        v30 = 0;
        v29[0] = &unk_1F42BFED8;
        v29[4] = v14;
        kaldi::nnet1::Nnet::Backpropagate(v7, &v34, v29, a6, v21);
        if (*(v11 + 176) == 1)
        {
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v31, v29, 111, v22, v23);
        }

        else
        {
          kaldi::CuMatrixBase<float>::AddMat(&v31, v29, 111, v22, v23, 1.0, 1.0);
        }

        kaldi::CuMatrix<float>::~CuMatrix(v29);
        v31 = &unk_1F42BFE90;
        v32 = 0u;
        v33 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v31);
      }

      else
      {
        kaldi::nnet1::Nnet::Backpropagate(v7, &v34, 0, a6, v19);
      }

      if (*(v11 + 176) == 1)
      {
        v12 = (kaldi::nnet1::Nnet::InputDim(v7, v24, v25, v26, v27) + v12);
      }

      if ((*(v11 + 177) & 1) == 0)
      {
        v13 = (kaldi::nnet1::Nnet::OutputDim(v7, v24, v25, v26, v27) + v13);
      }

      v34 = &unk_1F42BFE90;
      v35 = 0u;
      v36 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v34);
      v7 = (v7 + 376);
    }

    while (v7 != v8);
  }

  return result;
}

void sub_1C308D3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, __int128 a18, __int128 a19, void *a20)
{
  kaldi::CuMatrix<float>::~CuMatrix(&a11);
  a17 = &unk_1F42BFE90;
  a18 = 0u;
  a19 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a17);
  a20 = &unk_1F42BFE90;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a20);
  _Unwind_Resume(a1);
}

char **kaldi::nnet1::ParallelComponent::SetGradientNormalization(char **result, uint64_t a2, float a3)
{
  v3 = result[23];
  if (v3 != result[24])
  {
    v6 = result;
    do
    {
      result = kaldi::nnet1::Nnet::SetGradientNormalization(v3, a2, 0, 0, a3);
      v3 += 47;
    }

    while (v3 != v6[24]);
  }

  return result;
}

void kaldi::nnet1::ParallelComponent::UpdateWeights(kaldi::nnet1::ParallelComponent *this, void *a2, uint64_t a3)
{
  for (i = *(this + 23); i != *(this + 24); i += 47)
  {
    kaldi::nnet1::Nnet::Update(i, a2, a3);
  }
}

uint64_t virtual thunk tokaldi::nnet1::ParallelComponent::NumParams(kaldi::nnet1::ParallelComponent *this)
{
  v1 = this + *(*this - 192);
  v2 = *(v1 + 23);
  v3 = *(v1 + 24);
  if (v2 == v3)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  do
  {
    v4 = kaldi::nnet1::Nnet::NumParams(v2) + v4;
    v2 = (v2 + 376);
  }

  while (v2 != v3);
  return v4;
}

float virtual thunk tokaldi::nnet1::ParallelComponent::SumParams(kaldi::nnet1::ParallelComponent *this)
{
  v1 = this + *(*this - 224);
  v2 = *(v1 + 23);
  v3 = *(v1 + 24);
  v4 = 0.0;
  while (v2 != v3)
  {
    v4 = v4 + kaldi::nnet1::Nnet::SumParams(v2);
    v2 = (v2 + 376);
  }

  return v4;
}

char **virtual thunk tokaldi::nnet1::ParallelComponent::SetGradientNormalization(char **result, uint64_t a2, float a3)
{
  v3 = result + *(*result - 32);
  for (i = *(v3 + 23); i != *(v3 + 24); i += 47)
  {
    result = kaldi::nnet1::Nnet::SetGradientNormalization(i, a2, 0, 0, a3);
  }

  return result;
}

void virtual thunk tokaldi::nnet1::ParallelComponent::UpdateWeights(kaldi::nnet1::ParallelComponent *this, void *a2, uint64_t a3)
{
  v3 = this + *(*this - 272);
  for (i = *(v3 + 23); i != *(v3 + 24); i += 47)
  {
    kaldi::nnet1::Nnet::Update(i, a2, a3);
  }
}

void sub_1C308DAF0(_Unwind_Exception *a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SentenceAveragingComponent::Info(kaldi::nnet1::SentenceAveragingComponent *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "nested_network {\n");
  kaldi::nnet1::Nnet::Info(__p, (this + 88));
  if ((v10 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v11, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v12, "}\n");
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1C308DC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SentenceAveragingComponent::InfoGradient(kaldi::nnet1::SentenceAveragingComponent *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "nested_gradient {\n");
  kaldi::nnet1::Nnet::InfoGradient((this + 88), __p);
  if ((v10 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v11, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v12, "}\n");
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1C308DD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SentenceAveragingComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v7 = a2 + 4;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  while ((*(v7 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v39, a4, a5);
    if (SHIBYTE(v41) < 0)
    {
      if (v40 == 17)
      {
        if (*v39 == 0x4E64657473654E3CLL && v39[1] == 0x6F746F725074656ELL && *(v39 + 16) == 62)
        {
LABEL_51:
          v12 = &v42;
          goto LABEL_52;
        }
      }

      else if (v40 == 20)
      {
        v13 = *v39 == 0x4E64657473654E3CLL && v39[1] == 0x6E656C694674656ELL;
        if (v13 && *(v39 + 4) == 1046834529)
        {
          goto LABEL_14;
        }
      }

      if (v40 != 17)
      {
        goto LABEL_79;
      }

      v17 = v39;
    }

    else
    {
      if (HIBYTE(v41) != 17)
      {
        if (HIBYTE(v41) != 20)
        {
          goto LABEL_79;
        }

        v10 = v39 == 0x4E64657473654E3CLL && v40 == 0x6E656C694674656ELL;
        if (!v10 || v41 != 1046834529)
        {
          goto LABEL_79;
        }

LABEL_14:
        v12 = &v45;
LABEL_52:
        kaldi::ReadToken(a2, 0, v12, v8, v9);
        goto LABEL_53;
      }

      if (v39 == 0x4E64657473654E3CLL && v40 == 0x6F746F725074656ELL && v41 == 62)
      {
        goto LABEL_51;
      }

      v17 = &v39;
    }

    v20 = *v17;
    v21 = v17[1];
    v22 = *(v17 + 16);
    if (v20 != 0x61526E7261654C3CLL || v21 != 0x726F746361466574 || v22 != 62)
    {
LABEL_79:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-sentence-averaging-component.h", 56);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Unknown token ", 14);
      if (v41 >= 0)
      {
        v33 = &v39;
      }

      else
      {
        v33 = v39;
      }

      if (v41 >= 0)
      {
        v34 = HIBYTE(v41);
      }

      else
      {
        v34 = v40;
      }

      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " Typo in config?", 16);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
    }

    kaldi::ReadBasicType<float>(a2, 0, (a1 + 464));
LABEL_53:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v25 = HIBYTE(v44);
  if (SHIBYTE(v44) < 0)
  {
    if (!v43)
    {
      goto LABEL_58;
    }

LABEL_56:
    v26 = 1;
  }

  else
  {
    if (HIBYTE(v44))
    {
      goto LABEL_56;
    }

LABEL_58:
    v26 = 0;
  }

  if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
    if (v26 == (SHIBYTE(v47) == 0))
    {
      if (!HIBYTE(v47))
      {
        goto LABEL_62;
      }

LABEL_67:
      kaldi::nnet1::Nnet::Read((a1 + 88), &v45);
      v25 = HIBYTE(v44);
      if (v44 < 0)
      {
        goto LABEL_68;
      }

LABEL_63:
      if (!v25)
      {
        goto LABEL_70;
      }

LABEL_69:
      kaldi::nnet1::Nnet::Init((a1 + 88), &v42);
      goto LABEL_70;
    }

LABEL_86:
    v36 = "(nested_nnet_proto != ) ^ (nested_nnet_filename != )";
    v37 = 60;
LABEL_89:
    kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-sentence-averaging-component.h", v37, v36, a5);
  }

  if ((v26 ^ (v46 == 0)))
  {
    goto LABEL_86;
  }

  if (v46)
  {
    goto LABEL_67;
  }

LABEL_62:
  if ((v44 & 0x8000000000000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_68:
  if (v43)
  {
    goto LABEL_69;
  }

LABEL_70:
  v27 = *(a1 + 8);
  if (v27 != kaldi::nnet1::Nnet::InputDim((a1 + 88), a2, a3, a4, a5))
  {
    v36 = "InputDim() == nnet_.InputDim()";
    v37 = 64;
    goto LABEL_89;
  }

  v31 = *(a1 + 12);
  if (v31 != *(a1 + 8) + kaldi::nnet1::Nnet::OutputDim((a1 + 88), v28, v29, v30, a5))
  {
    v36 = "OutputDim() == nnet_.OutputDim() + InputDim()";
    v37 = 65;
    goto LABEL_89;
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }
}

void sub_1C308E130(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  memset(&v31[1], 0, 24);
  v32 = 0;
  v8 = *(a3 + 32);
  v31[0] = &unk_1F42BFED8;
  v31[4] = v8;
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>((a1 + 88), a2, v31, a4, a5);
  v9 = *(a2 + 16);
  v14 = kaldi::nnet1::Nnet::OutputDim((a1 + 88), v10, v11, v12, v13);
  v29[1] = 0;
  v29[2] = 0;
  v29[0] = &unk_1F42BFF70;
  v30 = 0;
  kaldi::CuVector<float>::Resize(v29, v14, 0, v15, v16);
  v30 = *(a3 + 32);
  kaldi::CuVectorBase<float>::AddRowSumMat(v29, v31, v17, v18, v19);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v26, a3, 0, *(a3 + 20), 0, v14);
  kaldi::CuMatrixBase<float>::AddVecToRows(&v26, v29, v20, v21, v22, 1.0, 0.0);
  v26 = &unk_1F42BFE90;
  v27 = 0u;
  v28 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v26);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v26, a3, 0, *(a3 + 20), v14, v9);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v26, a2, 111, v23, v24);
  v26 = &unk_1F42BFE90;
  v27 = 0u;
  v28 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v26);
  kaldi::CuVector<float>::~CuVector(v29);
  return kaldi::CuMatrix<float>::~CuMatrix(v31);
}

void sub_1C308E334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v3 = &unk_1F42BFE90;
  v5 = 0u;
  v6 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(va);
  kaldi::CuVector<float>::~CuVector(va1);
  kaldi::CuMatrix<float>::~CuMatrix(va2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::BackpropagateFnc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (a5)
  {
    v7 = *(a2 + 16);
    v8 = kaldi::nnet1::Nnet::OutputDim((result + 88), a2, a3, a4, a5);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v11, a4, 0, *(a4 + 20), v8, v7);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, &v11, 111, v9, v10);
    v11 = &unk_1F42BFE90;
    v12 = 0u;
    v13 = 0u;
    return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v11);
  }

  return result;
}

void sub_1C308E45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, __int128 a11, __int128 a12)
{
  a10 = &unk_1F42BFE90;
  a11 = 0u;
  a12 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::ReadData(_DWORD *a1, uint64_t *a2, int a3)
{
  kaldi::nnet1::Nnet::Read((a1 + 22), a2, a3);
  if (kaldi::nnet1::Nnet::InputDim((a1 + 22), v4, v5, v6, v7) != a1[2])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-sentence-averaging-component.h", 0x46, "nnet_.InputDim() == InputDim()", v11);
  }

  result = kaldi::nnet1::Nnet::OutputDim((a1 + 22), v8, v9, v10, v11);
  if (a1[2] + result != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-sentence-averaging-component.h", 0x47, "nnet_.OutputDim() + InputDim() == OutputDim()", v13);
  }

  return result;
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::GetParams(uint64_t a1, void **a2)
{
  v3 = (a1 + 88);
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);

  return kaldi::nnet1::Nnet::GetParams(v3, a2);
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::SetParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-sentence-averaging-component.h", 0x52, "wei_src.Dim() == NumParams()", v5);
  }

  return kaldi::nnet1::Nnet::SetParams((a1 + 88), a2);
}

void *kaldi::nnet1::SentenceAveragingComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v9 = kaldi::nnet1::Nnet::OutputDim((a1 + 88), a2, a3, a4, a5);
  v10 = *(a3 + 20);
  v24[1] = 0;
  v24[2] = 0;
  v24[0] = &unk_1F42BFF70;
  v24[3] = a4;
  kaldi::CuVector<float>::Resize(v24, v9, 1u, v11, v12);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v21, a3, 0, *(a3 + 20), 0, v9);
  kaldi::CuVectorBase<float>::AddRowSumMat(v24, &v21, v13, v14, v15);
  v21 = &unk_1F42BFE90;
  v22 = 0u;
  v23 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v21);
  kaldi::CuMatrix<float>::CuMatrix(&v21, v10, v9, 1u, a4, 0);
  kaldi::CuMatrixBase<float>::AddVecToRows(&v21, v24, v16, v17, v18, 1.0, 0.0);
  kaldi::nnet1::Nnet::Backpropagate((a1 + 88), &v21, 0, a5, v19);
  kaldi::CuMatrix<float>::~CuMatrix(&v21);
  return kaldi::CuVector<float>::~CuVector(v24);
}

void sub_1C308E78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SentenceAveragingComponent::SetTrainOptions(kaldi::nnet1::SentenceAveragingComponent *this, const kaldi::nnet1::NnetTrainOptions *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = &unk_1F42CB198;
  *v6 = *(a2 + 8);
  *(&v6[3] + 3) = *(a2 + 23);
  v6[0] = *(this + 116) * v6[0];
  kaldi::nnet1::Nnet::SetTrainOptions((this + 88), this + 6, 1, a4, a5);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&v5);
}

void sub_1C308E874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::CompressedWordTransComponent::Info(kaldi::nnet1::CompressedWordTransComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  (*(*this + 168))(this, &v3, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v3, "\n CompressedWordTrans table", 27);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v7);
}

void sub_1C308EA90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::CompressedWordTransComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 16);
  if (v5 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-trans-component.h", 0x38, "in.NumCols() == input_dim_", a5);
  }

  v9 = (a1 + 80);
  v8 = *(a1 + 80);
  if (v8)
  {
    LODWORD(v8) = *(v8 + 8);
  }

  if (*(a1 + 96) != v8 / v5)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-trans-component.h", 0x39, "voc_size_ == vec_table_.NumRows() / input_dim_", a5);
  }

  kaldi::CuMatrix<float>::CuMatrix(v16, a2, 111);
  kaldi::CuMatrixBase<float>::AddVecToRows(v16, a1 + 48, v10, v11, v12, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::SetZero(a3);
  kaldi::CuMatrixBase<float>::SummarizeVec(a3, v9, v16, v13, v14);
  return kaldi::CuMatrix<float>::~CuMatrix(v16);
}

void kaldi::nnet1::CompressedWordTransComponent::ReadData(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  kaldi::CompressedMatrix::Read(a1 + 80, a2, a3, a4);
  v6 = *(a1 + 80);
  if (!v6)
  {
    v7 = *(a1 + 12);
    if (!v7)
    {
      v8 = *(a1 + 8);
      goto LABEL_7;
    }

LABEL_17:
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-trans-component.h", 0x25, "vec_table_.NumCols() == output_dim_", v5);
  }

  if (*(v6 + 12) != *(a1 + 12))
  {
    goto LABEL_17;
  }

  v7 = *(v6 + 8);
  v8 = *(a1 + 8);
  if (v7 % v8)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-trans-component.h", 0x26, "vec_table_.NumRows() % input_dim_ == 0", v5);
  }

LABEL_7:
  v9 = v7 / v8;
  *(a1 + 96) = v9;
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = (v8 + 3) & 0xFFFFFFFC;
    v13 = (*(a1 + 56) + 8);
    v14 = xmmword_1C378AEF0;
    v15 = xmmword_1C378AF00;
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v11, v15));
      if (vuzp1_s16(v17, *v11.i8).u8[0])
      {
        *(v13 - 2) = v10;
      }

      if (vuzp1_s16(v17, *&v11).i8[2])
      {
        *(v13 - 1) = (v9 + v10);
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v14))).i32[1])
      {
        *v13 = (2 * v9 + v10);
        v13[1] = (3 * v9 + v10);
      }

      v14 = vaddq_s64(v14, v16);
      v15 = vaddq_s64(v15, v16);
      v10 += 4 * v9;
      v13 += 4;
      v12 -= 4;
    }

    while (v12);
  }
}

void sub_1C308EDD4(_Unwind_Exception *a1)
{
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::CompressedWordVecComponent::Info(kaldi::nnet1::CompressedWordVecComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  (*(*this + 168))(this, &v3, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v3, "\n CompressedWordVec table", 25);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v7);
}

void sub_1C308EF98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::Info(kaldi::nnet1::SharedNceComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  (*(*this + 168))(this, &v18, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "\n linearity", 11);
  kaldi::nnet1::MomentStatistics<float>(this + 88);
  if ((v17 & 0x80u) == 0)
  {
    v3 = v16;
  }

  else
  {
    v3 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v16[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n bias", 6);
  kaldi::nnet1::MomentStatistics<float>(this + 34, v7, v8, v9, v10);
  if ((v15 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v12 = v15;
  }

  else
  {
    v12 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v11, v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::stringbuf::str();
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v22);
}

void sub_1C308F258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::InfoGradient(kaldi::nnet1::SharedNceComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n  linearity_grad", 17);
  kaldi::nnet1::MomentStatistics<float>(this + 216);
  if ((v21 & 0x80u) == 0)
  {
    v3 = v20;
  }

  else
  {
    v3 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v4 = v21;
  }

  else
  {
    v4 = v20[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", lr-coef ", 10);
  v6 = *(this + 102);
  v7 = std::ostream::operator<<();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n bias", 6);
  kaldi::nnet1::MomentStatistics<float>(this + 78, v9, v10, v11, v12);
  if ((v19 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v14 = v19;
  }

  else
  {
    v14 = __p[1];
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", bias-lr-coef ", 15);
  v16 = *(this + 103);
  std::ostream::operator<<();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  std::stringbuf::str();
  v22 = *MEMORY[0x1E69E54E8];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v26);
}

void sub_1C308F4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SharedNceComponent::InitData(unsigned int *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v86 = 2.0;
  v87 = -1073741824;
  v85 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v84);
  kaldi::nnet1::Component::TypeToMarker(a1[104], &v83);
  v82 = -1;
  memset(v81, 0, sizeof(v81));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_142;
    }

    kaldi::ReadToken(a2, 0, v81, v6, v7);
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v81[2]) <= 0xCu)
      {
        if (HIBYTE(v81[2]) <= 0xAu)
        {
          if (HIBYTE(v81[2]) != 9)
          {
            if (HIBYTE(v81[2]) != 10)
            {
              goto LABEL_174;
            }

            if (v81[0] != 0x61654D736169423CLL || LOWORD(v81[1]) != 15982)
            {
              goto LABEL_174;
            }

LABEL_22:
            v12 = &v87;
            goto LABEL_122;
          }

          v25 = v81;
          goto LABEL_105;
        }

        if (HIBYTE(v81[2]) != 11)
        {
          if (v81[0] != 0x536D6F646E61523CLL || LODWORD(v81[1]) != 1046766949)
          {
            v37 = v81;
            goto LABEL_137;
          }

          goto LABEL_66;
        }

        if (v81[0] != 0x6E6152736169423CLL || *(v81 + 3) != 0x3E65676E61527361)
        {
          goto LABEL_174;
        }

        goto LABEL_121;
      }

      if (HIBYTE(v81[2]) <= 0x11u)
      {
        if (HIBYTE(v81[2]) == 13)
        {
          if (v81[0] != 0x74536D617261503CLL || *(v81 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_174;
          }

          goto LABEL_115;
        }

        if (HIBYTE(v81[2]) != 15)
        {
          goto LABEL_174;
        }

        v13 = v81[0] == 0x61526E7261654C3CLL && *(v81 + 7) == 0x3E66656F43657461;
LABEL_35:
        v12 = (a1 + 102);
        if (!v13)
        {
          goto LABEL_174;
        }

LABEL_122:
        kaldi::ReadBasicType<float>(a2, 0, v12);
        goto LABEL_133;
      }

      if (HIBYTE(v81[2]) == 18)
      {
        if (v81[0] != 0x6E6569646172473CLL || v81[1] != 0x7079546D726F4E74 || LOWORD(v81[2]) != 15973)
        {
          goto LABEL_174;
        }

LABEL_131:
        v24 = &v83;
        goto LABEL_132;
      }

      if (HIBYTE(v81[2]) != 19)
      {
        goto LABEL_174;
      }

      v16 = v81[0] == 0x61654C736169423CLL && v81[1] == 0x6F43657461526E72 && *(&v81[1] + 3) == 0x3E66656F43657461;
      v12 = (a1 + 103);
      if (v16)
      {
        goto LABEL_122;
      }

      if (v81[0] != 0x61725474696E493CLL || v81[1] != 0x79546D726F66736ELL || *(&v81[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_174;
      }

      goto LABEL_84;
    }

    if (v81[1] <= 12)
    {
      break;
    }

    if (v81[1] <= 17)
    {
      if (v81[1] != 13)
      {
        if (v81[1] != 15)
        {
          goto LABEL_174;
        }

        v13 = *v81[0] == 0x61526E7261654C3CLL && *(v81[0] + 7) == 0x3E66656F43657461;
        goto LABEL_35;
      }

      if (*v81[0] != 0x74536D617261503CLL || *(v81[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_174;
      }

LABEL_115:
      v12 = &v85;
      goto LABEL_122;
    }

    if (v81[1] == 18)
    {
      if (*v81[0] != 0x6E6569646172473CLL || *(v81[0] + 1) != 0x7079546D726F4E74 || *(v81[0] + 8) != 15973)
      {
        goto LABEL_135;
      }

      goto LABEL_131;
    }

    if (v81[1] != 19)
    {
      goto LABEL_174;
    }

    v21 = *v81[0] == 0x61654C736169423CLL && *(v81[0] + 1) == 0x6F43657461526E72 && *(v81[0] + 11) == 0x3E66656F43657461;
    v12 = (a1 + 103);
    if (v21)
    {
      goto LABEL_122;
    }

    if (*v81[0] != 0x61725474696E493CLL || *(v81[0] + 1) != 0x79546D726F66736ELL || *(v81[0] + 11) != 0x3E657079546D726FLL)
    {
      goto LABEL_135;
    }

LABEL_84:
    v24 = &v84;
LABEL_132:
    kaldi::ReadToken(a2, 0, v24, v8, v9);
LABEL_133:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v81[1] > 10)
  {
    if (v81[1] != 11)
    {
      if (*v81[0] != 0x536D6F646E61523CLL || *(v81[0] + 2) != 1046766949)
      {
        goto LABEL_136;
      }

LABEL_66:
      kaldi::ReadBasicType<int>(a2, 0, &v82);
      goto LABEL_133;
    }

    if (*v81[0] != 0x6E6152736169423CLL || *(v81[0] + 3) != 0x3E65676E61527361)
    {
      goto LABEL_174;
    }

LABEL_121:
    v12 = &v86;
    goto LABEL_122;
  }

  if (v81[1] != 9)
  {
    if (v81[1] != 10)
    {
      goto LABEL_174;
    }

    if (*v81[0] != 0x61654D736169423CLL || *(v81[0] + 4) != 15982)
    {
      goto LABEL_174;
    }

    goto LABEL_22;
  }

  v25 = v81[0];
LABEL_105:
  v30 = *v25;
  v31 = *(v25 + 8);
  v32 = v30 == 0x6461724778614D3CLL && v31 == 62;
  v12 = (a1 + 105);
  if (v32)
  {
    goto LABEL_122;
  }

  if ((HIBYTE(v81[2]) & 0x80) == 0)
  {
    goto LABEL_174;
  }

LABEL_135:
  if (v81[1] != 12)
  {
LABEL_174:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v77, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 78);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "Unknown token ", 14);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v68 = v81;
    }

    else
    {
      v68 = v81[0];
    }

    if (SHIBYTE(v81[2]) >= 0)
    {
      v69 = HIBYTE(v81[2]);
    }

    else
    {
      v69 = v81[1];
    }

    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v68, v69);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " (ParamStddev|BiasMean|BiasRange|LearnRateCoef|BiasLearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 119);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v77);
  }

LABEL_136:
  v37 = v81[0];
LABEL_137:
  v38 = *v37;
  v39 = *(v37 + 2);
  if (v38 != 0x6E6F706D6F432F3CLL || v39 != 1047817829)
  {
    goto LABEL_174;
  }

LABEL_142:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v84);
  a1[104] = kaldi::nnet1::Component::MarkerToGradientNormType(&v83);
  if (v82 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v82);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v77, a3);
  kaldi::Matrix<float>::Matrix(v75, a1[3], a1[2], 0, 0);
  v45 = a1[3];
  if (v45 < 1)
  {
    goto LABEL_160;
  }

  v46 = 0;
  v47 = a1[2];
  while (2)
  {
    if (v47 < 1)
    {
      goto LABEL_159;
    }

    v48 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v46 == v48)
          {
            v50 = 1.0;
          }

          else
          {
            v50 = 0.0;
          }

          goto LABEL_156;
        case 2:
          v51 = *&v85;
          kaldi::GaussRandomNumber::Rand(v77, 0, v42, v43, v44);
          v50 = v51 * v52;
LABEL_156:
          *(v75[0] + v46 * v76 + v48) = v50;
          v47 = a1[2];
          break;
        case 1:
          v49 = *&v85;
          v50 = (kaldi::UniformRandomNumber::RandUniform(a3, 0, v42, v43, v44) + -0.5) * (v49 + v49);
          goto LABEL_156;
      }

      if (++v48 < v47)
      {
        continue;
      }

      break;
    }

    v45 = a1[3];
LABEL_159:
    if (++v46 < v45)
    {
      continue;
    }

    break;
  }

LABEL_160:
  kaldi::CuMatrix<float>::operator=((a1 + 22), v75);
  v53 = a1[3];
  v73 = 0;
  v74 = 0;
  v72 = 0;
  kaldi::Vector<float>::Resize(&v72, v53, 0, v54, v55);
  if (a1[3] < 1)
  {
    v63 = v73;
  }

  else
  {
    v59 = 0;
    do
    {
      v60 = *&v87;
      v61 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v56, v57, v58);
      v62 = v60 + (v61 + -0.5) * v86;
      v63 = v73;
      v72[v59++] = v62;
    }

    while (v59 < a1[3]);
  }

  kaldi::CuVector<float>::Resize((a1 + 34), v63, 1u, v57, v58);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 34, &v72, v64, v65, v66);
  kaldi::Vector<float>::Destroy(&v72);
  kaldi::Matrix<float>::~Matrix(v75);
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  v75[0] = &v78;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v75);
  if (SHIBYTE(v81[2]) < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }
}