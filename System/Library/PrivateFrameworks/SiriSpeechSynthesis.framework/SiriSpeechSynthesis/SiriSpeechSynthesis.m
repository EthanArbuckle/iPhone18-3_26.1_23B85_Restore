void sub_26907C2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D631550](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_26907D2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void sub_26907E0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_269080608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__353(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D631550](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__493(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _audioPlaybackServiceAudioQueueCallback(uint64_t a1, AudioQueueRef inAQ, AudioQueueBuffer *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v12, 0, sizeof(v12));
  AudioQueueGetCurrentTime(inAQ, 0, &v12, 0);
  v6 = SFSSGetLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    mAudioDataByteSize = a3->mAudioDataByteSize;
    *buf = 134218496;
    v14 = a1;
    v15 = 2048;
    mSampleTime = v12.mSampleTime;
    v17 = 2048;
    v18 = mAudioDataByteSize;
    _os_log_debug_impl(&dword_269079000, v6, OS_LOG_TYPE_DEBUG, "AudioPlaybackServices %p played audio buffer at sample time: %f, size: %ld", buf, 0x20u);
  }

  v7 = AudioQueueFreeBuffer(inAQ, a3);
  if (v7)
  {
    v8 = v7;
    v9 = SFSSGetLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v14) = v8;
      _os_log_error_impl(&dword_269079000, v9, OS_LOG_TYPE_ERROR, "Error AudioQueueFreeBuffer %d", buf, 8u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_269083F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, unsigned int a2, const char *a3)
{
  flatbuffers::FlatBufferBuilder::NotNested(this);
  *(this + 7) = *(this + 5);
  flatbuffers::FlatBufferBuilder::PreAlign(this, 4, *(this + 9));
  v5 = flatbuffers::FlatBufferBuilder::ReferTo(this, a2);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, v5);
  *(this + 71) = 1;
  return result;
}

double flatbuffers::FlatBufferBuilder::Release(flatbuffers::FlatBufferBuilder *this, uint64_t a2)
{
  if ((*(a2 + 71) & 1) == 0)
  {
    __assert_rtn("Finished", "flatbuffers.h", 1226, "finished");
  }

  v2 = *(a2 + 32);
  v3 = *(a2 + 8);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  *this = *a2;
  *(this + 8) = v3;
  *(this + 2) = v4;
  *(this + 3) = v2;
  *(this + 4) = v5;
  *(this + 5) = (v2 + v4 - v5);
  if (v3 == 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(*(v2 + 8));
    MEMORY[0x26D631190](v2, 0x1060C40C2B13FB5);
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (*this)
    {
      v4 = *(this + 4);
      (*(**this + 24))(*this);
    }

    else
    {
      MEMORY[0x26D631170](v3, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(*a1);
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    __assert_rtn("reallocate_downward", "flatbuffers.h", 604, "new_size > old_size");
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x26D631170);
  }
}

void flatbuffers::DetachedBuffer::~DetachedBuffer(flatbuffers::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      v5 = *(this + 3);
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x26D631170](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t flatbuffers::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1334, "!nested");
  }

  if (*(this + 64))
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1336, "!num_field_loc");
  }

  return this;
}

unint64_t flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

unint64_t flatbuffers::vector_downward::ensure_space(flatbuffers::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v6 = *(this + 5), v7 = v3 - v6, v3 < v6))
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 905, "cur_ >= scratch_ && scratch_ >= buf_");
  }

  v8 = *(this + 4);
  if (&v2[-v3] < a2)
  {
    v9 = v8 - v2 + v6;
    if (v8)
    {
      v10 = v8 >> 1;
    }

    else
    {
      v10 = *(this + 2);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    v11 = (*(this + 3) + v8 + v10 - 1) & -*(this + 3);
    *(this + 4) = v11;
    v12 = *this;
    if (v6)
    {
      if (v12)
      {
        v13 = (*(*v12 + 32))(v12);
      }

      else
      {
        v15 = &unk_2879AE5C0;
        v13 = flatbuffers::Allocator::reallocate_downward(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_2879AE5C0;
        operator new[]();
      }

      v13 = (*(*v12 + 16))(v12, v11);
    }

    LODWORD(v6) = v13;
    v8 = *(this + 4);
    v2 = &v13[v8 - v9];
    *(this + 5) = v13;
    *(this + 6) = v2;
    *(this + 7) = &v13[v7];
  }

  if ((v8 - v2 + v6) >= 0x7FFFFFFF)
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 909, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  return a2;
}

uint64_t flatbuffers::FlatBufferBuilder::ReferTo(flatbuffers::FlatBufferBuilder *this, unsigned int a2)
{
  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    __assert_rtn("ReferTo", "flatbuffers.h", 1321, "off && off <= GetSize()");
  }

  return v6 + 4;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  flatbuffers::vector_downward::ensure_space(a1, 4uLL);
  v4 = *(a1 + 48);
  *(v4 - 4) = a2;
  v4 -= 4;
  *(a1 + 48) = v4;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

unint64_t flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

unint64_t flatbuffers::vector_downward::fill(flatbuffers::vector_downward *this, unint64_t a2)
{
  result = flatbuffers::vector_downward::ensure_space(this, a2);
  *(this + 6) -= a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

void sub_2690849EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::NotNested(this);
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  flatbuffers::vector_downward::ensure_space(this, 1uLL);
  v6 = (*(this + 6) - 1);
  *(this + 6) = v6;
  *v6 = 0;
  if (a3)
  {
    flatbuffers::vector_downward::ensure_space(this, a3);
    v7 = (*(this + 6) - a3);
    *(this + 6) = v7;
    memcpy(v7, a2, a3);
  }

  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = flatbuffers::FlatBufferBuilder::ReferTo(result, a3);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1352, "nested");
  }

  v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  flatbuffers::vector_downward::ensure_space(this, v5);
  v6 = (*(this + 6) - v5);
  *(this + 6) = v6;
  bzero(v6, v5);
  v7 = v4 - a2;
  if ((v4 - a2) >= 0x10000)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1367, "table_object_size < 0x10000");
  }

  v8 = *(this + 6);
  if (!v8)
  {
    __assert_rtn("data", "flatbuffers.h", 933, "cur_");
  }

  v8[1] = v7;
  *v8 = *(this + 34);
  v9 = *(this + 7);
  if (!v9)
  {
    __assert_rtn("scratch_end", "flatbuffers.h", 943, "scratch_");
  }

  v10 = *(this + 16);
  v11 = v9 - 8 * v10;
  if (v10)
  {
    v12 = (v9 - 8 * v10);
    do
    {
      v13 = *(v12 + 2);
      if (*(v8 + v13))
      {
        __assert_rtn("EndTable", "flatbuffers.h", 1378, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
      }

      v14 = *v12;
      v12 += 2;
      *(v8 + v13) = v4 - v14;
    }

    while (v12 < v9);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v16 = *(this + 4);
  v15 = *(this + 5);
  v17 = v16 - v8 + v15;
  if (*(this + 81))
  {
    if (!v15)
    {
      __assert_rtn("scratch_data", "flatbuffers.h", 938, "buf_");
    }

    if (v15 < v11)
    {
      v18 = *v8;
      v19 = v15 + v16;
      v20 = *(this + 5);
      while (1)
      {
        v21 = *v20;
        if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v8, v18))
        {
          break;
        }

        if (++v20 >= v11)
        {
          v17 = v16 - v8 + v15;
          goto LABEL_21;
        }
      }

      v8 = (v8 + (v16 - v8 + v15 - v4));
      *(this + 6) = v8;
      v17 = v21;
    }
  }

LABEL_21:
  if (v17 == v16 + v15 - v8)
  {
    flatbuffers::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v17;
    *(this + 7) = v22 + 1;
    v16 = *(this + 4);
    v15 = *(this + 5);
  }

  *(v15 + v16 - v4) = v17 - v4;
  *(this + 70) = 0;
  return v4;
}

unint64_t flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);
    result = flatbuffers::vector_downward::ensure_space(v4, 8uLL);
    **(v4 + 56) = v5 | (a2 << 32);
    *(v4 + 56) += 8;
    ++*(v4 + 64);
    v6 = *(v4 + 68);
    if (v6 <= a2)
    {
      LOWORD(v6) = a2;
    }

    *(v4 + 68) = v6;
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(flatbuffers::FlatBufferBuilder *a1, const void *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::StartVector(a1, a3, 1uLL);
  if (a3)
  {
    flatbuffers::vector_downward::ensure_space(a1, a3);
    v6 = (*(a1 + 6) - a3);
    *(a1 + 6) = v6;
    memcpy(v6, a2, a3);
  }

  return flatbuffers::FlatBufferBuilder::EndVector(a1, a3);
}

unint64_t flatbuffers::FlatBufferBuilder::StartVector(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  flatbuffers::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return flatbuffers::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::EndVector(flatbuffers::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndVector", "flatbuffers.h", 1562, "nested");
  }

  *(this + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a2);
}

