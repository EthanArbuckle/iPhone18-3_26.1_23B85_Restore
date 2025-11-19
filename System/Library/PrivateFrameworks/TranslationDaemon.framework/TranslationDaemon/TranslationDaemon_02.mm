BOOL siri::speech::schema_fb::UserDataEntity::Verify(siri::speech::schema_fb::UserDataEntity *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Word>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Word>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::Word::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::Word::Verify(siri::speech::schema_fb::Word *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          v9 = -v8;
          v10 = (this - v8);
          if (*v10 >= 7u)
          {
            v11 = v10[3];
            if (v11)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v11 + *(this + v11), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v9 = -*this;
            }
          }

          v12 = (this + v9);
          if (*v12 >= 7u && (v13 = v12[3]) != 0)
          {
            v14 = (this + v13 + *(this + v13));
          }

          else
          {
            v14 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v14);
          if (result)
          {
            v15 = (this - *this);
            if (*v15 < 9u || (v16 = v15[4]) == 0 || (result = 0, v17 = *(a2 + 1), v17 >= 5) && v17 - 4 >= this + v16 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
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

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v20);
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

BOOL siri::speech::schema_fb::CreateLanguageProfileResponse::Verify(siri::speech::schema_fb::CreateLanguageProfileResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
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

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = *this;
                    v18 = -v17;
                    v19 = (this - v17);
                    if (*v19 >= 0xDu)
                    {
                      v20 = v19[6];
                      if (v20)
                      {
                        result = siri::speech::schema_fb::UserLanguageProfile::Verify((this + v20 + *(this + v20)), a2);
                        if (!result)
                        {
                          return result;
                        }

                        v18 = -*this;
                      }
                    }

                    v21 = (this + v18);
                    v22 = *v21;
                    if (v22 < 0xF || (!v21[7] || (result = 0, v23 = *(a2 + 1), v23 >= 2) && v23 - 1 >= this + v21[7] - *a2) && (v22 < 0x11 || (v24 = v21[8]) == 0 || (result = 0, v25 = *(a2 + 1), v25 >= 2) && v25 - 1 >= this + v24 - *a2))
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

BOOL siri::speech::qss_fb::MtTranslationMessage::Verify(siri::speech::qss_fb::MtTranslationMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(this + v11);
  if (v12 != 2)
  {
    v13 = v12 != 1 || v10 == 0;
    if (!v13 && !siri::speech::schema_fb::TranslationRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::TranslationResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::TranslationResponse::Verify(siri::speech::schema_fb::TranslationResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
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

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = *this;
                    v18 = -v17;
                    v19 = (this - v17);
                    if (*v19 >= 0xDu)
                    {
                      v20 = v19[6];
                      if (v20)
                      {
                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v20 + *(this + v20), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v18 = -*this;
                      }
                    }

                    v21 = (this + v18);
                    if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
                    {
                      v23 = (this + v22 + *(this + v22));
                    }

                    else
                    {
                      v23 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>(a2, v23);
                    if (result)
                    {
                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
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

                        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v26);
                        if (result)
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                          if (result)
                          {
                            v27 = *this;
                            v28 = -v27;
                            v29 = (this - v27);
                            if (*v29 >= 0x11u)
                            {
                              v30 = v29[8];
                              if (v30)
                              {
                                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v30 + *(this + v30), 4uLL, 0);
                                if (!result)
                                {
                                  return result;
                                }

                                v28 = -*this;
                              }
                            }

                            v31 = (this + v28);
                            if (*v31 >= 0x11u && (v32 = v31[8]) != 0)
                            {
                              v33 = (this + v32 + *(this + v32));
                            }

                            else
                            {
                              v33 = 0;
                            }

                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>(a2, v33);
                            if (result)
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                              if (result)
                              {
                                v34 = (this - *this);
                                if (*v34 >= 0x13u && (v35 = v34[9]) != 0)
                                {
                                  v36 = this + v35 + *(this + v35);
                                }

                                else
                                {
                                  v36 = 0;
                                }

                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v36);
                                if (result)
                                {
                                  v37 = (this - *this);
                                  if (*v37 < 0x15u || (v38 = v37[10]) == 0 || (result = 0, v39 = *(a2 + 1), v39 >= 2) && v39 - 1 >= this + v38 - *a2)
                                  {
                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                                    if (result)
                                    {
                                      v40 = *this;
                                      v41 = -v40;
                                      v42 = (this - v40);
                                      if (*v42 >= 0x17u)
                                      {
                                        v43 = v42[11];
                                        if (v43)
                                        {
                                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v43 + *(this + v43), 4uLL, 0);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v41 = -*this;
                                        }
                                      }

                                      v44 = (this + v41);
                                      if (*v44 >= 0x17u && (v45 = v44[11]) != 0)
                                      {
                                        v46 = (this + v45 + *(this + v45));
                                      }

                                      else
                                      {
                                        v46 = 0;
                                      }

                                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::MTAlternativeDescription>(a2, v46);
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

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::TranslationResponse_::TranslationPhrase::Verify(siri::speech::schema_fb::TranslationResponse_::TranslationPhrase *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = *this;
        v9 = -v8;
        v10 = (this - v8);
        if (*v10 >= 7u)
        {
          v11 = v10[3];
          if (v11)
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v11 + *(this + v11), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v9 = -*this;
          }
        }

        v12 = (this + v9);
        if (*v12 >= 7u && (v13 = v12[3]) != 0)
        {
          v14 = (this + v13 + *(this + v13));
        }

        else
        {
          v14 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationResponse_::TranslationToken>(a2, v14);
        if (result)
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
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

            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
            if (result)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v18 = *this;
                v19 = -v18;
                v20 = (this - v18);
                if (*v20 >= 0xBu)
                {
                  v21 = v20[5];
                  if (v21)
                  {
                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v21 + *(this + v21), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v19 = -*this;
                  }
                }

                v22 = (this + v19);
                if (*v22 >= 0xBu && (v23 = v22[5]) != 0)
                {
                  v24 = (this + v23 + *(this + v23));
                }

                else
                {
                  v24 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(a2, v24);
                if (result)
                {
                  v25 = (this - *this);
                  if (*v25 < 0xDu || (v26 = v25[6]) == 0 || (result = 0, v27 = *(a2 + 1), v27 >= 2) && v27 - 1 >= this + v26 - *a2)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                    if (result)
                    {
                      v28 = (this - *this);
                      if (*v28 < 0xFu || (v29 = v28[7]) == 0 || (result = siri::speech::schema_fb::TranslationPhraseMetaInfo::Verify((this + v29 + *(this + v29)), a2)))
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationResponse_::TranslationToken>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TranslationResponse_::TranslationToken::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::TranslationResponse_::TranslationToken::Verify(siri::speech::schema_fb::TranslationResponse_::TranslationToken *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v9 - *a2)
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v11 = *this;
            v12 = -v11;
            v13 = (this - v11);
            if (*v13 >= 9u)
            {
              v14 = v13[4];
              if (v14)
              {
                result = siri::speech::schema_fb::Alignment::Verify((this + v14 + *(this + v14)), a2);
                if (!result)
                {
                  return result;
                }

                v12 = -*this;
              }
            }

            v15 = (this + v12);
            if (*v15 < 0xBu || (v16 = v15[5]) == 0 || (result = 0, v17 = *(a2 + 1), v17 >= 2) && v17 - 1 >= this + v16 - *a2)
            {
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

BOOL siri::speech::schema_fb::Alignment::Verify(siri::speech::schema_fb::Alignment *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 4uLL, 0)))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::TtsTextToSpeechStreamingMessage::Verify(siri::speech::qss_fb::TtsTextToSpeechStreamingMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          if (v9 < 5)
          {
            goto LABEL_37;
          }
        }

        else if (v8[3])
        {
          v10 = this + v8[3] + *(this + v8[3]);
          goto LABEL_12;
        }

        v10 = 0;
LABEL_12:
        v11 = v8[2];
        if (!v11)
        {
          goto LABEL_37;
        }

        v12 = *(this + v11);
        if (v12 <= 2)
        {
          if (v12 != 1)
          {
            if (v12 == 2 && v10 != 0)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, v10);
              if (!result)
              {
                return result;
              }

              --*(a2 + 4);
            }

            goto LABEL_37;
          }

          if (!v10 || siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(v10, a2))
          {
LABEL_37:
            --*(a2 + 4);
            return 1;
          }
        }

        else if (v12 == 3)
        {
          if (!v10 || siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(v10, a2))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v12 != 4)
          {
            if (v12 == 5 && v10 != 0)
            {
              result = siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(v10, a2);
              if (!result)
              {
                return result;
              }
            }

            goto LABEL_37;
          }

          if (!v10 || siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v10, a2))
          {
            goto LABEL_37;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::TtsTextToSpeechSpeechFeatureMessage::Verify(siri::speech::qss_fb::TtsTextToSpeechSpeechFeatureMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(this + v11);
  if (v12 != 2)
  {
    v13 = v12 != 1 || v10 == 0;
    if (!v13 && !siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::TextToSpeechSpeechFeatureResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = siri::speech::schema_fb::CancelRequest::Verify((this + v12 + *(this + v12)), a2)))
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v13 = (this - *this);
                  if (*v13 < 0xBu || (v14 = v13[5]) == 0 || (result = siri::speech::schema_fb::TextToSpeechSpeechFeatureInputText::Verify((this + v14 + *(this + v14)), a2)))
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v15 = (this - *this);
                      if (*v15 < 0xDu || (v16 = v15[6]) == 0 || (result = siri::speech::schema_fb::TextToSpeechVoiceResource::Verify((this + v16 + *(this + v16)), a2)))
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v17 = *this;
                          v18 = -v17;
                          v19 = (this - v17);
                          if (*v19 >= 0xFu)
                          {
                            v20 = v19[7];
                            if (v20)
                            {
                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v20 + *(this + v20), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v18 = -*this;
                            }
                          }

                          v21 = (this + v18);
                          if (*v21 >= 0xFu && (v22 = v21[7]) != 0)
                          {
                            v23 = (this + v22 + *(this + v22));
                          }

                          else
                          {
                            v23 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest_::LexiconEntry>(a2, v23);
                          if (result)
                          {
                            v24 = (this - *this);
                            if (*v24 < 0x11u || (v25 = v24[8]) == 0 || (result = 0, v26 = *(a2 + 1), v26 >= 2) && v26 - 1 >= this + v25 - *a2)
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest_::LexiconEntry>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest_::LexiconEntry::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureInputText::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureInputText *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ContextWithPronHints>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest_::LexiconEntry::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest_::LexiconEntry *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = siri::speech::schema_fb::TTSPhonemeSequence::Verify((this + v9 + *(this + v9)), a2)))
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

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureResponse::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
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

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = *this;
                    v18 = -v17;
                    v19 = (this - v17);
                    if (*v19 >= 0xDu)
                    {
                      v20 = v19[6];
                      if (v20)
                      {
                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v20 + *(this + v20), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v18 = -*this;
                      }
                    }

                    v21 = (this + v18);
                    if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
                    {
                      v23 = (this + v22 + *(this + v22));
                    }

                    else
                    {
                      v23 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature>(a2, v23);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          goto LABEL_32;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          if (v9 < 9)
          {
            goto LABEL_32;
          }

          if (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2)
          {
            if (v9 < 0xB)
            {
              goto LABEL_32;
            }

            if (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2)
            {
              if (v9 < 0xD || (!v8[6] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v8[6] - *a2) && (v9 < 0xF || (!v8[7] || (result = 0, v14 = *(a2 + 1), v14 >= 5) && v14 - 4 >= this + v8[7] - *a2) && (v9 < 0x11 || (v15 = v8[8]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)))
              {
LABEL_32:
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

BOOL siri::speech::qss_fb::NlShortcutFuzzyMatchMessage::Verify(siri::speech::qss_fb::NlShortcutFuzzyMatchMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(this + v11);
  if (v12 != 2)
  {
    v13 = v12 != 1 || v10 == 0;
    if (!v13 && !siri::speech::schema_fb::ShortcutFuzzyMatchRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::ShortcutFuzzyMatchResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::ShortcutFuzzyMatchRequest::Verify(siri::speech::schema_fb::ShortcutFuzzyMatchRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::ContextWithPronHints::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          v8 = -v7;
          v9 = (this - v7);
          if (*v9 >= 7u)
          {
            v10 = v9[3];
            if (v10)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v10 + *(this + v10), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v8 = -*this;
            }
          }

          v11 = (this + v8);
          if (*v11 >= 7u && (v12 = v11[3]) != 0)
          {
            v13 = (this + v12 + *(this + v12));
          }

          else
          {
            v13 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ContextWithPronHints>(a2, v13);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v14 = (this - *this);
              if (*v14 >= 9u && (v15 = v14[4]) != 0)
              {
                v16 = this + v15 + *(this + v15);
              }

              else
              {
                v16 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v17 = (this - *this);
                  if (*v17 >= 0xBu && (v18 = v17[5]) != 0)
                  {
                    v19 = this + v18 + *(this + v18);
                  }

                  else
                  {
                    v19 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v20 = (this - *this);
                      if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
                      {
                        v22 = this + v21 + *(this + v21);
                      }

                      else
                      {
                        v22 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v22);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v23 = (this - *this);
                          if (*v23 >= 0xFu && (v24 = v23[7]) != 0)
                          {
                            v25 = this + v24 + *(this + v24);
                          }

                          else
                          {
                            v25 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v25);
                          if (result)
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                            if (result)
                            {
                              v26 = (this - *this);
                              if (*v26 >= 0x11u && (v27 = v26[8]) != 0)
                              {
                                v28 = this + v27 + *(this + v27);
                              }

                              else
                              {
                                v28 = 0;
                              }

                              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v28);
                              if (result)
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                                if (result)
                                {
                                  v29 = (this - *this);
                                  if (*v29 >= 0x13u && (v30 = v29[9]) != 0)
                                  {
                                    v31 = this + v30 + *(this + v30);
                                  }

                                  else
                                  {
                                    v31 = 0;
                                  }

                                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v31);
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

BOOL siri::speech::schema_fb::ShortcutFuzzyMatchResponse::Verify(siri::speech::schema_fb::ShortcutFuzzyMatchResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          v9 = -v8;
          v10 = (this - v8);
          if (*v10 >= 7u)
          {
            v11 = v10[3];
            if (v11)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v11 + *(this + v11), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v9 = -*this;
            }
          }

          v12 = (this + v9);
          if (*v12 >= 7u && (v13 = v12[3]) != 0)
          {
            v14 = (this + v13 + *(this + v13));
          }

          else
          {
            v14 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>(a2, v14);
          if (result)
          {
            v15 = (this - *this);
            if (*v15 < 9u || (v16 = v15[4]) == 0 || (result = 0, v17 = *(a2 + 1), v17 >= 5) && v17 - 4 >= this + v16 - *a2)
            {
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

BOOL siri::speech::qss_fb::SlsLanguageDetectionMessage::Verify(siri::speech::qss_fb::SlsLanguageDetectionMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = *(this + v11);
  if (v12 <= 2)
  {
    if (v12 != 1)
    {
      v13 = v12 != 2 || v10 == 0;
      if (!v13 && !siri::speech::schema_fb::AudioPacket::Verify(v10, a2))
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v10 && !siri::speech::schema_fb::StartLanguageDetectionRequest::Verify(v10, a2))
    {
      return 0;
    }

LABEL_33:
    --*(a2 + 4);
    return 1;
  }

  if (v12 == 3)
  {
    if (v10 && !siri::speech::schema_fb::FinishAudio::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v12 != 4 || v10 == 0)
  {
    goto LABEL_33;
  }

  result = siri::speech::schema_fb::LanguageDetectionResponse::Verify(v10, a2);
  if (result)
  {
    goto LABEL_33;
  }

  return result;
}

BOOL siri::speech::schema_fb::StartLanguageDetectionRequest::Verify(siri::speech::schema_fb::StartLanguageDetectionRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = *this;
              v12 = -v11;
              v13 = (this - v11);
              if (*v13 >= 9u)
              {
                v14 = v13[4];
                if (v14)
                {
                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v14 + *(this + v14), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v12 = -*this;
                }
              }

              v15 = (this + v12);
              if (*v15 >= 9u && (v16 = v15[4]) != 0)
              {
                v17 = (this + v16 + *(this + v16));
              }

              else
              {
                v17 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v17);
              if (result)
              {
                v18 = (this - *this);
                if (*v18 < 0xBu || (v19 = v18[5]) == 0 || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v19 - *a2)
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

BOOL siri::speech::schema_fb::LanguageDetectionResponse::Verify(siri::speech::schema_fb::LanguageDetectionResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
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

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
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

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                    if (result)
                    {
                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v20 = *this;
                        v21 = -v20;
                        v22 = (this - v20);
                        if (*v22 >= 0xFu)
                        {
                          v23 = v22[7];
                          if (v23)
                          {
                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v23 + *(this + v23), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v21 = -*this;
                          }
                        }

                        v24 = (this + v21);
                        if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
                        {
                          v26 = (this + v25 + *(this + v25));
                        }

                        else
                        {
                          v26 = 0;
                        }

                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LanguageDetectionPrediction>(a2, v26);
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

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2, const char *a3, int a4)
{
  *(this + 7) = *(this + 5);
  v8 = 4;
  if (a4)
  {
    v8 = 8;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v8 + 4 * (a3 != 0), *(this + 9));
  if (a3)
  {
    v9 = *(this + 6);
    if ((v9 - *(this + 7)) <= 3)
    {
      apple::aiml::flatbuffers2::vector_downward::reallocate(this, 4uLL);
      v9 = *(this + 6);
    }

    *(this + 6) = v9 - 4;
    *(v9 - 4) = *a3;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10) - a2 + 4);
  if (a4)
  {
    result = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10));
  }

  *(this + 71) = 1;
  return result;
}

BOOL siri::speech::qss_fb::QssMessage::Verify(siri::speech::qss_fb::QssMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::qss_fb::ErrorMessage::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          v8 = -v7;
          v9 = (this - v7);
          if (*v9 >= 7u)
          {
            v10 = v9[3];
            if (v10)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this + v10 + *(this + v10));
              if (!result)
              {
                return result;
              }

              --*(a2 + 4);
              v8 = -*this;
            }
          }

          v11 = (this + v8);
          if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 2) && v13 - 1 >= this + v12 - *a2)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
            if (result)
            {
              v14 = (this - *this);
              v15 = *v14;
              if (v15 < 0xB)
              {
                v16 = 0;
                if (v15 < 9)
                {
                  goto LABEL_24;
                }
              }

              else if (v14[5])
              {
                v16 = (this + v14[5] + *(this + v14[5]));
              }

              else
              {
                v16 = 0;
              }

              v17 = v14[4];
              if (v17)
              {
                v18 = *(this + v17);
                goto LABEL_25;
              }

LABEL_24:
              v18 = 0;
LABEL_25:
              result = siri::speech::qss_fb::QssMessage_::VerifyContainerMessageUnion(a2, v16, v18);
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

BOOL siri::speech::qss_fb::QssMessage_::VerifyContainerMessageUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::qss_fb::BlazarSpeechTranslationMessage *this, int a3)
{
  switch(a3)
  {
    case 1:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::ApgPronGuessMessage::Verify(this, a1);
    case 2:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::AsrRecognitionMessage::Verify(this, a1);
    case 3:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::AsrErrorBlamerMessage::Verify(this, a1);
    case 4:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::AsrItnMessage::Verify(this, a1);
    case 5:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::AsrTextNormalizationMessage::Verify(this, a1);
    case 6:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::AsrPostItnHammerMessage::Verify(this, a1);
    case 7:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::AsrKeywordFinderMessage::Verify(this, a1);
    case 8:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::AsrCorrectionsValidatorMessage::Verify(this, a1);
    case 9:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::AsrGraphemeToPhonemeMessage::Verify(this, a1);
    case 10:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::BlazarMultiUserMessage::Verify(this, a1);
    case 11:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::BlazarMultilingualMessage::Verify(this, a1);
    case 12:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::BlazarSpeechTranslationMessage::Verify(this, a1);
    case 13:
      if (!this)
      {
        goto LABEL_50;
      }

      return siri::speech::qss_fb::BlazarBatchTranslationMessage::Verify(this, a1);
    case 14:
      if (!this)
      {
        goto LABEL_50;
      }

      goto LABEL_35;
    case 15:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::BlazarTextToSpeechRouterStreamingMessage::Verify(this, a1);
      break;
    case 16:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::BlazarServiceDiscoveryMessage::Verify(this, a1);
      break;
    case 17:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::LmtLmScorerMessage::Verify(this, a1);
      break;
    case 18:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::NapgCreateLanguageProfileMessage::Verify(this, a1);
      break;
    case 19:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::MtTranslationMessage::Verify(this, a1);
      break;
    case 20:
      if (!this)
      {
        goto LABEL_50;
      }

LABEL_35:
      result = siri::speech::qss_fb::BlazarTextToSpeechRouterMessage::Verify(this, a1);
      break;
    case 21:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::TtsTextToSpeechStreamingMessage::Verify(this, a1);
      break;
    case 22:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::TtsTextToSpeechSpeechFeatureMessage::Verify(this, a1);
      break;
    case 23:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::NlShortcutFuzzyMatchMessage::Verify(this, a1);
      break;
    case 24:
      if (!this)
      {
        goto LABEL_50;
      }

      result = siri::speech::qss_fb::SlsLanguageDetectionMessage::Verify(this, a1);
      break;
    default:
LABEL_50:
      result = 1;
      break;
  }

  return result;
}

void sub_232F0F144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, const unsigned __int8 *a2, unint64_t a3)
{
  *(a1 + 70) = 1;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(a1, a3, 4uLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(a1, a3, 1uLL);
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::push(a1, a2, a3);
  }

  *(a1 + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

void sub_232F0F3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F0F94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232F0FB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1033C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F10AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(this, __n);
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_232F10E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F11634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F117E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F11F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F12148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F128F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F12AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F13290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F13444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F13BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F13DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F14AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F14CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1666C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a58)
  {
    operator delete(a58);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F16904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F17F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a44)
  {
    operator delete(a44);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F181B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F186D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F18BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F19108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F19634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F19E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_232F1A0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1AED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F1B0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1B5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1BBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1C910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1D174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F1D328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1DD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F1F9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F1FC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F201B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F20B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F20D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F212C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F21B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F21D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F22C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F22EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F23734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F23B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F23F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232F240FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F24EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F250E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F255FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F25DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F263CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232F2659C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F26E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F26FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F27900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F27AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F286C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232F288A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F29134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F298D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F29F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F2A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F2A8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232F2AA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F2BCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 + 64);
  if (v27)
  {
    *(v25 + 72) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F2BF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F2C96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F2CB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F2DB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F2DD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F2E7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F2E988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F2F4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F2F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F301D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F303B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F30F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F310E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F31888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3206C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F3221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F32B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F32D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3387C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F33A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F33F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F34514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F35860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = v23[9];
  if (v25)
  {
    v23[10] = v25;
    operator delete(v25);
  }

  v26 = v23[20];
  if (v26)
  {
    v23[21] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F35AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3630C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F364C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F36C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F38308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = v23[9];
  if (v25)
  {
    v23[10] = v25;
    operator delete(v25);
  }

  v26 = v23[20];
  if (v26)
  {
    v23[21] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F38584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F38D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F38EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F39488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F39C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F39DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3A6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F3A868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3C140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  v23 = v21[9];
  if (v23)
  {
    v21[10] = v23;
    operator delete(v23);
  }

  v24 = v21[21];
  if (v24)
  {
    v21[22] = v24;
    operator delete(v24);
  }

  v25 = v21[32];
  if (v25)
  {
    v21[33] = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F3C3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3CA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3D318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F3D4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3D9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3EE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F3F0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F3FA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F3FBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F40B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F40D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F41194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F41668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F41CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F425FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F43C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = v23[9];
  if (v25)
  {
    v23[10] = v25;
    operator delete(v25);
  }

  v26 = v23[20];
  if (v26)
  {
    v23[21] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F43F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F44580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F45584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = *(v22 + 64);
  if (v24)
  {
    *(v22 + 72) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_232F457A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F45EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F46630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F46B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F47020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F47444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F47AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F489AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F49210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F493C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F49848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F49C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4B068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F4B2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4B8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4BE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4C498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4CE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F4D05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4D574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4E1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F4E3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4F01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F4F200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F4FCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F4FEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F507E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F50D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5199C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F51B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F52114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F52AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F53864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F53DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F54724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F548E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F54E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F55348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F55B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F55CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F56540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F566F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F56ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F57088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F579E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232F57BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F58184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F58644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5A554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a58)
  {
    operator delete(a58);
  }

  if (a70)
  {
    operator delete(a70);
  }

  _Unwind_Resume(a1);
}

void sub_232F5A828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5ACBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5B108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232F5B2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5BB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F5BCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5CB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5D1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5E96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232F5EBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5F174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5F730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F5FE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F604E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F60AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F61CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_232F61F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F637B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232F63A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F63FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F64B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F65964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_232F65B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F66490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F66E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6778C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_232F67988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F68300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F684C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F68B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F69804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232F699EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F69D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6ACCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F6AE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6B6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F6B8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232F6BE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6CD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F6CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6D744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F6D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6E688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F6E87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6EE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F6F994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F6FB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F700DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F70484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F70AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F714E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F716AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F71A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232F71C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F724AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F72660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F72C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F740C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void sub_232F7431C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F755B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = *(v23 + 64);
  if (v25)
  {
    *(v23 + 72) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F757F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F76AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F77CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 + 64);
  if (v27)
  {
    *(v25 + 72) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F77ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F78684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F78E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7958C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7A3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F7A614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7AED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F7B094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7BA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F7BBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7C114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7C788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7D100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F7D2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7D884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7E11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F7E2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7E7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F7F7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F7FA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F80370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F80538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F81288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F8184C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F82AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F82CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F83840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F83A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F84AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = *(v23 + 64);
  if (v25)
  {
    *(v23 + 72) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F84CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F857DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F859BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F85F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F869D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F86B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F8713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F87B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F87CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F88854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232F88A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232F8917C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(void *result, uint64_t a2, double a3, double a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(uint64_t a1, double a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    apple::aiml::flatbuffers2::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(void *result, uint64_t a2, float a3, float a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(uint64_t a1, float a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    apple::aiml::flatbuffers2::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    apple::aiml::flatbuffers2::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<apple::aiml::flatbuffers2::String>(a1, *(v7 + 4 * v8));
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 8) - *(a1 + 12) + *(a1 + 10) - a2 + 4;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a1, v4);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<int>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::push(a1, a2, v6);
  }

  *(a1 + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

BOOL siri::speech::schema_fb::TextToSpeechCacheMetaInfo::Verify(siri::speech::schema_fb::TextToSpeechCacheMetaInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = siri::speech::schema_fb::TextToSpeechMeta::Verify((this + v8 + *(this + v8)), a2);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      v10 = *v9;
      if (v10 < 7 || (!v9[3] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v9[3] - *a2) && (v10 < 9 || (v12 = v9[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 2) && v13 - 1 >= this + v12 - *a2))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
        if (result)
        {
          v14 = (this - *this);
          if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v15 + *(this + v15)), a2)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
            if (result)
            {
              v16 = *this;
              v17 = -v16;
              v18 = (this - v16);
              if (*v18 >= 0xDu)
              {
                v19 = v18[6];
                if (v19)
                {
                  result = siri::speech::schema_fb::AudioDescription::Verify((this + v19 + *(this + v19)), a2);
                  if (!result)
                  {
                    return result;
                  }

                  v17 = -*this;
                }
              }

              v20 = (this + v17);
              if (*v20 < 0xFu || (v21 = v20[7]) == 0 || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this + v21 - *a2)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
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

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v25);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
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

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v28);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL siri::speech::schema_fb::RecoverPronsRequest::Verify(siri::speech::schema_fb::RecoverPronsRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
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

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = *this;
                  v15 = -v14;
                  v16 = (this - v14);
                  if (*v16 >= 0xBu)
                  {
                    v17 = v16[5];
                    if (v17)
                    {
                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v17 + *(this + v17), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v15 = -*this;
                    }
                  }

                  v18 = (this + v15);
                  if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
                  {
                    v20 = (this + v19 + *(this + v19));
                  }

                  else
                  {
                    v20 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v20);
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

BOOL siri::speech::schema_fb::RecoverPronsResponse::Verify(siri::speech::schema_fb::RecoverPronsResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
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

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = (this - *this);
                    if (*v17 < 0xDu || (v18 = v17[6]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v18 + *(this + v18), 4uLL, 0)))
                    {
                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v19 = *this;
                        v20 = -v19;
                        v21 = (this - v19);
                        if (*v21 >= 0xFu)
                        {
                          v22 = v21[7];
                          if (v22)
                          {
                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v22 + *(this + v22), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v20 = -*this;
                          }
                        }

                        v23 = (this + v20);
                        if (*v23 >= 0xFu && (v24 = v23[7]) != 0)
                        {
                          v25 = (this + v24 + *(this + v24));
                        }

                        else
                        {
                          v25 = 0;
                        }

                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::VocToken>(a2, v25);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::VocToken>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::TextToSpeechCacheObject::Verify(siri::speech::schema_fb::TextToSpeechCacheObject *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 1uLL, 0)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          v8 = -v7;
          v9 = (this - v7);
          if (*v9 >= 7u)
          {
            v10 = v9[3];
            if (v10)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v10 + *(this + v10), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v8 = -*this;
            }
          }

          v11 = (this + v8);
          if (*v11 >= 7u && (v12 = v11[3]) != 0)
          {
            v13 = (this + v12 + *(this + v12));
          }

          else
          {
            v13 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(a2, v13);
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

BOOL siri::speech::schema_fb::TextToSpeechCacheContainer::Verify(siri::speech::schema_fb::TextToSpeechCacheContainer *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechCacheMetaInfo::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          v8 = -v7;
          v9 = (this - v7);
          if (*v9 >= 7u)
          {
            v10 = v9[3];
            if (v10)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v10 + *(this + v10), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v8 = -*this;
            }
          }

          v11 = (this + v8);
          if (*v11 >= 7u && (v12 = v11[3]) != 0)
          {
            v13 = (this + v12 + *(this + v12));
          }

          else
          {
            v13 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechCacheObject>(a2, v13);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechCacheObject>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TextToSpeechCacheObject::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::TextToSpeechCacheContainerRpcV2::Verify(siri::speech::schema_fb::TextToSpeechCacheContainerRpcV2 *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequest::Verify((this + v9 + *(this + v9)), a2)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v10 = (this - *this);
              if (*v10 < 9u || (v11 = v10[4]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResponse::Verify((this + v11 + *(this + v11)), a2)))
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

BOOL siri::speech::schema_fb::TextToSpeechCacheContainerStreamingV2::Verify(siri::speech::schema_fb::TextToSpeechCacheContainerStreamingV2 *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify((this + v9 + *(this + v9)), a2)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v10 = (this - *this);
              if (*v10 < 9u || (v11 = v10[4]) == 0 || (result = siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify((this + v11 + *(this + v11)), a2)))
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v12 = *this;
                  v13 = -v12;
                  v14 = (this - v12);
                  if (*v14 >= 0xBu)
                  {
                    v15 = v14[5];
                    if (v15)
                    {
                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v15 + *(this + v15), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v13 = -*this;
                    }
                  }

                  v16 = (this + v13);
                  if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
                  {
                    v18 = (this + v17 + *(this + v17));
                  }

                  else
                  {
                    v18 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>(a2, v18);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v19 = (this - *this);
                      if (*v19 < 0xDu || (v20 = v19[6]) == 0 || (result = siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify((this + v20 + *(this + v20)), a2)))
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::BatchTranslationCacheContainer::Verify(siri::speech::schema_fb::BatchTranslationCacheContainer *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = *this;
              v12 = -v11;
              v13 = (this - v11);
              if (*v13 >= 9u)
              {
                v14 = v13[4];
                if (v14)
                {
                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v14 + *(this + v14), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v12 = -*this;
                }
              }

              v15 = (this + v12);
              if (*v15 >= 9u && (v16 = v15[4]) != 0)
              {
                v17 = (this + v16 + *(this + v16));
              }

              else
              {
                v17 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(a2, v17);
              if (result)
              {
                v18 = (this - *this);
                if (*v18 < 0xBu || (v19 = v18[5]) == 0 || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v19 - *a2)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
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

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v23);
                    if (result)
                    {
                      v24 = (this - *this);
                      if (*v24 < 0xFu || (v25 = v24[7]) == 0 || (result = 0, v26 = *(a2 + 1), v26 >= 2) && v26 - 1 >= this + v25 - *a2)
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

void sub_232FBB2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FBB934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FBCF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FBE9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FBFE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC1188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC317C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC4300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC5AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC65F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC6FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC763C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC7FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC8688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC91CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FC9B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232FCA218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::qss_fb::PronGuessStreamingRequest::Verify(siri::speech::qss_fb::PronGuessStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = *(this + v11);
  if (v12 <= 2)
  {
    if (v12 != 1)
    {
      v13 = v12 != 2 || v10 == 0;
      if (!v13 && !siri::speech::schema_fb::AudioPacket::Verify(v10, a2))
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v10 && !siri::speech::schema_fb::StartPronGuessRequest::Verify(v10, a2))
    {
      return 0;
    }

LABEL_33:
    --*(a2 + 4);
    return 1;
  }

  if (v12 == 3)
  {
    if (v10 && !siri::speech::schema_fb::FinishAudio::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v12 != 4 || v10 == 0)
  {
    goto LABEL_33;
  }

  result = siri::speech::schema_fb::CancelRequest::Verify(v10, a2);
  if (result)
  {
    goto LABEL_33;
  }

  return result;
}

BOOL siri::speech::qss_fb::PronGuessStreamingResponse::Verify(siri::speech::qss_fb::PronGuessStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
LABEL_16:
      --*(a2 + 4);
      return 1;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  if (*(this + v11) != 1)
  {
    goto LABEL_16;
  }

  result = siri::speech::schema_fb::PronGuessResponse::Verify(v10, a2);
  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

BOOL siri::speech::qss_fb::RecognitionStreamingRequest::Verify(siri::speech::qss_fb::RecognitionStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::RecognitionStreamingRequest_::VerifyContentUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::RecognitionStreamingRequest_::VerifyContentUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::SetAlternateRecognitionSausage *this, int a3)
{
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        if (this)
        {
          return siri::speech::schema_fb::StartSpeechRequest::Verify(this, a1);
        }
      }

      else if (a3 == 2 && this)
      {
        return siri::speech::schema_fb::UserParameters::Verify(this, a1);
      }
    }

    else if (a3 == 3)
    {
      if (this)
      {
        return siri::speech::schema_fb::SetRequestOrigin::Verify(this, a1);
      }
    }

    else if (a3 == 4)
    {
      if (this)
      {
        return siri::speech::schema_fb::SetSpeechContext::Verify(this, a1);
      }
    }

    else if (this)
    {
      return siri::speech::schema_fb::SetSpeechProfile::Verify(this, a1);
    }
  }

  else if (a3 > 8)
  {
    if (a3 == 9)
    {
      if (this)
      {
        return siri::speech::schema_fb::ResetServerEndpointer::Verify(this, a1);
      }
    }

    else if (a3 == 10)
    {
      if (this)
      {
        return siri::speech::schema_fb::CheckForSpeechRequest::Verify(this, a1);
      }
    }

    else if (a3 == 11 && this)
    {
      return siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify(this, a1);
    }
  }

  else if (a3 == 6)
  {
    if (this)
    {
      return siri::speech::schema_fb::SetEndpointerState::Verify(this, a1);
    }
  }

  else if (a3 == 7)
  {
    if (this)
    {
      return siri::speech::schema_fb::AudioPacket::Verify(this, a1);
    }
  }

  else if (this)
  {
    return siri::speech::schema_fb::FinishAudio::Verify(this, a1);
  }

  return 1;
}

BOOL siri::speech::qss_fb::RecognitionStreamingResponse::Verify(siri::speech::qss_fb::RecognitionStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::RecognitionStreamingResponse_::VerifyContentUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::RecognitionStreamingResponse_::VerifyContentUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::MultiUserFinalSpeechRecognitionResponse *this, int a3)
{
  switch(a3)
  {
    case 1:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(this, a1);
      break;
    case 2:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::MultiUserFinalSpeechRecognitionResponse::Verify(this, a1);
      break;
    case 3:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(this, a1);
      break;
    case 4:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::UpdatedAcousticProfile::Verify(this, a1);
      break;
    case 5:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::EndPointLikelihood::Verify(this, a1);
      break;
    case 6:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::EndPointCandidate::Verify(this, a1);
      break;
    case 7:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::qss_fb::ErrorMessage::Verify(this, a1);
      break;
    case 8:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::SetEndpointerState::Verify(this, a1);
      break;
    case 9:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::RecognitionCandidate::Verify(this, a1);
      break;
    case 10:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::MultiUserRecognitionCandidate::Verify(this, a1);
      break;
    case 11:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::RequestStatsResponse::Verify(this, a1);
      break;
    case 12:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::ServerEndpointFeatures::Verify(this, a1);
      break;
    case 13:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::ClientSetupInfo::Verify(this, a1);
      break;
    case 14:
      if (!this)
      {
        goto LABEL_57;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a1, this);
      if (result)
      {
        --*(a1 + 4);
        goto LABEL_57;
      }

      break;
    default:
LABEL_57:
      result = 1;
      break;
  }

  return result;
}

BOOL siri::speech::qss_fb::MultiUserStreamingRequest::Verify(siri::speech::qss_fb::MultiUserStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::MultiUserStreamingRequest_::VerifyContentUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::MultiUserStreamingRequest_::VerifyContentUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::SetAlternateRecognitionSausage *this, int a3)
{
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        if (this)
        {
          return siri::speech::schema_fb::SetEndpointerState::Verify(this, a1);
        }
      }

      else if (this)
      {
        return siri::speech::schema_fb::AudioPacket::Verify(this, a1);
      }
    }

    else if (a3 == 8)
    {
      if (this)
      {
        return siri::speech::schema_fb::FinishAudio::Verify(this, a1);
      }
    }

    else if (a3 == 9)
    {
      if (this)
      {
        return siri::speech::schema_fb::ResetServerEndpointer::Verify(this, a1);
      }
    }

    else if (a3 == 10 && this)
    {
      return siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify(this, a1);
    }
  }

  else if (a3 <= 2)
  {
    if (a3 == 1)
    {
      if (this)
      {
        return siri::speech::schema_fb::MultiUserStartSpeechRequest::Verify(this, a1);
      }
    }

    else if (a3 == 2 && this)
    {
      return siri::speech::schema_fb::UserParameters::Verify(this, a1);
    }
  }

  else if (a3 == 3)
  {
    if (this)
    {
      return siri::speech::schema_fb::SetRequestOrigin::Verify(this, a1);
    }
  }

  else if (a3 == 4)
  {
    if (this)
    {
      return siri::speech::schema_fb::SetSpeechContext::Verify(this, a1);
    }
  }

  else if (this)
  {
    return siri::speech::schema_fb::SetSpeechProfile::Verify(this, a1);
  }

  return 1;
}

BOOL siri::speech::qss_fb::MultiUserStreamingResponse::Verify(siri::speech::qss_fb::MultiUserStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::MultiUserStreamingResponse_::VerifyContentUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::MultiUserStreamingResponse_::VerifyContentUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::FinalSpeechRecognitionResponse *this, int a3)
{
  result = 1;
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        if (this)
        {
          v5 = this;
          v6 = a1;

          return siri::speech::qss_fb::ErrorMessage::Verify(v5, v6);
        }
      }

      else if (this)
      {

        return siri::speech::schema_fb::RecognitionCandidate::Verify(this, a1);
      }
    }

    else if (a3 == 1)
    {
      if (this)
      {

        return siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(this, a1);
      }
    }

    else if (a3 == 2 && this)
    {

      return siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(this, a1);
    }
  }

  else if (a3 <= 6)
  {
    if (a3 == 5)
    {
      if (this)
      {

        return siri::speech::schema_fb::RequestStatsResponse::Verify(this, a1);
      }
    }

    else if (this)
    {

      return siri::speech::schema_fb::ServerEndpointFeatures::Verify(this, a1);
    }
  }

  else if (a3 == 7)
  {
    if (this)
    {

      return siri::speech::schema_fb::ClientSetupInfo::Verify(this, a1);
    }
  }

  else if (a3 == 8)
  {
    if (this)
    {
      result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a1, this);
      if (result)
      {
        --*(a1 + 4);
        return 1;
      }
    }
  }

  else if (a3 == 9 && this)
  {
    v5 = this;
    v6 = a1;

    return siri::speech::qss_fb::ErrorMessage::Verify(v5, v6);
  }

  return result;
}

BOOL siri::speech::qss_fb::MultilingualStreamingRequest::Verify(siri::speech::qss_fb::MultilingualStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::MultilingualStreamingRequest_::VerifyContentUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::MultilingualStreamingRequest_::VerifyContentUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::LanguageDetected *this, int a3)
{
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        if (this)
        {
          return siri::speech::schema_fb::FinishAudio::Verify(this, a1);
        }
      }

      else if (a3 == 8 && this)
      {
        return siri::speech::schema_fb::LanguageDetected::Verify(this, a1);
      }
    }

    else if (a3 == 5)
    {
      if (this)
      {
        return siri::speech::schema_fb::SetSpeechProfile::Verify(this, a1);
      }
    }

    else if (this)
    {
      return siri::speech::schema_fb::AudioPacket::Verify(this, a1);
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (this)
      {
        return siri::speech::schema_fb::SetRequestOrigin::Verify(this, a1);
      }
    }

    else if (this)
    {
      return siri::speech::schema_fb::SetSpeechContext::Verify(this, a1);
    }
  }

  else if (a3 == 1)
  {
    if (this)
    {
      return siri::speech::schema_fb::StartMultilingualSpeechRequest::Verify(this, a1);
    }
  }

  else if (a3 == 2 && this)
  {
    return siri::speech::schema_fb::UserParameters::Verify(this, a1);
  }

  return 1;
}

BOOL siri::speech::qss_fb::MultilingualStreamingResponse::Verify(siri::speech::qss_fb::MultilingualStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::MultilingualStreamingResponse_::VerifyContentUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::MultilingualStreamingResponse_::VerifyContentUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::FinalSpeechRecognitionResponse *this, int a3)
{
  result = 1;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (this)
      {

        return siri::speech::schema_fb::RequestStatsResponse::Verify(this, a1);
      }
    }

    else if (a3 == 5)
    {
      if (this)
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a1, this);
        if (result)
        {
          --*(a1 + 4);
          return 1;
        }
      }
    }

    else if (a3 == 6 && this)
    {

      return siri::speech::qss_fb::ErrorMessage::Verify(this, a1);
    }
  }

  else if (a3 == 1)
  {
    if (this)
    {

      return siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(this, a1);
    }
  }

  else if (a3 == 2)
  {
    if (this)
    {

      return siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(this, a1);
    }
  }

  else if (a3 == 3 && this)
  {

    return siri::speech::schema_fb::RecognitionCandidate::Verify(this, a1);
  }

  return result;
}

BOOL siri::speech::qss_fb::SpeechTranslationStreamingRequest::Verify(siri::speech::qss_fb::SpeechTranslationStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::SpeechTranslationStreamingRequest_::VerifyContentUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::SpeechTranslationStreamingRequest_::VerifyContentUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::StartSpeechTranslationRequest *this, int a3)
{
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        if (this)
        {
          return siri::speech::schema_fb::ResetServerEndpointer::Verify(this, a1);
        }
      }

      else if (a3 == 8 && this)
      {
        return siri::speech::schema_fb::StartSpeechTranslationLoggingRequest::Verify(this, a1);
      }
    }

    else if (a3 == 5)
    {
      if (this)
      {
        return siri::speech::schema_fb::FinishAudio::Verify(this, a1);
      }
    }

    else if (this)
    {
      return siri::speech::schema_fb::SetEndpointerState::Verify(this, a1);
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (this)
      {
        return siri::speech::schema_fb::AudioPacket::Verify(this, a1);
      }
    }

    else if (this)
    {
      return siri::speech::schema_fb::SpeechTranslationAudioPacket::Verify(this, a1);
    }
  }

  else if (a3 == 1)
  {
    if (this)
    {
      return siri::speech::schema_fb::StartSpeechTranslationRequest::Verify(this, a1);
    }
  }

  else if (a3 == 2 && this)
  {
    return siri::speech::schema_fb::LanguageDetected::Verify(this, a1);
  }

  return 1;
}

BOOL siri::speech::qss_fb::SpeechTranslationStreamingResponse::Verify(siri::speech::qss_fb::SpeechTranslationStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::SpeechTranslationStreamingResponse_::VerifyContentUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::SpeechTranslationStreamingResponse_::VerifyContentUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::SpeechTranslationMtResponse *this, int a3)
{
  result = 1;
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      if (a3 == 10)
      {
        if (this)
        {

          return siri::speech::schema_fb::ServerEndpointFeatures::Verify(this, a1);
        }
      }

      else if (a3 == 11)
      {
        if (this)
        {

          return siri::speech::schema_fb::ClientSetupInfo::Verify(this, a1);
        }
      }

      else if (a3 == 12 && this)
      {

        return siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures::Verify(this, a1);
      }
    }

    else
    {
      if (a3 == 7)
      {
        if (!this)
        {
          return result;
        }

        v5 = this;
        v6 = a1;

        return siri::speech::qss_fb::ErrorMessage::Verify(v5, v6);
      }

      if (a3 == 8)
      {
        if (this)
        {

          return siri::speech::schema_fb::RecognitionCandidate::Verify(this, a1);
        }
      }

      else if (this)
      {

        return siri::speech::schema_fb::RequestStatsResponse::Verify(this, a1);
      }
    }
  }

  else
  {
    if (a3 <= 3)
    {
      if (a3 == 1)
      {
        if (this)
        {

          return siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse::Verify(this, a1);
        }
      }

      else if (a3 == 2)
      {
        if (this)
        {

          return siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse::Verify(this, a1);
        }
      }

      else if (a3 == 3 && this)
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a1, this);
        if (result)
        {
          --*(a1 + 4);
          return 1;
        }
      }

      return result;
    }

    if (a3 == 4)
    {
      if (this)
      {

        return siri::speech::schema_fb::SpeechTranslationMtResponse::Verify(this, a1);
      }
    }

    else
    {
      if (a3 != 5)
      {
        if (!this)
        {
          return result;
        }

        v5 = this;
        v6 = a1;

        return siri::speech::qss_fb::ErrorMessage::Verify(v5, v6);
      }

      if (this)
      {

        return siri::speech::schema_fb::SpeechTranslationTextToSpeechResponse::Verify(this, a1);
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::BatchTranslationStreamingRequest::Verify(siri::speech::qss_fb::BatchTranslationStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = *(this + v11);
  if (v12 <= 2)
  {
    if (v12 != 1)
    {
      v13 = v12 != 2 || v10 == 0;
      if (!v13 && !siri::speech::schema_fb::BatchTranslationFeedbackRequest::Verify(v10, a2))
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v10 && !siri::speech::schema_fb::BatchTranslationRequest::Verify(v10, a2))
    {
      return 0;
    }

LABEL_33:
    --*(a2 + 4);
    return 1;
  }

  if (v12 == 3)
  {
    if (v10 && !siri::speech::schema_fb::BatchTranslationLoggingRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v12 != 4 || v10 == 0)
  {
    goto LABEL_33;
  }

  result = siri::speech::schema_fb::UserParameters::Verify(v10, a2);
  if (result)
  {
    goto LABEL_33;
  }

  return result;
}

BOOL siri::speech::qss_fb::BatchTranslationStreamingResponse::Verify(siri::speech::qss_fb::BatchTranslationStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *(this + v11);
  if (v12 != 3)
  {
    if (v12 != 2)
    {
      v13 = v12 != 1 || v10 == 0;
      if (v13 || siri::speech::schema_fb::BatchTranslationResponse::Verify(v10, a2))
      {
        goto LABEL_26;
      }

      return 0;
    }

    if (v10 && !siri::speech::qss_fb::ErrorMessage::Verify(v10, a2))
    {
      return 0;
    }

LABEL_26:
    --*(a2 + 4);
    return 1;
  }

  if (!v10)
  {
    goto LABEL_26;
  }

  result = siri::speech::schema_fb::TranslationSupportedLanguagesResponse::Verify(v10, a2);
  if (result)
  {
    goto LABEL_26;
  }

  return result;
}

BOOL siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingRequest::Verify(siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
LABEL_16:
      --*(a2 + 4);
      return 1;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  if (*(this + v11) != 1)
  {
    goto LABEL_16;
  }

  result = siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(v10, a2);
  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

BOOL siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingResponse::Verify(siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *(this + v11);
  if (v12 != 3)
  {
    if (v12 != 2)
    {
      v13 = v12 != 1 || v10 == 0;
      if (v13 || siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(v10, a2))
      {
        goto LABEL_26;
      }

      return 0;
    }

    if (v10 && !siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v10, a2))
    {
      return 0;
    }

LABEL_26:
    --*(a2 + 4);
    return 1;
  }

  if (!v10)
  {
    goto LABEL_26;
  }

  result = siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(v10, a2);
  if (result)
  {
    goto LABEL_26;
  }

  return result;
}

BOOL siri::speech::qss_fb::TextToSpeechStreamingStreamingResponse::Verify(siri::speech::qss_fb::TextToSpeechStreamingStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          if (v9 < 5)
          {
            goto LABEL_33;
          }
        }

        else if (v8[3])
        {
          v10 = this + v8[3] + *(this + v8[3]);
          goto LABEL_12;
        }

        v10 = 0;
LABEL_12:
        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          if (v12 <= 2)
          {
            if (v12 == 1)
            {
              if (v10)
              {
                result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, v10);
                if (!result)
                {
                  return result;
                }

                --*(a2 + 4);
              }
            }

            else
            {
              v13 = v12 != 2 || v10 == 0;
              if (!v13 && !siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(v10, a2))
              {
                return 0;
              }
            }

            goto LABEL_33;
          }

          if (v12 == 3)
          {
            if (v10 && !siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v10, a2))
            {
              return 0;
            }
          }

          else if (v12 == 4 && v10 != 0)
          {
            result = siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(v10, a2);
            if (!result)
            {
              return result;
            }
          }
        }

LABEL_33:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::LanguageDetectionStreamingRequest::Verify(siri::speech::qss_fb::LanguageDetectionStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *(this + v11);
  if (v12 != 3)
  {
    if (v12 != 2)
    {
      v13 = v12 != 1 || v10 == 0;
      if (v13 || siri::speech::schema_fb::StartLanguageDetectionRequest::Verify(v10, a2))
      {
        goto LABEL_26;
      }

      return 0;
    }

    if (v10 && !siri::speech::schema_fb::AudioPacket::Verify(v10, a2))
    {
      return 0;
    }

LABEL_26:
    --*(a2 + 4);
    return 1;
  }

  if (!v10)
  {
    goto LABEL_26;
  }

  result = siri::speech::schema_fb::FinishAudio::Verify(v10, a2);
  if (result)
  {
    goto LABEL_26;
  }

  return result;
}

BOOL siri::speech::qss_fb::LanguageDetectionStreamingResponse::Verify(siri::speech::qss_fb::LanguageDetectionStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
LABEL_16:
      --*(a2 + 4);
      return 1;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  if (*(this + v11) != 1)
  {
    goto LABEL_16;
  }

  result = siri::speech::schema_fb::LanguageDetectionResponse::Verify(v10, a2);
  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

void replacementDictionaryForEtiquetteFileAtURL_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = 138412546;
  v7 = a1;
  v8 = 2114;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Model at URL %@ is wrong type: %{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void replacementDictionaryForEtiquetteFileAtURL_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  v4 = v0;
  _os_log_error_impl(&dword_232E53000, v1, OS_LOG_TYPE_ERROR, "Failed to parse model at URL %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void replacementDictionaryForEtiquetteFileAtURL_cold_3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  v3 = 0;
  _os_log_error_impl(&dword_232E53000, v0, OS_LOG_TYPE_ERROR, "Could not read model at URL %@: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void _LTAudioPlaybackServiceAudioQueueCallback_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_7(&dword_232E53000, v0, v1, "Error AudioQueueFreeBuffer %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
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