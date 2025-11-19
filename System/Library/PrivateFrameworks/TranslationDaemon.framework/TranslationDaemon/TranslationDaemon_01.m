BOOL siri::speech::schema_fb::PostItnHammerResponse::Verify(siri::speech::schema_fb::PostItnHammerResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                v14 = (this - *this);
                if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)
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

                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionToken>(a2, v26);
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

BOOL siri::speech::qss_fb::AsrKeywordFinderMessage::Verify(siri::speech::qss_fb::AsrKeywordFinderMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
    if (!v13 && !siri::speech::schema_fb::KeywordFinderRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::KeywordFinderResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::KeywordFinderRequest::Verify(siri::speech::schema_fb::KeywordFinderRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>(a2, v20);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v21 = *this;
                      v22 = -v21;
                      v23 = (this - v21);
                      if (*v23 >= 0xDu)
                      {
                        v24 = v23[6];
                        if (v24)
                        {
                          result = siri::speech::schema_fb::RecognitionResult::Verify((this + v24 + *(this + v24)), a2);
                          if (!result)
                          {
                            return result;
                          }

                          v22 = -*this;
                        }
                      }

                      v25 = (this + v22);
                      if (*v25 < 0xFu || (v26 = v25[7]) == 0 || (result = 0, v27 = *(a2 + 1), v27 >= 2) && v27 - 1 >= this + v26 - *a2)
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

BOOL siri::speech::schema_fb::KeywordFinderResponse::Verify(siri::speech::schema_fb::KeywordFinderResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                v14 = (this - *this);
                if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)
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
                        v20 = (this - *this);
                        if (*v20 < 0xFu || (v21 = v20[7]) == 0 || (result = siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify((this + v21 + *(this + v21)), a2)))
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                          if (result)
                          {
                            v22 = *this;
                            v23 = -v22;
                            v24 = (this - v22);
                            if (*v24 >= 0x11u)
                            {
                              v25 = v24[8];
                              if (v25)
                              {
                                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v25 + *(this + v25), 4uLL, 0);
                                if (!result)
                                {
                                  return result;
                                }

                                v23 = -*this;
                              }
                            }

                            v26 = (this + v23);
                            if (*v26 >= 0x11u && (v27 = v26[8]) != 0)
                            {
                              v28 = (this + v27 + *(this + v27));
                            }

                            else
                            {
                              v28 = 0;
                            }

                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v28);
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

BOOL siri::speech::qss_fb::AsrCorrectionsValidatorMessage::Verify(siri::speech::qss_fb::AsrCorrectionsValidatorMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
    if (!v13 && !siri::speech::schema_fb::CorrectionsValidatorRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::CorrectionsValidatorResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::CorrectionsValidatorRequest::Verify(siri::speech::schema_fb::CorrectionsValidatorRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                  v14 = (this - *this);
                  if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = siri::speech::schema_fb::RecognitionResult::Verify((this + v15 + *(this + v15)), a2)))
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v16 = (this - *this);
                      if (*v16 >= 0xDu && (v17 = v16[6]) != 0)
                      {
                        v18 = this + v17 + *(this + v17);
                      }

                      else
                      {
                        v18 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v18);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v19 = (this - *this);
                          if (*v19 >= 0xFu && (v20 = v19[7]) != 0)
                          {
                            v21 = this + v20 + *(this + v20);
                          }

                          else
                          {
                            v21 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v21);
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

BOOL siri::speech::schema_fb::CorrectionsValidatorResponse::Verify(siri::speech::schema_fb::CorrectionsValidatorResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                v14 = (this - *this);
                if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)
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

                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v26);
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

BOOL siri::speech::qss_fb::AsrGraphemeToPhonemeMessage::Verify(siri::speech::qss_fb::AsrGraphemeToPhonemeMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
    if (!v13 && !siri::speech::schema_fb::GraphemeToPhonemeRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::GraphemeToPhonemeResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::GraphemeToPhonemeRequest::Verify(siri::speech::schema_fb::GraphemeToPhonemeRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                  v14 = (this - *this);
                  if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = siri::speech::schema_fb::ContextWithPronHints::Verify((this + v15 + *(this + v15)), a2)))
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

BOOL siri::speech::schema_fb::GraphemeToPhonemeResponse::Verify(siri::speech::schema_fb::GraphemeToPhonemeResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                  v21 = (this - *this);
                  if (*v21 < 0xDu || (v22 = v21[6]) == 0 || (result = 0, v23 = *(a2 + 1), v23 >= 2) && v23 - 1 >= this + v22 - *a2)
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
                          v27 = (this - *this);
                          if (*v27 >= 0x11u && (v28 = v27[8]) != 0)
                          {
                            v29 = this + v28 + *(this + v28);
                          }

                          else
                          {
                            v29 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v29);
                          if (result)
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                            if (result)
                            {
                              v30 = (this - *this);
                              if (*v30 >= 0x13u && (v31 = v30[9]) != 0)
                              {
                                v32 = this + v31 + *(this + v31);
                              }

                              else
                              {
                                v32 = 0;
                              }

                              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v32);
                              if (result)
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                                if (result)
                                {
                                  v33 = *this;
                                  v34 = -v33;
                                  v35 = (this - v33);
                                  if (*v35 >= 0x15u)
                                  {
                                    v36 = v35[10];
                                    if (v36)
                                    {
                                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v36 + *(this + v36), 4uLL, 0);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v34 = -*this;
                                    }
                                  }

                                  v37 = (this + v34);
                                  if (*v37 >= 0x15u && (v38 = v37[10]) != 0)
                                  {
                                    v39 = (this + v38 + *(this + v38));
                                  }

                                  else
                                  {
                                    v39 = 0;
                                  }

                                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TokenProns>(a2, v39);
                                  if (result)
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

                                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TokenProns>(a2, v46);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TokenProns>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::TokenProns::Verify(siri::speech::schema_fb::TokenProns *this, apple::aiml::flatbuffers2::Verifier *a2)
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TokenProns_::SanitizedSequence>(a2, v14);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v15 = *this;
              v16 = -v15;
              v17 = (this - v15);
              if (*v17 >= 9u)
              {
                v18 = v17[4];
                if (v18)
                {
                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v18 + *(this + v18), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v16 = -*this;
                }
              }

              v19 = (this + v16);
              if (*v19 >= 9u && (v20 = v19[4]) != 0)
              {
                v21 = (this + v20 + *(this + v20));
              }

              else
              {
                v21 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>(a2, v21);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v22 = *this;
                  v23 = -v22;
                  v24 = (this - v22);
                  if (*v24 >= 0xBu)
                  {
                    v25 = v24[5];
                    if (v25)
                    {
                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v25 + *(this + v25), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v23 = -*this;
                    }
                  }

                  v26 = (this + v23);
                  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
                  {
                    v28 = (this + v27 + *(this + v27));
                  }

                  else
                  {
                    v28 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>(a2, v28);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TokenProns_::SanitizedSequence>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TokenProns_::SanitizedSequence::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::TokenProns_::SanitizedSequence::Verify(siri::speech::schema_fb::TokenProns_::SanitizedSequence *this, apple::aiml::flatbuffers2::Verifier *a2)
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::BlazarMultiUserMessage::Verify(siri::speech::qss_fb::BlazarMultiUserMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
        result = siri::speech::qss_fb::BlazarMultiUserMessage_::VerifySessionMessageUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::BlazarMultiUserMessage_::VerifySessionMessageUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::FinalSpeechRecognitionResponse *this, int a3)
{
  switch(a3)
  {
    case 1:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::MultiUserStartSpeechRequest::Verify(this, a1);
    case 2:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::UserParameters::Verify(this, a1);
    case 3:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::SetRequestOrigin::Verify(this, a1);
    case 4:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::SetSpeechContext::Verify(this, a1);
    case 5:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::SetSpeechProfile::Verify(this, a1);
    case 6:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::SetEndpointerState::Verify(this, a1);
    case 7:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::AudioPacket::Verify(this, a1);
    case 8:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::FinishAudio::Verify(this, a1);
    case 9:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::ResetServerEndpointer::Verify(this, a1);
    case 10:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify(this, a1);
    case 11:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(this, a1);
    case 12:
      if (!this)
      {
        goto LABEL_77;
      }

      return siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(this, a1);
    case 13:
      if (!this)
      {
        goto LABEL_77;
      }

      v5 = this;
      v6 = a1;

      goto LABEL_25;
    case 14:
      if (!this)
      {
        goto LABEL_77;
      }

      result = siri::speech::schema_fb::RecognitionCandidate::Verify(this, a1);
      break;
    case 15:
      if (!this)
      {
        goto LABEL_77;
      }

      result = siri::speech::schema_fb::RequestStatsResponse::Verify(this, a1);
      break;
    case 16:
      if (!this)
      {
        goto LABEL_77;
      }

      result = siri::speech::schema_fb::ServerEndpointFeatures::Verify(this, a1);
      break;
    case 17:
      if (!this)
      {
        goto LABEL_77;
      }

      result = siri::speech::schema_fb::ClientSetupInfo::Verify(this, a1);
      break;
    case 18:
      if (!this)
      {
        goto LABEL_77;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a1, this);
      if (result)
      {
        --*(a1 + 4);
LABEL_77:
        result = 1;
      }

      break;
    case 19:
      if (!this)
      {
        goto LABEL_77;
      }

      v5 = this;
      v6 = a1;

LABEL_25:
      result = siri::speech::qss_fb::ErrorMessage::Verify(v5, v6);
      break;
    default:
      goto LABEL_77;
  }

  return result;
}

BOOL siri::speech::schema_fb::MultiUserStartSpeechRequest::Verify(siri::speech::schema_fb::MultiUserStartSpeechRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::StartSpeechRequest::Verify((this + v6 + *(this + v6)), a2)))
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v13);
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

BOOL siri::speech::qss_fb::BlazarMultilingualMessage::Verify(siri::speech::qss_fb::BlazarMultilingualMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
        result = siri::speech::qss_fb::BlazarMultilingualMessage_::VerifySessionMessageUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::BlazarMultilingualMessage_::VerifySessionMessageUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::FinalSpeechRecognitionResponse *this, int a3)
{
  switch(a3)
  {
    case 1:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::StartMultilingualSpeechRequest::Verify(this, a1);
      break;
    case 2:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::UserParameters::Verify(this, a1);
      break;
    case 3:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::SetRequestOrigin::Verify(this, a1);
      break;
    case 4:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::SetSpeechContext::Verify(this, a1);
      break;
    case 5:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::SetSpeechProfile::Verify(this, a1);
      break;
    case 6:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::AudioPacket::Verify(this, a1);
      break;
    case 7:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::FinishAudio::Verify(this, a1);
      break;
    case 8:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::LanguageDetected::Verify(this, a1);
      break;
    case 9:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(this, a1);
      break;
    case 10:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(this, a1);
      break;
    case 11:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::RecognitionCandidate::Verify(this, a1);
      break;
    case 12:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::schema_fb::RequestStatsResponse::Verify(this, a1);
      break;
    case 13:
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
    case 14:
      if (!this)
      {
        goto LABEL_57;
      }

      result = siri::speech::qss_fb::ErrorMessage::Verify(this, a1);
      break;
    default:
LABEL_57:
      result = 1;
      break;
  }

  return result;
}

BOOL siri::speech::schema_fb::StartMultilingualSpeechRequest::Verify(siri::speech::schema_fb::StartMultilingualSpeechRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::StartSpeechRequest::Verify((this + v6 + *(this + v6)), a2)))
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LanguageParameters>(a2, v13);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LanguageParameters>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::CancelRequest::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::LanguageDetected::Verify(siri::speech::schema_fb::LanguageDetected *this, apple::aiml::flatbuffers2::Verifier *a2)
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LanguageDetectionPrediction>(a2, v14);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LanguageDetectionPrediction>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::LanguageDetectionPrediction::Verify(siri::speech::schema_fb::LanguageDetectionPrediction *this, apple::aiml::flatbuffers2::Verifier *a2)
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

BOOL siri::speech::qss_fb::BlazarSpeechTranslationMessage::Verify(siri::speech::qss_fb::BlazarSpeechTranslationMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
        result = siri::speech::qss_fb::BlazarSpeechTranslationMessage_::VerifySessionMessageUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::BlazarSpeechTranslationMessage_::VerifySessionMessageUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::StartSpeechTranslationRequest *this, int a3)
{
  switch(a3)
  {
    case 1:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::StartSpeechTranslationRequest::Verify(this, a1);
    case 2:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::LanguageDetected::Verify(this, a1);
    case 3:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::AudioPacket::Verify(this, a1);
    case 4:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::SpeechTranslationAudioPacket::Verify(this, a1);
    case 5:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::FinishAudio::Verify(this, a1);
    case 6:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::SetEndpointerState::Verify(this, a1);
    case 7:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::ResetServerEndpointer::Verify(this, a1);
    case 8:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::StartSpeechTranslationLoggingRequest::Verify(this, a1);
    case 9:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse::Verify(this, a1);
    case 10:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse::Verify(this, a1);
    case 11:
      if (!this)
      {
        goto LABEL_81;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a1, this);
      if (result)
      {
        --*(a1 + 4);
        goto LABEL_81;
      }

      return result;
    case 12:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::SpeechTranslationMtResponse::Verify(this, a1);
    case 13:
      if (!this)
      {
        goto LABEL_81;
      }

      return siri::speech::schema_fb::SpeechTranslationTextToSpeechResponse::Verify(this, a1);
    case 14:
      if (!this)
      {
        goto LABEL_81;
      }

      v5 = this;
      v6 = a1;

      goto LABEL_13;
    case 15:
      if (!this)
      {
        goto LABEL_81;
      }

      v5 = this;
      v6 = a1;

LABEL_13:
      result = siri::speech::qss_fb::ErrorMessage::Verify(v5, v6);
      break;
    case 16:
      if (!this)
      {
        goto LABEL_81;
      }

      result = siri::speech::schema_fb::RecognitionCandidate::Verify(this, a1);
      break;
    case 17:
      if (!this)
      {
        goto LABEL_81;
      }

      result = siri::speech::schema_fb::RequestStatsResponse::Verify(this, a1);
      break;
    case 18:
      if (!this)
      {
        goto LABEL_81;
      }

      result = siri::speech::schema_fb::ServerEndpointFeatures::Verify(this, a1);
      break;
    case 19:
      if (!this)
      {
        goto LABEL_81;
      }

      result = siri::speech::schema_fb::ClientSetupInfo::Verify(this, a1);
      break;
    case 20:
      if (!this)
      {
        goto LABEL_81;
      }

      result = siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures::Verify(this, a1);
      break;
    default:
LABEL_81:
      result = 1;
      break;
  }

  return result;
}

BOOL siri::speech::schema_fb::StartSpeechTranslationRequest::Verify(siri::speech::schema_fb::StartSpeechTranslationRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v17);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v18 = (this - *this);
                  if (*v18 < 0xBu || (v19 = v18[5]) == 0 || (result = siri::speech::schema_fb::StartSpeechRequest::Verify((this + v19 + *(this + v19)), a2)))
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v20 = (this - *this);
                      if (*v20 < 0xDu || (v21 = v20[6]) == 0 || (result = siri::speech::schema_fb::TranslationRequest::Verify((this + v21 + *(this + v21)), a2)))
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v22 = *this;
                          v23 = -v22;
                          v24 = (this - v22);
                          if (*v24 >= 0xFu)
                          {
                            v25 = v24[7];
                            if (v25)
                            {
                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v25 + *(this + v25), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v23 = -*this;
                            }
                          }

                          v26 = (this + v23);
                          if (*v26 >= 0xFu && (v27 = v26[7]) != 0)
                          {
                            v28 = (this + v27 + *(this + v27));
                          }

                          else
                          {
                            v28 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest>(a2, v28);
                          if (result)
                          {
                            v29 = (this - *this);
                            if (*v29 < 0x11u || (v30 = v29[8]) == 0 || (result = 0, v31 = *(a2 + 1), v31 >= 2) && v31 - 1 >= this + v30 - *a2)
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                              if (result)
                              {
                                v32 = (this - *this);
                                if (*v32 >= 0x13u && (v33 = v32[9]) != 0)
                                {
                                  v34 = this + v33 + *(this + v33);
                                }

                                else
                                {
                                  v34 = 0;
                                }

                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v34);
                                if (result)
                                {
                                  v35 = (this - *this);
                                  v36 = *v35;
                                  if (v36 < 0x15 || (!v35[10] || (result = 0, v37 = *(a2 + 1), v37 >= 5) && v37 - 4 >= this + v35[10] - *a2) && (v36 < 0x17 || (v38 = v35[11]) == 0 || (result = 0, v39 = *(a2 + 1), v39 >= 2) && v39 - 1 >= this + v38 - *a2))
                                  {
                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x18u);
                                    if (result)
                                    {
                                      v40 = (this - *this);
                                      if (*v40 < 0x19u || (v41 = v40[12]) == 0 || (result = siri::speech::schema_fb::TranslationOptions::Verify((this + v41 + *(this + v41)), a2)))
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::TranslationRequest::Verify(siri::speech::schema_fb::TranslationRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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

                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v26);
                          if (result)
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                            if (result)
                            {
                              v27 = (this - *this);
                              if (*v27 < 0x11u || (v28 = v27[8]) == 0 || (result = siri::speech::schema_fb::SiriTranslationInfo::Verify((this + v28 + *(this + v28)), a2)))
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                                if (result)
                                {
                                  v29 = (this - *this);
                                  if (*v29 < 0x13u || (v30 = v29[9]) == 0 || (result = siri::speech::schema_fb::SpeechTranslationInfo::Verify((this + v30 + *(this + v30)), a2)))
                                  {
                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                                    if (result)
                                    {
                                      v31 = (this - *this);
                                      if (*v31 < 0x15u || (v32 = v31[10]) == 0 || (result = siri::speech::schema_fb::SiriPayloadTranslationInfo::Verify((this + v32 + *(this + v32)), a2)))
                                      {
                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                                        if (result)
                                        {
                                          v33 = (this - *this);
                                          if (*v33 >= 0x17u && (v34 = v33[11]) != 0)
                                          {
                                            v35 = this + v34 + *(this + v34);
                                          }

                                          else
                                          {
                                            v35 = 0;
                                          }

                                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v35);
                                          if (result)
                                          {
                                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x18u);
                                            if (result)
                                            {
                                              v36 = *this;
                                              v37 = -v36;
                                              v38 = (this - v36);
                                              if (*v38 >= 0x19u)
                                              {
                                                v39 = v38[12];
                                                if (v39)
                                                {
                                                  result = siri::speech::schema_fb::WebTranslationInfo::Verify((this + v39 + *(this + v39)), a2);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v37 = -*this;
                                                }
                                              }

                                              v40 = (this + v37);
                                              v41 = *v40;
                                              if (v41 < 0x1B || (!v40[13] || (result = 0, v42 = *(a2 + 1), v42 >= 2) && v42 - 1 >= this + v40[13] - *a2) && (v41 < 0x1D || (v43 = v40[14]) == 0 || (result = 0, v44 = *(a2 + 1), v44 >= 5) && v44 - 4 >= this + v43 - *a2))
                                              {
                                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Eu);
                                                if (result)
                                                {
                                                  v45 = (this - *this);
                                                  if (*v45 >= 0x1Fu && (v46 = v45[15]) != 0)
                                                  {
                                                    v47 = this + v46 + *(this + v46);
                                                  }

                                                  else
                                                  {
                                                    v47 = 0;
                                                  }

                                                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v47);
                                                  if (result)
                                                  {
                                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x20u);
                                                    if (result)
                                                    {
                                                      v48 = (this - *this);
                                                      if (*v48 >= 0x21u && (v49 = v48[16]) != 0)
                                                      {
                                                        v50 = this + v49 + *(this + v49);
                                                      }

                                                      else
                                                      {
                                                        v50 = 0;
                                                      }

                                                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v50);
                                                      if (result)
                                                      {
                                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x22u);
                                                        if (result)
                                                        {
                                                          v51 = *this;
                                                          v52 = -v51;
                                                          v53 = (this - v51);
                                                          if (*v53 >= 0x23u)
                                                          {
                                                            v54 = v53[17];
                                                            if (v54)
                                                            {
                                                              result = siri::speech::schema_fb::TranslationOptions::Verify((this + v54 + *(this + v54)), a2);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v52 = -*this;
                                                            }
                                                          }

                                                          v55 = (this + v52);
                                                          if (*v55 < 0x25u || (v56 = v55[18]) == 0 || (result = 0, v57 = *(a2 + 1), v57 >= 2) && v57 - 1 >= this + v56 - *a2)
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

  return result;
}

BOOL siri::speech::schema_fb::SiriTranslationInfo::Verify(siri::speech::schema_fb::SiriTranslationInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify((this + v6 + *(this + v6)), a2)))
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v13);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v14 = *this;
              v15 = -v14;
              v16 = (this - v14);
              if (*v16 >= 9u)
              {
                v17 = v16[4];
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
              if (*v18 >= 9u && (v19 = v18[4]) != 0)
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
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v21 = (this - *this);
                  if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
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
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v24 = *this;
                      v25 = -v24;
                      v26 = (this - v24);
                      if (*v26 >= 0xDu)
                      {
                        v27 = v26[6];
                        if (v27)
                        {
                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v27 + *(this + v27), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v25 = -*this;
                        }
                      }

                      v28 = (this + v25);
                      if (*v28 >= 0xDu && (v29 = v28[6]) != 0)
                      {
                        v30 = (this + v29 + *(this + v29));
                      }

                      else
                      {
                        v30 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ItnAlignment>(a2, v30);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v31 = *this;
                          v32 = -v31;
                          v33 = (this - v31);
                          if (*v33 >= 0xFu)
                          {
                            v34 = v33[7];
                            if (v34)
                            {
                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v34 + *(this + v34), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v32 = -*this;
                            }
                          }

                          v35 = (this + v32);
                          if (*v35 >= 0xFu && (v36 = v35[7]) != 0)
                          {
                            v37 = (this + v36 + *(this + v36));
                          }

                          else
                          {
                            v37 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(a2, v37);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::Span::Verify(siri::speech::schema_fb::Span *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 2) && v10 - 1 >= this + v9 - *a2)))
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
      if (result)
      {
        v11 = (this - *this);
        if (*v11 >= 0xBu && (v12 = v11[5]) != 0)
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
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::SpeechTranslationInfo::Verify(siri::speech::schema_fb::SpeechTranslationInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify((this + v6 + *(this + v6)), a2)))
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v13);
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

BOOL siri::speech::schema_fb::SiriPayloadTranslationInfo::Verify(siri::speech::schema_fb::SiriPayloadTranslationInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
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
              if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify((this + v12 + *(this + v12)), a2)))
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

BOOL siri::speech::schema_fb::WebTranslationInfo::Verify(siri::speech::schema_fb::WebTranslationInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(a2, v14);
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

BOOL siri::speech::schema_fb::TextToSpeechRequest::Verify(siri::speech::schema_fb::TextToSpeechRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                        v20 = (this - *this);
                        v21 = *v20;
                        if (v21 < 0xF || (!v20[7] || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this + v20[7] - *a2) && (v21 < 0x11 || (v23 = v20[8]) == 0 || (result = 0, v24 = *(a2 + 1), v24 >= 2) && v24 - 1 >= this + v23 - *a2))
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v25 = (this - *this);
                            if (*v25 >= 0x13u && (v26 = v25[9]) != 0)
                            {
                              v27 = this + v26 + *(this + v26);
                            }

                            else
                            {
                              v27 = 0;
                            }

                            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v27);
                            if (result)
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v28 = *this;
                                v29 = -v28;
                                v30 = (this - v28);
                                if (*v30 >= 0x15u)
                                {
                                  v31 = v30[10];
                                  if (v31)
                                  {
                                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v31 + *(this + v31), 4uLL, 0);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v29 = -*this;
                                  }
                                }

                                v32 = (this + v29);
                                if (*v32 >= 0x15u && (v33 = v32[10]) != 0)
                                {
                                  v34 = (this + v33 + *(this + v33));
                                }

                                else
                                {
                                  v34 = 0;
                                }

                                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v34);
                                if (result)
                                {
                                  v35 = (this - *this);
                                  if (*v35 < 0x17u || (v36 = v35[11]) == 0 || (result = 0, v37 = *(a2 + 1), v37 >= 5) && v37 - 4 >= this + v36 - *a2)
                                  {
                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x18u);
                                    if (result)
                                    {
                                      v38 = (this - *this);
                                      if (*v38 < 0x19u || (v39 = v38[12]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestMeta::Verify((this + v39 + *(this + v39)), a2)))
                                      {
                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Au);
                                        if (result)
                                        {
                                          v40 = (this - *this);
                                          if (*v40 < 0x1Bu || (v41 = v40[13]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestContext::Verify((this + v41 + *(this + v41)), a2)))
                                          {
                                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Cu);
                                            if (result)
                                            {
                                              v42 = (this - *this);
                                              if (*v42 < 0x1Du || (v43 = v42[14]) == 0 || (result = siri::speech::schema_fb::Pronunciation::Verify((this + v43 + *(this + v43)), a2)))
                                              {
                                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Eu);
                                                if (result)
                                                {
                                                  v44 = (this - *this);
                                                  if (*v44 < 0x1Fu || (v45 = v44[15]) == 0 || (result = siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((this + v45 + *(this + v45)), a2)))
                                                  {
                                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x20u);
                                                    if (result)
                                                    {
                                                      v46 = (this - *this);
                                                      if (*v46 < 0x21u || (v47 = v46[16]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDebug::Verify((this + v47 + *(this + v47)), a2)))
                                                      {
                                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x22u);
                                                        if (result)
                                                        {
                                                          v48 = (this - *this);
                                                          if (*v48 < 0x23u || (v49 = v48[17]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserProfile::Verify((this + v49 + *(this + v49)), a2)))
                                                          {
                                                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x24u);
                                                            if (result)
                                                            {
                                                              v50 = (this - *this);
                                                              if (*v50 < 0x25u || (v51 = v50[18]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify((this + v51 + *(this + v51)), a2)))
                                                              {
                                                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x26u);
                                                                if (result)
                                                                {
                                                                  v52 = (this - *this);
                                                                  if (*v52 < 0x27u || (v53 = v52[19]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify((this + v53 + *(this + v53)), a2)))
                                                                  {
                                                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x28u);
                                                                    if (result)
                                                                    {
                                                                      v54 = (this - *this);
                                                                      if (*v54 < 0x29u || (v55 = v54[20]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify((this + v55 + *(this + v55)), a2)))
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

  return result;
}

BOOL siri::speech::schema_fb::TextToSpeechRequestMeta::Verify(siri::speech::schema_fb::TextToSpeechRequestMeta *this, apple::aiml::flatbuffers2::Verifier *a2)
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
          if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 2) && v13 - 1 >= this + v12 - *a2)
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

BOOL siri::speech::schema_fb::TextToSpeechRequestContext::Verify(siri::speech::schema_fb::TextToSpeechRequestContext *this, apple::aiml::flatbuffers2::Verifier *a2)
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v11);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v12 = (this - *this);
          if (*v12 >= 7u && (v13 = v12[3]) != 0)
          {
            v14 = this + v13 + *(this + v13);
          }

          else
          {
            v14 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v14);
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

BOOL siri::speech::schema_fb::TTSRequestFeatureFlags::Verify(siri::speech::schema_fb::TTSRequestFeatureFlags *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
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

BOOL siri::speech::schema_fb::TextToSpeechRequestDebug::Verify(siri::speech::schema_fb::TextToSpeechRequestDebug *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
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

BOOL siri::speech::schema_fb::TextToSpeechUserProfile::Verify(siri::speech::schema_fb::TextToSpeechUserProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechVoiceResource>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechVoiceResource>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TextToSpeechVoiceResource::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::TextToSpeechVoiceResource::Verify(siri::speech::schema_fb::TextToSpeechVoiceResource *this, apple::aiml::flatbuffers2::Verifier *a2)
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
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v9 + *(this + v9), 1uLL, 0)))
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestDevConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
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
              v14 = (this - *this);
              if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 2) && v16 - 1 >= this + v15 - *a2)
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

BOOL siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechVoiceResource::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify((this + v8 + *(this + v8)), a2)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
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

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v11);
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

BOOL siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify(siri::speech::schema_fb::TextToSpeechUserVoiceProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
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

BOOL siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
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

BOOL siri::speech::schema_fb::TranslationOptions::Verify(siri::speech::schema_fb::TranslationOptions *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 2) && v8 - 1 >= this + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 2) && v10 - 1 >= this + v9 - *a2)))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::SpeechTranslationAudioPacket::Verify(siri::speech::schema_fb::SpeechTranslationAudioPacket *this, apple::aiml::flatbuffers2::Verifier *a2)
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioFrame>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioFrame>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::AudioFrame::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::AudioFrame::Verify(siri::speech::schema_fb::AudioFrame *this, apple::aiml::flatbuffers2::Verifier *a2)
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
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::StartSpeechTranslationLoggingRequest::Verify(siri::speech::schema_fb::StartSpeechTranslationLoggingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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
              if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = siri::speech::schema_fb::UserParameters::Verify((this + v12 + *(this + v12)), a2)))
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v13 = (this - *this);
                  if (*v13 < 0xBu || (v14 = v13[5]) == 0 || (result = siri::speech::schema_fb::LanguageDetected::Verify((this + v14 + *(this + v14)), a2)))
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
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

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v18 = *this;
                          v19 = -v18;
                          v20 = (this - v18);
                          if (*v20 >= 0xFu)
                          {
                            v21 = v20[7];
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
                          if (*v22 >= 0xFu && (v23 = v22[7]) != 0)
                          {
                            v24 = (this + v23 + *(this + v23));
                          }

                          else
                          {
                            v24 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v24);
                          if (result)
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                            if (result)
                            {
                              v25 = (this - *this);
                              if (*v25 >= 0x11u && (v26 = v25[8]) != 0)
                              {
                                v27 = this + v26 + *(this + v26);
                              }

                              else
                              {
                                v27 = 0;
                              }

                              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v27);
                              if (result)
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                                if (result)
                                {
                                  v28 = *this;
                                  v29 = -v28;
                                  v30 = (this - v28);
                                  if (*v30 >= 0x13u)
                                  {
                                    v31 = v30[9];
                                    if (v31)
                                    {
                                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v31 + *(this + v31), 4uLL, 0);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v29 = -*this;
                                    }
                                  }

                                  v32 = (this + v29);
                                  if (*v32 >= 0x13u && (v33 = v32[9]) != 0)
                                  {
                                    v34 = (this + v33 + *(this + v33));
                                  }

                                  else
                                  {
                                    v34 = 0;
                                  }

                                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v34);
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

BOOL siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse::Verify(siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                        v20 = (this - *this);
                        if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
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
                          v23 = (this - *this);
                          v24 = *v23;
                          if (v24 < 0x11 || (!v23[8] || (result = 0, v25 = *(a2 + 1), v25 >= 5) && v25 - 4 >= this + v23[8] - *a2) && (v24 < 0x13 || (v26 = v23[9]) == 0 || (result = 0, v27 = *(a2 + 1), v27 >= 2) && v27 - 1 >= this + v26 - *a2))
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

BOOL siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse::Verify(siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                        v20 = (this - *this);
                        if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
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
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                          if (result)
                          {
                            v23 = (this - *this);
                            if (*v23 < 0x11u || (v24 = v23[8]) == 0 || (result = siri::speech::schema_fb::RecognitionResult::Verify((this + v24 + *(this + v24)), a2)))
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

BOOL siri::speech::schema_fb::SpeechTranslationMtResponse::Verify(siri::speech::schema_fb::SpeechTranslationMtResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                    if (*v17 < 0xDu || (v18 = v17[6]) == 0 || (result = siri::speech::schema_fb::UserParameters::Verify((this + v18 + *(this + v18)), a2)))
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

                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>(a2, v25);
                        if (result)
                        {
                          v26 = (this - *this);
                          if (*v26 < 0x11u || (v27 = v26[8]) == 0 || (result = 0, v28 = *(a2 + 1), v28 >= 2) && v28 - 1 >= this + v27 - *a2)
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                            if (result)
                            {
                              v29 = *this;
                              v30 = -v29;
                              v31 = (this - v29);
                              if (*v31 >= 0x13u)
                              {
                                v32 = v31[9];
                                if (v32)
                                {
                                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v32 + *(this + v32), 4uLL, 0);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v30 = -*this;
                                }
                              }

                              v33 = (this + v30);
                              if (*v33 >= 0x13u && (v34 = v33[9]) != 0)
                              {
                                v35 = (this + v34 + *(this + v34));
                              }

                              else
                              {
                                v35 = 0;
                              }

                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::MTAlternativeDescription>(a2, v35);
                              if (result)
                              {
                                v36 = (this - *this);
                                if (*v36 < 0x15u || (v37 = v36[10]) == 0 || (result = 0, v38 = *(a2 + 1), v38 >= 2) && v38 - 1 >= this + v37 - *a2)
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::MTAlternativeDescription>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::MTAlternativeDescription::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase::Verify(siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase *this, apple::aiml::flatbuffers2::Verifier *a2)
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
              v14 = (this - *this);
              if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 2) && v16 - 1 >= this + v15 - *a2)
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
                      result = siri::speech::schema_fb::TranslationPhraseMetaInfo::Verify((this + v20 + *(this + v20)), a2);
                      if (!result)
                      {
                        return result;
                      }

                      v18 = -*this;
                    }
                  }

                  v21 = (this + v18);
                  if (*v21 < 0xFu || (v22 = v21[7]) == 0 || (result = 0, v23 = *(a2 + 1), v23 >= 2) && v23 - 1 >= this + v22 - *a2)
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

BOOL siri::speech::schema_fb::TranslationPhraseMetaInfo::Verify(siri::speech::schema_fb::TranslationPhraseMetaInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan>(a2, v14);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan::Verify(siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range::Verify((this + v6 + *(this + v6)), a2)))
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range>(a2, v13);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v14 = *this;
              v15 = -v14;
              v16 = (this - v14);
              if (*v16 >= 9u)
              {
                v17 = v16[4];
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
              if (*v18 >= 9u && (v19 = v18[4]) != 0)
              {
                v20 = (this + v19 + *(this + v19));
              }

              else
              {
                v20 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Alternative>(a2, v20);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range::Verify((v5 + *v5), a1);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Alternative>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Alternative::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range::Verify(siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v8 - *a2))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Alternative::Verify(siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Alternative *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v9 - *a2)))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::MTAlternativeDescription::Verify(siri::speech::schema_fb::MTAlternativeDescription *this, apple::aiml::flatbuffers2::Verifier *a2)
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
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range::Verify((this + v9 + *(this + v9)), a2)))
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v10 = (this - *this);
            if (*v10 < 9u || (v11 = v10[4]) == 0 || (result = siri::speech::schema_fb::Pronunciation::Verify((this + v11 + *(this + v11)), a2)))
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

BOOL siri::speech::schema_fb::SpeechTranslationTextToSpeechResponse::Verify(siri::speech::schema_fb::SpeechTranslationTextToSpeechResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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

BOOL siri::speech::schema_fb::TextToSpeechResponse::Verify(siri::speech::schema_fb::TextToSpeechResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                  v17 = (this - *this);
                  v18 = *v17;
                  if (v18 < 0xD || (!v17[6] || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v17[6] - *a2) && (v18 < 0xF || (v20 = v17[7]) == 0 || (result = 0, v21 = *(a2 + 1), v21 >= 5) && v21 - 4 >= this + v20 - *a2))
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                    if (result)
                    {
                      v22 = (this - *this);
                      if (*v22 < 0x11u || (v23 = v22[8]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v23 + *(this + v23), 1uLL, 0)))
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                        if (result)
                        {
                          v24 = (this - *this);
                          if (*v24 < 0x13u || (v25 = v24[9]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v25 + *(this + v25)), a2)))
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                            if (result)
                            {
                              v26 = (this - *this);
                              if (*v26 < 0x15u || (v27 = v26[10]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v27 + *(this + v27)), a2)))
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                                if (result)
                                {
                                  v28 = *this;
                                  v29 = -v28;
                                  v30 = (this - v28);
                                  if (*v30 >= 0x17u)
                                  {
                                    v31 = v30[11];
                                    if (v31)
                                    {
                                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v31 + *(this + v31), 4uLL, 0);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v29 = -*this;
                                    }
                                  }

                                  v32 = (this + v29);
                                  if (*v32 >= 0x17u && (v33 = v32[11]) != 0)
                                  {
                                    v34 = (this + v33 + *(this + v33));
                                  }

                                  else
                                  {
                                    v34 = 0;
                                  }

                                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(a2, v34);
                                  if (result)
                                  {
                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x18u);
                                    if (result)
                                    {
                                      v35 = (this - *this);
                                      if (*v35 < 0x19u || (v36 = v35[12]) == 0 || (result = siri::speech::schema_fb::TextToSpeechMeta::Verify((this + v36 + *(this + v36)), a2)))
                                      {
                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Au);
                                        if (result)
                                        {
                                          v37 = (this - *this);
                                          if (*v37 < 0x1Bu || (v38 = v37[13]) == 0 || (result = siri::speech::schema_fb::TextToSpeechFeature::Verify((this + v38 + *(this + v38)), a2)))
                                          {
                                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Cu);
                                            if (result)
                                            {
                                              v39 = (this - *this);
                                              if (*v39 < 0x1Du || (v40 = v39[14]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResponseDevData::Verify((this + v40 + *(this + v40)), a2)))
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::AudioDescription::Verify(siri::speech::schema_fb::AudioDescription *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
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

BOOL siri::speech::schema_fb::WordTimingInfo::Verify(siri::speech::schema_fb::WordTimingInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
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

BOOL siri::speech::schema_fb::TextToSpeechMeta::Verify(siri::speech::schema_fb::TextToSpeechMeta *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechVoice::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::CancelRequest::Verify((this + v8 + *(this + v8)), a2)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v9 = (this - *this);
              if (*v9 < 9u || (v10 = v9[4]) == 0 || (result = siri::speech::schema_fb::QSSVersionInfo::Verify((this + v10 + *(this + v10)), a2)))
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

BOOL siri::speech::schema_fb::TextToSpeechVoice::Verify(siri::speech::schema_fb::TextToSpeechVoice *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
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

BOOL siri::speech::schema_fb::QSSVersionInfo::Verify(siri::speech::schema_fb::QSSVersionInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
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

BOOL siri::speech::schema_fb::TextToSpeechFeature::Verify(siri::speech::schema_fb::TextToSpeechFeature *this, apple::aiml::flatbuffers2::Verifier *a2)
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Pronunciation>(a2, v11);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v12 = *this;
          v13 = -v12;
          v14 = (this - v12);
          if (*v14 >= 7u)
          {
            v15 = v14[3];
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
          if (*v16 >= 7u && (v17 = v16[3]) != 0)
          {
            v18 = (this + v17 + *(this + v17));
          }

          else
          {
            v18 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPhonemeSequence>(a2, v18);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v19 = *this;
              v20 = -v19;
              v21 = (this - v19);
              if (*v21 >= 9u)
              {
                v22 = v21[4];
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
              if (*v23 >= 9u && (v24 = v23[4]) != 0)
              {
                v25 = (this + v24 + *(this + v24));
              }

              else
              {
                v25 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPrompts>(a2, v25);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v26 = *this;
                  v27 = -v26;
                  v28 = (this - v26);
                  if (*v28 >= 0xBu)
                  {
                    v29 = v28[5];
                    if (v29)
                    {
                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v29 + *(this + v29), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v27 = -*this;
                    }
                  }

                  v30 = (this + v27);
                  if (*v30 >= 0xBu && (v31 = v30[5]) != 0)
                  {
                    v32 = (this + v31 + *(this + v31));
                  }

                  else
                  {
                    v32 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v32);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v33 = *this;
                      v34 = -v33;
                      v35 = (this - v33);
                      if (*v35 >= 0xDu)
                      {
                        v36 = v35[6];
                        if (v36)
                        {
                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v36 + *(this + v36), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v34 = -*this;
                        }
                      }

                      v37 = (this + v34);
                      if (*v37 >= 0xDu && (v38 = v37[6]) != 0)
                      {
                        v39 = (this + v38 + *(this + v38));
                      }

                      else
                      {
                        v39 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioPacket>(a2, v39);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPhonemeSequence>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::TTSPhonemeSequence::Verify((v5 + *v5), a1);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPrompts>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::TTSPhonemeSequence::Verify(siri::speech::schema_fb::TTSPhonemeSequence *this, apple::aiml::flatbuffers2::Verifier *a2)
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioPacket>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::TTSPrompts::Verify(siri::speech::schema_fb::TTSPrompts *this, apple::aiml::flatbuffers2::Verifier *a2)
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v11);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v12 = *this;
          v13 = -v12;
          v14 = (this - v12);
          if (*v14 >= 7u)
          {
            v15 = v14[3];
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
          if (*v16 >= 7u && (v17 = v16[3]) != 0)
          {
            v18 = (this + v17 + *(this + v17));
          }

          else
          {
            v18 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v18);
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

BOOL siri::speech::schema_fb::TextToSpeechResponseDevData::Verify(siri::speech::schema_fb::TextToSpeechResponseDevData *this, apple::aiml::flatbuffers2::Verifier *a2)
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
              result = siri::speech::schema_fb::QSSVersionInfo::Verify((this + v11 + *(this + v11)), a2);
              if (!result)
              {
                return result;
              }

              v9 = -*this;
            }
          }

          v12 = (this + v9);
          if (*v12 < 9u || (v13 = v12[4]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 2) && v14 - 1 >= this + v13 - *a2)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
            if (result)
            {
              v15 = (this - *this);
              if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
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
                v18 = (this - *this);
                if (*v18 < 0xDu || (v19 = v18[6]) == 0 || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v19 - *a2)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                  if (result)
                  {
                    v21 = (this - *this);
                    if (*v21 >= 0xFu && (v22 = v21[7]) != 0)
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

BOOL siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures::Verify(siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures *this, apple::aiml::flatbuffers2::Verifier *a2)
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

BOOL siri::speech::qss_fb::BlazarBatchTranslationMessage::Verify(siri::speech::qss_fb::BlazarBatchTranslationMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
        result = siri::speech::qss_fb::BlazarBatchTranslationMessage_::VerifySessionMessageUnion(a2, v10, v12);
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

BOOL siri::speech::qss_fb::BlazarBatchTranslationMessage_::VerifySessionMessageUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::BatchTranslationResponse *this, int a3)
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      if (this)
      {
        return siri::speech::schema_fb::BatchTranslationRequest::Verify(this, a1);
      }
    }

    else if (a3 == 2)
    {
      if (this)
      {
        return siri::speech::schema_fb::BatchTranslationFeedbackRequest::Verify(this, a1);
      }
    }

    else if (a3 == 3 && this)
    {
      return siri::speech::schema_fb::BatchTranslationLoggingRequest::Verify(this, a1);
    }
  }

  else if (a3 > 5)
  {
    if (a3 == 6)
    {
      if (this)
      {
        return siri::speech::qss_fb::ErrorMessage::Verify(this, a1);
      }
    }

    else if (a3 == 7 && this)
    {
      return siri::speech::schema_fb::TranslationSupportedLanguagesResponse::Verify(this, a1);
    }
  }

  else if (a3 == 4)
  {
    if (this)
    {
      return siri::speech::schema_fb::UserParameters::Verify(this, a1);
    }
  }

  else if (this)
  {
    return siri::speech::schema_fb::BatchTranslationResponse::Verify(this, a1);
  }

  return 1;
}

BOOL siri::speech::schema_fb::BatchTranslationRequest::Verify(siri::speech::schema_fb::BatchTranslationRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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

                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>(a2, v23);
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
                              v27 = (this - *this);
                              if (*v27 >= 0x11u && (v28 = v27[8]) != 0)
                              {
                                v29 = this + v28 + *(this + v28);
                              }

                              else
                              {
                                v29 = 0;
                              }

                              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v29);
                              if (result)
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                                if (result)
                                {
                                  v30 = (this - *this);
                                  if (*v30 >= 0x13u && (v31 = v30[9]) != 0)
                                  {
                                    v32 = this + v31 + *(this + v31);
                                  }

                                  else
                                  {
                                    v32 = 0;
                                  }

                                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v32);
                                  if (result)
                                  {
                                    v33 = (this - *this);
                                    if (*v33 < 0x15u || (v34 = v33[10]) == 0 || (result = 0, v35 = *(a2 + 1), v35 >= 5) && v35 - 4 >= this + v34 - *a2)
                                    {
                                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                                      if (result)
                                      {
                                        v36 = *this;
                                        v37 = -v36;
                                        v38 = (this - v36);
                                        if (*v38 >= 0x17u)
                                        {
                                          v39 = v38[11];
                                          if (v39)
                                          {
                                            result = siri::speech::schema_fb::TranslationOptions::Verify((this + v39 + *(this + v39)), a2);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v37 = -*this;
                                          }
                                        }

                                        v40 = (this + v37);
                                        if (*v40 < 0x19u || (v41 = v40[12]) == 0 || (result = 0, v42 = *(a2 + 1), v42 >= 2) && v42 - 1 >= this + v41 - *a2)
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

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::BatchTranslationRequest_::Paragraph::Verify(siri::speech::schema_fb::BatchTranslationRequest_::Paragraph *this, apple::aiml::flatbuffers2::Verifier *a2)
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

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(a2, v17);
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

BOOL siri::speech::schema_fb::BatchTranslationFeedbackRequest::Verify(siri::speech::schema_fb::BatchTranslationFeedbackRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
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
                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
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

                                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v31);
                                      if (result)
                                      {
                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
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

                                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v34);
                                          if (result)
                                          {
                                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x18u);
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

                                              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v37);
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

BOOL siri::speech::schema_fb::BatchTranslationLoggingRequest::Verify(siri::speech::schema_fb::BatchTranslationLoggingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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

BOOL siri::speech::schema_fb::BatchTranslationResponse::Verify(siri::speech::schema_fb::BatchTranslationResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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

                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(a2, v26);
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

                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>(a2, v33);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::RepeatedSpan::Verify(siri::speech::schema_fb::RepeatedSpan *this, apple::aiml::flatbuffers2::Verifier *a2)
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

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Span>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence::Verify(siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::Span::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v9);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v10 = (this - *this);
              if (*v10 < 9u || (v11 = v10[4]) == 0 || (result = siri::speech::schema_fb::Span::Verify((this + v11 + *(this + v11)), a2)))
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

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>(a2, v18);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v19 = *this;
                      v20 = -v19;
                      v21 = (this - v19);
                      if (*v21 >= 0xDu)
                      {
                        v22 = v21[6];
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
                      if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
                      {
                        v25 = (this + v24 + *(this + v24));
                      }

                      else
                      {
                        v25 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::MTAlternativeDescription>(a2, v25);
                      if (result)
                      {
                        v26 = (this - *this);
                        if (*v26 < 0xFu || (v27 = v26[7]) == 0 || (result = 0, v28 = *(a2 + 1), v28 >= 2) && v28 - 1 >= this + v27 - *a2)
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase::Verify(siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase *this, apple::aiml::flatbuffers2::Verifier *a2)
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
              v14 = (this - *this);
              if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 2) && v16 - 1 >= this + v15 - *a2)
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

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(a2, v23);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                    if (result)
                    {
                      v24 = *this;
                      v25 = -v24;
                      v26 = (this - v24);
                      if (*v26 >= 0xFu)
                      {
                        v27 = v26[7];
                        if (v27)
                        {
                          result = siri::speech::schema_fb::TranslationPhraseMetaInfo::Verify((this + v27 + *(this + v27)), a2);
                          if (!result)
                          {
                            return result;
                          }

                          v25 = -*this;
                        }
                      }

                      v28 = (this + v25);
                      if (*v28 < 0x11u || (v29 = v28[8]) == 0 || (result = 0, v30 = *(a2 + 1), v30 >= 2) && v30 - 1 >= this + v29 - *a2)
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

BOOL siri::speech::schema_fb::TranslationSupportedLanguagesResponse::Verify(siri::speech::schema_fb::TranslationSupportedLanguagesResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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

                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v20);
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

BOOL siri::speech::qss_fb::BlazarTextToSpeechRouterMessage::Verify(siri::speech::qss_fb::BlazarTextToSpeechRouterMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
    if (!v13 && !siri::speech::schema_fb::TextToSpeechRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::TextToSpeechResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::qss_fb::BlazarTextToSpeechRouterStreamingMessage::Verify(siri::speech::qss_fb::BlazarTextToSpeechRouterStreamingMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
      if (!v13 && !siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(v10, a2))
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v10 && !siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(v10, a2))
    {
      return 0;
    }

LABEL_33:
    --*(a2 + 4);
    return 1;
  }

  if (v12 == 3)
  {
    if (v10 && !siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v12 != 4 || v10 == 0)
  {
    goto LABEL_33;
  }

  result = siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(v10, a2);
  if (result)
  {
    goto LABEL_33;
  }

  return result;
}

BOOL siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(siri::speech::schema_fb::StartTextToSpeechStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
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
                            v23 = (this - *this);
                            v24 = *v23;
                            if (v24 < 0x11 || (!v23[8] || (result = 0, v25 = *(a2 + 1), v25 >= 5) && v25 - 4 >= this + v23[8] - *a2) && (v24 < 0x13 || (v26 = v23[9]) == 0 || (result = 0, v27 = *(a2 + 1), v27 >= 2) && v27 - 1 >= this + v26 - *a2))
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v28 = (this - *this);
                                if (*v28 >= 0x15u && (v29 = v28[10]) != 0)
                                {
                                  v30 = this + v29 + *(this + v29);
                                }

                                else
                                {
                                  v30 = 0;
                                }

                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v30);
                                if (result)
                                {
                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                                  if (result)
                                  {
                                    v31 = *this;
                                    v32 = -v31;
                                    v33 = (this - v31);
                                    if (*v33 >= 0x17u)
                                    {
                                      v34 = v33[11];
                                      if (v34)
                                      {
                                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v34 + *(this + v34), 4uLL, 0);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v32 = -*this;
                                      }
                                    }

                                    v35 = (this + v32);
                                    if (*v35 >= 0x17u && (v36 = v35[11]) != 0)
                                    {
                                      v37 = (this + v36 + *(this + v36));
                                    }

                                    else
                                    {
                                      v37 = 0;
                                    }

                                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v37);
                                    if (result)
                                    {
                                      v38 = (this - *this);
                                      if (*v38 < 0x19u || (v39 = v38[12]) == 0 || (result = 0, v40 = *(a2 + 1), v40 >= 5) && v40 - 4 >= this + v39 - *a2)
                                      {
                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Au);
                                        if (result)
                                        {
                                          v41 = (this - *this);
                                          if (*v41 < 0x1Bu || (v42 = v41[13]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestMeta::Verify((this + v42 + *(this + v42)), a2)))
                                          {
                                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Cu);
                                            if (result)
                                            {
                                              v43 = (this - *this);
                                              if (*v43 < 0x1Du || (v44 = v43[14]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestContext::Verify((this + v44 + *(this + v44)), a2)))
                                              {
                                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Eu);
                                                if (result)
                                                {
                                                  v45 = (this - *this);
                                                  if (*v45 < 0x1Fu || (v46 = v45[15]) == 0 || (result = siri::speech::schema_fb::Pronunciation::Verify((this + v46 + *(this + v46)), a2)))
                                                  {
                                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x20u);
                                                    if (result)
                                                    {
                                                      v47 = (this - *this);
                                                      if (*v47 < 0x21u || (v48 = v47[16]) == 0 || (result = siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((this + v48 + *(this + v48)), a2)))
                                                      {
                                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x22u);
                                                        if (result)
                                                        {
                                                          v49 = (this - *this);
                                                          if (*v49 < 0x23u || (v50 = v49[17]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDebug::Verify((this + v50 + *(this + v50)), a2)))
                                                          {
                                                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x24u);
                                                            if (result)
                                                            {
                                                              v51 = (this - *this);
                                                              if (*v51 < 0x25u || (v52 = v51[18]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserProfile::Verify((this + v52 + *(this + v52)), a2)))
                                                              {
                                                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x26u);
                                                                if (result)
                                                                {
                                                                  v53 = (this - *this);
                                                                  if (*v53 < 0x27u || (v54 = v53[19]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify((this + v54 + *(this + v54)), a2)))
                                                                  {
                                                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x28u);
                                                                    if (result)
                                                                    {
                                                                      v55 = (this - *this);
                                                                      if (*v55 < 0x29u || (v56 = v55[20]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify((this + v56 + *(this + v56)), a2)))
                                                                      {
                                                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x2Au);
                                                                        if (result)
                                                                        {
                                                                          v57 = (this - *this);
                                                                          if (*v57 < 0x2Bu || (v58 = v57[21]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify((this + v58 + *(this + v58)), a2)))
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

  return result;
}

BOOL siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::BeginTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                      v20 = (this - *this);
                      if (*v20 < 0xFu || (v21 = v20[7]) == 0 || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this + v21 - *a2)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                        if (result)
                        {
                          v23 = (this - *this);
                          if (*v23 < 0x11u || (v24 = v23[8]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v24 + *(this + v24)), a2)))
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                            if (result)
                            {
                              v25 = (this - *this);
                              if (*v25 < 0x13u || (v26 = v25[9]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v26 + *(this + v26)), a2)))
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                                if (result)
                                {
                                  v27 = *this;
                                  v28 = -v27;
                                  v29 = (this - v27);
                                  if (*v29 >= 0x15u)
                                  {
                                    v30 = v29[10];
                                    if (v30)
                                    {
                                      result = siri::speech::schema_fb::TextToSpeechMeta::Verify((this + v30 + *(this + v30)), a2);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v28 = -*this;
                                    }
                                  }

                                  v31 = (this + v28);
                                  if (*v31 < 0x17u || (v32 = v31[11]) == 0 || (result = 0, v33 = *(a2 + 1), v33 >= 5) && v33 - 4 >= this + v32 - *a2)
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

BOOL siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::PartialTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                      v20 = (this - *this);
                      if (*v20 < 0xFu || (v21 = v20[7]) == 0 || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this + v21 - *a2)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                        if (result)
                        {
                          v23 = (this - *this);
                          if (*v23 < 0x11u || (v24 = v23[8]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v24 + *(this + v24), 1uLL, 0)))
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                            if (result)
                            {
                              v25 = *this;
                              v26 = -v25;
                              v27 = (this - v25);
                              if (*v27 >= 0x13u)
                              {
                                v28 = v27[9];
                                if (v28)
                                {
                                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v28 + *(this + v28), 4uLL, 0);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v26 = -*this;
                                }
                              }

                              v29 = (this + v26);
                              if (*v29 >= 0x13u && (v30 = v29[9]) != 0)
                              {
                                v31 = (this + v30 + *(this + v30));
                              }

                              else
                              {
                                v31 = 0;
                              }

                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(a2, v31);
                              if (result)
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                                if (result)
                                {
                                  v32 = (this - *this);
                                  if (*v32 < 0x15u || (v33 = v32[10]) == 0 || (result = siri::speech::schema_fb::TextToSpeechFeature::Verify((this + v33 + *(this + v33)), a2)))
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

BOOL siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::FinalTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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
                      v20 = (this - *this);
                      if (*v20 < 0xFu || (v21 = v20[7]) == 0 || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this + v21 - *a2)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                        if (result)
                        {
                          v23 = (this - *this);
                          if (*v23 < 0x11u || (v24 = v23[8]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResponseDevData::Verify((this + v24 + *(this + v24)), a2)))
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

BOOL siri::speech::qss_fb::BlazarServiceDiscoveryMessage::Verify(siri::speech::qss_fb::BlazarServiceDiscoveryMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
    if (!v13 && !siri::speech::schema_fb::CancelRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::ServiceDiscoveryResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::ServiceDiscoveryResponse::Verify(siri::speech::schema_fb::ServiceDiscoveryResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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

  return result;
}

BOOL siri::speech::qss_fb::LmtLmScorerMessage::Verify(siri::speech::qss_fb::LmtLmScorerMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
    if (!v13 && !siri::speech::schema_fb::CancelRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::LmScorerResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::LmScorerResponse::Verify(siri::speech::schema_fb::LmScorerResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
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

            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LmScorerToken>(a2, v17);
            if (result)
            {
              v18 = (this - *this);
              if (*v18 < 0xBu || (v19 = v18[5]) == 0 || (result = 0, v20 = *(a2 + 1), v20 >= 9) && v20 - 8 >= this + v19 - *a2)
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::LmScorerToken>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::LmScorerToken::Verify((v5 + *v5), a1);
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

BOOL siri::speech::schema_fb::LmScorerToken::Verify(siri::speech::schema_fb::LmScorerToken *this, apple::aiml::flatbuffers2::Verifier *a2)
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

BOOL siri::speech::qss_fb::NapgCreateLanguageProfileMessage::Verify(siri::speech::qss_fb::NapgCreateLanguageProfileMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
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
    if (!v13 && !siri::speech::schema_fb::CreateLanguageProfileRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::CreateLanguageProfileResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::CreateLanguageProfileRequest::Verify(siri::speech::schema_fb::CreateLanguageProfileRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
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

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::CategoryData>(a2, v20);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v21 = (this - *this);
                      if (*v21 < 0xDu || (v22 = v21[6]) == 0 || (result = siri::speech::schema_fb::UserLanguageProfile::Verify((this + v22 + *(this + v22)), a2)))
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::CategoryData>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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

BOOL siri::speech::schema_fb::CategoryData::Verify(siri::speech::schema_fb::CategoryData *this, apple::aiml::flatbuffers2::Verifier *a2)
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

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserDataEntity>(a2, v14);
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserDataEntity>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
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
    result = siri::speech::schema_fb::UserDataEntity::Verify((v5 + *v5), a1);
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