BOOL siri::speech::schema_fb::UserLanguageProfile::Verify(siri::speech::schema_fb::UserLanguageProfile *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 1uLL, 0)))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 >= 7u && (v8 = v7[3]) != 0)
          {
            v9 = this + v8 + *(this + v8);
          }

          else
          {
            v9 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v9);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v10 = (this - *this);
              if (*v10 >= 9u && (v11 = v10[4]) != 0)
              {
                v12 = this + v11 + *(this + v11);
              }

              else
              {
                v12 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v12);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyTableStart(flatbuffers::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL flatbuffers::Table::VerifyOffset(flatbuffers::Table *this, const flatbuffers::Verifier *a2, unsigned int a3)
{
  v3 = (this - *this);
  if (*v3 <= a3)
  {
    return 1;
  }

  v4 = *(v3 + a3);
  if (!v4)
  {
    return 1;
  }

  v5 = this + v4 - *a2;
  if (v5 & 3) != 0 && (*(a2 + 40))
  {
    return 0;
  }

  result = 0;
  v7 = *(a2 + 1);
  if (v7 >= 5 && v7 - 4 >= v5)
  {
    v8 = *(*a2 + v5);
    if (v8 >= 1)
    {
      return v7 - 1 >= v5 + v8;
    }

    return 0;
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOrString(flatbuffers::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL flatbuffers::Verifier::VerifyString(flatbuffers::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = flatbuffers::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

void sub_2690857C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269085A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::UserAcousticProfile::Verify(siri::speech::schema_fb::UserAcousticProfile *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v9 + *(this + v9), 1uLL, 0)))
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v10 = (this - *this);
              if (*v10 >= 9u && (v11 = v10[4]) != 0)
              {
                v12 = this + v11 + *(this + v11);
              }

              else
              {
                v12 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v12);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_269086084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

flatbuffers::vector_downward *flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(flatbuffers::vector_downward *this, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    flatbuffers::FlatBufferBuilder::Align(this, 1uLL);
    flatbuffers::vector_downward::ensure_space(v5, 1uLL);
    v6 = (*(v5 + 6) - 1);
    *(v5 + 6) = v6;
    *v6 = v3;
    v7 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10));
    this = flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

BOOL siri::speech::schema_fb::RecognitionToken::Verify(siri::speech::schema_fb::RecognitionToken *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          goto LABEL_43;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          if (v9 < 9)
          {
            goto LABEL_43;
          }

          if (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2)
          {
            if (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (!v8[6] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v8[6] - *a2) && (v9 < 0xF || !v8[7] || (result = 0, v14 = *(a2 + 1), v14 >= 2) && v14 - 1 >= this + v8[7] - *a2)))
            {
LABEL_43:
              result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
              if (result)
              {
                v15 = v9 >= 0x11 && v8[8] ? this + v8[8] + *(this + v8[8]) : 0;
                result = flatbuffers::Verifier::VerifyString(a2, v15);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                  if (result)
                  {
                    v16 = (this - *this);
                    if (*v16 >= 0x13u && (v17 = v16[9]) != 0)
                    {
                      v18 = this + v17 + *(this + v17);
                    }

                    else
                    {
                      v18 = 0;
                    }

                    result = flatbuffers::Verifier::VerifyString(a2, v18);
                    if (result)
                    {
                      --*(a2 + 4);
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_269086BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269086DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(__n);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279C4BF28, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

BOOL siri::speech::schema_fb::RecognitionPhraseTokens::Verify(siri::speech::schema_fb::RecognitionPhraseTokens *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionToken>(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionToken>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RecognitionToken::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_269087674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690878BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::RecognitionPhraseTokensAlternatives::Verify(siri::speech::schema_fb::RecognitionPhraseTokensAlternatives *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokens>(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 2) && v10 - 1 >= this + v9 - *a2)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokens>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RecognitionPhraseTokens::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_269087F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269088150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>>>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = flatbuffers::FlatBufferBuilder::ReferTo(result, a2);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2, 4, v3);
  }

  return result;
}

BOOL siri::speech::schema_fb::RecognitionSausage::Verify(siri::speech::schema_fb::RecognitionSausage *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RecognitionPhraseTokensAlternatives::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_269088788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690889AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_269088E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26908908C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<int>(flatbuffers::FlatBufferBuilder *a1, const void *a2, uint64_t a3)
{
  flatbuffers::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    flatbuffers::vector_downward::ensure_space(a1, 4 * a3);
    v6 = (*(a1 + 6) - 4 * a3);
    *(a1 + 6) = v6;
    memcpy(v6, a2, 4 * a3);
  }

  return flatbuffers::FlatBufferBuilder::EndVector(a1, a3);
}

void sub_2690895C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690897F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_269089AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::ItnAlignment::Verify(siri::speech::schema_fb::ItnAlignment *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_18;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      if (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2) && (v6 < 0xB || (v10 = v5[5]) == 0 || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v10 - *a2)))
      {
LABEL_18:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::RepeatedItnAlignment::Verify(siri::speech::schema_fb::RepeatedItnAlignment *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ItnAlignment>(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ItnAlignment>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::ItnAlignment::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_26908A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26908A894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::ChoiceAlignment::Verify(siri::speech::schema_fb::ChoiceAlignment *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 4uLL, 0)))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_16;
          }

          if (*(this - v7 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_16;
            }
          }

          v8 = *(this - v7 + 6);
          if (v8 && (v9 = (this + v8 + *(this + v8)), *v9))
          {
            v10 = 0;
            v11 = v9 + 1;
            while (siri::speech::schema_fb::RepeatedItnAlignment::Verify((v11 + *v11), a2))
            {
              ++v10;
              ++v11;
              if (v10 >= *v9)
              {
                goto LABEL_16;
              }
            }

            return 0;
          }

          else
          {
LABEL_16:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_26908AFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26908B6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (v56)
  {
    operator delete(v56);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a56)
  {
    operator delete(a56);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::RecognitionResult::Verify(siri::speech::schema_fb::RecognitionResult *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::RecognitionSausage::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::RecognitionSausage::Verify((this + v8 + *(this + v8)), a2)))
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v9 = *this;
              if (*(this - v9) < 9u)
              {
                goto LABEL_17;
              }

              if (*(this - v9 + 8))
              {
                result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v9 + 8) + *(this + *(this - v9 + 8)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v9 = *this;
                if (*(this - v9) < 9u)
                {
                  goto LABEL_17;
                }
              }

              v10 = *(this - v9 + 8);
              if (!v10)
              {
LABEL_17:
                v11 = 0;
              }

              else
              {
                v11 = (this + v10 + *(this + v10));
              }

              result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v11);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v12 = *this;
                  if (*(this - v12) < 0xBu)
                  {
                    goto LABEL_26;
                  }

                  if (*(this - v12 + 10))
                  {
                    result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v12 + 10) + *(this + *(this - v12 + 10)), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v12 = *this;
                    if (*(this - v12) < 0xBu)
                    {
                      goto LABEL_26;
                    }
                  }

                  v13 = *(this - v12 + 10);
                  if (!v13)
                  {
LABEL_26:
                    v14 = 0;
                  }

                  else
                  {
                    v14 = (this + v13 + *(this + v13));
                  }

                  result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v14);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v15 = *this;
                      if (*(this - v15) < 0xDu)
                      {
                        goto LABEL_35;
                      }

                      if (*(this - v15 + 12))
                      {
                        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v15 + 12) + *(this + *(this - v15 + 12)), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v15 = *this;
                        if (*(this - v15) < 0xDu)
                        {
                          goto LABEL_35;
                        }
                      }

                      v16 = *(this - v15 + 12);
                      if (!v16)
                      {
LABEL_35:
                        v17 = 0;
                      }

                      else
                      {
                        v17 = (this + v16 + *(this + v16));
                      }

                      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ItnAlignment>(a2, v17);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v18 = *this;
                          if (*(this - v18) < 0xFu)
                          {
                            goto LABEL_44;
                          }

                          if (*(this - v18 + 14))
                          {
                            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v18 + 14) + *(this + *(this - v18 + 14)), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v18 = *this;
                            if (*(this - v18) < 0xFu)
                            {
                              goto LABEL_44;
                            }
                          }

                          v19 = *(this - v18 + 14);
                          if (!v19)
                          {
LABEL_44:
                            v20 = 0;
                          }

                          else
                          {
                            v20 = (this + v19 + *(this + v19));
                          }

                          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ChoiceAlignment>(a2, v20);
                          if (result)
                          {
                            --*(a2 + 4);
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::AcousticFeature::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ChoiceAlignment>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::ChoiceAlignment::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_26908C5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26908CE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_26908D35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

flatbuffers::vector_downward *flatbuffers::FlatBufferBuilder::AddElement<double>(flatbuffers::vector_downward *this, uint64_t a2, double a3)
{
  v5 = this;
  if (a3 != 0.0 || *(this + 80) == 1)
  {
    flatbuffers::FlatBufferBuilder::Align(this, 8uLL);
    flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    v6 = *(v5 + 6);
    *(v6 - 8) = a3;
    v6 -= 8;
    *(v5 + 6) = v6;
    v7 = (*(v5 + 8) - v6 + *(v5 + 10));
    this = flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

BOOL siri::speech::schema_fb::RequestStatsResponse_::DoubleStat::Verify(siri::speech::schema_fb::RequestStatsResponse_::DoubleStat *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 9) && v10 - 8 >= this + v9 - *a2)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_26908DB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26908E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::RequestStatsResponse_::BoolStat::Verify(siri::speech::schema_fb::RequestStatsResponse_::BoolStat *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 2) && v10 - 1 >= this + v9 - *a2)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::RequestStatsResponse::Verify(siri::speech::schema_fb::RequestStatsResponse *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) >= 5u)
      {
        if (!*(this - v5 + 4))
        {
          goto LABEL_54;
        }

        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) >= 5u)
        {
LABEL_54:
          v6 = *(this - v5 + 4);
          if (v6)
          {
            v7 = (this + v6 + *(this + v6));
            if (*v7)
            {
              v8 = 0;
              v9 = v7 + 1;
              while (siri::speech::schema_fb::RequestStatsResponse_::BoolStat::Verify((v9 + *v9), a2))
              {
                ++v8;
                ++v9;
                if (v8 >= *v7)
                {
                  goto LABEL_12;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_12:
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (!result)
      {
        return result;
      }

      v10 = *this;
      if (*(this - v10) >= 7u)
      {
        if (!*(this - v10 + 6))
        {
          goto LABEL_55;
        }

        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v10 + 6) + *(this + *(this - v10 + 6)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v10 = *this;
        if (*(this - v10) >= 7u)
        {
LABEL_55:
          v11 = *(this - v10 + 6);
          if (v11)
          {
            v12 = (this + v11 + *(this + v11));
            if (*v12)
            {
              v13 = 0;
              v14 = v12 + 1;
              while (siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry::Verify((v14 + *v14), a2))
              {
                ++v13;
                ++v14;
                if (v13 >= *v12)
                {
                  goto LABEL_22;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_22:
      result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
      if (!result)
      {
        return result;
      }

      v15 = *this;
      if (*(this - v15) < 9u)
      {
        goto LABEL_29;
      }

      if (*(this - v15 + 8))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v15 + 8) + *(this + *(this - v15 + 8)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v15 = *this;
        if (*(this - v15) < 9u)
        {
          goto LABEL_29;
        }
      }

      v16 = *(this - v15 + 8);
      if (!v16)
      {
LABEL_29:
        v17 = 0;
      }

      else
      {
        v17 = (this + v16 + *(this + v16));
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>(a2, v17);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
        if (result)
        {
          v18 = (this - *this);
          if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
          {
            v20 = this + v19 + *(this + v19);
          }

          else
          {
            v20 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v20);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
            if (result)
            {
              v21 = (this - *this);
              if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
              {
                v23 = this + v22 + *(this + v22);
              }

              else
              {
                v23 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v23);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                if (result)
                {
                  v24 = (this - *this);
                  if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
                  {
                    v26 = this + v25 + *(this + v25);
                  }

                  else
                  {
                    v26 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v26);
                  if (result)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RequestStatsResponse_::DoubleStat::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_26908ED64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26908EFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

flatbuffers::vector_downward *flatbuffers::FlatBufferBuilder::AddElement<float>(flatbuffers::vector_downward *this, uint64_t a2, float a3)
{
  v5 = this;
  if (a3 != 0.0 || *(this + 80) == 1)
  {
    flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
    flatbuffers::vector_downward::ensure_space(v5, 4uLL);
    v6 = *(v5 + 6);
    *(v6 - 4) = a3;
    v6 -= 4;
    *(v5 + 6) = v6;
    v7 = (*(v5 + 8) - v6 + *(v5 + 10));
    this = flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

BOOL siri::speech::schema_fb::AcousticFeature::Verify(siri::speech::schema_fb::AcousticFeature *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = *(this - v5);
      if (v6 < 5)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v7 = *this;
        v8 = -v7;
        v6 = *(this - v7);
      }

      else
      {
        v8 = -v5;
      }

      if (v6 < 7 || (v9 = *(this + v8 + 6), !*(this + v8 + 6)) || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v9 - *a2)
      {
LABEL_12:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_26908F6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26908FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_26908FF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry::Verify(siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = siri::speech::schema_fb::AcousticFeature::Verify((this + v9 + *(this + v9)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_269090784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry::Verify(siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v9 - *a2)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::AudioAnalytics::Verify(siri::speech::schema_fb::AudioAnalytics *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) >= 5u)
      {
        if (!*(this - v5 + 4))
        {
          goto LABEL_7;
        }

        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) >= 5u)
        {
LABEL_7:
          v6 = *(this - v5 + 4);
          if (v6)
          {
            v7 = (this + v6 + *(this + v6));
            if (*v7)
            {
              v8 = 0;
              v9 = v7 + 1;
              while (siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry::Verify((v9 + *v9), a2))
              {
                ++v8;
                ++v9;
                if (v8 >= *v7)
                {
                  goto LABEL_12;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_12:
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v10 = *this;
        if (*(this - v10) >= 7u)
        {
          if (!*(this - v10 + 6))
          {
            goto LABEL_17;
          }

          result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v10 + 6) + *(this + *(this - v10 + 6)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v10 = *this;
          if (*(this - v10) >= 7u)
          {
LABEL_17:
            v11 = *(this - v10 + 6);
            if (v11)
            {
              v12 = (this + v11 + *(this + v11));
              if (*v12)
              {
                v13 = 0;
                v14 = v12 + 1;
                while (siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry::Verify((v14 + *v14), a2))
                {
                  ++v13;
                  ++v14;
                  if (v13 >= *v12)
                  {
                    goto LABEL_22;
                  }
                }

                return 0;
              }
            }
          }
        }

LABEL_22:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_26909111C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690917F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::LatnnMitigatorResult::Verify(siri::speech::schema_fb::LatnnMitigatorResult *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2)
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        if (v6 >= 7 && v5[3])
        {
          v8 = this + v5[3] + *(this + v5[3]);
        }

        else
        {
          v8 = 0;
        }

        result = flatbuffers::Verifier::VerifyString(a2, v8);
        if (result)
        {
          v9 = (this - *this);
          v10 = *v9;
          if (v10 < 9 || (!v9[4] || (result = 0, v11 = *(a2 + 1), v11 >= 9) && v11 - 8 >= this + v9[4] - *a2) && (v10 < 0xB || (v12 = v9[5]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v12 - *a2))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(siri::speech::schema_fb::FinalSpeechRecognitionResponse *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = *this;
                    v16 = *(this - v15);
                    if (v16 < 0xD)
                    {
                      goto LABEL_34;
                    }

                    if (*(this - v15 + 12))
                    {
                      result = siri::speech::schema_fb::RecognitionResult::Verify((this + *(this - v15 + 12) + *(this + *(this - v15 + 12))), a2);
                      if (!result)
                      {
                        return result;
                      }

                      v15 = *this;
                      v17 = -v15;
                      v16 = *(this - v15);
                    }

                    else
                    {
                      v17 = -v15;
                    }

                    if (v16 < 0xF || (v18 = *(this + v17 + 14), !*(this + v17 + 14)) || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v18 - *a2)
                    {
LABEL_34:
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                      if (result)
                      {
                        v20 = (this - v15);
                        v21 = *v20;
                        if (v21 < 0x11)
                        {
                          goto LABEL_48;
                        }

                        v22 = v20[8];
                        if (v22)
                        {
                          result = siri::speech::schema_fb::AudioAnalytics::Verify((this + v22 + *(this + v22)), a2);
                          if (!result)
                          {
                            return result;
                          }

                          v15 = *this;
                          v23 = -v15;
                          v21 = *(this - v15);
                        }

                        else
                        {
                          v23 = -v15;
                        }

                        if (v21 < 0x13 || ((v24 = this + v23, !*(v24 + 9)) || (result = 0, v25 = *(a2 + 1), v25 >= 5) && v25 - 4 >= this + *(v24 + 9) - *a2) && (v21 < 0x15 || (v26 = *(v24 + 10), !*(v24 + 10)) || (result = 0, v27 = *(a2 + 1), v27 >= 9) && v27 - 8 >= this + v26 - *a2))
                        {
LABEL_48:
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                          if (result)
                          {
                            v28 = (this - v15);
                            if (*v28 >= 0x17u && (v29 = v28[11]) != 0)
                            {
                              v30 = this + v29 + *(this + v29);
                            }

                            else
                            {
                              v30 = 0;
                            }

                            result = flatbuffers::Verifier::VerifyString(a2, v30);
                            if (result)
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x18u);
                              if (result)
                              {
                                v31 = (this - *this);
                                if (*v31 < 0x19u || (v32 = v31[12]) == 0 || (result = siri::speech::schema_fb::LatnnMitigatorResult::Verify((this + v32 + *(this + v32)), a2)))
                                {
                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Au);
                                  if (result)
                                  {
                                    v33 = (this - *this);
                                    if (*v33 >= 0x1Bu && (v34 = v33[13]) != 0)
                                    {
                                      v35 = this + v34 + *(this + v34);
                                    }

                                    else
                                    {
                                      v35 = 0;
                                    }

                                    result = flatbuffers::Verifier::VerifyString(a2, v35);
                                    if (result)
                                    {
                                      v36 = (this - *this);
                                      if (*v36 < 0x1Du || (v37 = v36[14]) == 0 || (result = 0, v38 = *(a2 + 1), v38 >= 2) && v38 - 1 >= this + v37 - *a2)
                                      {
                                        --*(a2 + 4);
                                        return 1;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_269092944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(siri::speech::schema_fb::PartialSpeechRecognitionResponse *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                    {
                      v17 = this + v16 + *(this + v16);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    result = flatbuffers::Verifier::VerifyString(a2, v17);
                    if (result)
                    {
                      v18 = (this - *this);
                      v19 = *v18;
                      if (v19 < 0xF || (!v18[7] || (result = 0, v20 = *(a2 + 1), v20 >= 2) && v20 - 1 >= this + v18[7] - *a2) && (v19 < 0x11 || (!v18[8] || (result = 0, v21 = *(a2 + 1), v21 >= 5) && v21 - 4 >= this + v18[8] - *a2) && (v19 < 0x13 || !v18[9] || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this + v18[9] - *a2)))
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                        if (result)
                        {
                          v23 = v19 >= 0x15 && v18[10] ? this + v18[10] + *(this + v18[10]) : 0;
                          result = flatbuffers::Verifier::VerifyString(a2, v23);
                          if (result)
                          {
                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                            if (result)
                            {
                              v24 = (this - *this);
                              if (*v24 >= 0x17u && (v25 = v24[11]) != 0)
                              {
                                v26 = this + v25 + *(this + v25);
                              }

                              else
                              {
                                v26 = 0;
                              }

                              result = flatbuffers::Verifier::VerifyString(a2, v26);
                              if (result)
                              {
                                --*(a2 + 4);
                                return 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690936B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

flatbuffers::vector_downward *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(flatbuffers::vector_downward *this, uint64_t a2, uint64_t a3)
{
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    flatbuffers::FlatBufferBuilder::Align(this, 8uLL);
    flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    v6 = *(v5 + 6);
    *(v6 - 8) = a3;
    v6 -= 8;
    *(v5 + 6) = v6;
    v7 = (*(v5 + 8) - v6 + *(v5 + 10));
    this = flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

BOOL siri::speech::schema_fb::StartSpeechRequest::Verify(siri::speech::schema_fb::StartSpeechRequest *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    v17 = (this - *this);
                    v18 = *v17;
                    if (v18 < 0xD || (!v17[6] || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v17[6] - *a2) && (v18 < 0xF || (!v17[7] || (result = 0, v20 = *(a2 + 1), v20 >= 2) && v20 - 1 >= this + v17[7] - *a2) && (v18 < 0x11 || !v17[8] || (result = 0, v21 = *(a2 + 1), v21 >= 2) && v21 - 1 >= this + v17[8] - *a2)))
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                      if (result)
                      {
                        v22 = v18 >= 0x13 && v17[9] ? this + v17[9] + *(this + v17[9]) : 0;
                        result = flatbuffers::Verifier::VerifyString(a2, v22);
                        if (result)
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                          if (result)
                          {
                            v23 = (this - *this);
                            if (*v23 >= 0x15u && (v24 = v23[10]) != 0)
                            {
                              v25 = this + v24 + *(this + v24);
                            }

                            else
                            {
                              v25 = 0;
                            }

                            result = flatbuffers::Verifier::VerifyString(a2, v25);
                            if (result)
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                              if (result)
                              {
                                v26 = (this - *this);
                                if (*v26 >= 0x17u && (v27 = v26[11]) != 0)
                                {
                                  v28 = this + v27 + *(this + v27);
                                }

                                else
                                {
                                  v28 = 0;
                                }

                                result = flatbuffers::Verifier::VerifyString(a2, v28);
                                if (result)
                                {
                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x18u);
                                  if (result)
                                  {
                                    v29 = (this - *this);
                                    if (*v29 >= 0x19u && (v30 = v29[12]) != 0)
                                    {
                                      v31 = this + v30 + *(this + v30);
                                    }

                                    else
                                    {
                                      v31 = 0;
                                    }

                                    result = flatbuffers::Verifier::VerifyString(a2, v31);
                                    if (result)
                                    {
                                      v32 = (this - *this);
                                      v33 = *v32;
                                      if (v33 < 0x1B)
                                      {
                                        goto LABEL_177;
                                      }

                                      if (!v32[13] || (result = 0, v34 = *(a2 + 1), v34 >= 5) && v34 - 4 >= this + v32[13] - *a2)
                                      {
                                        if (v33 < 0x1D || (!v32[14] || (result = 0, v35 = *(a2 + 1), v35 >= 2) && v35 - 1 >= this + v32[14] - *a2) && (v33 < 0x1F || (!v32[15] || (result = 0, v36 = *(a2 + 1), v36 >= 2) && v36 - 1 >= this + v32[15] - *a2) && (v33 < 0x21 || !v32[16] || (result = 0, v37 = *(a2 + 1), v37 >= 2) && v37 - 1 >= this + v32[16] - *a2)))
                                        {
LABEL_177:
                                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x22u);
                                          if (result)
                                          {
                                            v38 = v33 >= 0x23 && v32[17] ? this + v32[17] + *(this + v32[17]) : 0;
                                            result = flatbuffers::Verifier::VerifyString(a2, v38);
                                            if (result)
                                            {
                                              v39 = (this - *this);
                                              v40 = *v39;
                                              if (v40 < 0x25)
                                              {
                                                goto LABEL_178;
                                              }

                                              if (!v39[18] || (result = 0, v41 = *(a2 + 1), v41 >= 5) && v41 - 4 >= this + v39[18] - *a2)
                                              {
                                                if (v40 < 0x27)
                                                {
                                                  goto LABEL_178;
                                                }

                                                if (!v39[19] || (result = 0, v42 = *(a2 + 1), v42 >= 5) && v42 - 4 >= this + v39[19] - *a2)
                                                {
                                                  if (v40 < 0x29)
                                                  {
                                                    goto LABEL_178;
                                                  }

                                                  if (!v39[20] || (result = 0, v43 = *(a2 + 1), v43 >= 2) && v43 - 1 >= this + v39[20] - *a2)
                                                  {
                                                    if (v40 < 0x2B)
                                                    {
                                                      goto LABEL_178;
                                                    }

                                                    if (!v39[21] || (result = 0, v44 = *(a2 + 1), v44 >= 2) && v44 - 1 >= this + v39[21] - *a2)
                                                    {
                                                      if (v40 < 0x2D)
                                                      {
                                                        goto LABEL_178;
                                                      }

                                                      if (!v39[22] || (result = 0, v45 = *(a2 + 1), v45 >= 2) && v45 - 1 >= this + v39[22] - *a2)
                                                      {
                                                        if (v40 < 0x2F || (!v39[23] || (result = 0, v46 = *(a2 + 1), v46 >= 9) && v46 - 8 >= this + v39[23] - *a2) && (v40 < 0x31 || (!v39[24] || (result = 0, v47 = *(a2 + 1), v47 >= 9) && v47 - 8 >= this + v39[24] - *a2) && (v40 < 0x33 || !v39[25] || (result = 0, v48 = *(a2 + 1), v48 >= 2) && v48 - 1 >= this + v39[25] - *a2)))
                                                        {
LABEL_178:
                                                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x34u);
                                                          if (result)
                                                          {
                                                            v49 = v40 >= 0x35 && v39[26] ? this + v39[26] + *(this + v39[26]) : 0;
                                                            result = flatbuffers::Verifier::VerifyString(a2, v49);
                                                            if (result)
                                                            {
                                                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x36u);
                                                              if (result)
                                                              {
                                                                v50 = (this - *this);
                                                                if (*v50 >= 0x37u && (v51 = v50[27]) != 0)
                                                                {
                                                                  v52 = this + v51 + *(this + v51);
                                                                }

                                                                else
                                                                {
                                                                  v52 = 0;
                                                                }

                                                                result = flatbuffers::Verifier::VerifyString(a2, v52);
                                                                if (result)
                                                                {
                                                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x38u);
                                                                  if (result)
                                                                  {
                                                                    v53 = (this - *this);
                                                                    if (*v53 >= 0x39u && (v54 = v53[28]) != 0)
                                                                    {
                                                                      v55 = this + v54 + *(this + v54);
                                                                    }

                                                                    else
                                                                    {
                                                                      v55 = 0;
                                                                    }

                                                                    result = flatbuffers::Verifier::VerifyString(a2, v55);
                                                                    if (result)
                                                                    {
                                                                      v56 = (this - *this);
                                                                      v57 = *v56;
                                                                      if (v57 < 0x3B || (!v56[29] || (result = 0, v58 = *(a2 + 1), v58 >= 5) && v58 - 4 >= this + v56[29] - *a2) && (v57 < 0x3D || (!v56[30] || (result = 0, v59 = *(a2 + 1), v59 >= 2) && v59 - 1 >= this + v56[30] - *a2) && (v57 < 0x3F || !v56[31] || (result = 0, v60 = *(a2 + 1), v60 >= 2) && v60 - 1 >= this + v56[31] - *a2)))
                                                                      {
                                                                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x40u);
                                                                        if (result)
                                                                        {
                                                                          v61 = v57 >= 0x41 && v56[32] ? this + v56[32] + *(this + v56[32]) : 0;
                                                                          result = flatbuffers::Verifier::VerifyString(a2, v61);
                                                                          if (result)
                                                                          {
                                                                            v62 = (this - *this);
                                                                            v63 = *v62;
                                                                            if (v63 < 0x43 || !v62[33] || (result = 0, v64 = *(a2 + 1), v64 >= 5) && v64 - 4 >= this + v62[33] - *a2)
                                                                            {
                                                                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x44u);
                                                                              if (result)
                                                                              {
                                                                                v65 = v63 >= 0x45 && v62[34] ? this + v62[34] + *(this + v62[34]) : 0;
                                                                                result = flatbuffers::Verifier::VerifyString(a2, v65);
                                                                                if (result)
                                                                                {
                                                                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x46u);
                                                                                  if (result)
                                                                                  {
                                                                                    v66 = (this - *this);
                                                                                    if (*v66 >= 0x47u && (v67 = v66[35]) != 0)
                                                                                    {
                                                                                      v68 = this + v67 + *(this + v67);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v68 = 0;
                                                                                    }

                                                                                    result = flatbuffers::Verifier::VerifyString(a2, v68);
                                                                                    if (result)
                                                                                    {
                                                                                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x48u);
                                                                                      if (result)
                                                                                      {
                                                                                        v69 = (this - *this);
                                                                                        if (*v69 >= 0x49u && (v70 = v69[36]) != 0)
                                                                                        {
                                                                                          v71 = this + v70 + *(this + v70);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v71 = 0;
                                                                                        }

                                                                                        result = flatbuffers::Verifier::VerifyString(a2, v71);
                                                                                        if (result)
                                                                                        {
                                                                                          --*(a2 + 4);
                                                                                          return 1;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26909587C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269095E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690961FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::MultiUserStartSpeechRequest::Verify(siri::speech::schema_fb::MultiUserStartSpeechRequest *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::StartSpeechRequest::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_16;
          }

          if (*(this - v7 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_16;
            }
          }

          v8 = *(this - v7 + 6);
          if (v8 && (v9 = (this + v8 + *(this + v8)), *v9))
          {
            v10 = 0;
            v11 = v9 + 1;
            while (siri::speech::schema_fb::TextToSpeechResource::Verify((v11 + *v11), a2))
            {
              ++v10;
              ++v11;
              if (v10 >= *v9)
              {
                goto LABEL_16;
              }
            }

            return 0;
          }

          else
          {
LABEL_16:
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v12 = (this - *this);
              if (*v12 >= 9u && (v13 = v12[4]) != 0)
              {
                v14 = this + v13 + *(this + v13);
              }

              else
              {
                v14 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v14);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690969C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269096F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269097214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  flatbuffers::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = flatbuffers::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return flatbuffers::FlatBufferBuilder::EndVector(a1, a3);
}

BOOL siri::speech::schema_fb::ContextWithPronHints::Verify(siri::speech::schema_fb::ContextWithPronHints *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_15;
          }

          if (*(this - v8 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_15;
            }
          }

          v9 = *(this - v8 + 6);
          if (!v9)
          {
LABEL_15:
            v10 = 0;
          }

          else
          {
            v10 = (this + v9 + *(this + v9));
          }

          result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfStrings(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = (a2 + 1);
  do
  {
    result = flatbuffers::Verifier::VerifyString(a1, &v5[*v5]);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 4;
  }

  while (v4 < *a2);
  return result;
}

void sub_269097970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269097E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p)
{
  if (v32)
  {
    operator delete(v32);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SetSpeechContext::Verify(siri::speech::schema_fb::SetSpeechContext *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = *this;
                  if (*(this - v14) < 0xBu)
                  {
                    goto LABEL_30;
                  }

                  if (*(this - v14 + 10))
                  {
                    result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v14 + 10) + *(this + *(this - v14 + 10)), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v14 = *this;
                    if (*(this - v14) < 0xBu)
                    {
                      goto LABEL_30;
                    }
                  }

                  v15 = *(this - v14 + 10);
                  if (!v15)
                  {
LABEL_30:
                    v16 = 0;
                  }

                  else
                  {
                    v16 = (this + v15 + *(this + v15));
                  }

                  result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ContextWithPronHints>(a2, v16);
                  if (result)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ContextWithPronHints>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::ContextWithPronHints::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_269098854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SetSpeechProfile::Verify(siri::speech::schema_fb::SetSpeechProfile *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = siri::speech::schema_fb::UserLanguageProfile::Verify((this + v12 + *(this + v12)), a2)))
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v13 = (this - *this);
                  if (*v13 < 0xBu || (v14 = v13[5]) == 0 || (result = siri::speech::schema_fb::UserAcousticProfile::Verify((this + v14 + *(this + v14)), a2)))
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v15 = (this - *this);
                      if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                      {
                        v17 = this + v16 + *(this + v16);
                      }

                      else
                      {
                        v17 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v17);
                      if (result)
                      {
                        --*(a2 + 4);
                        return 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690992BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SetEndpointerState::Verify(siri::speech::schema_fb::SetEndpointerState *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

void sub_269099788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26909991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269099D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26909A1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26909A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::FinishAudio::Verify(siri::speech::schema_fb::FinishAudio *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || !v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2))
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
      if (result && (v6 < 9 || !v5[4] || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v5[4] + *(this + v5[4]), 4uLL, 0))))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
        if (result)
        {
          v9 = *this;
          if (*(this - v9) < 0xBu)
          {
            goto LABEL_24;
          }

          if (*(this - v9 + 10))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v9 + 10) + *(this + *(this - v9 + 10)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v9 = *this;
            if (*(this - v9) < 0xBu)
            {
              goto LABEL_24;
            }
          }

          v10 = *(this - v9 + 10);
          if (v10 && (v11 = (this + v10 + *(this + v10)), *v11))
          {
            v12 = 0;
            v13 = v11 + 1;
            while (siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry::Verify((v13 + *v13), a2))
            {
              ++v12;
              ++v13;
              if (v12 >= *v11)
              {
                goto LABEL_24;
              }
            }

            return 0;
          }

          else
          {
LABEL_24:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_26909AF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::UpdatedAcousticProfile::Verify(siri::speech::schema_fb::UpdatedAcousticProfile *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                if (v12 >= 0xB && v11[5])
                {
                  v14 = this + v11[5] + *(this + v11[5]);
                }

                else
                {
                  v14 = 0;
                }

                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 < 0xDu || (v16 = v15[6]) == 0 || (result = siri::speech::schema_fb::UserAcousticProfile::Verify((this + v16 + *(this + v16)), a2)))
                    {
                      --*(a2 + 4);
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26909B8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26909BB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::Word::Verify(siri::speech::schema_fb::Word *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_15;
          }

          if (*(this - v8 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_15;
            }
          }

          v9 = *(this - v8 + 6);
          if (!v9)
          {
LABEL_15:
            v10 = 0;
          }

          else
          {
            v10 = (this + v9 + *(this + v9));
          }

          result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                if (v12 >= 0xB && v11[5])
                {
                  v14 = this + v11[5] + *(this + v11[5]);
                }

                else
                {
                  v14 = 0;
                }

                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  --*(a2 + 4);
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26909C26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26909C5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::UserDataEntity::Verify(siri::speech::schema_fb::UserDataEntity *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (siri::speech::schema_fb::Word::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_26909CB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26909CEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::CategoryData::Verify(siri::speech::schema_fb::CategoryData *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_18;
          }

          if (*(this - v8 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_18;
            }
          }

          v9 = *(this - v8 + 6);
          if (v9 && (v10 = (this + v9 + *(this + v9)), *v10))
          {
            v11 = 0;
            v12 = v10 + 1;
            while (siri::speech::schema_fb::UserDataEntity::Verify((v12 + *v12), a2))
            {
              ++v11;
              ++v12;
              if (v11 >= *v10)
              {
                goto LABEL_18;
              }
            }

            return 0;
          }

          else
          {
LABEL_18:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_26909D578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26909D9F4(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::CategoryData>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::CategoryData::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_26909E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26909EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::StartPronGuessRequest::Verify(siri::speech::schema_fb::StartPronGuessRequest *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    v17 = (this - *this);
                    if (*v17 < 0xDu || (v18 = v17[6]) == 0 || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v18 - *a2)
                    {
                      --*(a2 + 4);
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26909F768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26909FDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A02CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A04C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::VocToken::Verify(siri::speech::schema_fb::VocToken *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v9 + *(this + v9), 1uLL, 0)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690A0A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A1080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v26)
  {
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::PronGuessResponse::Verify(siri::speech::schema_fb::PronGuessResponse *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                    {
                      v17 = this + v16 + *(this + v16);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    result = flatbuffers::Verifier::VerifyString(a2, v17);
                    if (result)
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v18 = (this - *this);
                        if (*v18 < 0xFu || (v19 = v18[7]) == 0 || (result = siri::speech::schema_fb::VocToken::Verify((this + v19 + *(this + v19)), a2)))
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                          if (result)
                          {
                            v20 = *this;
                            if (*(this - v20) < 0x11u)
                            {
                              goto LABEL_41;
                            }

                            if (*(this - v20 + 16))
                            {
                              result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v20 + 16) + *(this + *(this - v20 + 16)), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v20 = *this;
                              if (*(this - v20) < 0x11u)
                              {
                                goto LABEL_41;
                              }
                            }

                            v21 = *(this - v20 + 16);
                            if (!v21)
                            {
LABEL_41:
                              v22 = 0;
                            }

                            else
                            {
                              v22 = (this + v21 + *(this + v21));
                            }

                            result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Pronunciation>(a2, v22);
                            if (result)
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                              if (result)
                              {
                                v23 = *this;
                                if (*(this - v23) < 0x13u)
                                {
                                  goto LABEL_50;
                                }

                                if (*(this - v23 + 18))
                                {
                                  result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v23 + 18) + *(this + *(this - v23 + 18)), 4uLL, 0);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v23 = *this;
                                  if (*(this - v23) < 0x13u)
                                  {
                                    goto LABEL_50;
                                  }
                                }

                                v24 = *(this - v23 + 18);
                                if (!v24)
                                {
LABEL_50:
                                  v25 = 0;
                                }

                                else
                                {
                                  v25 = (this + v24 + *(this + v24));
                                }

                                result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v25);
                                if (result)
                                {
                                  --*(a2 + 4);
                                  return 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Pronunciation>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_2690A1D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A20BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690A2890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A2E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p)
{
  if (v32)
  {
    operator delete(v32);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::VocToken>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::VocToken::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_2690A3864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A3BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::StartBatchRecoverRequest::Verify(siri::speech::schema_fb::StartBatchRecoverRequest *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = *this;
                  if (*(this - v14) < 0xBu)
                  {
                    goto LABEL_27;
                  }

                  if (*(this - v14 + 10))
                  {
                    result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v14 + 10) + *(this + *(this - v14 + 10)), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v14 = *this;
                    if (*(this - v14) < 0xBu)
                    {
                      goto LABEL_27;
                    }
                  }

                  v15 = *(this - v14 + 10);
                  if (!v15)
                  {
LABEL_27:
                    v16 = 0;
                  }

                  else
                  {
                    v16 = (this + v15 + *(this + v15));
                  }

                  result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v16);
                  if (result)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690A43BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::BatchRecoverFinalResponse::Verify(siri::speech::schema_fb::BatchRecoverFinalResponse *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                if (v12 >= 0xB && v11[5])
                {
                  v14 = this + v11[5] + *(this + v11[5]);
                }

                else
                {
                  v14 = 0;
                }

                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  v15 = (this - *this);
                  v16 = *v15;
                  if (v16 < 0xD || (!v15[6] || (result = 0, v17 = *(a2 + 1), v17 >= 5) && v17 - 4 >= this + v15[6] - *a2) && (v16 < 0xF || (!v15[7] || (result = 0, v18 = *(a2 + 1), v18 >= 5) && v18 - 4 >= this + v15[7] - *a2) && (v16 < 0x11 || (v19 = v15[8]) == 0 || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v19 - *a2)))
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690A4DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A50DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690A58A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A5C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690A654C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A68C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690A7170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A7510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690A7E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A874C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A898C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690A8E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A91C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::NormalizedToken::Verify(siri::speech::schema_fb::NormalizedToken *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_18;
          }

          if (*(this - v8 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_18;
            }
          }

          v9 = *(this - v8 + 6);
          if (v9 && (v10 = (this + v9 + *(this + v9)), *v10))
          {
            v11 = 0;
            v12 = v10 + 1;
            while (siri::speech::schema_fb::TTSWordPhonemes::Verify((v12 + *v12), a2))
            {
              ++v11;
              ++v12;
              if (v11 >= *v10)
              {
                goto LABEL_18;
              }
            }

            return 0;
          }

          else
          {
LABEL_18:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690A9854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690A9CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::NormalizedToken>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::NormalizedToken::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_2690AA574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690AAAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690AB058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690AB630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690ABC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690ABF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TokenProns_::SanitizedSequence::Verify(siri::speech::schema_fb::TokenProns_::SanitizedSequence *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (siri::speech::schema_fb::TextToSpeechResource::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::TokenProns::Verify(siri::speech::schema_fb::TokenProns *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_18;
          }

          if (*(this - v8 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_18;
            }
          }

          v9 = *(this - v8 + 6);
          if (v9 && (v10 = (this + v9 + *(this + v9)), *v10))
          {
            v11 = 0;
            v12 = v10 + 1;
            while (siri::speech::schema_fb::TokenProns_::SanitizedSequence::Verify((v12 + *v12), a2))
            {
              ++v11;
              ++v12;
              if (v11 >= *v10)
              {
                goto LABEL_18;
              }
            }

            return 0;
          }

          else
          {
LABEL_18:
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (!result)
            {
              return result;
            }

            v13 = *this;
            if (*(this - v13) < 9u)
            {
              goto LABEL_25;
            }

            if (*(this - v13 + 8))
            {
              result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v13 + 8) + *(this + *(this - v13 + 8)), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = *this;
              if (*(this - v13) < 9u)
              {
                goto LABEL_25;
              }
            }

            v14 = *(this - v13 + 8);
            if (!v14)
            {
LABEL_25:
              v15 = 0;
            }

            else
            {
              v15 = (this + v14 + *(this + v14));
            }

            result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::PronChoice>(a2, v15);
            if (result)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v16 = *this;
                if (*(this - v16) < 0xBu)
                {
                  goto LABEL_34;
                }

                if (*(this - v16 + 10))
                {
                  result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v16 + 10) + *(this + *(this - v16 + 10)), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v16 = *this;
                  if (*(this - v16) < 0xBu)
                  {
                    goto LABEL_34;
                  }
                }

                v17 = *(this - v16 + 10);
                if (!v17)
                {
LABEL_34:
                  v18 = 0;
                }

                else
                {
                  v18 = (this + v17 + *(this + v17));
                }

                result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::PronChoice>(a2, v18);
                if (result)
                {
                  --*(a2 + 4);
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::PronChoice>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_2690ACA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690AD32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690AD97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 + 72);
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(v24 + 160);
  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TokenProns>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TokenProns::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_2690AE874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690AEA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::Alignment::Verify(siri::speech::schema_fb::Alignment *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 4uLL, 0)))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_2690AEFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::Span::Verify(siri::speech::schema_fb::Span *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || !v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 2) && v9 - 1 >= this + v5[4] - *a2)))
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
      if (result)
      {
        if (v6 >= 0xB && v5[5])
        {
          v10 = this + v5[5] + *(this + v5[5]);
        }

        else
        {
          v10 = 0;
        }

        result = flatbuffers::Verifier::VerifyString(a2, v10);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_2690AF6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690AF8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::RepeatedSpan::Verify(siri::speech::schema_fb::RepeatedSpan *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::Span::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_2690AFEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690B0144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::SpeechTranslationInfo::Verify(siri::speech::schema_fb::SpeechTranslationInfo *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::RecognitionSausage::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_13;
          }

          if (*(this - v7 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_13;
            }
          }

          v8 = *(this - v7 + 6);
          if (!v8)
          {
LABEL_13:
            v9 = 0;
          }

          else
          {
            v9 = (this + v8 + *(this + v8));
          }

          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v9);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690B07E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690B0E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = v24[9];
  if (v26)
  {
    operator delete(v26);
  }

  v27 = v24[21];
  if (v27)
  {
    operator delete(v27);
  }

  v28 = v24[32];
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::SiriTranslationInfo::Verify(siri::speech::schema_fb::SiriTranslationInfo *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::RecognitionSausage::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_13;
          }

          if (*(this - v7 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_13;
            }
          }

          v8 = *(this - v7 + 6);
          if (!v8)
          {
LABEL_13:
            v9 = 0;
          }

          else
          {
            v9 = (this + v8 + *(this + v8));
          }

          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v9);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v10 = *this;
              if (*(this - v10) < 9u)
              {
                goto LABEL_22;
              }

              if (*(this - v10 + 8))
              {
                result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v10 + 8) + *(this + *(this - v10 + 8)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v10 = *this;
                if (*(this - v10) < 9u)
                {
                  goto LABEL_22;
                }
              }

              v11 = *(this - v10 + 8);
              if (!v11)
              {
LABEL_22:
                v12 = 0;
              }

              else
              {
                v12 = (this + v11 + *(this + v11));
              }

              result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v12);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v13 = (this - *this);
                  if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
                  {
                    v15 = this + v14 + *(this + v14);
                  }

                  else
                  {
                    v15 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v15);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v16 = *this;
                      if (*(this - v16) < 0xDu)
                      {
                        goto LABEL_37;
                      }

                      if (*(this - v16 + 12))
                      {
                        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v16 + 12) + *(this + *(this - v16 + 12)), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v16 = *this;
                        if (*(this - v16) < 0xDu)
                        {
                          goto LABEL_37;
                        }
                      }

                      v17 = *(this - v16 + 12);
                      if (!v17)
                      {
LABEL_37:
                        v18 = 0;
                      }

                      else
                      {
                        v18 = (this + v17 + *(this + v17));
                      }

                      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ItnAlignment>(a2, v18);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v19 = *this;
                          if (*(this - v19) < 0xFu)
                          {
                            goto LABEL_46;
                          }

                          if (*(this - v19 + 14))
                          {
                            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v19 + 14) + *(this + *(this - v19 + 14)), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v19 = *this;
                            if (*(this - v19) < 0xFu)
                            {
                              goto LABEL_46;
                            }
                          }

                          v20 = *(this - v19 + 14);
                          if (!v20)
                          {
LABEL_46:
                            v21 = 0;
                          }

                          else
                          {
                            v21 = (this + v20 + *(this + v20));
                          }

                          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(a2, v21);
                          if (result)
                          {
                            --*(a2 + 4);
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690B1BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SiriPayloadTranslationInfo::Verify(siri::speech::schema_fb::SiriPayloadTranslationInfo *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = siri::speech::schema_fb::RecognitionSausage::Verify((this + v12 + *(this + v12)), a2)))
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690B23A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690B2624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::WebTranslationInfo::Verify(siri::speech::schema_fb::WebTranslationInfo *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_15;
          }

          if (*(this - v8 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_15;
            }
          }

          v9 = *(this - v8 + 6);
          if (!v9)
          {
LABEL_15:
            v10 = 0;
          }

          else
          {
            v10 = (this + v9 + *(this + v9));
          }

          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690B2C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690B32A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::TranslationRequest::Verify(siri::speech::schema_fb::TranslationRequest *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v17 = (this - *this);
                      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                      {
                        v19 = this + v18 + *(this + v18);
                      }

                      else
                      {
                        v19 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v19);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v20 = *this;
                          if (*(this - v20) < 0xFu)
                          {
                            goto LABEL_39;
                          }

                          if (*(this - v20 + 14))
                          {
                            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v20 + 14) + *(this + *(this - v20 + 14)), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v20 = *this;
                            if (*(this - v20) < 0xFu)
                            {
                              goto LABEL_39;
                            }
                          }

                          v21 = *(this - v20 + 14);
                          if (!v21)
                          {
LABEL_39:
                            v22 = 0;
                          }

                          else
                          {
                            v22 = (this + v21 + *(this + v21));
                          }

                          result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v22);
                          if (result)
                          {
                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                            if (result)
                            {
                              v23 = (this - *this);
                              if (*v23 < 0x11u || (v24 = v23[8]) == 0 || (result = siri::speech::schema_fb::SiriTranslationInfo::Verify((this + v24 + *(this + v24)), a2)))
                              {
                                result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                                if (result)
                                {
                                  v25 = (this - *this);
                                  if (*v25 < 0x13u || (v26 = v25[9]) == 0 || (result = siri::speech::schema_fb::SpeechTranslationInfo::Verify((this + v26 + *(this + v26)), a2)))
                                  {
                                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                                    if (result)
                                    {
                                      v27 = (this - *this);
                                      if (*v27 < 0x15u || (v28 = v27[10]) == 0 || (result = siri::speech::schema_fb::SiriPayloadTranslationInfo::Verify((this + v28 + *(this + v28)), a2)))
                                      {
                                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                                        if (result)
                                        {
                                          v29 = (this - *this);
                                          if (*v29 >= 0x17u && (v30 = v29[11]) != 0)
                                          {
                                            v31 = this + v30 + *(this + v30);
                                          }

                                          else
                                          {
                                            v31 = 0;
                                          }

                                          result = flatbuffers::Verifier::VerifyString(a2, v31);
                                          if (result)
                                          {
                                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x18u);
                                            if (result)
                                            {
                                              v32 = *this;
                                              v33 = *(this - v32);
                                              if (v33 < 0x19)
                                              {
                                                goto LABEL_73;
                                              }

                                              if (*(this - v32 + 24))
                                              {
                                                result = siri::speech::schema_fb::WebTranslationInfo::Verify((this + *(this - v32 + 24) + *(this + *(this - v32 + 24))), a2);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v32 = *this;
                                                v34 = -v32;
                                                v33 = *(this - v32);
                                              }

                                              else
                                              {
                                                v34 = -v32;
                                              }

                                              if (v33 < 0x1B || ((v35 = this + v34, !*(v35 + 13)) || (result = 0, v36 = *(a2 + 1), v36 >= 2) && v36 - 1 >= this + *(v35 + 13) - *a2) && (v33 < 0x1D || (v37 = *(v35 + 14), !*(v35 + 14)) || (result = 0, v38 = *(a2 + 1), v38 >= 5) && v38 - 4 >= this + v37 - *a2))
                                              {
LABEL_73:
                                                result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Eu);
                                                if (result)
                                                {
                                                  v39 = (this - v32);
                                                  if (*v39 >= 0x1Fu && (v40 = v39[15]) != 0)
                                                  {
                                                    v41 = this + v40 + *(this + v40);
                                                  }

                                                  else
                                                  {
                                                    v41 = 0;
                                                  }

                                                  result = flatbuffers::Verifier::VerifyString(a2, v41);
                                                  if (result)
                                                  {
                                                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x20u);
                                                    if (result)
                                                    {
                                                      v42 = (this - *this);
                                                      if (*v42 >= 0x21u && (v43 = v42[16]) != 0)
                                                      {
                                                        v44 = this + v43 + *(this + v43);
                                                      }

                                                      else
                                                      {
                                                        v44 = 0;
                                                      }

                                                      result = flatbuffers::Verifier::VerifyString(a2, v44);
                                                      if (result)
                                                      {
                                                        --*(a2 + 4);
                                                        return 1;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690B44A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::StreamingTranslationRequest::Verify(siri::speech::schema_fb::StreamingTranslationRequest *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v17 = (this - *this);
                      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                      {
                        v19 = this + v18 + *(this + v18);
                      }

                      else
                      {
                        v19 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v19);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
                          {
                            v22 = this + v21 + *(this + v21);
                          }

                          else
                          {
                            v22 = 0;
                          }

                          result = flatbuffers::Verifier::VerifyString(a2, v22);
                          if (result)
                          {
                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                            if (result)
                            {
                              v23 = (this - *this);
                              if (*v23 >= 0x11u && (v24 = v23[8]) != 0)
                              {
                                v25 = this + v24 + *(this + v24);
                              }

                              else
                              {
                                v25 = 0;
                              }

                              result = flatbuffers::Verifier::VerifyString(a2, v25);
                              if (result)
                              {
                                v26 = (this - *this);
                                v27 = *v26;
                                if (v27 < 0x13 || (!v26[9] || (result = 0, v28 = *(a2 + 1), v28 >= 2) && v28 - 1 >= this + v26[9] - *a2) && (v27 < 0x15 || !v26[10] || (result = 0, v29 = *(a2 + 1), v29 >= 5) && v29 - 4 >= this + v26[10] - *a2))
                                {
                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                                  if (result)
                                  {
                                    if (v27 >= 0x17 && v26[11])
                                    {
                                      v30 = this + v26[11] + *(this + v26[11]);
                                    }

                                    else
                                    {
                                      v30 = 0;
                                    }

                                    result = flatbuffers::Verifier::VerifyString(a2, v30);
                                    if (result)
                                    {
                                      v31 = (this - *this);
                                      if (*v31 < 0x19u || (v32 = v31[12]) == 0 || (result = 0, v33 = *(a2 + 1), v33 >= 2) && v33 - 1 >= this + v32 - *a2)
                                      {
                                        --*(a2 + 4);
                                        return 1;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690B53F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690B5918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690B5D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690B6210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v22)
  {
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690B6734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TranslationResponse_::TranslationToken::Verify(siri::speech::schema_fb::TranslationResponse_::TranslationToken *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = *this;
        v9 = this - v8;
        v10 = *(this - v8);
        if (v10 < 7 || !*(v9 + 3) || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + *(v9 + 3) - *a2)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            if (v10 < 9)
            {
              goto LABEL_22;
            }

            if (*(v9 + 4))
            {
              result = siri::speech::schema_fb::Alignment::Verify((this + *(v9 + 4) + *(this + *(v9 + 4))), a2);
              if (!result)
              {
                return result;
              }

              v12 = *this;
              v13 = -v12;
              v10 = *(this - v12);
            }

            else
            {
              v13 = -v8;
            }

            if (v10 < 0xB || (v14 = *(this + v13 + 10)) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 2) && v15 - 1 >= this + v14 - *a2)
            {
LABEL_22:
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::TranslationResponse_::TranslationPhrase::Verify(siri::speech::schema_fb::TranslationResponse_::TranslationPhrase *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = *this;
  v6 = this - v5;
  v7 = *(this - v5);
  if (v7 >= 5)
  {
    if (*(v6 + 2))
    {
      result = 0;
      v8 = *(a2 + 1);
      if (v8 < 5 || v8 - 4 < this + *(v6 + 2) - *a2)
      {
        return result;
      }
    }
  }

  result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  if (v7 < 7)
  {
    goto LABEL_18;
  }

  if (*(v6 + 3))
  {
    result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(v6 + 3) + *(this + *(v6 + 3)), 4uLL, 0);
    if (!result)
    {
      return result;
    }

    v9 = *this;
    if (*(this - v9) < 7u)
    {
      goto LABEL_18;
    }

    v10 = -v9;
  }

  else
  {
    v10 = -v5;
  }

  v11 = *(this + v10 + 6);
  if (v11)
  {
    v12 = (this + v11 + *(this + v11));
    if (*v12)
    {
      v13 = 0;
      v14 = v12 + 1;
      while (siri::speech::schema_fb::TranslationResponse_::TranslationToken::Verify((v14 + *v14), a2))
      {
        ++v13;
        ++v14;
        if (v13 >= *v12)
        {
          goto LABEL_18;
        }
      }

      return 0;
    }
  }

LABEL_18:
  result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
  if (result)
  {
    v15 = (this - *this);
    if (*v15 >= 9u && (v16 = v15[4]) != 0)
    {
      v17 = this + v16 + *(this + v16);
    }

    else
    {
      v17 = 0;
    }

    result = flatbuffers::Verifier::VerifyString(a2, v17);
    if (result)
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
      if (result)
      {
        v18 = *this;
        if (*(this - v18) < 0xBu)
        {
          goto LABEL_31;
        }

        if (*(this - v18 + 10))
        {
          result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v18 + 10) + *(this + *(this - v18 + 10)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v18 = *this;
          if (*(this - v18) < 0xBu)
          {
            goto LABEL_31;
          }
        }

        v19 = *(this - v18 + 10);
        if (!v19)
        {
LABEL_31:
          v20 = 0;
        }

        else
        {
          v20 = (this + v19 + *(this + v19));
        }

        result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(a2, v20);
        if (result)
        {
          v21 = (this - *this);
          if (*v21 < 0xDu || (v22 = v21[6]) == 0 || (result = 0, v23 = *(a2 + 1), v23 >= 2) && v23 - 1 >= this + v22 - *a2)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RepeatedSpan::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::TranslationResponse::Verify(siri::speech::schema_fb::TranslationResponse *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = *this;
                    if (*(this - v15) < 0xDu)
                    {
                      goto LABEL_31;
                    }

                    if (*(this - v15 + 12))
                    {
                      result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v15 + 12) + *(this + *(this - v15 + 12)), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v15 = *this;
                      if (*(this - v15) < 0xDu)
                      {
                        goto LABEL_31;
                      }
                    }

                    v16 = *(this - v15 + 12);
                    if (!v16)
                    {
LABEL_31:
                      v17 = 0;
                    }

                    else
                    {
                      v17 = (this + v16 + *(this + v16));
                    }

                    result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>(a2, v17);
                    if (result)
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v18 = (this - *this);
                        if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
                        {
                          v20 = this + v19 + *(this + v19);
                        }

                        else
                        {
                          v20 = 0;
                        }

                        result = flatbuffers::Verifier::VerifyString(a2, v20);
                        if (result)
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                          if (result)
                          {
                            v21 = *this;
                            if (*(this - v21) < 0x11u)
                            {
                              goto LABEL_46;
                            }

                            if (*(this - v21 + 16))
                            {
                              result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v21 + 16) + *(this + *(this - v21 + 16)), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v21 = *this;
                              if (*(this - v21) < 0x11u)
                              {
                                goto LABEL_46;
                              }
                            }

                            v22 = *(this - v21 + 16);
                            if (!v22)
                            {
LABEL_46:
                              v23 = 0;
                            }

                            else
                            {
                              v23 = (this + v22 + *(this + v22));
                            }

                            result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>(a2, v23);
                            if (result)
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                              if (result)
                              {
                                v24 = (this - *this);
                                if (*v24 >= 0x13u && (v25 = v24[9]) != 0)
                                {
                                  v26 = this + v25 + *(this + v25);
                                }

                                else
                                {
                                  v26 = 0;
                                }

                                result = flatbuffers::Verifier::VerifyString(a2, v26);
                                if (result)
                                {
                                  v27 = (this - *this);
                                  if (*v27 < 0x15u || (v28 = v27[10]) == 0 || (result = 0, v29 = *(a2 + 1), v29 >= 2) && v29 - 1 >= this + v28 - *a2)
                                  {
                                    --*(a2 + 4);
                                    return 1;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TranslationResponse_::TranslationPhrase::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_2690B7D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::EndPointLikelihood::Verify(siri::speech::schema_fb::EndPointLikelihood *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                if (v12 >= 0xB && v11[5])
                {
                  v14 = this + v11[5] + *(this + v11[5]);
                }

                else
                {
                  v14 = 0;
                }

                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  v15 = (this - *this);
                  if (*v15 < 0xDu || (v16 = v15[6]) == 0 || (result = 0, v17 = *(a2 + 1), v17 >= 5) && v17 - 4 >= this + v16 - *a2)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690B864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::EndPointCandidate::Verify(siri::speech::schema_fb::EndPointCandidate *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                if (v12 >= 0xB && v11[5])
                {
                  v14 = this + v11[5] + *(this + v11[5]);
                }

                else
                {
                  v14 = 0;
                }

                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  v15 = (this - *this);
                  v16 = *v15;
                  if (v16 < 0xD || (!v15[6] || (result = 0, v17 = *(a2 + 1), v17 >= 5) && v17 - 4 >= this + v15[6] - *a2) && (v16 < 0xF || (v18 = v15[7]) == 0 || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v18 - *a2))
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690B8FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SetRequestOrigin::Verify(siri::speech::schema_fb::SetRequestOrigin *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 9) && v8 - 8 >= this + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 2) && v10 - 1 >= this + v9 - *a2)))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

void sub_2690B9594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::RecognitionProgress::Verify(siri::speech::schema_fb::RecognitionProgress *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        if (v6 >= 7 && v5[3])
        {
          v8 = this + v5[3] + *(this + v5[3]);
        }

        else
        {
          v8 = 0;
        }

        result = flatbuffers::Verifier::VerifyString(a2, v8);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_2690B9B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::ResetServerEndpointer::Verify(siri::speech::schema_fb::ResetServerEndpointer *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v6 - *a2)
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

void sub_2690BA05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::RecognitionCandidate::Verify(siri::speech::schema_fb::RecognitionCandidate *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = flatbuffers::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 < 0xDu || (v16 = v15[6]) == 0 || (result = siri::speech::schema_fb::RecognitionResult::Verify((this + v16 + *(this + v16)), a2)))
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v17 = (this - *this);
                        if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
                        {
                          v19 = this + v18 + *(this + v18);
                        }

                        else
                        {
                          v19 = 0;
                        }

                        result = flatbuffers::Verifier::VerifyString(a2, v19);
                        if (result)
                        {
                          v20 = *this;
                          v21 = (this - v20);
                          v22 = *(this - v20);
                          if (v22 < 0x11 || (!v21[8] || (result = 0, v23 = *(a2 + 1), v23 >= 9) && v23 - 8 >= this + v21[8] - *a2) && (v22 < 0x13 || !v21[9] || (result = 0, v24 = *(a2 + 1), v24 >= 5) && v24 - 4 >= this + v21[9] - *a2))
                          {
                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                            if (result)
                            {
                              if (v22 < 0x15)
                              {
                                goto LABEL_56;
                              }

                              if (v21[10])
                              {
                                result = siri::speech::schema_fb::AudioAnalytics::Verify((this + v21[10] + *(this + v21[10])), a2);
                                if (!result)
                                {
                                  return result;
                                }

                                v20 = *this;
                                v25 = -v20;
                                v22 = *(this - v20);
                              }

                              else
                              {
                                v25 = -v20;
                              }

                              if (v22 < 0x17 || ((v26 = this + v25, !*(v26 + 11)) || (result = 0, v27 = *(a2 + 1), v27 >= 5) && v27 - 4 >= this + *(v26 + 11) - *a2) && (v22 < 0x19 || (v28 = *(v26 + 12)) == 0 || (result = 0, v29 = *(a2 + 1), v29 >= 9) && v29 - 8 >= this + v28 - *a2))
                              {
LABEL_56:
                                result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Au);
                                if (result)
                                {
                                  v30 = (this - v20);
                                  if (*v30 >= 0x1Bu && (v31 = v30[13]) != 0)
                                  {
                                    v32 = this + v31 + *(this + v31);
                                  }

                                  else
                                  {
                                    v32 = 0;
                                  }

                                  result = flatbuffers::Verifier::VerifyString(a2, v32);
                                  if (result)
                                  {
                                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Cu);
                                    if (result)
                                    {
                                      v33 = (this - *this);
                                      if (*v33 < 0x1Du || (v34 = v33[14]) == 0 || (result = siri::speech::schema_fb::LatnnMitigatorResult::Verify((this + v34 + *(this + v34)), a2)))
                                      {
                                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Eu);
                                        if (result)
                                        {
                                          v35 = (this - *this);
                                          if (*v35 >= 0x1Fu && (v36 = v35[15]) != 0)
                                          {
                                            v37 = this + v36 + *(this + v36);
                                          }

                                          else
                                          {
                                            v37 = 0;
                                          }

                                          result = flatbuffers::Verifier::VerifyString(a2, v37);
                                          if (result)
                                          {
                                            --*(a2 + 4);
                                            return 1;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690BB264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::CheckForSpeechRequest::Verify(siri::speech::schema_fb::CheckForSpeechRequest *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 9) && v9 - 8 >= this + v8 - *a2))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

void sub_2690BB7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690BBBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690BC258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p)
{
  if (v34)
  {
    operator delete(v34);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690BD0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690BD798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::LmScorerToken::Verify(siri::speech::schema_fb::LmScorerToken *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 9) && v10 - 8 >= this + v8[3] - *a2) && (v9 < 9 || (v11 = v8[4]) == 0 || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v11 - *a2))
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_2690BDE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690BE5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690BE988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690BF0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690BF5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690BFA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690C03E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C07BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690C11E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C1558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::ServerEndpointFeatures::Verify(siri::speech::schema_fb::ServerEndpointFeatures *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = *this;
    v6 = (this - v5);
    v7 = *(this - v5);
    if (v7 < 5)
    {
      goto LABEL_18;
    }

    if (!v6[2] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v6[2] - *a2)
    {
      if (v7 < 7 || (!v6[3] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v6[3] - *a2) && (v7 < 9 || (!v6[4] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v6[4] - *a2) && (v7 < 0xB || !v6[5] || (result = 0, v11 = *(a2 + 1), v11 >= 9) && v11 - 8 >= this + v6[5] - *a2)))
      {
LABEL_18:
        result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
        if (result)
        {
          if (v7 < 0xD)
          {
            goto LABEL_28;
          }

          if (v6[6])
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v6[6] + *(this + v6[6]), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v5 = *this;
            v12 = -v5;
            v7 = *(this - v5);
          }

          else
          {
            v12 = -v5;
          }

          if (v7 < 0xF || (v13 = *(this + v12 + 14)) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 9) && v14 - 8 >= this + v13 - *a2)
          {
LABEL_28:
            result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
            if (result)
            {
              v15 = (this - v5);
              if (*v15 >= 0x11u && (v16 = v15[8]) != 0)
              {
                v17 = this + v16 + *(this + v16);
              }

              else
              {
                v17 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v17);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                if (result)
                {
                  v18 = (this - *this);
                  if (*v18 >= 0x13u && (v19 = v18[9]) != 0)
                  {
                    v20 = this + v19 + *(this + v19);
                  }

                  else
                  {
                    v20 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v20);
                  if (result)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690C1E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C2988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C2F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C33F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_2690C3CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TTSRequestFeatureFlags::Verify(siri::speech::schema_fb::TTSRequestFeatureFlags *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_22;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2)
    {
      if (v6 < 7)
      {
        goto LABEL_22;
      }

      if (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 2) && v8 - 1 >= this + v5[3] - *a2)
      {
        if (v6 < 9 || (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 2) && v9 - 1 >= this + v5[4] - *a2) && (v6 < 0xB || (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 2) && v10 - 1 >= this + v5[5] - *a2) && (v6 < 0xD || (v11 = v5[6]) == 0 || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v11 - *a2)))
        {
LABEL_22:
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_2690C43F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechVoice::Verify(siri::speech::schema_fb::TextToSpeechVoice *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v17 = (this - *this);
                      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                      {
                        v19 = this + v18 + *(this + v18);
                      }

                      else
                      {
                        v19 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v19);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
                          {
                            v22 = this + v21 + *(this + v21);
                          }

                          else
                          {
                            v22 = 0;
                          }

                          result = flatbuffers::Verifier::VerifyString(a2, v22);
                          if (result)
                          {
                            --*(a2 + 4);
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2690C4F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechResource::Verify(siri::speech::schema_fb::TextToSpeechResource *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690C55D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechMeta::Verify(siri::speech::schema_fb::TextToSpeechMeta *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechVoice::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResource::Verify((this + v8 + *(this + v8)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690C5CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestMeta::Verify(siri::speech::schema_fb::TextToSpeechRequestMeta *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        if (v6 >= 7 && v5[3])
        {
          v8 = this + v5[3] + *(this + v5[3]);
        }

        else
        {
          v8 = 0;
        }

        result = flatbuffers::Verifier::VerifyString(a2, v8);
        if (result)
        {
          v9 = (this - *this);
          if (*v9 < 9u || (v10 = v9[4]) == 0 || (result = 0, v11 = *(a2 + 1), v11 >= 2) && v11 - 1 >= this + v10 - *a2)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690C6374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C670C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690C6A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestContext::Verify(siri::speech::schema_fb::TextToSpeechRequestContext *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (siri::speech::schema_fb::TextToSpeechResource::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v10 = (this - *this);
          if (*v10 >= 7u && (v11 = v10[3]) != 0)
          {
            v12 = this + v11 + *(this + v11);
          }

          else
          {
            v12 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v12);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690C7360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify(siri::speech::schema_fb::TextToSpeechRequestExperiment *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_2690C78CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C7B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::TTSWordPhonemes::Verify(siri::speech::schema_fb::TTSWordPhonemes *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_2690C8088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C83BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TTSPhonemeSequence::Verify(siri::speech::schema_fb::TTSPhonemeSequence *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (siri::speech::schema_fb::TTSWordPhonemes::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_2690C8970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C8BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690C9054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690C9358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TTSPrompts::Verify(siri::speech::schema_fb::TTSPrompts *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_18;
          }

          if (*(this - v8 + 6))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_18;
            }
          }

          v9 = *(this - v8 + 6);
          if (!v9)
          {
LABEL_18:
            v10 = 0;
          }

          else
          {
            v10 = (this + v9 + *(this + v9));
          }

          result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690C9A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690CA020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690CA4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690CB0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, void *a14, void *a15, void *a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechFeature::Verify(siri::speech::schema_fb::TextToSpeechFeature *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) >= 5u)
      {
        if (!*(this - v5 + 4))
        {
          goto LABEL_54;
        }

        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) >= 5u)
        {
LABEL_54:
          v6 = *(this - v5 + 4);
          if (v6)
          {
            v7 = (this + v6 + *(this + v6));
            if (*v7)
            {
              v8 = 0;
              v9 = v7 + 1;
              while (siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((v9 + *v9), a2))
              {
                ++v8;
                ++v9;
                if (v8 >= *v7)
                {
                  goto LABEL_12;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_12:
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (!result)
      {
        return result;
      }

      v10 = *this;
      if (*(this - v10) >= 7u)
      {
        if (!*(this - v10 + 6))
        {
          goto LABEL_55;
        }

        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v10 + 6) + *(this + *(this - v10 + 6)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v10 = *this;
        if (*(this - v10) >= 7u)
        {
LABEL_55:
          v11 = *(this - v10 + 6);
          if (v11)
          {
            v12 = (this + v11 + *(this + v11));
            if (*v12)
            {
              v13 = 0;
              v14 = v12 + 1;
              while (siri::speech::schema_fb::TTSPhonemeSequence::Verify((v14 + *v14), a2))
              {
                ++v13;
                ++v14;
                if (v13 >= *v12)
                {
                  goto LABEL_22;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_22:
      result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
      if (!result)
      {
        return result;
      }

      v15 = *this;
      if (*(this - v15) < 9u)
      {
        goto LABEL_29;
      }

      if (*(this - v15 + 8))
      {
        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v15 + 8) + *(this + *(this - v15 + 8)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v15 = *this;
        if (*(this - v15) < 9u)
        {
          goto LABEL_29;
        }
      }

      v16 = *(this - v15 + 8);
      if (!v16)
      {
LABEL_29:
        v17 = 0;
      }

      else
      {
        v17 = (this + v16 + *(this + v16));
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPrompts>(a2, v17);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
        if (result)
        {
          v18 = *this;
          if (*(this - v18) < 0xBu)
          {
            goto LABEL_40;
          }

          if (*(this - v18 + 10))
          {
            result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v18 + 10) + *(this + *(this - v18 + 10)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v18 = *this;
            if (*(this - v18) < 0xBu)
            {
              goto LABEL_40;
            }
          }

          v19 = *(this - v18 + 10);
          if (!v19)
          {
LABEL_40:
            v20 = 0;
          }

          else
          {
            v20 = (this + v19 + *(this + v19));
          }

          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSReplacement>(a2, v20);
          if (result)
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
            if (result)
            {
              v21 = *this;
              if (*(this - v21) < 0xDu)
              {
                goto LABEL_49;
              }

              if (*(this - v21 + 12))
              {
                result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v21 + 12) + *(this + *(this - v21 + 12)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v21 = *this;
                if (*(this - v21) < 0xDu)
                {
                  goto LABEL_49;
                }
              }

              v22 = *(this - v21 + 12);
              if (!v22)
              {
LABEL_49:
                v23 = 0;
              }

              else
              {
                v23 = (this + v22 + *(this + v22));
              }

              result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSNeuralPhonemeSequence>(a2, v23);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPrompts>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TTSPrompts::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSReplacement>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TextToSpeechResource::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSNeuralPhonemeSequence>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TTSWordPhonemes::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_2690CC07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestDebug::Verify(siri::speech::schema_fb::TextToSpeechRequestDebug *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 2) && v9 - 1 >= this + v8 - *a2))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

void sub_2690CC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690CC7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechVoiceResource::Verify(siri::speech::schema_fb::TextToSpeechVoiceResource *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (result && (v6 < 7 || !v5[3] || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v5[3] + *(this + v5[3]), 1uLL, 0))))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}