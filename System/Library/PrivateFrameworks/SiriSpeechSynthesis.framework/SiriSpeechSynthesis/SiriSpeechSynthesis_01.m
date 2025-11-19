void sub_2690CCCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690CCFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechUserProfile::Verify(siri::speech::schema_fb::TextToSpeechUserProfile *this, flatbuffers::Verifier *a2)
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
        while (siri::speech::schema_fb::TextToSpeechVoiceResource::Verify((v9 + *v9), a2))
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

void sub_2690CD5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestDevConfig *this, flatbuffers::Verifier *a2)
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
        v8 = v6 >= 7 && v5[3] ? this + v5[3] + *(this + v5[3]) : 0;
        result = flatbuffers::Verifier::VerifyString(a2, v8);
        if (result)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v9 = (this - *this);
            if (*v9 >= 9u && (v10 = v9[4]) != 0)
            {
              v11 = this + v10 + *(this + v10);
            }

            else
            {
              v11 = 0;
            }

            result = flatbuffers::Verifier::VerifyString(a2, v11);
            if (result)
            {
              v12 = (this - *this);
              if (*v12 < 0xBu || (v13 = v12[5]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 2) && v14 - 1 >= this + v13 - *a2)
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

void sub_2690CDD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690CE25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::QSSVersionInfo::Verify(siri::speech::schema_fb::QSSVersionInfo *this, flatbuffers::Verifier *a2)
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

BOOL siri::speech::schema_fb::TextToSpeechResponseDevData::Verify(siri::speech::schema_fb::TextToSpeechResponseDevData *this, flatbuffers::Verifier *a2)
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
          v9 = *(this - v8);
          if (v9 < 7)
          {
            goto LABEL_18;
          }

          if (*(this - v8 + 6))
          {
            result = siri::speech::schema_fb::QSSVersionInfo::Verify((this + *(this - v8 + 6) + *(this + *(this - v8 + 6))), a2);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            v10 = -v8;
            v9 = *(this - v8);
          }

          else
          {
            v10 = -v8;
          }

          if (v9 < 9 || (v11 = *(this + v10 + 8), !*(this + v10 + 8)) || (result = 0, v12 = *(a2 + 1), v12 >= 2) && v12 - 1 >= this + v11 - *a2)
          {
LABEL_18:
            result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
            if (result)
            {
              v13 = (this - v8);
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

void sub_2690CEF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_34;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      if (v6 < 7)
      {
        goto LABEL_34;
      }

      if (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2)
      {
        if (v6 < 9)
        {
          goto LABEL_34;
        }

        if (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2)
        {
          if (v6 < 0xB)
          {
            goto LABEL_34;
          }

          if (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2)
          {
            if (v6 < 0xD)
            {
              goto LABEL_34;
            }

            if (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2)
            {
              if (v6 < 0xF || (!v5[7] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v5[7] - *a2) && (v6 < 0x11 || (!v5[8] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v5[8] - *a2) && (v6 < 0x13 || (v14 = v5[9]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 5) && v15 - 4 >= this + v14 - *a2)))
              {
LABEL_34:
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

void sub_2690CF778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690CFEE0(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_2690D02E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690D0750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify(siri::speech::schema_fb::TextToSpeechUserVoiceProfile *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_26;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      if (v6 < 7)
      {
        goto LABEL_26;
      }

      if (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2)
      {
        if (v6 < 9)
        {
          goto LABEL_26;
        }

        if (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2)
        {
          if (v6 < 0xB || (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2) && (v6 < 0xD || (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2) && (v6 < 0xF || (v12 = v5[7]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)))
          {
LABEL_26:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_2690D0F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690D1140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechVoiceResource::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify((this + v8 + *(this + v8)), a2)))
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v9 = (this - *this);
              if (*v9 >= 9u && (v10 = v9[4]) != 0)
              {
                v11 = this + v10 + *(this + v10);
              }

              else
              {
                v11 = 0;
              }

              result = flatbuffers::Verifier::VerifyString(a2, v11);
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

void sub_2690D1FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequest::Verify(siri::speech::schema_fb::TextToSpeechRequest *this, flatbuffers::Verifier *a2)
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
                        v20 = (this - *this);
                        v21 = *v20;
                        if (v21 < 0xF || (!v20[7] || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this + v20[7] - *a2) && (v21 < 0x11 || !v20[8] || (result = 0, v23 = *(a2 + 1), v23 >= 2) && v23 - 1 >= this + v20[8] - *a2))
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v24 = v21 >= 0x13 && v20[9] ? this + v20[9] + *(this + v20[9]) : 0;
                            result = flatbuffers::Verifier::VerifyString(a2, v24);
                            if (result)
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v25 = *this;
                                if (*(this - v25) < 0x15u)
                                {
                                  goto LABEL_53;
                                }

                                if (*(this - v25 + 20))
                                {
                                  result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v25 + 20) + *(this + *(this - v25 + 20)), 4uLL, 0);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v25 = *this;
                                  if (*(this - v25) < 0x15u)
                                  {
                                    goto LABEL_53;
                                  }
                                }

                                v26 = *(this - v25 + 20);
                                if (!v26)
                                {
LABEL_53:
                                  v27 = 0;
                                }

                                else
                                {
                                  v27 = (this + v26 + *(this + v26));
                                }

                                result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSReplacement>(a2, v27);
                                if (result)
                                {
                                  v28 = (this - *this);
                                  v29 = *v28;
                                  if (v29 < 0x17 || !v28[11] || (result = 0, v30 = *(a2 + 1), v30 >= 5) && v30 - 4 >= this + v28[11] - *a2)
                                  {
                                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x18u);
                                    if (result && (v29 < 0x19 || !v28[12] || (result = siri::speech::schema_fb::TextToSpeechRequestMeta::Verify((this + v28[12] + *(this + v28[12])), a2))))
                                    {
                                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Au);
                                      if (result)
                                      {
                                        v31 = (this - *this);
                                        if (*v31 < 0x1Bu || (v32 = v31[13]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestContext::Verify((this + v32 + *(this + v32)), a2)))
                                        {
                                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Cu);
                                          if (result)
                                          {
                                            v33 = (this - *this);
                                            if (*v33 < 0x1Du || (v34 = v33[14]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((this + v34 + *(this + v34)), a2)))
                                            {
                                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Eu);
                                              if (result)
                                              {
                                                v35 = (this - *this);
                                                if (*v35 < 0x1Fu || (v36 = v35[15]) == 0 || (result = siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((this + v36 + *(this + v36)), a2)))
                                                {
                                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x20u);
                                                  if (result)
                                                  {
                                                    v37 = (this - *this);
                                                    if (*v37 < 0x21u || (v38 = v37[16]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDebug::Verify((this + v38 + *(this + v38)), a2)))
                                                    {
                                                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x22u);
                                                      if (result)
                                                      {
                                                        v39 = (this - *this);
                                                        if (*v39 < 0x23u || (v40 = v39[17]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserProfile::Verify((this + v40 + *(this + v40)), a2)))
                                                        {
                                                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x24u);
                                                          if (result)
                                                          {
                                                            v41 = (this - *this);
                                                            if (*v41 < 0x25u || (v42 = v41[18]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify((this + v42 + *(this + v42)), a2)))
                                                            {
                                                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x26u);
                                                              if (result)
                                                              {
                                                                v43 = (this - *this);
                                                                if (*v43 < 0x27u || (v44 = v43[19]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify((this + v44 + *(this + v44)), a2)))
                                                                {
                                                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x28u);
                                                                  if (result)
                                                                  {
                                                                    v45 = (this - *this);
                                                                    if (*v45 < 0x29u || (v46 = v45[20]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify((this + v46 + *(this + v46)), a2)))
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

  return result;
}

void sub_2690D3088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::AudioDescription::Verify(siri::speech::schema_fb::AudioDescription *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_38;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2)
    {
      if (v6 < 7)
      {
        goto LABEL_38;
      }

      if (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2)
      {
        if (v6 < 9)
        {
          goto LABEL_38;
        }

        if (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2)
        {
          if (v6 < 0xB)
          {
            goto LABEL_38;
          }

          if (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2)
          {
            if (v6 < 0xD)
            {
              goto LABEL_38;
            }

            if (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2)
            {
              if (v6 < 0xF)
              {
                goto LABEL_38;
              }

              if (!v5[7] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v5[7] - *a2)
              {
                if (v6 < 0x11 || (!v5[8] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v5[8] - *a2) && (v6 < 0x13 || (!v5[9] || (result = 0, v14 = *(a2 + 1), v14 >= 5) && v14 - 4 >= this + v5[9] - *a2) && (v6 < 0x15 || (v15 = v5[10]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)))
                {
LABEL_38:
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

void sub_2690D3994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::WordTimingInfo::Verify(siri::speech::schema_fb::WordTimingInfo *this, flatbuffers::Verifier *a2)
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
          goto LABEL_24;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          if (v9 < 9 || (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2) && (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (v13 = v8[6]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 5) && v14 - 4 >= this + v13 - *a2)))
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

void sub_2690D4134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690D467C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechResponse::Verify(siri::speech::schema_fb::TextToSpeechResponse *this, flatbuffers::Verifier *a2)
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
                  v15 = (this - *this);
                  v16 = *v15;
                  if (v16 < 0xD || (!v15[6] || (result = 0, v17 = *(a2 + 1), v17 >= 5) && v17 - 4 >= this + v15[6] - *a2) && (v16 < 0xF || !v15[7] || (result = 0, v18 = *(a2 + 1), v18 >= 5) && v18 - 4 >= this + v15[7] - *a2))
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                    if (result && (v16 < 0x11 || !v15[8] || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v15[8] + *(this + v15[8]), 1uLL, 0))))
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                      if (result)
                      {
                        v19 = (this - *this);
                        if (*v19 < 0x13u || (v20 = v19[9]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v20 + *(this + v20)), a2)))
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                          if (result)
                          {
                            v21 = (this - *this);
                            if (*v21 < 0x15u || (v22 = v21[10]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v22 + *(this + v22)), a2)))
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                              if (result)
                              {
                                v23 = *this;
                                if (*(this - v23) < 0x17u)
                                {
                                  goto LABEL_51;
                                }

                                if (*(this - v23 + 22))
                                {
                                  result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v23 + 22) + *(this + *(this - v23 + 22)), 4uLL, 0);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v23 = *this;
                                  if (*(this - v23) < 0x17u)
                                  {
                                    goto LABEL_51;
                                  }
                                }

                                v24 = *(this - v23 + 22);
                                if (!v24)
                                {
LABEL_51:
                                  v25 = 0;
                                }

                                else
                                {
                                  v25 = (this + v24 + *(this + v24));
                                }

                                result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(a2, v25);
                                if (result)
                                {
                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x18u);
                                  if (result)
                                  {
                                    v26 = (this - *this);
                                    if (*v26 < 0x19u || (v27 = v26[12]) == 0 || (result = siri::speech::schema_fb::TextToSpeechMeta::Verify((this + v27 + *(this + v27)), a2)))
                                    {
                                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Au);
                                      if (result)
                                      {
                                        v28 = (this - *this);
                                        if (*v28 < 0x1Bu || (v29 = v28[13]) == 0 || (result = siri::speech::schema_fb::TextToSpeechFeature::Verify((this + v29 + *(this + v29)), a2)))
                                        {
                                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Cu);
                                          if (result)
                                          {
                                            v30 = (this - *this);
                                            if (*v30 < 0x1Du || (v31 = v30[14]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResponseDevData::Verify((this + v31 + *(this + v31)), a2)))
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

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(flatbuffers::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::WordTimingInfo::Verify((v5 + *v5), a1);
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

void sub_2690D5760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690D5F18(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_2690D6A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(siri::speech::schema_fb::StartTextToSpeechStreamingRequest *this, flatbuffers::Verifier *a2)
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
                            v23 = (this - *this);
                            v24 = *v23;
                            if (v24 < 0x11 || (!v23[8] || (result = 0, v25 = *(a2 + 1), v25 >= 5) && v25 - 4 >= this + v23[8] - *a2) && (v24 < 0x13 || !v23[9] || (result = 0, v26 = *(a2 + 1), v26 >= 2) && v26 - 1 >= this + v23[9] - *a2))
                            {
                              v27 = this - *this;
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v28 = v24 >= 0x15 && *(v27 + 10) ? this + *(v27 + 10) + *(this + *(v27 + 10)) : 0;
                                result = flatbuffers::Verifier::VerifyString(a2, v28);
                                if (result)
                                {
                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                                  if (result)
                                  {
                                    v29 = *this;
                                    if (*(this - v29) < 0x17u)
                                    {
                                      goto LABEL_59;
                                    }

                                    if (*(this - v29 + 22))
                                    {
                                      result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v29 + 22) + *(this + *(this - v29 + 22)), 4uLL, 0);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v29 = *this;
                                      if (*(this - v29) < 0x17u)
                                      {
                                        goto LABEL_59;
                                      }
                                    }

                                    v30 = *(this - v29 + 22);
                                    if (!v30)
                                    {
LABEL_59:
                                      v31 = 0;
                                    }

                                    else
                                    {
                                      v31 = (this + v30 + *(this + v30));
                                    }

                                    result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSReplacement>(a2, v31);
                                    if (result)
                                    {
                                      v32 = (this - *this);
                                      v33 = *v32;
                                      if (v33 < 0x19 || !v32[12] || (result = 0, v34 = *(a2 + 1), v34 >= 5) && v34 - 4 >= this + v32[12] - *a2)
                                      {
                                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Au);
                                        if (result && (v33 < 0x1B || !v32[13] || (result = siri::speech::schema_fb::TextToSpeechRequestMeta::Verify((this + v32[13] + *(this + v32[13])), a2))))
                                        {
                                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Cu);
                                          if (result)
                                          {
                                            v35 = (this - *this);
                                            if (*v35 < 0x1Du || (v36 = v35[14]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestContext::Verify((this + v36 + *(this + v36)), a2)))
                                            {
                                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x1Eu);
                                              if (result)
                                              {
                                                v37 = (this - *this);
                                                if (*v37 < 0x1Fu || (v38 = v37[15]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((this + v38 + *(this + v38)), a2)))
                                                {
                                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x20u);
                                                  if (result)
                                                  {
                                                    v39 = (this - *this);
                                                    if (*v39 < 0x21u || (v40 = v39[16]) == 0 || (result = siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((this + v40 + *(this + v40)), a2)))
                                                    {
                                                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x22u);
                                                      if (result)
                                                      {
                                                        v41 = (this - *this);
                                                        if (*v41 < 0x23u || (v42 = v41[17]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDebug::Verify((this + v42 + *(this + v42)), a2)))
                                                        {
                                                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x24u);
                                                          if (result)
                                                          {
                                                            v43 = (this - *this);
                                                            if (*v43 < 0x25u || (v44 = v43[18]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserProfile::Verify((this + v44 + *(this + v44)), a2)))
                                                            {
                                                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x26u);
                                                              if (result)
                                                              {
                                                                v45 = (this - *this);
                                                                if (*v45 < 0x27u || (v46 = v45[19]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify((this + v46 + *(this + v46)), a2)))
                                                                {
                                                                  result = flatbuffers::Table::VerifyOffset(this, a2, 0x28u);
                                                                  if (result)
                                                                  {
                                                                    v47 = (this - *this);
                                                                    if (*v47 < 0x29u || (v48 = v47[20]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify((this + v48 + *(this + v48)), a2)))
                                                                    {
                                                                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x2Au);
                                                                      if (result)
                                                                      {
                                                                        v49 = (this - *this);
                                                                        if (*v49 < 0x2Bu || (v50 = v49[21]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify((this + v50 + *(this + v50)), a2)))
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

  return result;
}

void sub_2690D7BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::BeginTextToSpeechStreamingResponse *this, flatbuffers::Verifier *a2)
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
                      if (v19 < 0xF || !v18[7] || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v18[7] - *a2)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                        if (result && (v19 < 0x11 || !v18[8] || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v18[8] + *(this + v18[8])), a2))))
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v21 = (this - *this);
                            if (*v21 < 0x13u || (v22 = v21[9]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v22 + *(this + v22)), a2)))
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v23 = *this;
                                v24 = *(this - v23);
                                if (v24 < 0x15)
                                {
                                  goto LABEL_52;
                                }

                                if (*(this - v23 + 20))
                                {
                                  result = siri::speech::schema_fb::TextToSpeechMeta::Verify((this + *(this - v23 + 20) + *(this + *(this - v23 + 20))), a2);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v25 = *this;
                                  v26 = -v25;
                                  v24 = *(this - v25);
                                }

                                else
                                {
                                  v26 = -v23;
                                }

                                if (v24 < 0x17 || (v27 = *(this + v26 + 22), !*(this + v26 + 22)) || (result = 0, v28 = *(a2 + 1), v28 >= 5) && v28 - 4 >= this + v27 - *a2)
                                {
LABEL_52:
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

void sub_2690D8AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690D8F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::PartialTextToSpeechStreamingResponse *this, flatbuffers::Verifier *a2)
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
                      if (v19 < 0xF || !v18[7] || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v18[7] - *a2)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                        if (result && (v19 < 0x11 || !v18[8] || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v18[8] + *(this + v18[8]), 1uLL, 0))))
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v21 = *this;
                            if (*(this - v21) < 0x13u)
                            {
                              goto LABEL_45;
                            }

                            if (*(this - v21 + 18))
                            {
                              result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v21 + 18) + *(this + *(this - v21 + 18)), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v21 = *this;
                              if (*(this - v21) < 0x13u)
                              {
                                goto LABEL_45;
                              }
                            }

                            v22 = *(this - v21 + 18);
                            if (!v22)
                            {
LABEL_45:
                              v23 = 0;
                            }

                            else
                            {
                              v23 = (this + v22 + *(this + v22));
                            }

                            result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(a2, v23);
                            if (result)
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v24 = (this - *this);
                                if (*v24 < 0x15u || (v25 = v24[10]) == 0 || (result = siri::speech::schema_fb::TextToSpeechFeature::Verify((this + v25 + *(this + v25)), a2)))
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

void sub_2690D9B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::FinalTextToSpeechStreamingResponse *this, flatbuffers::Verifier *a2)
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
                      if (v19 < 0xF || !v18[7] || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v18[7] - *a2)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                        if (result && (v19 < 0x11 || !v18[8] || (result = siri::speech::schema_fb::TextToSpeechResponseDevData::Verify((this + v18[8] + *(this + v18[8])), a2))))
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

  return result;
}

void sub_2690DA6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechCacheMetaInfo::Verify(siri::speech::schema_fb::TextToSpeechCacheMetaInfo *this, flatbuffers::Verifier *a2)
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
        goto LABEL_16;
      }

      if (*(this - v5 + 4))
      {
        result = siri::speech::schema_fb::TextToSpeechMeta::Verify((this + *(this - v5 + 4) + *(this + *(this - v5 + 4))), a2);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        v7 = -v5;
        v6 = *(this - v5);
      }

      else
      {
        v7 = -v5;
      }

      if (v6 < 7 || ((v8 = this + v7, !*(v8 + 3)) || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + *(v8 + 3) - *a2) && (v6 < 9 || (v10 = *(v8 + 4), !*(v8 + 4)) || (result = 0, v11 = *(a2 + 1), v11 >= 2) && v11 - 1 >= this + v10 - *a2))
      {
LABEL_16:
        result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
        if (result)
        {
          v12 = (this - v5);
          if (*v12 < 0xBu || (v13 = v12[5]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v13 + *(this + v13)), a2)))
          {
            result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
            if (result)
            {
              v14 = *this;
              v15 = *(this - v14);
              if (v15 < 0xD)
              {
                goto LABEL_30;
              }

              if (*(this - v14 + 12))
              {
                result = siri::speech::schema_fb::AudioDescription::Verify((this + *(this - v14 + 12) + *(this + *(this - v14 + 12))), a2);
                if (!result)
                {
                  return result;
                }

                v14 = *this;
                v16 = -v14;
                v15 = *(this - v14);
              }

              else
              {
                v16 = -v14;
              }

              if (v15 < 0xF || (v17 = *(this + v16 + 14), !*(this + v16 + 14)) || (result = 0, v18 = *(a2 + 1), v18 >= 5) && v18 - 4 >= this + v17 - *a2)
              {
LABEL_30:
                result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                if (result)
                {
                  v19 = (this - v14);
                  if (*v19 >= 0x11u && (v20 = v19[8]) != 0)
                  {
                    v21 = this + v20 + *(this + v20);
                  }

                  else
                  {
                    v21 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v21);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                    if (result)
                    {
                      v22 = (this - *this);
                      if (*v22 >= 0x13u && (v23 = v22[9]) != 0)
                      {
                        v24 = this + v23 + *(this + v23);
                      }

                      else
                      {
                        v24 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v24);
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

void sub_2690DB34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690DB634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechCacheObject::Verify(siri::speech::schema_fb::TextToSpeechCacheObject *this, flatbuffers::Verifier *a2)
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

          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(a2, v9);
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

void sub_2690DBCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690DC07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_2690DC708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690DCAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureModelIdentifier::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureModelIdentifier *this, flatbuffers::Verifier *a2)
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

void sub_2690DD2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690DD550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690DDA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690DDDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureInputText::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureInputText *this, flatbuffers::Verifier *a2)
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
        while (siri::speech::schema_fb::ContextWithPronHints::Verify((v9 + *v9), a2))
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

void sub_2690DE36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature *this, flatbuffers::Verifier *a2)
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
          goto LABEL_28;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          if (v9 < 9)
          {
            goto LABEL_28;
          }

          if (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2)
          {
            if (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (!v8[6] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v8[6] - *a2) && (v9 < 0xF || (v14 = v8[7]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 5) && v15 - 4 >= this + v14 - *a2)))
            {
LABEL_28:
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

void sub_2690DEB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690DF5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690DFA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature>(flatbuffers::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature::Verify((v5 + *v5), a1);
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

void sub_2690E02FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::ClientSetupInfo::Verify(siri::speech::schema_fb::ClientSetupInfo *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || !v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 2) && v8 - 1 >= this + v5[3] - *a2))
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
      if (result)
      {
        if (v6 >= 9 && v5[4])
        {
          v9 = this + v5[4] + *(this + v5[4]);
        }

        else
        {
          v9 = 0;
        }

        result = flatbuffers::Verifier::VerifyString(a2, v9);
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

void sub_2690E0990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E0D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E14FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E180C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690E1F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E20FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::AudioFrame::Verify(siri::speech::schema_fb::AudioFrame *this, flatbuffers::Verifier *a2)
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
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_2690E25B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E28E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SpeechTranslationAudioPacket::Verify(siri::speech::schema_fb::SpeechTranslationAudioPacket *this, flatbuffers::Verifier *a2)
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
        while (siri::speech::schema_fb::AudioFrame::Verify((v9 + *v9), a2))
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

void sub_2690E2E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E3450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E3B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::StartSpeechTranslationRequest::Verify(siri::speech::schema_fb::StartSpeechTranslationRequest *this, flatbuffers::Verifier *a2)
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
              v11 = *this;
              if (*(this - v11) < 9u)
              {
                goto LABEL_21;
              }

              if (*(this - v11 + 8))
              {
                result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v11 + 8) + *(this + *(this - v11 + 8)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v11 = *this;
                if (*(this - v11) < 9u)
                {
                  goto LABEL_21;
                }
              }

              v12 = *(this - v11 + 8);
              if (!v12)
              {
LABEL_21:
                v13 = 0;
              }

              else
              {
                v13 = (this + v12 + *(this + v12));
              }

              result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSReplacement>(a2, v13);
              if (result)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = siri::speech::schema_fb::StartSpeechRequest::Verify((this + v15 + *(this + v15)), a2)))
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v16 = (this - *this);
                      if (*v16 < 0xDu || (v17 = v16[6]) == 0 || (result = siri::speech::schema_fb::TranslationRequest::Verify((this + v17 + *(this + v17)), a2)))
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v18 = *this;
                          if (*(this - v18) < 0xFu)
                          {
                            goto LABEL_38;
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
                              goto LABEL_38;
                            }
                          }

                          v19 = *(this - v18 + 14);
                          if (!v19)
                          {
LABEL_38:
                            v20 = 0;
                          }

                          else
                          {
                            v20 = (this + v19 + *(this + v19));
                          }

                          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest>(a2, v20);
                          if (result)
                          {
                            v21 = (this - *this);
                            v22 = *v21;
                            if (v22 < 0x11 || !v21[8] || (result = 0, v23 = *(a2 + 1), v23 >= 2) && v23 - 1 >= this + v21[8] - *a2)
                            {
                              v30 = this - *this;
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                              if (result)
                              {
                                if (v22 >= 0x13 && *(v30 + 9))
                                {
                                  v24 = this + *(v30 + 9) + *(this + *(v30 + 9));
                                }

                                else
                                {
                                  v24 = 0;
                                }

                                result = flatbuffers::Verifier::VerifyString(a2, v24);
                                if (result)
                                {
                                  v25 = (this - *this);
                                  v26 = *v25;
                                  if (v26 < 0x15 || (!v25[10] || (result = 0, v27 = *(a2 + 1), v27 >= 5) && v27 - 4 >= this + v25[10] - *a2) && (v26 < 0x17 || (v28 = v25[11]) == 0 || (result = 0, v29 = *(a2 + 1), v29 >= 2) && v29 - 1 >= this + v28 - *a2))
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

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest>(flatbuffers::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TextToSpeechRequest::Verify((v5 + *v5), a1);
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

void sub_2690E4A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E4F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
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

void sub_2690E55B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E583C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690E5B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::LanguageDetectionPrediction::Verify(siri::speech::schema_fb::LanguageDetectionPrediction *this, flatbuffers::Verifier *a2)
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
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2) && (v9 < 9 || (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2) && (v9 < 0xB || (v12 = v8[5]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 2) && v13 - 1 >= this + v12 - *a2)))
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::LanguageDetected::Verify(siri::speech::schema_fb::LanguageDetected *this, flatbuffers::Verifier *a2)
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

          result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LanguageDetectionPrediction>(a2, v10);
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

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LanguageDetectionPrediction>(flatbuffers::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::LanguageDetectionPrediction::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::StartSpeechTranslationLoggingRequest::Verify(siri::speech::schema_fb::StartSpeechTranslationLoggingRequest *this, flatbuffers::Verifier *a2)
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
              if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResource::Verify((this + v12 + *(this + v12)), a2)))
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v13 = (this - *this);
                  if (*v13 < 0xBu || (v14 = v13[5]) == 0 || (result = siri::speech::schema_fb::LanguageDetected::Verify((this + v14 + *(this + v14)), a2)))
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
                          v18 = *this;
                          if (*(this - v18) < 0xFu)
                          {
                            goto LABEL_35;
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
                              goto LABEL_35;
                            }
                          }

                          v19 = *(this - v18 + 14);
                          if (!v19)
                          {
LABEL_35:
                            v20 = 0;
                          }

                          else
                          {
                            v20 = (this + v19 + *(this + v19));
                          }

                          result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v20);
                          if (result)
                          {
                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                            if (result)
                            {
                              v21 = (this - *this);
                              if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
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
                                result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                                if (result)
                                {
                                  v24 = *this;
                                  if (*(this - v24) < 0x13u)
                                  {
                                    goto LABEL_50;
                                  }

                                  if (*(this - v24 + 18))
                                  {
                                    result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v24 + 18) + *(this + *(this - v24 + 18)), 4uLL, 0);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v24 = *this;
                                    if (*(this - v24) < 0x13u)
                                    {
                                      goto LABEL_50;
                                    }
                                  }

                                  v25 = *(this - v24 + 18);
                                  if (!v25)
                                  {
LABEL_50:
                                    v26 = 0;
                                  }

                                  else
                                  {
                                    v26 = (this + v25 + *(this + v25));
                                  }

                                  result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v26);
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

  return result;
}

void sub_2690E6CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse::Verify(siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse *this, flatbuffers::Verifier *a2)
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
                          v21 = (this - *this);
                          v22 = *v21;
                          if (v22 < 0x11 || (!v21[8] || (result = 0, v23 = *(a2 + 1), v23 >= 5) && v23 - 4 >= this + v21[8] - *a2) && (v22 < 0x13 || (v24 = v21[9]) == 0 || (result = 0, v25 = *(a2 + 1), v25 >= 2) && v25 - 1 >= this + v24 - *a2))
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

void sub_2690E78D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse::Verify(siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse *this, flatbuffers::Verifier *a2)
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
                            v21 = (this - *this);
                            if (*v21 < 0x11u || (v22 = v21[8]) == 0 || (result = siri::speech::schema_fb::RecognitionResult::Verify((this + v22 + *(this + v22)), a2)))
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

  return result;
}

void sub_2690E84CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690E8984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690E8CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase::Verify(siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase *this, flatbuffers::Verifier *a2)
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
        v8 = v6 >= 7 && v5[3] ? this + v5[3] + *(this + v5[3]) : 0;
        result = flatbuffers::Verifier::VerifyString(a2, v8);
        if (result)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v9 = (this - *this);
            if (*v9 >= 9u && (v10 = v9[4]) != 0)
            {
              v11 = this + v10 + *(this + v10);
            }

            else
            {
              v11 = 0;
            }

            result = flatbuffers::Verifier::VerifyString(a2, v11);
            if (result)
            {
              v12 = (this - *this);
              if (*v12 < 0xBu || (v13 = v12[5]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 2) && v14 - 1 >= this + v13 - *a2)
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

BOOL siri::speech::schema_fb::SpeechTranslationMtResponse::Verify(siri::speech::schema_fb::SpeechTranslationMtResponse *this, flatbuffers::Verifier *a2)
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
                    if (*v15 < 0xDu || (v16 = v15[6]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResource::Verify((this + v16 + *(this + v16)), a2)))
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v17 = *this;
                        if (*(this - v17) < 0xFu)
                        {
                          goto LABEL_35;
                        }

                        if (*(this - v17 + 14))
                        {
                          result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v17 + 14) + *(this + *(this - v17 + 14)), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v17 = *this;
                          if (*(this - v17) < 0xFu)
                          {
                            goto LABEL_35;
                          }
                        }

                        v18 = *(this - v17 + 14);
                        if (!v18)
                        {
LABEL_35:
                          v19 = 0;
                        }

                        else
                        {
                          v19 = (this + v18 + *(this + v18));
                        }

                        result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>(a2, v19);
                        if (result)
                        {
                          v20 = (this - *this);
                          if (*v20 < 0x11u || (v21 = v20[8]) == 0 || (result = 0, v22 = *(a2 + 1), v22 >= 2) && v22 - 1 >= this + v21 - *a2)
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

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>(flatbuffers::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase::Verify((v5 + *v5), a1);
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

void sub_2690E9BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SpeechTranslationTextToSpeechResponse::Verify(siri::speech::schema_fb::SpeechTranslationTextToSpeechResponse *this, flatbuffers::Verifier *a2)
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
                  if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResponse::Verify((this + v15 + *(this + v15)), a2)))
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

void sub_2690EA4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures::Verify(siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures *this, flatbuffers::Verifier *a2)
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
                  if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = siri::speech::schema_fb::ServerEndpointFeatures::Verify((this + v15 + *(this + v15)), a2)))
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

void sub_2690EAE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690EB394(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690EB9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690EBC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690EC72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690ECADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690ECDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690ED6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690EDD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690EE0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::StartMultilingualSpeechRequest::Verify(siri::speech::schema_fb::StartMultilingualSpeechRequest *this, flatbuffers::Verifier *a2)
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
            while (siri::speech::schema_fb::TextToSpeechSpeechFeatureModelIdentifier::Verify((v11 + *v11), a2))
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

void sub_2690EE79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690EECCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690EF2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690EF780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690EFA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::BatchTranslationRequest_::Paragraph::Verify(siri::speech::schema_fb::BatchTranslationRequest_::Paragraph *this, flatbuffers::Verifier *a2)
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
              v11 = *this;
              if (*(this - v11) < 9u)
              {
                goto LABEL_21;
              }

              if (*(this - v11 + 8))
              {
                result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v11 + 8) + *(this + *(this - v11 + 8)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v11 = *this;
                if (*(this - v11) < 9u)
                {
                  goto LABEL_21;
                }
              }

              v12 = *(this - v11 + 8);
              if (!v12)
              {
LABEL_21:
                v13 = 0;
              }

              else
              {
                v13 = (this + v12 + *(this + v12));
              }

              result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(a2, v13);
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

BOOL siri::speech::schema_fb::BatchTranslationRequest::Verify(siri::speech::schema_fb::BatchTranslationRequest *this, flatbuffers::Verifier *a2)
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
                      v17 = *this;
                      if (*(this - v17) < 0xDu)
                      {
                        goto LABEL_33;
                      }

                      if (*(this - v17 + 12))
                      {
                        result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v17 + 12) + *(this + *(this - v17 + 12)), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v17 = *this;
                        if (*(this - v17) < 0xDu)
                        {
                          goto LABEL_33;
                        }
                      }

                      v18 = *(this - v17 + 12);
                      if (!v18)
                      {
LABEL_33:
                        v19 = 0;
                      }

                      else
                      {
                        v19 = (this + v18 + *(this + v18));
                      }

                      result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>(a2, v19);
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
                                result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                                if (result)
                                {
                                  v26 = (this - *this);
                                  if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
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
                                    v29 = (this - *this);
                                    if (*v29 < 0x15u || (v30 = v29[10]) == 0 || (result = 0, v31 = *(a2 + 1), v31 >= 5) && v31 - 4 >= this + v30 - *a2)
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

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>(flatbuffers::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::BatchTranslationRequest_::Paragraph::Verify((v5 + *v5), a1);
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

void sub_2690F091C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::BatchTranslationFeedbackRequest::Verify(siri::speech::schema_fb::BatchTranslationFeedbackRequest *this, flatbuffers::Verifier *a2)
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
                                result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                                if (result)
                                {
                                  v26 = (this - *this);
                                  if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
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
                                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                                    if (result)
                                    {
                                      v29 = (this - *this);
                                      if (*v29 >= 0x15u && (v30 = v29[10]) != 0)
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
                                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                                        if (result)
                                        {
                                          v32 = (this - *this);
                                          if (*v32 >= 0x17u && (v33 = v32[11]) != 0)
                                          {
                                            v34 = this + v33 + *(this + v33);
                                          }

                                          else
                                          {
                                            v34 = 0;
                                          }

                                          result = flatbuffers::Verifier::VerifyString(a2, v34);
                                          if (result)
                                          {
                                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x18u);
                                            if (result)
                                            {
                                              v35 = (this - *this);
                                              if (*v35 >= 0x19u && (v36 = v35[12]) != 0)
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
    }
  }

  return result;
}

void sub_2690F1A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::BatchTranslationLoggingRequest::Verify(siri::speech::schema_fb::BatchTranslationLoggingRequest *this, flatbuffers::Verifier *a2)
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
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2) && (v9 < 9 || (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2) && (v9 < 0xB || (v12 = v8[5]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)))
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_2690F2150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F2718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p)
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

void sub_2690F2A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F2E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_2690F314C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F3468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase::Verify(siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase *this, flatbuffers::Verifier *a2)
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
        v8 = v6 >= 7 && v5[3] ? this + v5[3] + *(this + v5[3]) : 0;
        result = flatbuffers::Verifier::VerifyString(a2, v8);
        if (result)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v9 = (this - *this);
            if (*v9 >= 9u && (v10 = v9[4]) != 0)
            {
              v11 = this + v10 + *(this + v10);
            }

            else
            {
              v11 = 0;
            }

            result = flatbuffers::Verifier::VerifyString(a2, v11);
            if (result)
            {
              v12 = *this;
              v13 = this - v12;
              v14 = *(this - v12);
              if (v14 < 0xB || !*(v13 + 5) || (result = 0, v15 = *(a2 + 1), v15 >= 2) && v15 - 1 >= this + *(v13 + 5) - *a2)
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
                if (result)
                {
                  if (v14 >= 0xD)
                  {
                    if (*(v13 + 6))
                    {
                      result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(v13 + 6) + *(this + *(v13 + 6)), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v16 = *this;
                      if (*(this - v16) < 0xDu)
                      {
                        goto LABEL_31;
                      }

                      v17 = -v16;
                    }

                    else
                    {
                      v17 = -v12;
                    }

                    v18 = *(this + v17 + 12);
                    if (v18)
                    {
                      v19 = (this + v18 + *(this + v18));
                      goto LABEL_32;
                    }
                  }

LABEL_31:
                  v19 = 0;
LABEL_32:
                  result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(a2, v19);
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

BOOL siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence::Verify(siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::Span::Verify((this + v6 + *(this + v6)), a2)))
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
              if (*v10 < 9u || (v11 = v10[4]) == 0 || (result = siri::speech::schema_fb::Span::Verify((this + v11 + *(this + v11)), a2)))
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v12 = *this;
                  if (*(this - v12) < 0xBu)
                  {
                    goto LABEL_23;
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
                      goto LABEL_23;
                    }
                  }

                  v13 = *(this - v12 + 10);
                  if (!v13)
                  {
LABEL_23:
                    v14 = 0;
                  }

                  else
                  {
                    v14 = (this + v13 + *(this + v13));
                  }

                  result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>(a2, v14);
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

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>(flatbuffers::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::BatchTranslationResponse::Verify(siri::speech::schema_fb::BatchTranslationResponse *this, flatbuffers::Verifier *a2)
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
        if (v9 < 7 || !v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v11 = v9 >= 9 && v8[4] ? this + v8[4] + *(this + v8[4]) : 0;
            result = flatbuffers::Verifier::VerifyString(a2, v11);
            if (result)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v12 = (this - *this);
                if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
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
                        v18 = *this;
                        if (*(this - v18) < 0xFu)
                        {
                          goto LABEL_37;
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
                            goto LABEL_37;
                          }
                        }

                        v19 = *(this - v18 + 14);
                        if (!v19)
                        {
LABEL_37:
                          v20 = 0;
                        }

                        else
                        {
                          v20 = (this + v19 + *(this + v19));
                        }

                        result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(a2, v20);
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

                            result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>(a2, v23);
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

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>(flatbuffers::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence::Verify((v5 + *v5), a1);
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

void sub_2690F4B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F4E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2690F5594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F5B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F5F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_2690F6248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TranslationSupportedLanguagesResponse::Verify(siri::speech::schema_fb::TranslationSupportedLanguagesResponse *this, flatbuffers::Verifier *a2)
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
        if (v9 < 7 || !v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v11 = v9 >= 9 && v8[4] ? this + v8[4] + *(this + v8[4]) : 0;
            result = flatbuffers::Verifier::VerifyString(a2, v11);
            if (result)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v12 = *this;
                if (*(this - v12) < 0xBu)
                {
                  goto LABEL_25;
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
                    goto LABEL_25;
                  }
                }

                v13 = *(this - v12 + 10);
                if (!v13)
                {
LABEL_25:
                  v14 = 0;
                }

                else
                {
                  v14 = (this + v13 + *(this + v13));
                }

                result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSReplacement>(a2, v14);
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

void sub_2690F6CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F6FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::StartLanguageDetectionRequest::Verify(siri::speech::schema_fb::StartLanguageDetectionRequest *this, flatbuffers::Verifier *a2)
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
              v11 = *this;
              if (*(this - v11) < 9u)
              {
                goto LABEL_21;
              }

              if (*(this - v11 + 8))
              {
                result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v11 + 8) + *(this + *(this - v11 + 8)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v11 = *this;
                if (*(this - v11) < 9u)
                {
                  goto LABEL_21;
                }
              }

              v12 = *(this - v11 + 8);
              if (!v12)
              {
LABEL_21:
                v13 = 0;
              }

              else
              {
                v13 = (this + v12 + *(this + v12));
              }

              result = flatbuffers::Verifier::VerifyVectorOfStrings(a2, v13);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)
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

void sub_2690F7770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F7B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::speech::schema_fb::LanguageDetectionResponse::Verify(siri::speech::schema_fb::LanguageDetectionResponse *this, flatbuffers::Verifier *a2)
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
                        v18 = *this;
                        if (*(this - v18) < 0xFu)
                        {
                          goto LABEL_37;
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
                            goto LABEL_37;
                          }
                        }

                        v19 = *(this - v18 + 14);
                        if (!v19)
                        {
LABEL_37:
                          v20 = 0;
                        }

                        else
                        {
                          v20 = (this + v19 + *(this + v19));
                        }

                        result = flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LanguageDetectionPrediction>(a2, v20);
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

  return result;
}

void sub_2690F8460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<void>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = flatbuffers::FlatBufferBuilder::ReferTo(result, a2);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2, 6, v3);
  }

  return result;
}

void sub_2690F8F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F9568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690F9BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690FA358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690FB7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690FCD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690FE094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2690FF244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26910026C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269100FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269102010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2691035E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269104058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269104970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269104FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_2691058D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269105F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269106560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269106BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269107630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_269107F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x26D631190](v7, 0x1030C40E9F947FBLL);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_26913940C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SFSSGetLogObject()
{
  if (SFSSGetLogObject_onceToken != -1)
  {
    dispatch_once(&SFSSGetLogObject_onceToken, &__block_literal_global_1635);
  }

  v1 = SFSSGetLogObject___log_default;

  return v1;
}

uint64_t __SFSSGetLogObject_block_invoke()
{
  SFSSGetLogObject___log_default = os_log_create("com.apple.speech.speechsynthesis.logging", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t AudioConverterFillComplexBuffer_Callback(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [v8 index];
  v10 = [v8 audioChunks];
  v11 = [v10 count];

  if (v9 >= v11)
  {
    *a2 = 0;
    *(a3 + 16) = 0;
    *(a3 + 12) = 0;
    if (a4)
    {
      *a4 = &v19;
    }
  }

  else
  {
    v12 = [v8 audioChunks];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v8, "index")}];

    v14 = [v13 packetDescriptions];
    *a4 = [v14 bytes];

    *a2 = [v13 packetCount];
    v15 = [v13 audioData];
    *(a3 + 16) = [v15 bytes];

    v16 = [v13 audioData];
    *(a3 + 12) = [v16 length];

    [v8 setIndex:{objc_msgSend(v8, "index") + 1}];
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

TTSSynthesizer *std::unique_ptr<TTSSynthesizer>::reset[abi:ne200100](TTSSynthesizer **a1, TTSSynthesizer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TTSSynthesizer::~TTSSynthesizer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

void sub_26913B410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](v33 - 112);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage)>,int ()(TTSSynthesizer::CallbackMessage)>::target(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == 0x800000026914CF30 || ((v3 & 0x800000026914CF30 & 0x8000000000000000) != 0) != __OFSUB__(v3, 0x800000026914CF30) && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), (0x800000026914CF30 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage)>,int ()(TTSSynthesizer::CallbackMessage)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

uint64_t std::__function::__func<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage)>,int ()(TTSSynthesizer::CallbackMessage)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2879AE700;
  result = MEMORY[0x26D631550](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage)>,int ()(TTSSynthesizer::CallbackMessage)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26D631190);
}

void sub_26913BEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  if (a2 == 1)
  {
    v37 = __cxa_begin_catch(a1);
    v38 = SFSSGetLogObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v47 = (*(*v37 + 16))(v37);
      *(v34 - 144) = 136315138;
      *(v33 + 4) = v47;
      _os_log_error_impl(&dword_269079000, v38, OS_LOG_TYPE_ERROR, "Exception: %s\n", (v34 - 144), 0xCu);
    }

    v39 = SFSSGetLogObject();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *(v34 - 144) = 138412546;
      *(v33 + 4) = v30;
      *(v34 - 132) = 2112;
      *(v33 + 14) = v32;
      _os_log_error_impl(&dword_269079000, v39, OS_LOG_TYPE_ERROR, "voice path '%@', resource path '%@'\n", (v34 - 144), 0x16u);
    }

    v50 = [MEMORY[0x277CCAA00] defaultManager];
    v49 = [v50 contentsOfDirectoryAtPath:v30 error:0];
    v40 = SFSSGetLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v48 = [v49 count];
      *(v34 - 144) = 67109120;
      *(v34 - 140) = v48;
      _os_log_error_impl(&dword_269079000, v40, OS_LOG_TYPE_ERROR, "%d files under voice path", (v34 - 144), 8u);
    }

    a14 = 0u;
    a15 = 0u;
    a12 = 0u;
    a13 = 0u;
    v41 = v49;
    v42 = [v41 countByEnumeratingWithState:&a12 objects:&a30 count:16];
    if (v42)
    {
      v43 = *a13;
      do
      {
        v44 = 0;
        do
        {
          if (*a13 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&a12 + 1) + 8 * v44);
          v46 = SFSSGetLogObject();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *(v34 - 144) = 138412290;
            *(v33 + 4) = v45;
            _os_log_error_impl(&dword_269079000, v46, OS_LOG_TYPE_ERROR, "%@", (v34 - 144), 0xCu);
          }

          ++v44;
        }

        while (v42 != v44);
        v42 = [v41 countByEnumeratingWithState:&a12 objects:&a30 count:16];
      }

      while (v42);
    }

    __cxa_end_catch();
    JUMPOUT(0x26913BDA0);
  }

  _Unwind_Resume(a1);
}

void sub_26913C364(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}