uint64_t mkvmuxer::VideoTrack::Write(mkvmuxer::VideoTrack *this, mkvmuxer::IMkvWriter *a2)
{
  result = mkvmuxer::Track::Write(this, a2);
  if (result)
  {
    v5 = mkvmuxer::VideoTrack::VideoPayloadSize(this);
    result = mkvmuxer::WriteEbmlMasterElement(a2, 0xE0uLL, v5);
    if (result)
    {
      v6 = (*(*a2 + 8))(a2);
      if (v6 < 0)
      {
        return 0;
      }

      else
      {
        v7 = v6;
        v8 = *(this + 18);
        if (!v8)
        {
          v8 = *(this + 27);
        }

        result = mkvmuxer::WriteEbmlElement(a2, 0xB0uLL, v8, 0);
        if (result)
        {
          v9 = *(this + 17);
          if (!v9)
          {
            v9 = *(this + 24);
          }

          result = mkvmuxer::WriteEbmlElement(a2, 0xBAuLL, v9, 0);
          if (result)
          {
            v11 = *(this + 16);
            if (!v11 || (result = mkvmuxer::WriteEbmlElement(a2, 0x54B0uLL, v11, 0), result))
            {
              v12 = *(this + 15);
              if (!v12 || (result = mkvmuxer::WriteEbmlElement(a2, 0x54BAuLL, v12, 0), result))
              {
                v13 = *(this + 19);
                if (!v13 || (result = mkvmuxer::WriteEbmlElement(a2, 0x54CCuLL, v13, 0), result))
                {
                  v14 = *(this + 20);
                  if (!v14 || (result = mkvmuxer::WriteEbmlElement(a2, 0x54DDuLL, v14, 0), result))
                  {
                    v15 = *(this + 21);
                    if (!v15 || (result = mkvmuxer::WriteEbmlElement(a2, 0x54BBuLL, v15, 0), result))
                    {
                      v16 = *(this + 22);
                      if (!v16 || (result = mkvmuxer::WriteEbmlElement(a2, 0x54AAuLL, v16, 0), result))
                      {
                        v17 = *(this + 25);
                        if (!v17 || (result = mkvmuxer::WriteEbmlElement(a2, 0x53B8uLL, v17, 0), result))
                        {
                          v18 = *(this + 26);
                          if (!v18 || (result = mkvmuxer::WriteEbmlElement(a2, 0x53C0uLL, v18, 0), result))
                          {
                            v19 = *(this + 28);
                            if (!v19 || (result = mkvmuxer::WriteEbmlElement(a2, 0x2EB524uLL, v19, v10), result))
                            {
                              v20 = *(this + 23);
                              if (v20 <= 0.0 || (v21 = v20, result = mkvmuxer::WriteEbmlElement(a2, 0x2383E3uLL, v21), result))
                              {
                                v22 = *(this + 29);
                                if (!v22 || (result = mkvmuxer::Colour::Write(v22, a2), result))
                                {
                                  v23 = *(this + 30);
                                  if (!v23 || (result = mkvmuxer::Projection::Write(v23, a2), result))
                                  {
                                    v24 = (*(*a2 + 8))(a2);
                                    return v24 >= 0 && v24 - v7 == v5;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
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

void mkvmuxer::AudioTrack::~AudioTrack(mkvmuxer::AudioTrack *this)
{
  mkvmuxer::Track::~Track(this);

  JUMPOUT(0x2743DA540);
}

uint64_t mkvmuxer::AudioTrack::PayloadSize(mkvmuxer::AudioTrack *this)
{
  v2 = mkvmuxer::Track::PayloadSize(this);
  v3 = *(this + 16);
  if (v3 >= 0x100)
  {
    if (v3 >= 0x10000)
    {
      if (v3 >> 24)
      {
        v7 = HIDWORD(v3);
        v8 = v3 >> 40;
        v9 = HIWORD(v3);
        v10 = HIBYTE(v3) == 0;
        v4 = 15;
        if (!v10)
        {
          v4 = 16;
        }

        if (!v9)
        {
          v4 = 14;
        }

        if (!v8)
        {
          v4 = 13;
        }

        if (!v7)
        {
          v4 = 12;
        }

        v5 = *(this + 15);
        if (!v5)
        {
          return v2 + v4 + 2;
        }
      }

      else
      {
        v4 = 11;
        v5 = *(this + 15);
        if (!v5)
        {
          return v2 + v4 + 2;
        }
      }
    }

    else
    {
      v4 = 10;
      v5 = *(this + 15);
      if (!v5)
      {
        return v2 + v4 + 2;
      }
    }
  }

  else
  {
    v4 = 9;
    v5 = *(this + 15);
    if (!v5)
    {
      return v2 + v4 + 2;
    }
  }

  if (v5 < 0x100)
  {
    return v2 + v4 + 4 + 2;
  }

  if (v5 < 0x10000)
  {
    return v2 + v4 + 5 + 2;
  }

  if (!(v5 >> 24))
  {
    return v2 + v4 + 6 + 2;
  }

  if (!HIDWORD(v5))
  {
    return v2 + v4 + 7 + 2;
  }

  v11 = v5 >> 40;
  v12 = HIWORD(v5);
  v10 = HIBYTE(v5) == 0;
  v13 = 10;
  if (!v10)
  {
    v13 = 11;
  }

  if (!v12)
  {
    v13 = 9;
  }

  if (!v11)
  {
    v13 = 8;
  }

  return v2 + v13 + v4 + 2;
}

uint64_t mkvmuxer::AudioTrack::Write(mkvmuxer::AudioTrack *this, mkvmuxer::IMkvWriter *a2)
{
  result = mkvmuxer::Track::Write(this, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(this + 16);
  if (v5 < 0x100)
  {
    v6 = 9;
    v7 = *(this + 15);
    if (!v7)
    {
      goto LABEL_35;
    }

    goto LABEL_20;
  }

  if (v5 >= 0x10000)
  {
    v8 = v5 >> 24;
    v9 = HIDWORD(v5);
    v10 = v5 >> 40;
    v11 = HIWORD(v5);
    v21 = HIBYTE(v5) == 0;
    v12 = 15;
    if (!v21)
    {
      v12 = 16;
    }

    if (!v11)
    {
      v12 = 14;
    }

    if (!v10)
    {
      v12 = 13;
    }

    if (!v9)
    {
      v12 = 12;
    }

    if (v8)
    {
      v6 = v12;
    }

    else
    {
      v6 = 11;
    }

    v7 = *(this + 15);
    if (!v7)
    {
      goto LABEL_35;
    }

    goto LABEL_20;
  }

  v6 = 10;
  v7 = *(this + 15);
  if (v7)
  {
LABEL_20:
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        if (v7 >> 24)
        {
          if (HIDWORD(v7))
          {
            v14 = v7 >> 40;
            v15 = HIWORD(v7);
            v21 = HIBYTE(v7) == 0;
            v13 = 10;
            if (!v21)
            {
              v13 = 11;
            }

            if (!v15)
            {
              v13 = 9;
            }

            if (!v14)
            {
              v13 = 8;
            }
          }

          else
          {
            v13 = 7;
          }
        }

        else
        {
          v13 = 6;
        }
      }

      else
      {
        v13 = 5;
      }
    }

    else
    {
      v13 = 4;
    }

    v6 += v13;
  }

LABEL_35:
  result = mkvmuxer::WriteEbmlMasterElement(a2, 0xE1uLL, v6);
  if (result)
  {
    v16 = (*(*a2 + 8))(a2);
    if (v16 < 0)
    {
      return 0;
    }

    else
    {
      v17 = v16;
      v18 = *(this + 17);
      result = mkvmuxer::WriteEbmlElement(a2, 0xB5uLL, v18);
      if (result)
      {
        result = mkvmuxer::WriteEbmlElement(a2, 0x9FuLL, *(this + 16), 0);
        if (result)
        {
          v19 = *(this + 15);
          if (!v19 || (result = mkvmuxer::WriteEbmlElement(a2, 0x6264uLL, v19, 0), result))
          {
            v20 = (*(*a2 + 8))(a2);
            return v20 >= 0 && v20 - v17 == v6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mkvmuxer::Tracks::AddTrack(mkvmuxer::Tracks *this, mkvmuxer::Track *a2, unsigned int a3)
{
  v3 = 0;
  if ((a3 & 0x80000000) == 0 && a3 <= 0x7E && (*(this + 12) & 1) == 0)
  {
    v4 = *(this + 2);
    if (a3 && v4)
    {
      v5 = *this;
      v6 = *(this + 2);
      while (*(*v5 + 48) != a3)
      {
        v5 += 8;
        if (!--v6)
        {
          goto LABEL_9;
        }
      }

      return 0;
    }

LABEL_9:
    v7 = a3;
    v10 = v4 + 1;
    v11 = operator new[](8 * (v4 + 1), MEMORY[0x277D826F0]);
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    v13 = this;
    v14 = *this;
    if (v4)
    {
      v15 = 0;
      v16 = a2;
      if (v4 < 4)
      {
        goto LABEL_16;
      }

      if (&v12[-v14] <= 0x1F)
      {
        goto LABEL_16;
      }

      v15 = v4 & 0xFFFFFFFC;
      v17 = (v14 + 16);
      v18 = v12 + 16;
      v19 = v15;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != v4)
      {
LABEL_16:
        v21 = v4 - v15;
        v22 = 8 * v15;
        v23 = &v12[8 * v15];
        v24 = (v14 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    else
    {
      v16 = a2;
      if (!v14)
      {
        v27 = 0;
        if (v7 <= 1)
        {
          v7 = 1;
        }

LABEL_31:
        *(v16 + 6) = v7;
        *v13 = v12;
        *&v12[8 * v27] = v16;
        *(v13 + 2) = v10;
        return 1;
      }
    }

    v26 = v16;
    MEMORY[0x2743DA520]();
    v13 = this;
    v27 = *(this + 2);
    v16 = v26;
    if (!v7)
    {
      v7 = v10;
      if (v27)
      {
        while (1)
        {
          v28 = *(this + 2);
          v29 = v12;
          while (*(*v29 + 48) != v7)
          {
            v29 += 8;
            if (!--v28)
            {
              goto LABEL_31;
            }
          }

          ++v7;
        }
      }
    }

    goto LABEL_31;
  }

  return v3;
}

unint64_t mkvmuxer::Chapter::WriteAtom(mkvmuxer::Chapter *this, mkvmuxer::IMkvWriter *a2)
{
  v4 = *this;
  if (!v4)
  {
    v6 = 0;
    v7 = *(this + 3);
    if (v7 < 0x100)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  v5 = strlen(v4);
  if (v5 < 0x7F)
  {
    v6 = v5 + 3;
    v7 = *(this + 3);
    if (v7 < 0x100)
    {
      goto LABEL_6;
    }

LABEL_21:
    if (v7 >= 0x10000)
    {
      if (v7 >> 24)
      {
        if (HIDWORD(v7))
        {
          if (!(v7 >> 40))
          {
            v8 = v6 + 8;
            v9 = *(this + 1);
            if (v9 < 0x100)
            {
              goto LABEL_60;
            }

            goto LABEL_32;
          }

          v20 = HIWORD(v7);
          v67 = HIBYTE(v7) == 0;
          v21 = 10;
          if (!v67)
          {
            v21 = 11;
          }

          if (!v20)
          {
            v21 = 9;
          }

          v8 = v21 + v6;
          v9 = *(this + 1);
          if (v9 >= 0x100)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v8 = v6 + 7;
          v9 = *(this + 1);
          if (v9 >= 0x100)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v8 = v6 + 6;
        v9 = *(this + 1);
        if (v9 >= 0x100)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v8 = v6 + 5;
      v9 = *(this + 1);
      if (v9 >= 0x100)
      {
        goto LABEL_32;
      }
    }

LABEL_60:
    v16 = v8 + 3;
    v17 = *(this + 2);
    if (v17 < 0x100)
    {
      goto LABEL_61;
    }

LABEL_34:
    if (v17 >= 0x10000)
    {
      if (v17 >> 24)
      {
        if (HIDWORD(v17))
        {
          if (v17 >> 40)
          {
            v35 = HIWORD(v17);
            v67 = HIBYTE(v17) == 0;
            v36 = 9;
            if (!v67)
            {
              v36 = 10;
            }

            if (!v35)
            {
              v36 = 8;
            }

            v71 = this;
            v72 = a2;
            v18 = v16 + v36;
            v19 = *(this + 11);
            if (v19 >= 1)
            {
              goto LABEL_62;
            }

            goto LABEL_140;
          }

          v71 = this;
          v72 = a2;
          v18 = v16 + 7;
          v19 = *(this + 11);
          if (v19 < 1)
          {
            goto LABEL_140;
          }
        }

        else
        {
          v71 = this;
          v72 = a2;
          v18 = v16 + 6;
          v19 = *(this + 11);
          if (v19 < 1)
          {
            goto LABEL_140;
          }
        }
      }

      else
      {
        v71 = this;
        v72 = a2;
        v18 = v16 + 5;
        v19 = *(this + 11);
        if (v19 < 1)
        {
          goto LABEL_140;
        }
      }
    }

    else
    {
      v71 = this;
      v72 = a2;
      v18 = v16 + 4;
      v19 = *(this + 11);
      if (v19 < 1)
      {
        goto LABEL_140;
      }
    }

LABEL_62:
    v22 = (*(this + 4) + 16);
    while (1)
    {
      v24 = *(v22 - 2);
      if (v24)
      {
        v25 = strlen(v24);
        if (v25 >= 0x7F)
        {
          v28 = 7;
          if (v25 >= 0x1FFFFFFFFFFFFLL)
          {
            v28 = 8;
          }

          if (v25 < 0x3FFFFFFFFFFLL)
          {
            v28 = 6;
          }

          if (v25 < 0x7FFFFFFFFLL)
          {
            v28 = 5;
          }

          if (v25 < 0xFFFFFFF)
          {
            v28 = 4;
          }

          if (v25 < 0x1FFFFF)
          {
            v28 = 3;
          }

          if (v25 < 0x3FFF)
          {
            v28 = 2;
          }

          v26 = v25 + 1 + v28;
          v27 = *(v22 - 1);
          if (!v27)
          {
            goto LABEL_99;
          }

LABEL_84:
          v29 = strlen(v27);
          if (v29 >= 0x7F)
          {
            v30 = 7;
            if (v29 >= 0x1FFFFFFFFFFFFLL)
            {
              v30 = 8;
            }

            if (v29 < 0x3FFFFFFFFFFLL)
            {
              v30 = 6;
            }

            if (v29 < 0x7FFFFFFFFLL)
            {
              v30 = 5;
            }

            if (v29 < 0xFFFFFFF)
            {
              v30 = 4;
            }

            if (v29 < 0x1FFFFF)
            {
              v30 = 3;
            }

            if (v29 < 0x3FFF)
            {
              v30 = 2;
            }
          }

          else
          {
            v30 = 1;
          }

          v26 += v29 + v30 + 2;
          goto LABEL_99;
        }

        v26 = v25 + 2;
        v27 = *(v22 - 1);
        if (v27)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v26 = 0;
        v27 = *(v22 - 1);
        if (v27)
        {
          goto LABEL_84;
        }
      }

LABEL_99:
      if (*v22)
      {
        v31 = strlen(*v22);
        if (v31 >= 0x7F)
        {
          v32 = 7;
          if (v31 >= 0x1FFFFFFFFFFFFLL)
          {
            v32 = 8;
          }

          if (v31 < 0x3FFFFFFFFFFLL)
          {
            v32 = 6;
          }

          if (v31 < 0x7FFFFFFFFLL)
          {
            v32 = 5;
          }

          if (v31 < 0xFFFFFFF)
          {
            v32 = 4;
          }

          if (v31 < 0x1FFFFF)
          {
            v32 = 3;
          }

          if (v31 < 0x3FFF)
          {
            v32 = 2;
          }
        }

        else
        {
          v32 = 1;
        }

        v26 += v31 + v32 + 2;
      }

      if (v26 < 0x7F)
      {
        v23 = 2;
      }

      else if (v26 >= 0x3FFF)
      {
        if (v26 >= 0x1FFFFF)
        {
          if (v26 >= 0xFFFFFFF)
          {
            if (v26 >= 0x7FFFFFFFFLL)
            {
              if (v26 >= 0x3FFFFFFFFFFLL)
              {
                v23 = 8;
                if (v26 >= 0x1FFFFFFFFFFFFLL)
                {
                  v23 = 9;
                }
              }

              else
              {
                v23 = 7;
              }
            }

            else
            {
              v23 = 6;
            }
          }

          else
          {
            v23 = 5;
          }
        }

        else
        {
          v23 = 4;
        }
      }

      else
      {
        v23 = 3;
      }

      v18 += v26 + v23;
      v22 += 3;
      if (!--v19)
      {
        goto LABEL_140;
      }
    }
  }

  v10 = 2;
  v11 = 3;
  v12 = 4;
  v13 = 5;
  v14 = 6;
  v15 = 7;
  if (v5 >= 0x1FFFFFFFFFFFFLL)
  {
    v15 = 8;
  }

  if (v5 >= 0x3FFFFFFFFFFLL)
  {
    v14 = v15;
  }

  if (v5 >= 0x7FFFFFFFFLL)
  {
    v13 = v14;
  }

  if (v5 >= 0xFFFFFFF)
  {
    v12 = v13;
  }

  if (v5 >= 0x1FFFFF)
  {
    v11 = v12;
  }

  if (v5 >= 0x3FFF)
  {
    v10 = v11;
  }

  v6 = v5 + 2 + v10;
  v7 = *(this + 3);
  if (v7 >= 0x100)
  {
    goto LABEL_21;
  }

LABEL_6:
  v8 = v6 + 4;
  v9 = *(this + 1);
  if (v9 < 0x100)
  {
    goto LABEL_60;
  }

LABEL_32:
  if (v9 < 0x10000)
  {
    v16 = v8 + 4;
    v17 = *(this + 2);
    if (v17 < 0x100)
    {
      goto LABEL_61;
    }

    goto LABEL_34;
  }

  if (v9 >> 24)
  {
    if (HIDWORD(v9))
    {
      if (!(v9 >> 40))
      {
        v16 = v8 + 7;
        v17 = *(this + 2);
        if (v17 < 0x100)
        {
          goto LABEL_61;
        }

        goto LABEL_34;
      }

      v33 = HIWORD(v9);
      v67 = HIBYTE(v9) == 0;
      v34 = 9;
      if (!v67)
      {
        v34 = 10;
      }

      if (!v33)
      {
        v34 = 8;
      }

      v16 = v8 + v34;
      v17 = *(this + 2);
      if (v17 >= 0x100)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v16 = v8 + 6;
      v17 = *(this + 2);
      if (v17 >= 0x100)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v16 = v8 + 5;
    v17 = *(this + 2);
    if (v17 >= 0x100)
    {
      goto LABEL_34;
    }
  }

LABEL_61:
  v71 = this;
  v72 = a2;
  v18 = v16 + 3;
  v19 = *(this + 11);
  if (v19 >= 1)
  {
    goto LABEL_62;
  }

LABEL_140:
  if (v18 >= 0x7F)
  {
    v39 = v71;
    v38 = v72;
    if (v18 >= 0x3FFF)
    {
      if (v18 >= 0x1FFFFF)
      {
        if (v18 >= 0xFFFFFFF)
        {
          if (v18 >= 0x7FFFFFFFFLL)
          {
            if (v18 >= 0x3FFFFFFFFFFLL)
            {
              v37 = 8;
              if (v18 >= 0x1FFFFFFFFFFFFLL)
              {
                v37 = 9;
              }
            }

            else
            {
              v37 = 7;
            }
          }

          else
          {
            v37 = 6;
          }
        }

        else
        {
          v37 = 5;
        }
      }

      else
      {
        v37 = 4;
      }
    }

    else
    {
      v37 = 3;
    }
  }

  else
  {
    v37 = 2;
    v39 = v71;
    v38 = v72;
  }

  v40 = v37 + v18;
  if (!v38)
  {
    return v37 + v18;
  }

  v41 = (*(*v38 + 8))(v38);
  if (!mkvmuxer::WriteEbmlMasterElement(v38, 0xB6uLL, v18) || !mkvmuxer::WriteEbmlElement(v38, 0x5654uLL, *v39, v42) || !mkvmuxer::WriteEbmlElement(v38, 0x73C4uLL, *(v39 + 3), 0) || !mkvmuxer::WriteEbmlElement(v38, 0x91uLL, *(v39 + 1), 0) || !mkvmuxer::WriteEbmlElement(v38, 0x92uLL, *(v39 + 2), 0))
  {
    return 0;
  }

  if (*(v39 + 11) >= 1)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = *(v39 + 4);
      v46 = *(v45 + v43);
      if (v46)
      {
        v47 = strlen(v46);
        if (v47 >= 0x7F)
        {
          v48 = 7;
          if (v47 >= 0x1FFFFFFFFFFFFLL)
          {
            v48 = 8;
          }

          if (v47 < 0x3FFFFFFFFFFLL)
          {
            v48 = 6;
          }

          if (v47 < 0x7FFFFFFFFLL)
          {
            v48 = 5;
          }

          if (v47 < 0xFFFFFFF)
          {
            v48 = 4;
          }

          if (v47 < 0x1FFFFF)
          {
            v48 = 3;
          }

          if (v47 < 0x3FFF)
          {
            v48 = 2;
          }
        }

        else
        {
          v48 = 1;
        }

        v49 = v47 + 1 + v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = v45 + v43;
      v51 = *(v45 + v43 + 8);
      if (v51)
      {
        v52 = strlen(v51);
        if (v52 >= 0x7F)
        {
          v53 = 7;
          if (v52 >= 0x1FFFFFFFFFFFFLL)
          {
            v53 = 8;
          }

          if (v52 < 0x3FFFFFFFFFFLL)
          {
            v53 = 6;
          }

          if (v52 < 0x7FFFFFFFFLL)
          {
            v53 = 5;
          }

          if (v52 < 0xFFFFFFF)
          {
            v53 = 4;
          }

          if (v52 < 0x1FFFFF)
          {
            v53 = 3;
          }

          if (v52 < 0x3FFF)
          {
            v53 = 2;
          }
        }

        else
        {
          v53 = 1;
        }

        v49 += v52 + v53 + 2;
      }

      v54 = *(v50 + 16);
      if (v54)
      {
        v55 = strlen(v54);
        if (v55 >= 0x7F)
        {
          v56 = 7;
          if (v55 >= 0x1FFFFFFFFFFFFLL)
          {
            v56 = 8;
          }

          if (v55 < 0x3FFFFFFFFFFLL)
          {
            v56 = 6;
          }

          if (v55 < 0x7FFFFFFFFLL)
          {
            v56 = 5;
          }

          if (v55 < 0xFFFFFFF)
          {
            v56 = 4;
          }

          if (v55 < 0x1FFFFF)
          {
            v56 = 3;
          }

          if (v55 < 0x3FFF)
          {
            v56 = 2;
          }
        }

        else
        {
          v56 = 1;
        }

        v49 += v55 + v56 + 2;
      }

      if (v49 >= 0x7F)
      {
        if (v49 >= 0x3FFF)
        {
          if (v49 >= 0x1FFFFF)
          {
            if (v49 >= 0xFFFFFFF)
            {
              if (v49 >= 0x7FFFFFFFFLL)
              {
                if (v49 >= 0x3FFFFFFFFFFLL)
                {
                  v57 = v49 < 0x1FFFFFFFFFFFFLL ? 8 : 9;
                }

                else
                {
                  v57 = 7;
                }
              }

              else
              {
                v57 = 6;
              }
            }

            else
            {
              v57 = 5;
            }
          }

          else
          {
            v57 = 4;
          }
        }

        else
        {
          v57 = 3;
        }
      }

      else
      {
        v57 = 2;
      }

      v58 = (*(*v72 + 8))(v72);
      if (!mkvmuxer::WriteEbmlMasterElement(v72, 0x80uLL, v49))
      {
        return 0;
      }

      if (!mkvmuxer::WriteEbmlElement(v72, 0x85uLL, *(v45 + v43), v59))
      {
        return 0;
      }

      v61 = *(v50 + 8);
      if (v61)
      {
        if (!mkvmuxer::WriteEbmlElement(v72, 0x437CuLL, v61, v60))
        {
          return 0;
        }
      }

      v62 = *(v50 + 16);
      if (v62)
      {
        if (!mkvmuxer::WriteEbmlElement(v72, 0x437EuLL, v62, v60))
        {
          return 0;
        }
      }

      v63 = v57 + v49;
      v64 = (*(*v72 + 8))(v72);
      result = 0;
      v70 = v64 < v58;
      v66 = v64 - v58;
      v67 = v70 || v66 == v63;
      v68 = !v67;
      if (!v63 || (v68 & 1) != 0)
      {
        return result;
      }

      ++v44;
      v39 = v71;
      v43 += 24;
    }

    while (v44 < *(v71 + 11));
  }

  v69 = (*(*v72 + 8))(v72);
  v70 = v69 - v41 == v40 || v69 < v41;
  if (v70)
  {
    return v40;
  }

  else
  {
    return 0;
  }
}

uint64_t mkvmuxer::Chapters::Write(mkvmuxer::Chapters *this, mkvmuxer::IMkvWriter *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(this + 1) < 1)
  {
    v6 = 0;
    v7 = 3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v6 += mkvmuxer::Chapter::WriteAtom((*(this + 1) + v4), 0);
      ++v5;
      v4 += 48;
    }

    while (v5 < *(this + 1));
    if (v6 >= 0x7F)
    {
      if (v6 >= 0x3FFF)
      {
        if (v6 >= 0x1FFFFF)
        {
          if (v6 >= 0xFFFFFFF)
          {
            if (v6 >= 0x7FFFFFFFFLL)
            {
              if (v6 >= 0x3FFFFFFFFFFLL)
              {
                v7 = 9;
                if (v6 >= 0x1FFFFFFFFFFFFLL)
                {
                  v7 = 10;
                }
              }

              else
              {
                v7 = 8;
              }
            }

            else
            {
              v7 = 7;
            }
          }

          else
          {
            v7 = 6;
          }
        }

        else
        {
          v7 = 5;
        }
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = 3;
    }
  }

  v9 = v7 + v6;
  result = mkvmuxer::WriteEbmlMasterElement(a2, 0x1043A770uLL, v9);
  if (result)
  {
    v10 = (*(*a2 + 8))(a2);
    if (*(this + 1) < 1)
    {
      v13 = 0;
      v14 = 3;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v13 += mkvmuxer::Chapter::WriteAtom((*(this + 1) + v11), 0);
        ++v12;
        v11 += 48;
      }

      while (v12 < *(this + 1));
      if (v13 >= 0x7F)
      {
        v15 = 5;
        v16 = 6;
        v17 = 7;
        v18 = 8;
        v19 = 9;
        if (v13 >= 0x1FFFFFFFFFFFFLL)
        {
          v19 = 10;
        }

        if (v13 >= 0x3FFFFFFFFFFLL)
        {
          v18 = v19;
        }

        if (v13 >= 0x7FFFFFFFFLL)
        {
          v17 = v18;
        }

        if (v13 >= 0xFFFFFFF)
        {
          v16 = v17;
        }

        if (v13 >= 0x1FFFFF)
        {
          v15 = v16;
        }

        if (v13 >= 0x3FFF)
        {
          v14 = v15;
        }

        else
        {
          v14 = 4;
        }
      }

      else
      {
        v14 = 3;
      }
    }

    v20 = (*(*a2 + 8))(a2);
    if (mkvmuxer::WriteEbmlMasterElement(a2, 0x45B9uLL, v13))
    {
      if (*(this + 1) >= 1)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          result = mkvmuxer::Chapter::WriteAtom((*(this + 1) + v21), a2);
          if (!result)
          {
            return result;
          }

          ++v22;
          v21 += 48;
        }

        while (v22 < *(this + 1));
      }

      v23 = (*(*a2 + 8))(a2);
      if ((v23 - v20 == v14 + v13 || v23 < v20) && v14 + v13 != 0)
      {
        v26 = (*(*a2 + 8))(a2);
        return v26 < v10 || v26 - v10 == v9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t mkvmuxer::Tags::Write(mkvmuxer::Tags *this, mkvmuxer::IMkvWriter *a2)
{
  if (!a2)
  {
    return 0;
  }

  v70 = *(this + 1);
  if (v70 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v68 = *(this + 1);
    while (1)
    {
      v6 = (v68 + 16 * v2);
      v7 = v6[3];
      if (v7 < 1)
      {
        v4 = 0;
        v5 = 3;
        goto LABEL_5;
      }

      v72 = v2;
      v74 = v3;
      v4 = 0;
      v8 = (*v6 + 8);
      do
      {
        while (1)
        {
          v10 = *(v8 - 1);
          if (!v10)
          {
            v12 = 0;
            v13 = *v8;
            if (!*v8)
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          }

          v11 = strlen(v10);
          if (v11 >= 0x7F)
          {
            break;
          }

          v12 = v11 + 3;
          v13 = *v8;
          if (!*v8)
          {
            goto LABEL_43;
          }

LABEL_26:
          v14 = strlen(v13);
          if (v14 >= 0x7F)
          {
            if (v14 < 0x1FFFFFFFFFFFFLL)
            {
              v17 = 7;
            }

            else
            {
              v17 = 8;
            }

            if (v14 < 0x3FFFFFFFFFFLL)
            {
              v17 = 6;
            }

            if (v14 < 0x7FFFFFFFFLL)
            {
              v17 = 5;
            }

            if (v14 < 0xFFFFFFF)
            {
              v17 = 4;
            }

            if (v14 < 0x1FFFFF)
            {
              v17 = 3;
            }

            if (v14 < 0x3FFF)
            {
              v17 = 2;
            }

            v15 = v14 + 2 + v17 + v12;
            if (v15 < 0x7F)
            {
              goto LABEL_59;
            }

            goto LABEL_8;
          }

          v15 = v14 + 3 + v12;
          if (v15 >= 0x7F)
          {
            goto LABEL_8;
          }

LABEL_59:
          v4 += v15 + 3;
          v8 += 2;
          if (!--v7)
          {
            goto LABEL_60;
          }
        }

        if (v11 < 0x1FFFFFFFFFFFFLL)
        {
          v16 = 7;
        }

        else
        {
          v16 = 8;
        }

        if (v11 < 0x3FFFFFFFFFFLL)
        {
          v16 = 6;
        }

        if (v11 < 0x7FFFFFFFFLL)
        {
          v16 = 5;
        }

        if (v11 < 0xFFFFFFF)
        {
          v16 = 4;
        }

        if (v11 < 0x1FFFFF)
        {
          v16 = 3;
        }

        if (v11 < 0x3FFF)
        {
          v16 = 2;
        }

        v12 = v11 + 2 + v16;
        v13 = *v8;
        if (*v8)
        {
          goto LABEL_26;
        }

LABEL_43:
        v15 = v12;
        if (v12 < 0x7F)
        {
          goto LABEL_59;
        }

LABEL_8:
        v9 = 9;
        if (v15 >= 0x1FFFFFFFFFFFFLL)
        {
          v9 = 10;
        }

        if (v15 < 0x3FFFFFFFFFFLL)
        {
          v9 = 8;
        }

        if (v15 < 0x7FFFFFFFFLL)
        {
          v9 = 7;
        }

        if (v15 < 0xFFFFFFF)
        {
          v9 = 6;
        }

        if (v15 < 0x1FFFFF)
        {
          v9 = 5;
        }

        if (v15 < 0x3FFF)
        {
          v9 = 4;
        }

        v4 += v15 + v9;
        v8 += 2;
        --v7;
      }

      while (v7);
LABEL_60:
      if (v4 >= 0x7F)
      {
        v2 = v72;
        v3 = v74;
        if (v4 >= 0x3FFF)
        {
          if (v4 >= 0x1FFFFF)
          {
            if (v4 >= 0xFFFFFFF)
            {
              if (v4 >= 0x7FFFFFFFFLL)
              {
                if (v4 >= 0x3FFFFFFFFFFLL)
                {
                  v5 = 9;
                  if (v4 >= 0x1FFFFFFFFFFFFLL)
                  {
                    v5 = 10;
                  }
                }

                else
                {
                  v5 = 8;
                }
              }

              else
              {
                v5 = 7;
              }
            }

            else
            {
              v5 = 6;
            }
          }

          else
          {
            v5 = 5;
          }
        }

        else
        {
          v5 = 4;
        }
      }

      else
      {
        v5 = 3;
        v2 = v72;
        v3 = v74;
      }

LABEL_5:
      v3 += v4 + v5;
      if (++v2 == v70)
      {
        goto LABEL_77;
      }
    }
  }

  v3 = 0;
LABEL_77:
  v19 = a2;
  v75 = v3;
  if ((mkvmuxer::WriteEbmlMasterElement(a2, 0x1254C367uLL, v3) & 1) == 0)
  {
    return 0;
  }

  v64 = (*(*a2 + 8))(a2);
  v20 = this;
  if (*(this + 1) < 1)
  {
LABEL_219:
    v62 = (*(*v19 + 8))(v19);
    return v62 < v64 || v62 - v64 == v75;
  }

  v21 = 0;
  while (2)
  {
    v22 = *(v20 + 1) + 16 * v21;
    v23 = *(v22 + 12);
    v73 = v22;
    v24 = 0;
    if (v23 < 1)
    {
      goto LABEL_133;
    }

    v25 = (*v22 + 8);
    do
    {
      while (1)
      {
        v27 = *(v25 - 1);
        if (!v27)
        {
          v29 = 0;
          v30 = *v25;
          if (!*v25)
          {
            goto LABEL_116;
          }

          goto LABEL_100;
        }

        v28 = strlen(v27);
        if (v28 >= 0x7F)
        {
          break;
        }

        v29 = v28 + 3;
        v30 = *v25;
        if (!*v25)
        {
          goto LABEL_116;
        }

LABEL_100:
        v31 = strlen(v30);
        if (v31 >= 0x7F)
        {
          v34 = 7;
          if (v31 >= 0x1FFFFFFFFFFFFLL)
          {
            v34 = 8;
          }

          if (v31 < 0x3FFFFFFFFFFLL)
          {
            v34 = 6;
          }

          if (v31 < 0x7FFFFFFFFLL)
          {
            v34 = 5;
          }

          if (v31 < 0xFFFFFFF)
          {
            v34 = 4;
          }

          if (v31 < 0x1FFFFF)
          {
            v34 = 3;
          }

          if (v31 < 0x3FFF)
          {
            v34 = 2;
          }

          v32 = v31 + 2 + v34 + v29;
          if (v32 < 0x7F)
          {
            goto LABEL_131;
          }

          goto LABEL_82;
        }

        v32 = v31 + 3 + v29;
        if (v32 >= 0x7F)
        {
          goto LABEL_82;
        }

LABEL_131:
        v24 += v32 + 3;
        v25 += 2;
        if (!--v23)
        {
          goto LABEL_132;
        }
      }

      v33 = 7;
      if (v28 >= 0x1FFFFFFFFFFFFLL)
      {
        v33 = 8;
      }

      if (v28 < 0x3FFFFFFFFFFLL)
      {
        v33 = 6;
      }

      if (v28 < 0x7FFFFFFFFLL)
      {
        v33 = 5;
      }

      if (v28 < 0xFFFFFFF)
      {
        v33 = 4;
      }

      if (v28 < 0x1FFFFF)
      {
        v33 = 3;
      }

      if (v28 < 0x3FFF)
      {
        v33 = 2;
      }

      v29 = v28 + 2 + v33;
      v30 = *v25;
      if (*v25)
      {
        goto LABEL_100;
      }

LABEL_116:
      v32 = v29;
      if (v29 < 0x7F)
      {
        goto LABEL_131;
      }

LABEL_82:
      v26 = 9;
      if (v32 >= 0x1FFFFFFFFFFFFLL)
      {
        v26 = 10;
      }

      if (v32 < 0x3FFFFFFFFFFLL)
      {
        v26 = 8;
      }

      if (v32 < 0x7FFFFFFFFLL)
      {
        v26 = 7;
      }

      if (v32 < 0xFFFFFFF)
      {
        v26 = 6;
      }

      if (v32 < 0x1FFFFF)
      {
        v26 = 5;
      }

      if (v32 < 0x3FFF)
      {
        v26 = 4;
      }

      v24 += v32 + v26;
      v25 += 2;
      --v23;
    }

    while (v23);
LABEL_132:
    if (v24 >= 0x7F)
    {
      v36 = 9;
      if (v24 >= 0x1FFFFFFFFFFFFLL)
      {
        v36 = 10;
      }

      if (v24 < 0x3FFFFFFFFFFLL)
      {
        v36 = 8;
      }

      if (v24 < 0x7FFFFFFFFLL)
      {
        v36 = 7;
      }

      if (v24 < 0xFFFFFFF)
      {
        v36 = 6;
      }

      if (v24 < 0x1FFFFF)
      {
        v36 = 5;
      }

      if (v24 >= 0x3FFF)
      {
        v35 = v36;
      }

      else
      {
        v35 = 4;
      }
    }

    else
    {
LABEL_133:
      v35 = 3;
    }

    v37 = (*(*v19 + 8))(v19);
    if (mkvmuxer::WriteEbmlMasterElement(v19, 0x7373uLL, v24))
    {
      v69 = v37;
      v71 = v35;
      v65 = v21;
      v38 = v73;
      if (*(v73 + 12) >= 1)
      {
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = *v38;
          v42 = *(*v38 + v39);
          if (v42)
          {
            v43 = strlen(v42);
            if (v43 >= 0x7F)
            {
              v48 = 7;
              if (v43 >= 0x1FFFFFFFFFFFFLL)
              {
                v48 = 8;
              }

              if (v43 < 0x3FFFFFFFFFFLL)
              {
                v48 = 6;
              }

              if (v43 < 0x7FFFFFFFFLL)
              {
                v48 = 5;
              }

              if (v43 < 0xFFFFFFF)
              {
                v48 = 4;
              }

              if (v43 < 0x1FFFFF)
              {
                v48 = 3;
              }

              if (v43 < 0x3FFF)
              {
                v48 = 2;
              }

              v44 = v43 + 2 + v48;
              v45 = v41 + v39;
              v46 = *(v41 + v39 + 8);
              if (!v46)
              {
LABEL_171:
                if (v44 >= 0x7F)
                {
                  goto LABEL_186;
                }

                goto LABEL_172;
              }
            }

            else
            {
              v44 = v43 + 3;
              v45 = v41 + v39;
              v46 = *(v41 + v39 + 8);
              if (!v46)
              {
                goto LABEL_171;
              }
            }
          }

          else
          {
            v44 = 0;
            v45 = v41 + v39;
            v46 = *(v41 + v39 + 8);
            if (!v46)
            {
              goto LABEL_171;
            }
          }

          v47 = strlen(v46);
          if (v47 >= 0x7F)
          {
            v50 = 7;
            if (v47 >= 0x1FFFFFFFFFFFFLL)
            {
              v50 = 8;
            }

            if (v47 < 0x3FFFFFFFFFFLL)
            {
              v50 = 6;
            }

            if (v47 < 0x7FFFFFFFFLL)
            {
              v50 = 5;
            }

            if (v47 < 0xFFFFFFF)
            {
              v50 = 4;
            }

            if (v47 < 0x1FFFFF)
            {
              v50 = 3;
            }

            if (v47 < 0x3FFF)
            {
              v50 = 2;
            }

            v44 += v47 + 2 + v50;
            if (v44 >= 0x7F)
            {
LABEL_186:
              if (v44 >= 0x3FFF)
              {
                if (v44 >= 0x1FFFFF)
                {
                  if (v44 >= 0xFFFFFFF)
                  {
                    if (v44 >= 0x7FFFFFFFFLL)
                    {
                      if (v44 >= 0x3FFFFFFFFFFLL)
                      {
                        if (v44 < 0x1FFFFFFFFFFFFLL)
                        {
                          v49 = 9;
                        }

                        else
                        {
                          v49 = 10;
                        }
                      }

                      else
                      {
                        v49 = 8;
                      }
                    }

                    else
                    {
                      v49 = 7;
                    }
                  }

                  else
                  {
                    v49 = 6;
                  }
                }

                else
                {
                  v49 = 5;
                }
              }

              else
              {
                v49 = 4;
              }

              goto LABEL_199;
            }
          }

          else
          {
            v44 += v47 + 3;
            if (v44 >= 0x7F)
            {
              goto LABEL_186;
            }
          }

LABEL_172:
          v49 = 3;
LABEL_199:
          v19 = a2;
          v51 = (*(*a2 + 8))(a2);
          result = mkvmuxer::WriteEbmlMasterElement(a2, 0x67C8uLL, v44);
          if (!result)
          {
            return result;
          }

          result = mkvmuxer::WriteEbmlElement(a2, 0x45A3uLL, *(v41 + v39), v52);
          if (!result)
          {
            return result;
          }

          result = mkvmuxer::WriteEbmlElement(a2, 0x4487uLL, *(v45 + 8), v53);
          if (!result)
          {
            return result;
          }

          v54 = v49 + v44;
          v55 = (*(*a2 + 8))(a2);
          result = 0;
          v60 = v55 < v51;
          v56 = v55 - v51;
          v57 = v60 || v56 == v54;
          v58 = !v57;
          if (!v54 || v58)
          {
            return result;
          }

          ++v40;
          v38 = v73;
          v39 += 16;
        }

        while (v40 < *(v73 + 12));
      }

      v59 = (*(*v19 + 8))(v19);
      v60 = v59 - v69 == v71 + v24 || v59 < v69;
      if (v60 && v71 + v24 != 0)
      {
        v20 = this;
        v21 = v65 + 1;
        if (v65 + 1 >= *(this + 1))
        {
          goto LABEL_219;
        }

        continue;
      }
    }

    return 0;
  }
}

uint64_t mkvmuxer::Cluster::QueueOrWriteFrame(mkvmuxer::Cluster *this, const mkvmuxer::Frame *a2)
{
  if (!a2 || !*(a2 + 7) || !*(a2 + 5))
  {
    return 0;
  }

  v2 = *(a2 + 1);
  if (*(a2 + 2))
  {
    if (!v2 || (*(a2 + 8) - 127) < 0xFFFFFFFFFFFFFF82)
    {
      return 0;
    }
  }

  else
  {
    if (v2 || (*(a2 + 8) - 127) < 0xFFFFFFFFFFFFFF82)
    {
      return 0;
    }

    if (!*(a2 + 10) && !*(a2 + 3))
    {
      goto LABEL_9;
    }
  }

  if ((*(a2 + 48) & 1) == 0 && *(a2 + 96) != 1)
  {
    return 0;
  }

LABEL_9:
  if (*(this + 48))
  {
    operator new();
  }

  return mkvmuxer::Cluster::DoWriteFrame(this, a2);
}

void mkvmuxer::Cluster::Finalize(mkvmuxer::Cluster *this, char a2, uint64_t a3)
{
  if (*(this + 13) && (*(this + 4) & 1) == 0)
  {
    if (*(this + 48) == 1)
    {
      v5 = (this + 64);
      v54 = this + 88;
      while (1)
      {
        if (!*(this + 9))
        {
          goto LABEL_85;
        }

        v6 = *(this + 7);
        if (!v6[7])
        {
          goto LABEL_101;
        }

        v7 = v6[1];
        v8 = *(this + 7);
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (!v10);
        }

        v11 = *(v6[6] + 16);
        if (v9 != v5)
        {
          while (v9[7])
          {
            if (v9[6][2][9] < v11[9])
            {
              v11 = v9[6][2];
            }

            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v10 = *v15 == v9;
                v9 = v15;
              }

              while (!v10);
            }

            v9 = v15;
            if (v15 == v5)
            {
              goto LABEL_15;
            }
          }

LABEL_101:
          __break(1u);
          return;
        }

LABEL_15:
        if (a2)
        {
          v12 = v11[8];
          v13 = *v5;
          if (!*v5)
          {
LABEL_32:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v16 = v13;
              v17 = v13[4];
              if (v12 >= v17)
              {
                break;
              }

              v13 = *v16;
              if (!*v16)
              {
                goto LABEL_32;
              }
            }

            if (v17 >= v12)
            {
              break;
            }

            v13 = v16[1];
            if (!v13)
            {
              goto LABEL_32;
            }
          }

          if (v16[7] == 1 && (v11[4] & 1) == 0)
          {
            v11[3] = a3 - v11[9];
            *(v11 + 32) = 1;
            if ((v11[6] & 1) == 0 && (v11[12] & 1) == 0)
            {
              v18 = v11[8];
              v19 = v54;
LABEL_38:
              v20 = *v19;
              if (!*v19)
              {
LABEL_42:
                operator new();
              }

              while (1)
              {
                v19 = v20;
                v21 = v20[4];
                if (v18 < v21)
                {
                  goto LABEL_38;
                }

                if (v21 >= v18)
                {
                  break;
                }

                v20 = v19[1];
                if (!v20)
                {
                  goto LABEL_42;
                }
              }

              v11[11] = v19[5];
              *(v11 + 96) = 1;
            }
          }
        }

        v22 = mkvmuxer::Cluster::DoWriteFrame(this, v11);
        v23 = v11[8];
        v24 = *(this + 8);
        if (!v24)
        {
LABEL_50:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v25 = v24;
            v26 = v24[4];
            if (v23 >= v26)
            {
              break;
            }

            v24 = *v25;
            if (!*v25)
            {
              goto LABEL_50;
            }
          }

          if (v26 >= v23)
          {
            break;
          }

          v24 = v25[1];
          if (!v24)
          {
            goto LABEL_50;
          }
        }

        v27 = v25[7];
        if (!v27)
        {
          goto LABEL_101;
        }

        v28 = v25[6];
        v30 = *v28;
        v29 = v28[1];
        *(v30 + 8) = v29;
        *v29 = v30;
        v25[7] = v27 - 1;
        operator delete(v28);
        v31 = v11[8];
        v32 = *v5;
        if (!*v5)
        {
LABEL_58:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v33 = v32;
            v34 = v32[4];
            if (v31 >= v34)
            {
              break;
            }

            v32 = *v33;
            if (!*v33)
            {
              goto LABEL_58;
            }
          }

          if (v34 >= v31)
          {
            break;
          }

          v32 = v33[1];
          if (!v32)
          {
            goto LABEL_58;
          }
        }

        if (!v33[7])
        {
          break;
        }

        if (v11)
        {
          goto LABEL_81;
        }

LABEL_6:
        if ((v22 & 1) == 0)
        {
          return;
        }
      }

      v35 = *v5;
      if (*v5)
      {
        v36 = v11[8];
        v37 = (this + 64);
        v38 = *v5;
        do
        {
          v39 = v38[4];
          v40 = v39 >= v36;
          v41 = v39 < v36;
          if (v40)
          {
            v37 = v38;
          }

          v38 = v38[v41];
        }

        while (v38);
        if (v37 != v5 && v37[4] <= v36)
        {
          v42 = v37[1];
          v43 = v37;
          if (v42)
          {
            do
            {
              v44 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v44 = v43[2];
              v10 = *v44 == v43;
              v43 = v44;
            }

            while (!v10);
          }

          if (*(this + 7) == v37)
          {
            *(this + 7) = v44;
          }

          --*(this + 9);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v35, v37);
          if (v37[7])
          {
            v45 = v37[6];
            v46 = *(v37[5] + 8);
            v47 = *v45;
            *(v47 + 8) = v46;
            *v46 = v47;
            v37[7] = 0;
            if (v45 != v37 + 5)
            {
              do
              {
                v48 = v45[1];
                operator delete(v45);
                v45 = v48;
              }

              while (v48 != v37 + 5);
            }
          }

          operator delete(v37);
        }
      }

LABEL_81:
      v49 = v11[5];
      if (v49)
      {
        MEMORY[0x2743DA520](v49, 0x1000C8077774924);
      }

      v50 = v11[1];
      if (v50)
      {
        MEMORY[0x2743DA520](v50, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v11, 0x1010C40E9B8B8EALL);
      goto LABEL_6;
    }

LABEL_85:
    if (*(this + 3) != -1)
    {
      if (!(*(**(this + 13) + 24))(*(this + 13)) || (v51 = (*(**(this + 13) + 8))(*(this + 13)), !(*(**(this + 13) + 16))(*(this + 13), *(this + 3))) && (v52 = *(this + 13)) != 0 && (v53 = *(this + 1), v53 <= 0xFFFFFFFFFFFFFELL) && (v56 = 1, ((**v52)(v52, &v56, 1) & 0x80000000) == 0) && (v56 = BYTE6(v53), ((**v52)(v52, &v56, 1) & 0x80000000) == 0) && (v56 = BYTE5(v53), ((**v52)(v52, &v56, 1) & 0x80000000) == 0) && (v56 = BYTE4(v53), ((**v52)(v52, &v56, 1) & 0x80000000) == 0) && (v56 = BYTE3(v53), ((**v52)(v52, &v56, 1) & 0x80000000) == 0) && (v56 = BYTE2(v53), ((**v52)(v52, &v56, 1) & 0x80000000) == 0) && (v56 = BYTE1(v53), ((**v52)(v52, &v56, 1) & 0x80000000) == 0) && (v56 = v53, ((**v52)(v52, &v56, 1) & 0x80000000) == 0) && !(*(**(this + 13) + 16))(*(this + 13), v51))
      {
        *(this + 4) = 1;
      }
    }
  }
}

uint64_t mkvmuxer::Cluster::DoWriteFrame(mkvmuxer::Cluster *this, const mkvmuxer::Frame *a2)
{
  if (!a2 || !*(a2 + 7) || !*(a2 + 5))
  {
    return 0;
  }

  v2 = *(a2 + 1);
  if (*(a2 + 2))
  {
    if (!v2 || (*(a2 + 8) - 127) < 0xFFFFFFFFFFFFFF82)
    {
      return 0;
    }
  }

  else
  {
    if (v2 || (*(a2 + 8) - 127) < 0xFFFFFFFFFFFFFF82)
    {
      return 0;
    }

    if (!*(a2 + 10) && !*(a2 + 3))
    {
      goto LABEL_9;
    }
  }

  if ((*(a2 + 48) & 1) == 0 && *(a2 + 96) != 1)
  {
    return 0;
  }

LABEL_9:
  if (*(this + 4))
  {
    return 0;
  }

  v3 = this;
  if ((*(this + 6) & 1) == 0)
  {
    v4 = a2;
    v5 = mkvmuxer::Cluster::WriteClusterHeader(this);
    a2 = v4;
    v6 = v5;
    this = v3;
    if (!v6)
    {
      return 0;
    }
  }

  v7 = a2;
  result = mkvmuxer::WriteFrame(*(this + 13), a2, this);
  if (result)
  {
    *(v3 + 1) += result;
    ++*v3;
    v10 = *(v7 + 8);
    v9 = *(v7 + 9);
    v11 = *(v3 + 11);
    if (!v11)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = v11[4];
        if (v10 >= v13)
        {
          break;
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_22;
        }
      }

      if (v13 >= v10)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        goto LABEL_22;
      }
    }

    v12[5] = v9;
    return 1;
  }

  return result;
}

uint64_t mkvmuxer::Cluster::WriteClusterHeader(mkvmuxer::Cluster *this)
{
  if (*(this + 4))
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v4 = *(this + 13);
  if (!v4)
  {
    return 0;
  }

  v6 = (*(*v4 + 8))(*(this + 13));
  (*(*v4 + 32))(v4, 524531317, v6);
  v12 = 31;
  if (((**v4)(v4, &v12, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v12 = 67;
  if (((**v4)(v4, &v12, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v12 = -74;
  if (((**v4)(v4, &v12, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v12 = 117;
  if (((**v4)(v4, &v12, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  *(this + 3) = (*(**(this + 13) + 8))(*(this + 13));
  v7 = *(this + 13);
  if (!v7)
  {
    return 0;
  }

  v13 = 1;
  if (((**v7)(v7, &v13, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = -1;
  if (((**v7)(v7, &v13, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = -1;
  if (((**v7)(v7, &v13, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = -1;
  if (((**v7)(v7, &v13, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = -1;
  if (((**v7)(v7, &v13, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = -1;
  if (((**v7)(v7, &v13, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = -1;
  if (((**v7)(v7, &v13, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = -1;
  if (((**v7)(v7, &v13, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  if (*(this + 5))
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  result = mkvmuxer::WriteEbmlElement(*(this + 13), 0xE7uLL, *(this + 4), v8);
  if (result)
  {
    v9 = this;
    if (*(this + 5))
    {
      v10 = 10;
    }

    else
    {
      v11 = *(this + 4);
      if (v11 >= 0x100)
      {
        if (v11 >= 0x10000)
        {
          if (v11 >> 24)
          {
            if (HIDWORD(v11))
            {
              if (v11 >> 40)
              {
                if (HIWORD(v11))
                {
                  if (HIBYTE(v11))
                  {
                    v10 = 10;
                  }

                  else
                  {
                    v10 = 9;
                  }
                }

                else
                {
                  v10 = 8;
                }
              }

              else
              {
                v10 = 7;
              }
            }

            else
            {
              v10 = 6;
            }
          }

          else
          {
            v10 = 5;
          }

          v9 = this;
        }

        else
        {
          v10 = 4;
        }
      }

      else
      {
        v10 = 3;
      }
    }

    *(v9 + 1) += v10;
    result = 1;
    *(v9 + 6) = 1;
  }

  return result;
}

char *mkvmuxer::SegmentInfo::set_writing_app(char *this, const char *__s)
{
  if (__s)
  {
    v3 = this;
    v4 = strlen(__s);
    this = operator new[](v4 + 1, MEMORY[0x277D826F0]);
    if (this)
    {
      v5 = this;
      strcpy(this, __s);
      this = *(v3 + 3);
      if (this)
      {
        this = MEMORY[0x2743DA520](this, 0x1000C8077774924);
      }

      *(v3 + 3) = v5;
    }
  }

  return this;
}

char *mkvmuxer::SegmentInfo::set_muxing_app(char *this, const char *__s)
{
  if (__s)
  {
    v3 = this;
    v4 = strlen(__s);
    this = operator new[](v4 + 1, MEMORY[0x277D826F0]);
    if (this)
    {
      v5 = this;
      strcpy(this, __s);
      this = *(v3 + 1);
      if (this)
      {
        this = MEMORY[0x2743DA520](this, 0x1000C8077774924);
      }

      *(v3 + 1) = v5;
    }
  }

  return this;
}

mkvmuxer::Segment *mkvmuxer::Segment::Segment(mkvmuxer::Segment *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 1;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0xBFF0000000000000;
  *(this + 14) = 0;
  *(this + 15) = 1000000;
  *(this + 16) = 0;
  *(this + 136) = xmmword_273BDAA50;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 31) = 0;
  *(this + 36) = 0;
  *(this + 296) = 0;
  *(this + 50) = 0;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 240) = 0;
  *(this + 70) = 0;
  *(this + 264) = 0u;
  *(this + 19) = 0u;
  *(this + 160) = 0;
  *(this + 328) = 0u;
  *(this + 295) = 30000000000;
  *(this + 296) = 0;
  *(this + 594) = 2;
  *(this + 595) = 256;
  *(this + 2384) = 0;
  *(this + 2388) = 0u;
  *(this + 601) = 0;
  *(this + 602) = 4;
  *(this + 611) = 0;
  *(this + 2412) = 0u;
  *(this + 2428) = 0u;
  *this = time(0);
  return this;
}

void mkvmuxer::Segment::~Segment(mkvmuxer::Segment *this)
{
  if (*(this + 33))
  {
    v2 = *(this + 69);
    if (v2 < 1)
    {
      goto LABEL_42;
    }

    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 33) + 8 * i);
      if (v4)
      {
        if (*(v4 + 72))
        {
          v5 = (v4 + 64);
          v6 = *(v4 + 56);
          if (v6[7])
          {
            goto LABEL_13;
          }

          while (1)
          {
LABEL_21:
            v14 = *v5;
            if (*v5)
            {
              v15 = v6[4];
              v16 = (v4 + 64);
              v17 = *v5;
              do
              {
                v18 = v17[4];
                v19 = v18 >= v15;
                v20 = v18 < v15;
                if (v19)
                {
                  v16 = v17;
                }

                v17 = v17[v20];
              }

              while (v17);
              if (v16 != v5 && v16[4] <= v15)
              {
                v21 = v16[1];
                v22 = v16;
                if (v21)
                {
                  do
                  {
                    v23 = v21;
                    v21 = *v21;
                  }

                  while (v21);
                }

                else
                {
                  do
                  {
                    v23 = v22[2];
                    v24 = *v23 == v22;
                    v22 = v23;
                  }

                  while (!v24);
                }

                if (v6 == v16)
                {
                  *(v4 + 56) = v23;
                }

                --*(v4 + 72);
                std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v14, v16);
                if (v16[7])
                {
                  v25 = v16[6];
                  v26 = *(v16[5] + 8);
                  v27 = *v25;
                  *(v27 + 8) = v26;
                  *v26 = v27;
                  v16[7] = 0;
                  if (v25 != v16 + 5)
                  {
                    do
                    {
                      v28 = v25[1];
                      operator delete(v25);
                      v25 = v28;
                    }

                    while (v28 != v16 + 5);
                  }
                }

                operator delete(v16);
              }
            }

            if (!*(v4 + 72))
            {
              break;
            }

            v6 = *(v4 + 56);
            if (v6[7])
            {
              while (1)
              {
LABEL_13:
                v7 = *(v6[6] + 16);
                if (v7)
                {
                  v8 = *(v7 + 40);
                  if (v8)
                  {
                    MEMORY[0x2743DA520](v8, 0x1000C8077774924);
                  }

                  v9 = *(v7 + 8);
                  if (v9)
                  {
                    MEMORY[0x2743DA520](v9, 0x1000C8077774924);
                  }

                  MEMORY[0x2743DA540](v7, 0x1010C40E9B8B8EALL);
                  v6 = *(v4 + 56);
                }

                v10 = v6[7];
                if (!v10)
                {
                  break;
                }

                v11 = v6[6];
                v13 = *v11;
                v12 = v11[1];
                *(v13 + 8) = v12;
                *v12 = v13;
                v6[7] = v10 - 1;
                operator delete(v11);
                v6 = *(v4 + 56);
                if (!v6[7])
                {
                  goto LABEL_21;
                }
              }

              __break(1u);
              goto LABEL_41;
            }
          }
        }

        std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v4 + 88));
        std::__tree<std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>>>::destroy(*(v4 + 64));
        MEMORY[0x2743DA540](v4, 0x1020C40870BF0E6);
        v2 = *(this + 69);
      }
    }

LABEL_41:
    if (*(this + 33))
    {
LABEL_42:
      MEMORY[0x2743DA520]();
    }
  }

  if (*(this + 38))
  {
    v29 = *(this + 79);
    if (v29 < 1)
    {
      goto LABEL_54;
    }

    for (j = 0; j < v29; ++j)
    {
      v31 = *(*(this + 38) + 8 * j);
      if (v31)
      {
        v32 = *(v31 + 40);
        if (v32)
        {
          MEMORY[0x2743DA520](v32, 0x1000C8077774924);
        }

        v33 = *(v31 + 8);
        if (v33)
        {
          MEMORY[0x2743DA520](v33, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v31, 0x1010C40E9B8B8EALL);
        v29 = *(this + 79);
      }
    }

    if (*(this + 38))
    {
LABEL_54:
      MEMORY[0x2743DA520]();
    }
  }

  v34 = *(this + 26);
  if (v34)
  {
    MEMORY[0x2743DA520](v34, 0x1000C8077774924);
  }

  v35 = *(this + 31);
  if (v35)
  {
    MEMORY[0x2743DA520](v35, 0x1000C8077774924);
  }

  v36 = *(this + 27);
  if (v36)
  {
    if (*(v36 + 8) && (*(v36 + 16) & 1) != 0)
    {
      v37 = *(this + 27);
      fclose(*(v36 + 8));
      v38 = *(this + 27);
      *(v37 + 8) = 0;
      v36 = v38;
      if (!v38)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *(v36 + 8) = 0;
    }

    (*(*v36 + 48))(v36);
  }

LABEL_66:
  v39 = *(this + 28);
  if (!v39)
  {
    goto LABEL_73;
  }

  if (!*(v39 + 8) || (*(v39 + 16) & 1) == 0)
  {
    *(v39 + 8) = 0;
    goto LABEL_72;
  }

  v40 = *(this + 28);
  fclose(*(v39 + 8));
  v41 = *(this + 28);
  *(v40 + 8) = 0;
  v39 = v41;
  if (v41)
  {
LABEL_72:
    (*(*v39 + 48))(v39);
  }

LABEL_73:
  v42 = *(this + 29);
  if (!v42)
  {
    goto LABEL_80;
  }

  if (!*(v42 + 8) || (*(v42 + 16) & 1) == 0)
  {
    *(v42 + 8) = 0;
    goto LABEL_79;
  }

  v43 = *(this + 29);
  fclose(*(v42 + 8));
  v44 = *(this + 29);
  *(v43 + 8) = 0;
  v42 = v44;
  if (v44)
  {
LABEL_79:
    (*(*v42 + 48))(v42);
  }

LABEL_80:
  v45 = *(this + 47);
  if (v45 >= 1)
  {
    do
    {
      v46 = *(this + 24);
      v47 = v45 - 1;
      *(this + 47) = v47;
      v48 = (v46 + 16 * v47);
      v49 = *(v48 + 3);
      if (v49 >= 1)
      {
        do
        {
          v50 = *v48;
          v51 = v49 - 1;
          *(v48 + 3) = v51;
          v52 = (v50 + 16 * v51);
          if (v50)
          {
            if (*v52)
            {
              MEMORY[0x2743DA520](*v52, 0x1000C8077774924);
            }

            *v52 = 0;
          }

          v53 = v52[1];
          if (v53)
          {
            MEMORY[0x2743DA520](v53, 0x1000C8077774924);
          }

          v52[1] = 0;
          v49 = *(v48 + 3);
        }

        while (v49 > 0);
      }

      if (*v48)
      {
        MEMORY[0x2743DA520](*v48, 0x10C80B8F86A93);
      }

      *v48 = 0;
      *(v48 + 2) = 0;
      v45 = *(this + 47);
    }

    while (v45 > 0);
  }

  v54 = *(this + 24);
  if (v54)
  {
    MEMORY[0x2743DA520](v54 - 16, 0x1020C80EDED9539);
  }

  *(this + 24) = 0;
  v55 = *(this + 43);
  if (v55 >= 1)
  {
    do
    {
      v56 = *(this + 22);
      v57 = v55 - 1;
      *(this + 43) = v57;
      v58 = v56 + 48 * v57;
      if (v56)
      {
        if (*v58)
        {
          MEMORY[0x2743DA520](*v58, 0x1000C8077774924);
        }

        *v58 = 0;
      }

      v59 = *(v58 + 44);
      if (v59 >= 1)
      {
        do
        {
          v61 = *(v58 + 32);
          v62 = v59 - 1;
          *(v58 + 44) = v62;
          v63 = (v61 + 24 * v62);
          if (v61)
          {
            if (*v63)
            {
              MEMORY[0x2743DA520](*v63, 0x1000C8077774924);
            }

            *v63 = 0;
          }

          v64 = v63[1];
          if (v64)
          {
            MEMORY[0x2743DA520](v64, 0x1000C8077774924);
          }

          v63[1] = 0;
          v65 = v63[2];
          if (v65)
          {
            MEMORY[0x2743DA520](v65, 0x1000C8077774924);
          }

          v63[2] = 0;
          v59 = *(v58 + 44);
        }

        while (v59 > 0);
      }

      v60 = *(v58 + 32);
      if (v60)
      {
        MEMORY[0x2743DA520](v60, 0x10C802FEFCB83);
      }

      *(v58 + 32) = 0;
      *(v58 + 40) = 0;
      v55 = *(this + 43);
    }

    while (v55 > 0);
  }

  v66 = *(this + 22);
  if (v66)
  {
    MEMORY[0x2743DA520](v66 - 16, 0x1030C808F378463);
  }

  *(this + 22) = 0;
  if (*(this + 19))
  {
    v67 = *(this + 40);
    if (!v67)
    {
      goto LABEL_123;
    }

    for (k = 0; k < v67; ++k)
    {
      v69 = *(*(this + 19) + 8 * k);
      if (v69)
      {
        (*(*v69 + 8))(v69);
        v67 = *(this + 40);
      }
    }

    if (*(this + 19))
    {
LABEL_123:
      MEMORY[0x2743DA520]();
    }
  }

  v70 = *(this + 14);
  if (v70)
  {
    MEMORY[0x2743DA520](v70, 0x1000C8077774924);
  }

  v71 = *(this + 16);
  if (v71)
  {
    MEMORY[0x2743DA520](v71, 0x1000C8077774924);
  }

  if (*(this + 2))
  {
    v72 = *(this + 3);
    if (v72 < 1)
    {
      goto LABEL_135;
    }

    for (m = 0; m < v72; ++m)
    {
      v74 = *(*(this + 2) + 8 * m);
      if (v74)
      {
        MEMORY[0x2743DA540](v74, 0x1000C4074F221ECLL);
        v72 = *(this + 3);
      }
    }

    if (*(this + 2))
    {
LABEL_135:
      MEMORY[0x2743DA520]();
    }
  }
}

uint64_t mkvmuxer::Segment::Init(mkvmuxer::Segment *this, mkvmuxer::IMkvWriter *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  *(this + 303) = a2;
  *(this + 304) = a2;
  *(this + 305) = a2;
  bzero(this + 344, 0x7E0uLL);
  snprintf(__str, 0x100uLL, "libwebm-%d.%d.%d.%d", 0, 3, 0, 0);
  v3 = strlen(__str);
  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x2743DA520](v4, 0x1000C8077774924);
  }

  result = operator new[](v3 + 1, MEMORY[0x277D826F0]);
  *(this + 14) = result;
  if (result)
  {
    strcpy(result, __str);
    v6 = strlen(__str);
    v7 = operator new[](v6 + 1, MEMORY[0x277D826F0]);
    if (v7)
    {
      v8 = v7;
      strcpy(v7, __str);
      v9 = *(this + 16);
      if (v9)
      {
        MEMORY[0x2743DA520](v9, 0x1000C8077774924);
      }

      *(this + 16) = v8;
      return 1;
    }

    else
    {
      return *(this + 16) != 0;
    }
  }

  return result;
}

void mkvmuxer::Segment::Finalize(mkvmuxer::Segment *this)
{
  if ((mkvmuxer::Segment::WriteFramesAll(this) & 0x80000000) != 0)
  {
    return;
  }

  v7 = *(this + 594);
  if (v7 == 1 && *(this + 2382) != 1)
  {
    return;
  }

  v8 = *(this + 69);
  if (v8 >= 1)
  {
    v9 = *(*(this + 33) + 8 * v8 - 8);
    if (!v9)
    {
      return;
    }

    mkvmuxer::Cluster::Finalize(v9, 0, 0);
    if (!v10)
    {
      return;
    }

    v7 = *(this + 594);
  }

  if (v7 != 2)
  {
    return;
  }

  if (*(this + 240) == 1)
  {
    v11 = *(this + 27);
    if (v11)
    {
      v12 = *(v11 + 8);
      if (v12 && *(v11 + 16) == 1)
      {
        fclose(v12);
      }

      *(v11 + 8) = 0;
      ++*(this + 50);
    }
  }

  v13 = *(this + 302);
  if (v13 <= 0.0)
  {
    v14 = *(this + 41);
    v15 = *(this + 15);
    v13 = (*(this + 42) + v14) / v15;
    if (!v14 && *(this + 2384) == 1)
    {
      v16 = *(this + 40);
      if (v16 >= 1)
      {
        v17 = this;
        do
        {
          v18 = *(v17 + 169);
          if (v18 >= 2 && (*(v17 + 43) / (v18 - 1) + *(v17 + 43)) / v15 > v13)
          {
            v13 = (*(v17 + 43) / (v18 - 1) + *(v17 + 43)) / v15;
          }

          v17 = (v17 + 8);
          --v16;
        }

        while (v16);
      }
    }
  }

  *(this + 13) = v13;
  v19 = *(this + 305);
  if (!v19)
  {
    return;
  }

  if (v13 > 0.0)
  {
    if ((*(*v19 + 24))(*(this + 305)))
    {
      if (*(this + 18) == -1)
      {
        return;
      }

      v1 = (*(*v19 + 8))(v19);
      if ((*(*v19 + 16))(v19, *(this + 18)))
      {
        return;
      }

      v20 = *(this + 13);
      if (!mkvmuxer::WriteEbmlElement(v19, 0x4489uLL, v20) || (*(*v19 + 16))(v19, v1))
      {
        return;
      }
    }
  }

  if (*(this + 2381) == 1)
  {
    v21 = (this + 32);
    v22 = *(this + 305);
    if (v22)
    {
      v1 = (*(*v22 + 8))(v22) - *(this + 299);
      if (*(this + 240) == 1)
      {
        v23 = *(this + 69);
        if (v23 < 1)
        {
          goto LABEL_44;
        }

        v24 = *(this + 33);
        if (v23 == 1)
        {
          v25 = 0;
        }

        else
        {
          v26 = 0;
          v25 = v23 & 0x7FFFFFFE;
          v27 = v24 + 8;
          v28 = v25;
          do
          {
            v1 += *(*(v27 - 8) + 8) + 12;
            v26 += *(*v27 + 8) + 12;
            v27 += 16;
            v28 -= 2;
          }

          while (v28);
          v1 += v26;
          if (v25 == v23)
          {
LABEL_44:
            v32 = *(this + 304);
            if (v32)
            {
              v1 += (*(*v32 + 8))(v32);
            }

            goto LABEL_46;
          }
        }

        v29 = v23 - v25;
        v30 = (v24 + 8 * v25);
        do
        {
          v31 = *v30++;
          v1 += *(v31 + 8) + 12;
          --v29;
        }

        while (v29);
        goto LABEL_44;
      }
    }

    else
    {
      v1 = -1;
    }

LABEL_46:
    if (*v21)
    {
      if (*(this + 9))
      {
        if (*(this + 10))
        {
          if (*(this + 11))
          {
            if (*(this + 12))
            {
              return;
            }

            v33 = 4;
          }

          else
          {
            v33 = 3;
          }
        }

        else
        {
          v33 = 2;
        }
      }

      else
      {
        v33 = 1;
      }
    }

    else
    {
      v33 = 0;
    }

    v21[v33] = 475249515;
    *(this + v33 + 7) = v1;
  }

  if (*(this + 240) == 1)
  {
    if (!*(this + 28))
    {
      return;
    }

    __filename = 0;
    if (!mkvmuxer::Segment::UpdateChunkName(this, "cues", &__filename) || !__filename)
    {
      return;
    }

    v1 = *(this + 28);
    if (*(v1 + 8))
    {
      MEMORY[0x2743DA520]();
      return;
    }

    v34 = fopen(__filename, "wb");
    *(v1 + 8) = v34;
    if (__filename)
    {
      MEMORY[0x2743DA520](__filename, 0x1000C8077774924);
    }

    if (!v34)
    {
      return;
    }
  }

  *(this + 32) = (*(**(this + 303) + 8))(*(this + 303));
  if (*(this + 2381) == 1 && !mkvmuxer::Cues::Write((this + 8), *(this + 304)))
  {
    return;
  }

  v35 = *(this + 305);
  if (!(*(*v35 + 24))(v35))
  {
    goto LABEL_166;
  }

  if (*(this + 12) == -1)
  {
    return;
  }

  v36 = *(this + 8);
  if (v36)
  {
    if (v36 >= 0x100)
    {
      if (v36 >= 0x10000)
      {
        v39 = HIBYTE(v36) == 0;
        v37 = 6;
        if (!v39)
        {
          v37 = 7;
        }
      }

      else
      {
        v37 = 5;
      }
    }

    else
    {
      v37 = 4;
    }

    v40 = *(this + 7);
    if (v40 >= 0x100)
    {
      if (v40 >= 0x10000)
      {
        if (v40 >> 24)
        {
          if (HIDWORD(v40))
          {
            if (v40 >> 40)
            {
              if (HIWORD(v40))
              {
                v39 = HIBYTE(v40) == 0;
                v41 = 10;
                if (!v39)
                {
                  v41 = 11;
                }
              }

              else
              {
                v41 = 9;
              }
            }

            else
            {
              v41 = 8;
            }
          }

          else
          {
            v41 = 7;
          }
        }

        else
        {
          v41 = 6;
        }
      }

      else
      {
        v41 = 5;
      }
    }

    else
    {
      v41 = 4;
    }

    v1 = v41 + v37;
    v38 = v41 + v37 + 3;
  }

  else
  {
    v38 = 0;
  }

  v42 = *(this + 9);
  if (v42)
  {
    if (v42 >= 0x100)
    {
      if (v42 >= 0x10000)
      {
        v39 = HIBYTE(v42) == 0;
        v43 = 6;
        if (!v39)
        {
          v43 = 7;
        }
      }

      else
      {
        v43 = 5;
      }
    }

    else
    {
      v43 = 4;
    }

    v44 = *(this + 8);
    if (v44 >= 0x100)
    {
      if (v44 >= 0x10000)
      {
        if (v44 >> 24)
        {
          if (HIDWORD(v44))
          {
            if (v44 >> 40)
            {
              if (HIWORD(v44))
              {
                v39 = HIBYTE(v44) == 0;
                v45 = 10;
                if (!v39)
                {
                  v45 = 11;
                }
              }

              else
              {
                v45 = 9;
              }
            }

            else
            {
              v45 = 8;
            }
          }

          else
          {
            v45 = 7;
          }
        }

        else
        {
          v45 = 6;
        }
      }

      else
      {
        v45 = 5;
      }
    }

    else
    {
      v45 = 4;
    }

    v2 = v45 + v43;
    v38 += v45 + v43 + 3;
  }

  v46 = *(this + 10);
  if (v46)
  {
    if (v46 >= 0x100)
    {
      if (v46 >= 0x10000)
      {
        v39 = HIBYTE(v46) == 0;
        v47 = 6;
        if (!v39)
        {
          v47 = 7;
        }
      }

      else
      {
        v47 = 5;
      }
    }

    else
    {
      v47 = 4;
    }

    v48 = *(this + 9);
    if (v48 >= 0x100)
    {
      if (v48 >= 0x10000)
      {
        if (v48 >> 24)
        {
          if (HIDWORD(v48))
          {
            if (v48 >> 40)
            {
              if (HIWORD(v48))
              {
                v39 = HIBYTE(v48) == 0;
                v49 = 10;
                if (!v39)
                {
                  v49 = 11;
                }
              }

              else
              {
                v49 = 9;
              }
            }

            else
            {
              v49 = 8;
            }
          }

          else
          {
            v49 = 7;
          }
        }

        else
        {
          v49 = 6;
        }
      }

      else
      {
        v49 = 5;
      }
    }

    else
    {
      v49 = 4;
    }

    v3 = v49 + v47;
    v38 += v49 + v47 + 3;
  }

  v50 = *(this + 11);
  if (v50)
  {
    if (v50 >= 0x100)
    {
      if (v50 >= 0x10000)
      {
        v39 = HIBYTE(v50) == 0;
        v51 = 6;
        if (!v39)
        {
          v51 = 7;
        }
      }

      else
      {
        v51 = 5;
      }
    }

    else
    {
      v51 = 4;
    }

    v52 = *(this + 10);
    if (v52 >= 0x100)
    {
      if (v52 >= 0x10000)
      {
        if (v52 >> 24)
        {
          if (HIDWORD(v52))
          {
            if (v52 >> 40)
            {
              if (HIWORD(v52))
              {
                v39 = HIBYTE(v52) == 0;
                v53 = 10;
                if (!v39)
                {
                  v53 = 11;
                }
              }

              else
              {
                v53 = 9;
              }
            }

            else
            {
              v53 = 8;
            }
          }

          else
          {
            v53 = 7;
          }
        }

        else
        {
          v53 = 6;
        }
      }

      else
      {
        v53 = 5;
      }
    }

    else
    {
      v53 = 4;
    }

    v4 = v53 + v51;
    v38 += v53 + v51 + 3;
  }

  v54 = *(this + 12);
  if (v54)
  {
    if (v54 >= 0x100)
    {
      if (v54 >= 0x10000)
      {
        v39 = HIBYTE(v54) == 0;
        v55 = 6;
        if (!v39)
        {
          v55 = 7;
        }
      }

      else
      {
        v55 = 5;
      }
    }

    else
    {
      v55 = 4;
    }

    v65 = *(this + 11);
    if (v65 >= 0x100)
    {
      if (v65 >= 0x10000)
      {
        if (v65 >> 24)
        {
          if (HIDWORD(v65))
          {
            if (v65 >> 40)
            {
              if (HIWORD(v65))
              {
                v39 = HIBYTE(v65) == 0;
                v66 = 10;
                if (!v39)
                {
                  v66 = 11;
                }
              }

              else
              {
                v66 = 9;
              }
            }

            else
            {
              v66 = 8;
            }
          }

          else
          {
            v66 = 7;
          }
        }

        else
        {
          v66 = 6;
        }
      }

      else
      {
        v66 = 5;
      }
    }

    else
    {
      v66 = 4;
    }

    v5 = v66 + v55;
    v38 += v66 + v55 + 3;
LABEL_210:
    v67 = (*(*v35 + 8))(v35);
    if ((*(*v35 + 16))(v35, *(this + 12)) || !mkvmuxer::WriteEbmlMasterElement(v35, 0x114D9B74uLL, v38) || *(this + 8) && (!mkvmuxer::WriteEbmlMasterElement(v35, 0x4DBBuLL, v1) || !mkvmuxer::WriteEbmlElement(v35, 0x53ABuLL, *(this + 8), 0) || !mkvmuxer::WriteEbmlElement(v35, 0x53ACuLL, *(this + 7), 0)))
    {
      return;
    }

    if (*(this + 9) && (!mkvmuxer::WriteEbmlMasterElement(v35, 0x4DBBuLL, v2) || !mkvmuxer::WriteEbmlElement(v35, 0x53ABuLL, *(this + 9), 0) || !mkvmuxer::WriteEbmlElement(v35, 0x53ACuLL, *(this + 8), 0)))
    {
      return;
    }

    if (*(this + 10) && (!mkvmuxer::WriteEbmlMasterElement(v35, 0x4DBBuLL, v3) || !mkvmuxer::WriteEbmlElement(v35, 0x53ABuLL, *(this + 10), 0) || !mkvmuxer::WriteEbmlElement(v35, 0x53ACuLL, *(this + 9), 0)))
    {
      return;
    }

    if (*(this + 11) && (!mkvmuxer::WriteEbmlMasterElement(v35, 0x4DBBuLL, v4) || !mkvmuxer::WriteEbmlElement(v35, 0x53ABuLL, *(this + 11), 0) || !mkvmuxer::WriteEbmlElement(v35, 0x53ACuLL, *(this + 10), 0)))
    {
      return;
    }

    if (*(this + 12) && (!mkvmuxer::WriteEbmlMasterElement(v35, 0x4DBBuLL, v5) || !mkvmuxer::WriteEbmlElement(v35, 0x53ABuLL, *(this + 12), 0) || !mkvmuxer::WriteEbmlElement(v35, 0x53ACuLL, *(this + 11), 0)))
    {
      return;
    }

    v68 = (*(*v35 + 8))(v35);
    if (!mkvmuxer::WriteVoidElement(v35, (*(this + 12) - v68 + 110)) || (*(*v35 + 16))(v35, v67))
    {
      return;
    }

    goto LABEL_166;
  }

  if (v38)
  {
    goto LABEL_210;
  }

LABEL_166:
  if ((*(**(this + 305) + 24))(*(this + 305)))
  {
    if (*(this + 300) == -1)
    {
      return;
    }

    v56 = mkvmuxer::Segment::MaxOffset(this);
    if (v56 < 1)
    {
      return;
    }

    v57 = v56;
    v58 = (*(**(this + 305) + 8))(*(this + 305));
    mkvmuxer::Segment::UpdateDocTypeVersion(this);
    if (*(this + 602) != *(this + 603))
    {
      if ((*(**(this + 305) + 16))(*(this + 305), 0))
      {
        return;
      }

      v64 = mkvmuxer::Segment::DocTypeIsWebm(this) ? "webm" : "matroska";
      if (!mkvmuxer::WriteEbmlHeader(*(this + 305), *(this + 602), v64, v63) || (*(**(this + 305) + 8))(*(this + 305)) != *(this + 597))
      {
        return;
      }

      *(this + 603) = *(this + 602);
    }

    if ((*(**(this + 305) + 16))(*(this + 305), *(this + 300)) || mkvmuxer::WriteUIntSize(*(this + 305), v57, 8u) || (*(**(this + 305) + 16))(*(this + 305), v58))
    {
      return;
    }
  }

  if (*(this + 240) == 1)
  {
    v59 = *(this + 28);
    if (v59)
    {
      v60 = *(this + 29);
      if (v60)
      {
        v61 = *(v59 + 8);
        if (v61 && *(v59 + 16) == 1)
        {
          fclose(v61);
          v60 = *(this + 29);
        }

        *(v59 + 8) = 0;
        v62 = *(v60 + 8);
        if (v62)
        {
          if (*(v60 + 16) == 1)
          {
            fclose(v62);
          }
        }

        *(v60 + 8) = 0;
      }
    }
  }
}

uint64_t mkvmuxer::Segment::WriteFramesAll(mkvmuxer::Segment *this)
{
  if (!*(this + 38))
  {
    return 0;
  }

  v2 = *(this + 69);
  if (v2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(*(this + 33) + 8 * v2 - 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(this + 79);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      v6 = *(this + 38);
      v7 = *(v6 + 8 * i);
      if (*(v7 + 10))
      {
        *(this + 602) = 4;
      }

      if (mkvmuxer::Cluster::QueueOrWriteFrame(v3, v7))
      {
        v8 = *(v6 + 8 * i);
        if (*(this + 2380) == 1 && (v9 = *(this + 36), v9 == v8[8]) && (v10 = mkvmuxer::Segment::AddCuePoint(this, v8[9], v9), v8 = *(v6 + 8 * i), (v10 & 1) == 0))
        {
          if (v8)
          {
LABEL_21:
            v14 = v8[5];
            if (v14)
            {
              MEMORY[0x2743DA520](v14, 0x1000C8077774924);
            }

            v15 = v8[1];
            if (v15)
            {
              MEMORY[0x2743DA520](v15, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v8, 0x1010C40E9B8B8EALL);
          }
        }

        else
        {
          v11 = v8[9];
          if (v11 > *(this + 42))
          {
            *(this + 42) = v11;
            *(this + v8[8] + 42) = v11;
          }

          v12 = v8[5];
          if (v12)
          {
            MEMORY[0x2743DA520](v12, 0x1000C8077774924);
          }

          v13 = v8[1];
          if (v13)
          {
            MEMORY[0x2743DA520](v13, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v8, 0x1010C40E9B8B8EALL);
          *(v6 + 8 * i) = 0;
        }
      }

      else
      {
        v8 = *(v6 + 8 * i);
        if (v8)
        {
          goto LABEL_21;
        }
      }

      result = *(this + 79);
    }
  }

  *(this + 79) = 0;
  return result;
}

uint64_t mkvmuxer::Segment::MaxOffset(mkvmuxer::Segment *this)
{
  v2 = *(this + 305);
  if (!v2)
  {
    return -1;
  }

  result = (*(*v2 + 8))(v2) - *(this + 299);
  if (*(this + 240) != 1)
  {
    return result;
  }

  v4 = *(this + 69);
  if (v4 >= 1)
  {
    v5 = *(this + 33);
    if (v4 == 1)
    {
      v6 = 0;
    }

    else
    {
      v7 = 0;
      v6 = v4 & 0x7FFFFFFE;
      v8 = v5 + 8;
      v9 = v6;
      do
      {
        result += *(*(v8 - 8) + 8) + 12;
        v7 += *(*v8 + 8) + 12;
        v8 += 16;
        v9 -= 2;
      }

      while (v9);
      result += v7;
      if (v6 == v4)
      {
        goto LABEL_13;
      }
    }

    v10 = v4 - v6;
    v11 = (v5 + 8 * v6);
    do
    {
      v12 = *v11++;
      result += *(v12 + 8) + 12;
      --v10;
    }

    while (v10);
  }

LABEL_13:
  v13 = *(this + 304);
  if (v13)
  {
    result += (*(*v13 + 8))(v13);
  }

  return result;
}

BOOL mkvmuxer::Segment::UpdateChunkName(mkvmuxer::Segment *this, const char *a2, char **a3)
{
  result = 0;
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a3)
    {
      snprintf(__str, 0x40uLL, "_%06d.%s", *(this + 50), a2);
      v6 = *(this + 31);
      v7 = strlen(v6);
      v8 = strlen(__str);
      v9 = operator new[](v7 + v8 + 1, MEMORY[0x277D826F0]);
      result = v9 != 0;
      if (v9)
      {
        v10 = strcpy(v9, v6);
        strcat(v10, __str);
        if (*a3)
        {
          MEMORY[0x2743DA520](*a3, 0x1000C8077774924);
        }

        *a3 = v9;
        return 1;
      }
    }
  }

  return result;
}

uint64_t mkvmuxer::Segment::UpdateDocTypeVersion(uint64_t this)
{
  v1 = *(this + 160);
  if (v1)
  {
    v2 = *(this + 152);
    if (v2)
    {
      do
      {
        v3 = *v2;
        if (!*v2)
        {
          break;
        }

        if ((*(v3 + 72) || *(v3 + 80)) && *(this + 2408) <= 3u)
        {
          *(this + 2408) = 4;
          return this;
        }

        ++v2;
        --v1;
      }

      while (v1);
    }
  }

  return this;
}

BOOL mkvmuxer::Segment::DocTypeIsWebm(mkvmuxer::Segment *this)
{
  v1 = *(this + 40);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v6 = *(*(this + 19) + 8 * v3);
      v7 = *(v6 + 8);
      if (!v7)
      {
        goto LABEL_89;
      }

      v8 = strlen(*(v6 + 8));
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_90;
      }

      if (v8 > 0x16)
      {
        operator new();
      }

      LOBYTE(__n) = v8;
      v9 = (&__s1 + v8);
      if (&__s1 <= v7 && v9 > v7)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v8)
      {
        memmove(&__s1, v7, v8);
      }

      *v9 = 0;
      v11 = __n;
      if ((__n & 0x8000000000000000) != 0)
      {
        break;
      }

      if (__n > 0x10u)
      {
        if (__n != 17)
        {
          if (__n == 18)
          {
            v5 = "D_WEBVTT/SUBTITLES";
          }

          else
          {
            if (__n != 21)
            {
              return v4;
            }

            v5 = "D_WEBVTT/DESCRIPTIONS";
          }

          goto LABEL_4;
        }

        if (memcmp(&__s1, "D_WEBVTT/CAPTIONS", __n))
        {
          v5 = "D_WEBVTT/METADATA";
LABEL_4:
          if (memcmp(&__s1, v5, v11))
          {
            return v4;
          }
        }
      }

      else
      {
        if (__n != 5)
        {
          if (__n == 6)
          {
            v5 = "A_OPUS";
          }

          else
          {
            if (__n != 8)
            {
              return v4;
            }

            v5 = "A_VORBIS";
          }

          goto LABEL_4;
        }

        if (memcmp(&__s1, "V_AV1", __n) && memcmp(&__s1, "V_VP8", v11))
        {
          v5 = "V_VP9";
          goto LABEL_4;
        }
      }

LABEL_5:
      v4 = ++v3 >= v1;
      if (v1 == v3)
      {
        return 1;
      }
    }

    if (v28 <= 16)
    {
      if (v28 != 5)
      {
        if (v28 != 6)
        {
          if (v28 != 8 || *__s1 != 0x534942524F565F41)
          {
            goto LABEL_88;
          }

          goto LABEL_85;
        }

        v16 = __s1[2];
        v17 = *__s1 == 1347379009;
        v18 = 21333;
LABEL_71:
        if (!v17 || v16 != v18)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      }

      if ((*__s1 != 1447124822 || *(__s1 + 4) != 49) && (*__s1 != 1347837782 || *(__s1 + 4) != 56))
      {
        v16 = *(__s1 + 4);
        v17 = *__s1 == 1347837782;
        v18 = 57;
        goto LABEL_71;
      }

LABEL_85:
      operator delete(__s1);
      goto LABEL_5;
    }

    switch(v28)
    {
      case 17:
        if (*__s1 == 0x5454564245575F44 && *(__s1 + 1) == 0x4E4F49545041432FLL && *(__s1 + 16) == 83)
        {
          goto LABEL_85;
        }

        v21 = *(__s1 + 16);
        v22 = *__s1 == 0x5454564245575F44 && *(__s1 + 1) == 0x5441444154454D2FLL;
        v23 = 65;
        break;
      case 18:
        v21 = __s1[8];
        v22 = *__s1 == 0x5454564245575F44 && *(__s1 + 1) == 0x4C5449544255532FLL;
        v23 = 21317;
        break;
      case 21:
        v12 = *__s1 == 0x5454564245575F44 && *(__s1 + 1) == 0x504952435345442FLL;
        if (!v12 || *(__s1 + 13) != 0x534E4F4954504952)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      default:
        goto LABEL_88;
    }

    if (!v22 || v21 != v23)
    {
LABEL_88:
      operator delete(__s1);
      return v4;
    }

    goto LABEL_85;
  }

  return 1;
}

char *mkvmuxer::Segment::AddVideoTrack(mkvmuxer::Segment *this, int a2, int a3, unsigned int a4)
{
  result = operator new(0xF8uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    v9 = result;
    *result = &unk_2882A8330;
    *(result + 8) = 0u;
    v10 = (result + 8);
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 7) = 0;
    v11 = 16 * rand_r(this);
    v12 = v11 & 0xFFFFFF00 | (rand_r(this) >> 4);
    v13 = (16 * rand_r(this)) & 0xFF00 | (v12 << 16);
    v14 = v13 & 0xFFFFFF00 | (rand_r(this) >> 4);
    v15 = (16 * rand_r(this)) & 0xFF00 | (v14 << 16);
    v16 = v15 | (rand_r(this) >> 4);
    v17 = rand_r(this);
    *(v9 + 72) = 0u;
    *(v9 + 88) = 0u;
    *(v9 + 100) = 0u;
    *v9 = &unk_2882A8370;
    *(v9 + 120) = 0u;
    *(v9 + 136) = 0u;
    *(v9 + 152) = 0u;
    *(v9 + 168) = 0u;
    *(v9 + 184) = 0u;
    *(v9 + 200) = 0u;
    *(v9 + 216) = 0u;
    *(v9 + 232) = 0u;
    *(v9 + 7) = 1;
    *(v9 + 8) = (v17 >> 4) | (v16 << 8);
    if (*v10)
    {
      MEMORY[0x2743DA520](*v10, 0x1000C8077774924);
    }

    v18 = operator new[](6uLL, MEMORY[0x277D826F0]);
    *v10 = v18;
    if (v18)
    {
      strcpy(v18, "V_VP8");
    }

    *(v9 + 27) = a2;
    *(v9 + 24) = a3;
    if (mkvmuxer::Tracks::AddTrack((this + 152), v9, a4))
    {
      *(this + 320) = 1;
      return *(v9 + 6);
    }

    else
    {
      (*(*v9 + 8))(v9);
      return 0;
    }
  }

  return result;
}

uint64_t mkvmuxer::Segment::AddCuePoint(mkvmuxer::Segment *this, unint64_t a2, uint64_t a3)
{
  v3 = *(this + 69);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = *(*(this + 33) + 8 * v3 - 8);
  if (v5)
  {
    result = operator new(0x28uLL, MEMORY[0x277D826F0]);
    if (!result)
    {
      return result;
    }

    *(result + 32) = 1;
    v9 = a2 / *(this + 15);
    v10 = *v5;
    *(result + 16) = *(v5 + 2);
    *(result + 24) = v10;
    *result = v9;
    *(result + 8) = a3;
    v11 = *(this + 2);
    v12 = *(this + 3);
    if (v12 < v11)
    {
      v13 = *(this + 2);
LABEL_27:
      *(result + 32) = *(this + 24);
      *(this + 3) = v12 + 1;
      *&v13[8 * v12] = result;
      *(this + 2380) = 0;
      return 1;
    }

    if (v11)
    {
      v14 = 2 * v11;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 1)
    {
      v15 = result;
      v13 = operator new[](8 * v14, MEMORY[0x277D826F0]);
      result = v15;
      if (v13)
      {
        v16 = v15;
        v17 = *(this + 2);
        if (v12 < 1)
        {
          if (!v17)
          {
LABEL_26:
            *(this + 2) = v13;
            *(this + 2) = v14;
            result = v16;
            goto LABEL_27;
          }
        }

        else
        {
          v18 = 0;
          if (v12 < 4)
          {
            goto LABEL_18;
          }

          if (&v13[-v17] <= 0x1F)
          {
            goto LABEL_18;
          }

          v18 = v12 & 0x7FFFFFFC;
          v19 = (v17 + 16);
          v20 = v13 + 16;
          v21 = v18;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 4;
          }

          while (v21);
          if (v18 != v12)
          {
LABEL_18:
            v23 = v12 - v18;
            v24 = 8 * v18;
            v25 = &v13[8 * v18];
            v26 = (v17 + v24);
            do
            {
              v27 = *v26++;
              *v25 = v27;
              v25 += 8;
              --v23;
            }

            while (v23);
          }
        }

        MEMORY[0x2743DA520]();
        v16 = v15;
        LODWORD(v12) = *(this + 3);
        goto LABEL_26;
      }
    }

    MEMORY[0x2743DA540](result, 0x1000C4074F221ECLL);
  }

  return 0;
}

char *mkvmuxer::Segment::AddAudioTrack(mkvmuxer::Segment *this, int a2, int a3, unsigned int a4)
{
  result = operator new(0x90uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    v9 = result;
    *result = &unk_2882A8330;
    *(result + 8) = 0u;
    v10 = (result + 8);
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 7) = 0;
    v11 = 16 * rand_r(this);
    v12 = v11 & 0xFFFFFF00 | (rand_r(this) >> 4);
    v13 = (16 * rand_r(this)) & 0xFF00 | (v12 << 16);
    v14 = v13 & 0xFFFFFF00 | (rand_r(this) >> 4);
    v15 = (16 * rand_r(this)) & 0xFF00 | (v14 << 16);
    v16 = v15 | (rand_r(this) >> 4);
    v17 = rand_r(this);
    *(v9 + 72) = 0u;
    *(v9 + 88) = 0u;
    *(v9 + 100) = 0u;
    *v9 = &unk_2882A83B0;
    *(v9 + 120) = xmmword_273B92130;
    *(v9 + 17) = 0;
    *(v9 + 7) = 2;
    *(v9 + 8) = (v17 >> 4) | (v16 << 8);
    if (*v10)
    {
      MEMORY[0x2743DA520](*v10, 0x1000C8077774924);
    }

    v18 = operator new[](9uLL, MEMORY[0x277D826F0]);
    *v10 = v18;
    if (v18)
    {
      strcpy(v18, "A_VORBIS");
    }

    *(v9 + 17) = a2;
    *(v9 + 16) = a3;
    if (mkvmuxer::Tracks::AddTrack((this + 152), v9, a4))
    {
      return *(v9 + 6);
    }

    else
    {
      (*(*v9 + 8))(v9);
      return 0;
    }
  }

  return result;
}

uint64_t mkvmuxer::Segment::AddFrame(mkvmuxer::Segment *this, const unsigned __int8 *a2, size_t __sz, uint64_t a4, unint64_t a5, char a6)
{
  if (!a2)
  {
    return 0;
  }

  v158 = 0;
  v159 = 0;
  v155 = 0u;
  v156 = 0u;
  v157 = 0;
  v160 = 0u;
  memset(v161, 0, 25);
  v12 = operator new[](__sz, MEMORY[0x277D826F0]);
  if (!v12)
  {
    v17 = 0;
    goto LABEL_120;
  }

  v158 = v12;
  *&v160 = __sz;
  memcpy(v12, a2, __sz);
  *(&v160 + 1) = a4;
  *&v161[0] = a5;
  v159 = a6;
  if (*(this + 321))
  {
    goto LABEL_4;
  }

  v18 = *(this + 40);
  if (v18)
  {
    v19 = *(this + 19);
    if (v19)
    {
      do
      {
        v20 = *v19;
        if (!*v19)
        {
          break;
        }

        if ((*(v20 + 72) || *(v20 + 80)) && *(this + 602) <= 3u)
        {
          *(this + 602) = 4;
          break;
        }

        ++v19;
        --v18;
      }

      while (v18);
    }
  }

  if (mkvmuxer::Segment::DocTypeIsWebm(this))
  {
    v55 = "webm";
  }

  else
  {
    v55 = "matroska";
  }

  if (!mkvmuxer::WriteEbmlHeader(*(this + 305), *(this + 602), v55, v54))
  {
    goto LABEL_117;
  }

  *(this + 603) = *(this + 602);
  *(this + 597) = (*(**(this + 305) + 8))(*(this + 305));
  v17 = *(this + 305);
  if (!v17)
  {
    goto LABEL_118;
  }

  v56 = (*(*v17 + 8))(*(this + 305));
  (*(*v17 + 32))(v17, 408125543, v56);
  v162 = 24;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = 83;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = 0x80;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = 103;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  *(this + 300) = (*(**(this + 305) + 8))(*(this + 305));
  v17 = *(this + 305);
  if (!v17)
  {
    goto LABEL_118;
  }

  v162 = 1;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = -1;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = -1;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = -1;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = -1;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = -1;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = -1;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  v162 = -1;
  if (((**v17)(v17, &v162, 1) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  *(this + 299) = (*(**(this + 305) + 8))(*(this + 305));
  if (*(this + 594) == 2)
  {
    if ((*(**(this + 305) + 24))(*(this + 305)))
    {
      *(this + 13) = 0x3FF0000000000000;
      if (!mkvmuxer::SeekHead::Write((this + 32), *(this + 305)))
      {
        goto LABEL_117;
      }
    }
  }

  v154 = (this + 32);
  v57 = *(this + 305);
  if (!v57)
  {
    v58 = -1;
    goto LABEL_131;
  }

  v58 = (*(*v57 + 8))(v57) - *(this + 299);
  if (*(this + 240) != 1)
  {
    goto LABEL_131;
  }

  v59 = *(this + 69);
  if (v59 >= 1)
  {
    v60 = *(this + 33);
    if (v59 == 1)
    {
      v61 = 0;
LABEL_127:
      v77 = v59 - v61;
      v78 = (v60 + 8 * v61);
      do
      {
        v79 = *v78++;
        v58 += *(v79 + 8) + 12;
        --v77;
      }

      while (v77);
      goto LABEL_129;
    }

    v74 = 0;
    v61 = v59 & 0x7FFFFFFE;
    v75 = v60 + 8;
    v76 = v61;
    do
    {
      v58 += *(*(v75 - 8) + 8) + 12;
      v74 += *(*v75 + 8) + 12;
      v75 += 16;
      v76 -= 2;
    }

    while (v76);
    v58 += v74;
    if (v61 != v59)
    {
      goto LABEL_127;
    }
  }

LABEL_129:
  v80 = *(this + 304);
  if (v80)
  {
    v58 += (*(*v80 + 8))(v80);
  }

LABEL_131:
  if (*v154)
  {
    if (*(this + 9))
    {
      if (*(this + 10))
      {
        if (*(this + 11))
        {
          if (*(this + 12))
          {
            goto LABEL_117;
          }

          v81 = 4;
        }

        else
        {
          v81 = 3;
        }
      }

      else
      {
        v81 = 2;
      }
    }

    else
    {
      v81 = 1;
    }
  }

  else
  {
    v81 = 0;
  }

  v154[v81] = 357149030;
  v153 = this + 56;
  *(this + v81 + 7) = v58;
  v17 = *(this + 305);
  if (!v17)
  {
    goto LABEL_118;
  }

  v82 = *(this + 14);
  if (!v82)
  {
    goto LABEL_117;
  }

  v83 = *(this + 16);
  if (!v83)
  {
    goto LABEL_117;
  }

  v84 = *(this + 15);
  if (v84 >= 0x100)
  {
    if (v84 >= 0x10000)
    {
      if (v84 >> 24)
      {
        if (HIDWORD(v84))
        {
          if (v84 >> 40)
          {
            if (HIWORD(v84))
            {
              v86 = HIBYTE(v84) == 0;
              v85 = 11;
              if (!v86)
              {
                v85 = 12;
              }
            }

            else
            {
              v85 = 10;
            }
          }

          else
          {
            v85 = 9;
          }
        }

        else
        {
          v85 = 8;
        }
      }

      else
      {
        v85 = 7;
      }
    }

    else
    {
      v85 = 6;
    }
  }

  else
  {
    v85 = 5;
  }

  if (*(this + 13) > 0.0)
  {
    v85 += 7;
  }

  v87 = *(this + 17) == 0x8000000000000000 ? v85 : v85 + 11;
  v88 = strlen(v82);
  v89 = v88;
  if (v88 >= 0x7F)
  {
    if (v88 >= 0x3FFF)
    {
      if (v88 >= 0x1FFFFF)
      {
        if (v88 >= 0xFFFFFFF)
        {
          if (v88 >= 0x7FFFFFFFFLL)
          {
            if (v88 >= 0x3FFFFFFFFFFLL)
            {
              v90 = v88 < 0x1FFFFFFFFFFFFLL ? 7 : 8;
            }

            else
            {
              v90 = 6;
            }
          }

          else
          {
            v90 = 5;
          }
        }

        else
        {
          v90 = 4;
        }
      }

      else
      {
        v90 = 3;
      }
    }

    else
    {
      v90 = 2;
    }
  }

  else
  {
    v90 = 1;
  }

  v91 = strlen(v83);
  if (v91 >= 0x7F)
  {
    if (v91 >= 0x3FFF)
    {
      if (v91 >= 0x1FFFFF)
      {
        if (v91 >= 0xFFFFFFF)
        {
          if (v91 >= 0x7FFFFFFFFLL)
          {
            if (v91 >= 0x3FFFFFFFFFFLL)
            {
              v92 = 7;
              if (v91 >= 0x1FFFFFFFFFFFFLL)
              {
                v92 = 8;
              }
            }

            else
            {
              v92 = 6;
            }
          }

          else
          {
            v92 = 5;
          }
        }

        else
        {
          v92 = 4;
        }
      }

      else
      {
        v92 = 3;
      }
    }

    else
    {
      v92 = 2;
    }
  }

  else
  {
    v92 = 1;
  }

  v93 = v89 + v87 + v90 + v91 + v92 + 4;
  if (!mkvmuxer::WriteEbmlMasterElement(v17, 0x1549A966uLL, v93))
  {
    goto LABEL_117;
  }

  v94 = (*(*v17 + 8))(v17);
  if (v94 < 0)
  {
    goto LABEL_117;
  }

  v95 = v94;
  if (!mkvmuxer::WriteEbmlElement(v17, 0x2AD7B1uLL, *(this + 15), 0))
  {
    goto LABEL_117;
  }

  if (*(this + 13) > 0.0)
  {
    *(this + 18) = (*(*v17 + 8))(v17);
    v97 = *(this + 13);
    if (!mkvmuxer::WriteEbmlElement(v17, 0x4489uLL, v97))
    {
      goto LABEL_117;
    }
  }

  v98 = *(this + 17);
  if (v98 != 0x8000000000000000)
  {
    mkvmuxer::WriteEbmlDateElement(v17, 0x4461uLL, v98);
  }

  if (!mkvmuxer::WriteEbmlElement(v17, 0x4D80uLL, *(this + 14), v96) || !mkvmuxer::WriteEbmlElement(v17, 0x5741uLL, *(this + 16), v99))
  {
    goto LABEL_117;
  }

  v100 = (*(*v17 + 8))(v17);
  v17 = 0;
  if (v100 < 0 || v100 - v95 != v93)
  {
    goto LABEL_118;
  }

  v101 = *(this + 305);
  if (!v101)
  {
    v102 = -1;
    goto LABEL_216;
  }

  v102 = (*(*v101 + 8))(v101) - *(this + 299);
  if (*(this + 240) != 1)
  {
    goto LABEL_216;
  }

  v103 = *(this + 69);
  if (v103 >= 1)
  {
    v104 = *(this + 33);
    if (v103 == 1)
    {
      v105 = 0;
LABEL_212:
      v109 = v103 - v105;
      v110 = (v104 + 8 * v105);
      do
      {
        v111 = *v110++;
        v102 += *(v111 + 8) + 12;
        --v109;
      }

      while (v109);
      goto LABEL_214;
    }

    v106 = 0;
    v105 = v103 & 0x7FFFFFFE;
    v107 = v104 + 8;
    v108 = v105;
    do
    {
      v102 += *(*(v107 - 8) + 8) + 12;
      v106 += *(*v107 + 8) + 12;
      v107 += 16;
      v108 -= 2;
    }

    while (v108);
    v102 += v106;
    if (v105 != v103)
    {
      goto LABEL_212;
    }
  }

LABEL_214:
  v112 = *(this + 304);
  if (v112)
  {
    v102 += (*(*v112 + 8))(v112);
  }

LABEL_216:
  if (*v154)
  {
    if (*(this + 9))
    {
      if (*(this + 10))
      {
        if (*(this + 11))
        {
          if (*(this + 12))
          {
            goto LABEL_117;
          }

          v113 = 4;
        }

        else
        {
          v113 = 3;
        }
      }

      else
      {
        v113 = 2;
      }
    }

    else
    {
      v113 = 1;
    }
  }

  else
  {
    v113 = 0;
  }

  v154[v113] = 374648427;
  *&v153[8 * v113] = v102;
  v114 = *(this + 305);
  v115 = *(this + 40);
  if (v115 >= 1)
  {
    v116 = 0;
    v117 = 0;
    while (1)
    {
      v118 = *(this + 19);
      if (!v118)
      {
        goto LABEL_117;
      }

      if (v116 >= *(this + 40))
      {
        goto LABEL_117;
      }

      v119 = *(v118 + 8 * v116);
      if (!v119)
      {
        goto LABEL_117;
      }

      v117 += (*(*v119 + 32))(v119);
      if (v115 == ++v116)
      {
        goto LABEL_234;
      }
    }
  }

  v117 = 0;
LABEL_234:
  if (!mkvmuxer::WriteEbmlMasterElement(v114, 0x1654AE6BuLL, v117) || (v120 = (*(*v114 + 8))(v114), v120 < 0))
  {
LABEL_117:
    v17 = 0;
    goto LABEL_118;
  }

  v121 = v120;
  if (v115 >= 1)
  {
    v122 = 0;
    do
    {
      v123 = *(*(this + 19) + 8 * v122);
      if (((*(*v123 + 40))(v123, v114) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    while (v115 != ++v122);
  }

  v124 = (*(*v114 + 8))(v114);
  v17 = 0;
  if (v124 < 0 || v124 - v121 != v117)
  {
    goto LABEL_118;
  }

  *(this + 164) = 1;
  if (*(this + 43) >= 1)
  {
    v125 = mkvmuxer::Segment::MaxOffset(this);
    if (*(this + 8))
    {
      if (*(this + 9))
      {
        if (*(this + 10))
        {
          if (*(this + 11))
          {
            if (*(this + 12))
            {
              goto LABEL_117;
            }

            v126 = 4;
          }

          else
          {
            v126 = 3;
          }
        }

        else
        {
          v126 = 2;
        }
      }

      else
      {
        v126 = 1;
      }
    }

    else
    {
      v126 = 0;
    }

    v154[v126] = 272869232;
    *&v153[8 * v126] = v125;
    if (!mkvmuxer::Chapters::Write((this + 168), *(this + 305)))
    {
      goto LABEL_117;
    }
  }

  if (*(this + 47) >= 1)
  {
    v127 = mkvmuxer::Segment::MaxOffset(this);
    if (*(this + 8))
    {
      if (*(this + 9))
      {
        if (*(this + 10))
        {
          if (*(this + 11))
          {
            if (*(this + 12))
            {
              goto LABEL_117;
            }

            v128 = 4;
          }

          else
          {
            v128 = 3;
          }
        }

        else
        {
          v128 = 2;
        }
      }

      else
      {
        v128 = 1;
      }
    }

    else
    {
      v128 = 0;
    }

    v154[v128] = 307544935;
    *&v153[8 * v128] = v127;
    if (!mkvmuxer::Tags::Write((this + 184), *(this + 305)))
    {
      goto LABEL_117;
    }
  }

  if (*(this + 240) == 1 && (*(this + 594) == 1 || ((*(**(this + 305) + 24))(*(this + 305)) & 1) == 0))
  {
    v17 = *(this + 29);
    if (!v17)
    {
      goto LABEL_118;
    }

    v129 = *(v17 + 8);
    if (v129 && *(v17 + 16) == 1)
    {
      fclose(v129);
    }

    *(v17 + 8) = 0;
  }

  *(this + 321) = 1;
  v130 = *(this + 305);
  if (v130)
  {
    v131 = (*(*v130 + 8))(v130) - *(this + 299);
    if (*(this + 240) == 1)
    {
      v132 = *(this + 69);
      if (v132 < 1)
      {
        goto LABEL_285;
      }

      v133 = *(this + 33);
      if (v132 == 1)
      {
        v134 = 0;
      }

      else
      {
        v135 = 0;
        v134 = v132 & 0x7FFFFFFE;
        v136 = v133 + 8;
        v137 = v134;
        do
        {
          v131 += *(*(v136 - 8) + 8) + 12;
          v135 += *(*v136 + 8) + 12;
          v136 += 16;
          v137 -= 2;
        }

        while (v137);
        v131 += v135;
        if (v134 == v132)
        {
LABEL_285:
          v141 = *(this + 304);
          if (v141)
          {
            v131 += (*(*v141 + 8))(v141);
          }

          goto LABEL_287;
        }
      }

      v138 = v132 - v134;
      v139 = (v133 + 8 * v134);
      do
      {
        v140 = *v139++;
        v131 += *(v140 + 8) + 12;
        --v138;
      }

      while (v138);
      goto LABEL_285;
    }
  }

  else
  {
    v131 = -1;
  }

LABEL_287:
  if (*v154)
  {
    if (*(this + 9))
    {
      if (*(this + 10))
      {
        if (*(this + 11))
        {
          if (*(this + 12))
          {
            goto LABEL_117;
          }

          v142 = 4;
        }

        else
        {
          v142 = 3;
        }
      }

      else
      {
        v142 = 2;
      }
    }

    else
    {
      v142 = 1;
    }
  }

  else
  {
    v142 = 0;
  }

  v154[v142] = 524531317;
  *&v153[8 * v142] = v131;
  if (*(this + 2381) == 1 && !*(this + 36))
  {
    v143 = *(this + 40);
    if (!v143)
    {
      goto LABEL_117;
    }

    v144 = *(this + 19);
    if (!v144)
    {
      goto LABEL_117;
    }

    v145 = 0;
    while (1)
    {
      v146 = v144[v145];
      if (!v146)
      {
        goto LABEL_117;
      }

      v147 = *(v146 + 48);
      v148 = *v144;
      v149 = *(*v144 + 48);
      v150 = *v144;
      if (v149 != v147)
      {
        v151 = v144 + 1;
        do
        {
          v152 = *v151++;
          v150 = v152;
        }

        while (*(v152 + 48) != v147);
      }

      if (*(v150 + 56) == 1)
      {
        break;
      }

      if (++v145 == v143)
      {
        goto LABEL_310;
      }
    }

    *(this + 36) = v147;
    if (!v147)
    {
LABEL_310:
      if (!v148)
      {
        goto LABEL_117;
      }

      *(this + 36) = v149;
    }
  }

LABEL_4:
  if (*(this + 42) > a5)
  {
    goto LABEL_117;
  }

  v13 = *(this + 40);
  if (v13 < 1)
  {
    goto LABEL_117;
  }

  v14 = 0;
  v15 = *(this + 19);
  v16 = 8 * v13;
  while (*(v15[v14 / 8] + 48) != a4)
  {
    v14 += 8;
    if (v16 == v14)
    {
      goto LABEL_117;
    }
  }

  v21 = *(this + 69);
  if (v21 >= 1 && a5 / *(this + 15) - *(*(*(this + 33) + 8 * v21 - 8) + 32) >= 0x8000)
  {
    *(this + 296) = 1;
  }

  if (*(this + 320) == 1)
  {
    v22 = *v15;
    if (*(*v15 + 48) != a4)
    {
      v23 = v15 + 1;
      do
      {
        v24 = *v23++;
        v22 = v24;
      }

      while (*(v24 + 48) != a4);
    }

    if (*(v22 + 56) == 2 && (*(this + 296) & 1) == 0)
    {
      v70 = operator new(0x68uLL, MEMORY[0x277D826F0]);
      if (v70)
      {
        v65 = v70;
        *(v70 + 5) = 0;
        *(v70 + 48) = 0;
        *v70 = 0u;
        v70[1] = 0u;
        *(v70 + 32) = 0;
        *(v70 + 56) = 0u;
        *(v70 + 72) = 0u;
        *(v70 + 81) = 0u;
        if (mkvmuxer::Frame::CopyFrom(v70, &v155) & 1) != 0 && (mkvmuxer::Segment::QueueFrame(this, v65))
        {
          ++*(this + a4 + 168);
          goto LABEL_109;
        }

LABEL_116:
        mkvmuxer::Frame::~Frame(v65);
        MEMORY[0x2743DA540]();
        goto LABEL_117;
      }

      goto LABEL_117;
    }
  }

  if (a6)
  {
    while (1)
    {
      if (*(this + 296))
      {
        goto LABEL_31;
      }

      v29 = *(this + 69);
      if (v29 < 1)
      {
        goto LABEL_31;
      }

      v30 = *(this + 15);
      v31 = *(*(this + 33) + 8 * v29 - 8);
      v32 = *(v31 + 32);
      v33 = a5 / v30 - v32;
      if (a5 / v30 < v32)
      {
        goto LABEL_117;
      }

      if (v33 >= 0x8000)
      {
        v25 = 0;
        *(this + 296) = 0;
        mkvmuxer::Segment::MakeNewCluster(this, a5);
        if (!v34)
        {
          goto LABEL_117;
        }

        goto LABEL_32;
      }

      v35 = *(this + 19);
      v36 = *v35;
      if (*(*v35 + 48) != a4)
      {
        v37 = v35 + 1;
        do
        {
          v38 = *v37++;
          v36 = v38;
        }

        while (*(v38 + 48) != a4);
      }

      if (*(v36 + 56) == 1 || *(this + 295) - 1 < v33 * v30)
      {
LABEL_31:
        v25 = 1;
        *(this + 296) = 0;
        mkvmuxer::Segment::MakeNewCluster(this, a5);
        if (!v26)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v39 = *(v31 + 8);
        v40 = *(this + 296) - 1;
        *(this + 296) = 0;
        if (v40 >= v39)
        {
          goto LABEL_110;
        }

        v25 = 1;
        mkvmuxer::Segment::MakeNewCluster(this, a5);
        if (!v41)
        {
          goto LABEL_117;
        }
      }

LABEL_32:
      v27 = mkvmuxer::Segment::WriteFramesAll(this);
      if (v27 < 0)
      {
        v28 = 1;
      }

      else
      {
        v28 = v25;
      }

      if (v28)
      {
        goto LABEL_92;
      }
    }
  }

  while (1)
  {
    if ((*(this + 296) & 1) == 0)
    {
      v45 = *(this + 69);
      if (v45 >= 1)
      {
        v46 = *(this + 15);
        v47 = *(*(this + 33) + 8 * v45 - 8);
        v48 = *(v47 + 32);
        v49 = a5 / v46 - v48;
        if (a5 / v46 < v48)
        {
          goto LABEL_117;
        }

        if (v49 >= 0x8000)
        {
          v42 = 0;
          *(this + 296) = 0;
          mkvmuxer::Segment::MakeNewCluster(this, a5);
          if (!v50)
          {
            goto LABEL_117;
          }

          goto LABEL_51;
        }

        if (*(this + 295) - 1 >= v49 * v46)
        {
          break;
        }
      }
    }

    v42 = 1;
    *(this + 296) = 0;
    mkvmuxer::Segment::MakeNewCluster(this, a5);
    if (!v43)
    {
      goto LABEL_117;
    }

LABEL_51:
    v27 = mkvmuxer::Segment::WriteFramesAll(this);
    if (v27 < 0)
    {
      v44 = 1;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
LABEL_92:
      if (v27 < 0)
      {
        goto LABEL_117;
      }

      goto LABEL_93;
    }
  }

  v51 = *(v47 + 8);
  v52 = *(this + 296) - 1;
  *(this + 296) = 0;
  if (v52 < v51)
  {
    v42 = 1;
    mkvmuxer::Segment::MakeNewCluster(this, a5);
    if (!v53)
    {
      goto LABEL_117;
    }

    goto LABEL_51;
  }

LABEL_110:
  if ((mkvmuxer::Segment::WriteFramesAll(this) & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

LABEL_93:
  v62 = *(this + 69);
  if (v62 < 1)
  {
    goto LABEL_117;
  }

  v63 = *(*(this + 33) + 8 * v62 - 8);
  if (!v63)
  {
    goto LABEL_117;
  }

  if ((*(&v155 + 1) || *(&v156 + 1)) && (v159 & 1) == 0 && (BYTE8(v161[1]) & 1) == 0)
  {
    v71 = *(*(this + 33) + 8 * v62 - 8);
    v72 = operator new(0x68uLL, MEMORY[0x277D826F0]);
    if (v72)
    {
      v65 = v72;
      *(v72 + 5) = 0;
      *(v72 + 48) = 0;
      *v72 = 0u;
      v72[1] = 0u;
      *(v72 + 32) = 0;
      *(v72 + 56) = 0u;
      *(v72 + 72) = 0u;
      *(v72 + 81) = 0u;
      if (mkvmuxer::Frame::CopyFrom(v72, &v155))
      {
        v65[11] = *(this + *(&v160 + 1) + 42);
        v64 = 1;
        *(v65 + 96) = 1;
        if (mkvmuxer::Cluster::QueueOrWriteFrame(v71, v65))
        {
          goto LABEL_100;
        }

        goto LABEL_117;
      }

      goto LABEL_116;
    }

    goto LABEL_117;
  }

  v64 = 0;
  v65 = &v155;
  if (!mkvmuxer::Cluster::QueueOrWriteFrame(v63, &v155))
  {
    goto LABEL_117;
  }

LABEL_100:
  if (*(this + 2380) == 1)
  {
    v66 = *(this + 36);
    if (v66 == v65[8] && !mkvmuxer::Segment::AddCuePoint(this, v65[9], v66))
    {
      goto LABEL_117;
    }
  }

  v68 = v65[8];
  v67 = v65[9];
  *(this + 42) = v67;
  v69 = this + 8 * v68;
  *(v69 + 42) = v67;
  *(this + 41) = v65[3];
  ++*(v69 + 168);
  if (v64)
  {
    mkvmuxer::Frame::~Frame(v65);
    MEMORY[0x2743DA540]();
  }

LABEL_109:
  v17 = 1;
LABEL_118:
  if (v158)
  {
    MEMORY[0x2743DA520](v158, 0x1000C8077774924);
  }

LABEL_120:
  if (*(&v155 + 1))
  {
    MEMORY[0x2743DA520](*(&v155 + 1), 0x1000C8077774924);
  }

  return v17;
}

uint64_t mkvmuxer::Segment::QueueFrame(mkvmuxer::Segment *this, mkvmuxer::Frame *a2)
{
  v4 = *(this + 79);
  v5 = *(this + 78);
  if (v4 < v5)
  {
    v6 = *(this + 38);
LABEL_22:
    *(this + 79) = v4 + 1;
    *(v6 + 8 * v4) = a2;
    return 1;
  }

  if (v5)
  {
    v7 = 2 * v5;
  }

  else
  {
    v7 = 2;
  }

  if (v7 < 1)
  {
    return 0;
  }

  result = operator new[](8 * v7, MEMORY[0x277D826F0]);
  if (result)
  {
    v6 = result;
    v9 = *(this + 38);
    if (v4 < 1)
    {
      if (!v9)
      {
LABEL_21:
        *(this + 38) = v6;
        *(this + 78) = v7;
        goto LABEL_22;
      }
    }

    else
    {
      v10 = 0;
      if (v4 < 4)
      {
        goto LABEL_14;
      }

      if ((v6 - v9) <= 0x1F)
      {
        goto LABEL_14;
      }

      v10 = v4 & 0x7FFFFFFC;
      v11 = (v9 + 16);
      v12 = (v6 + 16);
      v13 = v10;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v10 != v4)
      {
LABEL_14:
        v15 = v4 - v10;
        v16 = 8 * v10;
        v17 = (v6 + 8 * v10);
        v18 = (v9 + v16);
        do
        {
          v19 = *v18++;
          *v17++ = v19;
          --v15;
        }

        while (v15);
      }
    }

    MEMORY[0x2743DA520]();
    LODWORD(v4) = *(this + 79);
    goto LABEL_21;
  }

  return result;
}

uint64_t mkvmuxer::Segment::GetTrackByNumber(mkvmuxer::Segment *this, uint64_t a2)
{
  v2 = *(this + 40);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *(this + 19); ; i += 8)
  {
    result = *i;
    if (*(*i + 48) == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

void mkvmuxer::Segment::MakeNewCluster(mkvmuxer::Segment *this, unint64_t a2)
{
  v4 = *(this + 69);
  v5 = *(this + 68);
  if (v4 >= v5)
  {
    if (v5 < 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * v5;
    }

    v7 = operator new[](8 * v6, MEMORY[0x277D826F0]);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = *(this + 33);
    if (v4 < 1)
    {
      if (!v9)
      {
LABEL_17:
        *(this + 33) = v8;
        *(this + 68) = v6;
        goto LABEL_18;
      }
    }

    else
    {
      v10 = 0;
      if (v4 < 4)
      {
        goto LABEL_12;
      }

      if (&v8[-v9] <= 0x1F)
      {
        goto LABEL_12;
      }

      v10 = v4 & 0x7FFFFFFC;
      v11 = (v9 + 16);
      v12 = v8 + 16;
      v13 = v10;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v10 != v4)
      {
LABEL_12:
        v15 = v4 - v10;
        v16 = 8 * v10;
        v17 = &v8[8 * v10];
        v18 = (v9 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    MEMORY[0x2743DA520]();
    goto LABEL_17;
  }

LABEL_18:
  v20 = *(this + 79);
  if (v20 < 1)
  {
LABEL_53:
    v47 = *(this + 69);
    if (v47 >= 1)
    {
      v48 = *(*(this + 33) + 8 * v47 - 8);
      if (!v48)
      {
        return;
      }

      mkvmuxer::Cluster::Finalize(v48, 1, a2);
      if (!v49)
      {
        return;
      }
    }

    goto LABEL_56;
  }

  v21 = *(this + 69);
  if (v21 >= 1)
  {
    v22 = *(this + 38);
    if (!v22)
    {
      return;
    }

    v23 = *(*(this + 33) + 8 * v21 - 8);
    if (!v23)
    {
      return;
    }

    if (v20 == 1)
    {
      goto LABEL_53;
    }

    v25 = *(v22 + 8);
    v24 = v22 + 8;
    if (*(v25 + 72) > a2)
    {
      goto LABEL_53;
    }

    v26 = 0;
    v27 = 1;
    v28 = 2;
    do
    {
      v29 = *(v24 - 8);
      if (*(v29 + 10))
      {
        *(this + 602) = 4;
      }

      if ((mkvmuxer::Cluster::QueueOrWriteFrame(v23, v29) & 1) == 0 || *(this + 2380) == 1 && (v30 = *(this + 36), v30 == *(v29 + 8)) && (mkvmuxer::Segment::AddCuePoint(this, *(v29 + 9), v30) & 1) == 0)
      {
        v33 = *(v29 + 5);
        if (v33)
        {
          MEMORY[0x2743DA520](v33, 0x1000C8077774924);
        }
      }

      else
      {
        v31 = *(v29 + 9);
        if (v31 > *(this + 42))
        {
          *(this + 42) = v31;
          *(this + *(v29 + 8) + 42) = v31;
        }

        v32 = *(v29 + 5);
        if (v32)
        {
          MEMORY[0x2743DA520](v32, 0x1000C8077774924);
        }

        ++v26;
      }

      v34 = *(v29 + 1);
      if (v34)
      {
        MEMORY[0x2743DA520](v34, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v29, 0x1010C40E9B8B8EALL);
      v35 = *(this + 79);
      if (v28 >= v35)
      {
        break;
      }

      ++v27;
      v36 = *(this + 38);
      v24 = v36 + 8 * v27;
      v37 = *(*(v36 + 8 * v28++) + 72);
    }

    while (v37 <= a2);
    if (v26 < 1)
    {
      goto LABEL_53;
    }

    v38 = (v35 - v26);
    if (v35 <= v26)
    {
      return;
    }

    if (v38 < 1)
    {
      goto LABEL_52;
    }

    v39 = *(this + 38);
    if (v38 > 3)
    {
      v40 = v38 & 0x7FFFFFFC;
      v41 = (v39 + 16);
      v42 = (v39 + 16 + 8 * v26);
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v41 - 1) = *(v42 - 1);
        *v41 = v44;
        v42 += 2;
        v41 += 2;
        v43 -= 4;
      }

      while (v43);
      if (v40 == v38)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v40 = 0;
    }

    v45 = v38 - v40;
    v46 = (v39 + 8 * v40);
    do
    {
      *v46 = v46[v26];
      ++v46;
      --v45;
    }

    while (v45);
LABEL_52:
    *(this + 79) = v38;
    goto LABEL_53;
  }

LABEL_56:
  if (*(this + 2381) == 1)
  {
    *(this + 2380) = 1;
  }

  if (*(this + 240) != 1 || *(this + 69) < 1)
  {
    goto LABEL_67;
  }

  v50 = *(this + 27);
  v51 = *(v50 + 8);
  if (v51 && *(v50 + 16) == 1)
  {
    fclose(v51);
  }

  *(v50 + 8) = 0;
  ++*(this + 50);
  if (mkvmuxer::Segment::UpdateChunkName(this, "chk", this + 26))
  {
    v52 = *(this + 26);
    if (v52)
    {
      v53 = *(this + 27);
      if (!*(v53 + 8))
      {
        v54 = fopen(v52, "wb");
        *(v53 + 8) = v54;
        if (v54)
        {
LABEL_67:
          v55 = *(this + 15);
          v56 = a2 / v55;
          if (*(this + 79) >= 1)
          {
            v57 = *(**(this + 38) + 72) / v55;
            if (v57 < v56)
            {
              v56 = v57;
            }
          }

          v58 = *(this + 33);
          v59 = *(this + 69);
          v60 = *(this + 305);
          if (v60)
          {
            v61 = (*(*v60 + 8))(v60) - *(this + 299);
            if (*(this + 240) == 1)
            {
              v62 = *(this + 69);
              if (v62 < 1)
              {
                goto LABEL_81;
              }

              v63 = *(this + 33);
              if (v62 == 1)
              {
                v64 = 0;
              }

              else
              {
                v65 = 0;
                v64 = v62 & 0x7FFFFFFE;
                v66 = v63 + 8;
                v67 = v64;
                do
                {
                  v61 += *(*(v66 - 8) + 8) + 12;
                  v65 += *(*v66 + 8) + 12;
                  v66 += 16;
                  v67 -= 2;
                }

                while (v67);
                v61 += v65;
                if (v64 == v62)
                {
LABEL_81:
                  v71 = *(this + 304);
                  if (v71)
                  {
                    v61 += (*(*v71 + 8))(v71);
                  }

                  goto LABEL_83;
                }
              }

              v68 = v62 - v64;
              v69 = (v63 + 8 * v64);
              do
              {
                v70 = *v69++;
                v61 += *(v70 + 8) + 12;
                --v68;
              }

              while (v68);
              goto LABEL_81;
            }
          }

          else
          {
            v61 = -1;
          }

LABEL_83:
          v72 = operator new(0x70uLL, MEMORY[0x277D826F0]);
          if (v72)
          {
            v73 = *(this + 15);
            v74 = *(this + 2382);
            v75 = *(this + 2383);
            *v72 = 0;
            v72[4] = 0;
            v72[5] = v75;
            v72[6] = 0;
            *(v72 + 1) = 0;
            *(v72 + 2) = v61;
            *(v72 + 3) = -1;
            *(v72 + 4) = v56;
            *(v72 + 5) = v73;
            *(v72 + 8) = 0;
            v72[48] = v74;
            *(v72 + 7) = v72 + 64;
            *(v72 + 11) = 0;
            *(v72 + 9) = 0;
            *(v72 + 10) = v72 + 88;
            *(v72 + 12) = 0;
            *(v72 + 13) = 0;
            *(v58 + 8 * v59) = v72;
            v76 = *(this + 303);
            if (v76)
            {
              *(v72 + 13) = v76;
              *(this + 69) = v4 + 1;
            }
          }

          else
          {
            *(v58 + 8 * v59) = 0;
          }
        }
      }
    }
  }
}

void std::__tree<std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::list<mkvmuxer::Frame *>>>>::destroy(a1[1]);
    if (a1[7])
    {
      v2 = a1[6];
      v3 = *(a1[5] + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[7] = 0;
      if (v2 != a1 + 5)
      {
        do
        {
          v5 = v2[1];
          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1 + 5);
      }
    }

    operator delete(a1);
  }
}

uint64_t mkvmuxer::SerializeInt(mkvmuxer *this, uint64_t a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (this)
  {
    if ((a3 - 9) >= 0xFFFFFFF8)
    {
      v9 = a2 >> (8 * a3 - 8);
      result = (**this)(this, &v9, 1);
      if ((result & 0x80000000) == 0)
      {
        v7 = a3 + 1;
        if (a3 == 1)
        {
          return 0;
        }

        else
        {
          v8 = 8 * a3;
          v9 = a2 >> (v8 - 16);
          result = (**this)(this, &v9, 1);
          if ((result & 0x80000000) == 0)
          {
            if (v7 == 3)
            {
              return 0;
            }

            else
            {
              v9 = a2 >> (v8 - 24);
              result = (**this)(this, &v9, 1);
              if ((result & 0x80000000) == 0)
              {
                if (v7 == 4)
                {
                  return 0;
                }

                else
                {
                  v9 = a2 >> (v8 - 32);
                  result = (**this)(this, &v9, 1);
                  if ((result & 0x80000000) == 0)
                  {
                    if (v7 == 5)
                    {
                      return 0;
                    }

                    else
                    {
                      v9 = a2 >> (v8 - 40);
                      result = (**this)(this, &v9, 1);
                      if ((result & 0x80000000) == 0)
                      {
                        if (v7 == 6)
                        {
                          return 0;
                        }

                        else
                        {
                          v9 = a2 >> (v8 - 48);
                          result = (**this)(this, &v9, 1);
                          if ((result & 0x80000000) == 0)
                          {
                            if (v7 == 7)
                            {
                              return 0;
                            }

                            else
                            {
                              v9 = a2 >> (v8 - 56);
                              result = (**this)(this, &v9, 1);
                              if ((result & 0x80000000) == 0)
                              {
                                if (v7 == 8)
                                {
                                  return 0;
                                }

                                else
                                {
                                  v9 = a2 >> v8;
                                  LODWORD(result) = (**this)(this, &v9, 1);
                                  if (result < 0)
                                  {
                                    return result;
                                  }

                                  else
                                  {
                                    return 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
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

uint64_t mkvmuxer::WriteUIntSize(mkvmuxer *this, unint64_t a2, unsigned int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (!this)
  {
    return v3;
  }

  LODWORD(v4) = a3;
  if (a3 > 8)
  {
    return v3;
  }

  if (a3)
  {
    v5 = 1 << (7 * a3);
    if (v5 - 2 < a2 || a3 - 9 < 0xFFFFFFF8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v4 = 0;
    v6 = 7;
    do
    {
      v5 = 1 << v6;
      v7 = (1 << v6) - 2;
      ++v4;
      v6 += 7;
    }

    while (v7 < a2);
    if (v4 > 8)
    {
      return 0;
    }

    if ((v4 - 9) < 0xFFFFFFF8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8 = v5 | a2;
  v15 = (v5 | a2) >> (8 * v4 - 8);
  v10 = (**this)(this, &v15, 1);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = v4 + 1;
  if (v4 == 1)
  {
    return 0;
  }

  v12 = 8 * v4;
  v15 = v8 >> (v12 - 16);
  v10 = (**this)(this, &v15, 1);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v11 == 3)
  {
    return 0;
  }

  v15 = v8 >> (v12 - 24);
  v10 = (**this)(this, &v15, 1);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v11 == 4)
  {
    return 0;
  }

  v15 = v8 >> (v12 - 32);
  v10 = (**this)(this, &v15, 1);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v11 == 5)
  {
    return 0;
  }

  v15 = v8 >> (v12 - 40);
  v10 = (**this)(this, &v15, 1);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v11 == 6)
  {
    return 0;
  }

  v15 = v8 >> (v12 - 48);
  v10 = (**this)(this, &v15, 1);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v11 == 7)
  {
    return 0;
  }

  v15 = v8 >> (v12 - 56);
  v10 = (**this)(this, &v15, 1);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v11 == 8)
  {
    return 0;
  }

  v15 = v8 >> v12;
  v14 = (**this)(this, &v15, 1);
  if (v14 < 0)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t mkvmuxer::WriteEbmlMasterElement(uint64_t this, unint64_t a2, unint64_t a3)
{
  if (this)
  {
    v5 = this;
    v6 = (*(*this + 8))(this);
    (*(*v5 + 32))(v5, a2, v6);
    if (HIBYTE(a2))
    {
      v7 = 8;
    }

    else
    {
      v7 = 7;
    }

    if (HIWORD(a2))
    {
      v8 = v7;
    }

    else
    {
      v8 = 6;
    }

    if (a2 >> 40)
    {
      v9 = v8;
    }

    else
    {
      v9 = 5;
    }

    if (HIDWORD(a2))
    {
      v10 = v9;
    }

    else
    {
      v10 = 4;
    }

    if (a2 >> 24)
    {
      v11 = v10;
    }

    else
    {
      v11 = 3;
    }

    if (a2 >= 0x10000)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2;
    }

    if (a2 >= 0x100)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    v14 = 8 * v13 - 8;
    do
    {
      v28 = a2 >> v14;
      if (((**v5)(v5, &v28, 1) & 0x80000000) != 0)
      {
        return 0;
      }

      v14 -= 8;
      --v13;
    }

    while (v13);
    if (a3 >= 0x7F)
    {
      if (a3 < 0x1FFFFFFFFFFFFLL)
      {
        v16 = 7;
      }

      else
      {
        v16 = 8;
      }

      if (a3 >= 0x3FFFFFFFFFFLL)
      {
        v17 = v16;
      }

      else
      {
        v17 = 6;
      }

      if (a3 >= 0x7FFFFFFFFLL)
      {
        v18 = v17;
      }

      else
      {
        v18 = 5;
      }

      if (a3 >= 0xFFFFFFF)
      {
        v19 = v18;
      }

      else
      {
        v19 = 4;
      }

      if (a3 >= 0x1FFFFF)
      {
        v20 = v19;
      }

      else
      {
        v20 = 3;
      }

      if (a3 >= 0x3FFF)
      {
        v15 = v20;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 1;
    }

    v21 = 1 << (7 * v15);
    if (v21 - 2 < a3)
    {
      return 0;
    }

    v22 = v21 | a3;
    v23 = v15 - 1;
    v24 = 8 * v15 - 8;
    do
    {
      v29 = v22 >> v24;
      v25 = (**v5)(v5, &v29, 1);
      this = v25 >= 0;
      v27 = v23-- != 0;
      if (v25 < 0)
      {
        break;
      }

      v24 -= 8;
    }

    while (v27);
  }

  return this;
}

uint64_t mkvmuxer::WriteEbmlElement(uint64_t this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (this)
  {
    v7 = this;
    v8 = (*(*this + 8))(this);
    (*(*v7 + 32))(v7, a2, v8);
    if (HIBYTE(a2))
    {
      v9 = 8;
    }

    else
    {
      v9 = 7;
    }

    if (HIWORD(a2))
    {
      v10 = v9;
    }

    else
    {
      v10 = 6;
    }

    if (a2 >> 40)
    {
      v11 = v10;
    }

    else
    {
      v11 = 5;
    }

    if (HIDWORD(a2))
    {
      v12 = v11;
    }

    else
    {
      v12 = 4;
    }

    if (a2 >> 24)
    {
      v13 = v12;
    }

    else
    {
      v13 = 3;
    }

    if (a2 >= 0x10000)
    {
      v14 = v13;
    }

    else
    {
      v14 = 2;
    }

    if (a2 >= 0x100)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1;
    }

    v16 = 8 * v15 - 8;
    while (1)
    {
      v28 = a2 >> v16;
      if (((**v7)(v7, &v28, 1) & 0x80000000) != 0)
      {
        break;
      }

      v16 -= 8;
      if (!--v15)
      {
        if (a3 >= 0x100)
        {
          if (a3 >= 0x10000)
          {
            if (a3 >> 24)
            {
              if (HIDWORD(a3))
              {
                if (a3 >> 40)
                {
                  if (HIWORD(a3))
                  {
                    if (HIBYTE(a3))
                    {
                      v17 = 8;
                    }

                    else
                    {
                      v17 = 7;
                    }
                  }

                  else
                  {
                    v17 = 6;
                  }
                }

                else
                {
                  v17 = 5;
                }
              }

              else
              {
                v17 = 4;
              }
            }

            else
            {
              v17 = 3;
            }
          }

          else
          {
            v17 = 2;
          }
        }

        else
        {
          v17 = 1;
        }

        if (a4)
        {
          if (v17 > a4)
          {
            return 0;
          }

          if (a4 >= 0x7F)
          {
            if (a4 >= 0x3FFF)
            {
              if (a4 >= 0x1FFFFF)
              {
                if (a4 >= 0xFFFFFFF)
                {
                  if (a4 >= 0x7FFFFFFFFLL)
                  {
                    if (a4 >= 0x3FFFFFFFFFFLL)
                    {
                      if (a4 < 0x1FFFFFFFFFFFFLL)
                      {
                        v18 = 7;
                      }

                      else
                      {
                        v18 = 8;
                      }
                    }

                    else
                    {
                      v18 = 6;
                    }
                  }

                  else
                  {
                    v18 = 5;
                  }
                }

                else
                {
                  v18 = 4;
                }
              }

              else
              {
                v18 = 3;
              }
            }

            else
            {
              v18 = 2;
            }
          }

          else
          {
            v18 = 1;
          }

          v17 = a4;
        }

        else
        {
          v18 = 1;
        }

        v19 = 1 << (7 * v18);
        if (v19 - 2 >= v17)
        {
          v20 = v19 | v17;
          v21 = v18;
          v22 = 8 * v18 - 8;
          while (1)
          {
            v29 = v20 >> v22;
            if (((**v7)(v7, &v29, 1) & 0x80000000) != 0)
            {
              break;
            }

            v22 -= 8;
            if (!--v21)
            {
              if ((v17 - 9) < 0xFFFFFFF8)
              {
                return 0;
              }

              v23 = (v17 + 1) - 2;
              v24 = 8 * v17 - 8;
              do
              {
                v30 = a3 >> v24;
                v25 = (**v7)(v7, &v30, 1);
                this = v25 >= 0;
                v27 = v23-- != 0;
                if (v25 < 0)
                {
                  break;
                }

                v24 -= 8;
              }

              while (v27);
              return this;
            }
          }
        }

        return 0;
      }
    }

    return 0;
  }

  return this;
}

BOOL mkvmuxer::WriteEbmlElement(mkvmuxer *this, uint64_t a2)
{
  v4 = (*(*this + 8))(this);
  (*(*this + 32))(this, 30114, v4);
  v19 = 117;
  if (((**this)(this, &v19, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v19 = -94;
  if (((**this)(this, &v19, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = 2 * (a2 ^ (a2 >> 63));
  v6 = HIBYTE(v5) ? 8 : 7;
  v7 = HIWORD(v5) ? v6 : 6;
  v8 = v5 >> 40 ? v7 : 5;
  v9 = HIDWORD(v5) ? v8 : 4;
  v10 = v5 >> 24 ? v9 : 3;
  v11 = v5 >= 0x10000 ? v10 : 2;
  v12 = v5 >= 0x100 ? v11 : 1;
  v20 = v12 | 0x80;
  if (((**this)(this, &v20, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = v12 - 1;
  v14 = 8 * v12 - 8;
  do
  {
    v21 = a2 >> v14;
    v15 = (**this)(this, &v21, 1);
    result = v15 >= 0;
    v18 = v13-- != 0;
    if (v15 < 0)
    {
      break;
    }

    v14 -= 8;
  }

  while (v18);
  return result;
}

BOOL mkvmuxer::WriteEbmlElement(_BOOL8 this, unint64_t a2, float a3)
{
  if (this)
  {
    v5 = this;
    v6 = (*(*this + 8))(this);
    (*(*v5 + 32))(v5, a2, v6);
    if (HIBYTE(a2))
    {
      v7 = 8;
    }

    else
    {
      v7 = 7;
    }

    if (HIWORD(a2))
    {
      v8 = v7;
    }

    else
    {
      v8 = 6;
    }

    if (a2 >> 40)
    {
      v9 = v8;
    }

    else
    {
      v9 = 5;
    }

    if (HIDWORD(a2))
    {
      v10 = v9;
    }

    else
    {
      v10 = 4;
    }

    if (a2 >> 24)
    {
      v11 = v10;
    }

    else
    {
      v11 = 3;
    }

    if (a2 >= 0x10000)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2;
    }

    if (a2 >= 0x100)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    for (i = 8 * v13 - 8; ; i -= 8)
    {
      v15 = a2 >> i;
      if (((**v5)(v5, &v15, 1) & 0x80000000) != 0)
      {
        break;
      }

      if (!--v13)
      {
        v16 = -124;
        if (((**v5)(v5, &v16, 1) & 0x80000000) == 0)
        {
          v17 = HIBYTE(a3);
          if (((**v5)(v5, &v17, 1) & 0x80000000) == 0)
          {
            v17 = BYTE2(a3);
            if (((**v5)(v5, &v17, 1) & 0x80000000) == 0)
            {
              v17 = BYTE1(a3);
              if (((**v5)(v5, &v17, 1) & 0x80000000) == 0)
              {
                v17 = LOBYTE(a3);
                return (**v5)(v5, &v17, 1) >= 0;
              }
            }
          }
        }

        return 0;
      }
    }

    return 0;
  }

  return this;
}

BOOL mkvmuxer::WriteEbmlElement(mkvmuxer *this, unint64_t a2, const char *a3, const char *a4)
{
  result = 0;
  if (this && a3)
  {
    v8 = (*(*this + 8))(this, a2, a3, a4);
    (*(*this + 32))(this, a2, v8);
    if (HIBYTE(a2))
    {
      v9 = 8;
    }

    else
    {
      v9 = 7;
    }

    if (HIWORD(a2))
    {
      v10 = v9;
    }

    else
    {
      v10 = 6;
    }

    if (a2 >> 40)
    {
      v11 = v10;
    }

    else
    {
      v11 = 5;
    }

    if (HIDWORD(a2))
    {
      v12 = v11;
    }

    else
    {
      v12 = 4;
    }

    if (a2 >> 24)
    {
      v13 = v12;
    }

    else
    {
      v13 = 3;
    }

    if (a2 >= 0x10000)
    {
      v14 = v13;
    }

    else
    {
      v14 = 2;
    }

    if (a2 >= 0x100)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1;
    }

    v16 = 8 * v15 - 8;
    do
    {
      v29 = a2 >> v16;
      if (((**this)(this, &v29, 1) & 0x80000000) != 0)
      {
        return 0;
      }

      v16 -= 8;
      --v15;
    }

    while (v15);
    v17 = strlen(a3);
    if (v17 >= 0x7F)
    {
      if (v17 < 0x1FFFFFFFFFFFFLL)
      {
        v19 = 7;
      }

      else
      {
        v19 = 8;
      }

      if (v17 >= 0x3FFFFFFFFFFLL)
      {
        v20 = v19;
      }

      else
      {
        v20 = 6;
      }

      if (v17 >= 0x7FFFFFFFFLL)
      {
        v21 = v20;
      }

      else
      {
        v21 = 5;
      }

      if (v17 >= 0xFFFFFFF)
      {
        v22 = v21;
      }

      else
      {
        v22 = 4;
      }

      if (v17 >= 0x1FFFFF)
      {
        v23 = v22;
      }

      else
      {
        v23 = 3;
      }

      if (v17 >= 0x3FFF)
      {
        v18 = v23;
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {
      v18 = 1;
    }

    v24 = 1 << (7 * v18);
    if (v24 - 2 >= v17)
    {
      v25 = v17;
      v26 = v24 | v17;
      v27 = v18;
      for (i = 8 * v18 - 8; ; i -= 8)
      {
        v30 = v26 >> i;
        if (((**this)(this, &v30, 1) & 0x80000000) != 0)
        {
          break;
        }

        if (!--v27)
        {
          return (**this)(this, a3, v25) == 0;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL mkvmuxer::WriteEbmlElement(mkvmuxer *this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  if (this && a3 && a4)
  {
    v9 = (*(*this + 8))(this);
    (*(*this + 32))(this, a2, v9);
    if (a2 >= 0x100)
    {
      if (a2 >= 0x10000)
      {
        if (a2 >> 24)
        {
          if (HIDWORD(a2))
          {
            if (a2 >> 40)
            {
              if (HIBYTE(a2))
              {
                v11 = 8;
              }

              else
              {
                v11 = 7;
              }

              if (HIWORD(a2))
              {
                v10 = v11;
              }

              else
              {
                v10 = 6;
              }
            }

            else
            {
              v10 = 5;
            }
          }

          else
          {
            v10 = 4;
          }
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 1;
    }

    v12 = v10;
    v13 = 8 * v10 - 8;
    do
    {
      v24 = a2 >> v13;
      if (((**this)(this, &v24, 1) & 0x80000000) != 0)
      {
        return 0;
      }

      v13 -= 8;
      --v12;
    }

    while (v12);
    if (a4 >= 0x7F)
    {
      if (a4 < 0x1FFFFFFFFFFFFLL)
      {
        v15 = 7;
      }

      else
      {
        v15 = 8;
      }

      if (a4 >= 0x3FFFFFFFFFFLL)
      {
        v16 = v15;
      }

      else
      {
        v16 = 6;
      }

      if (a4 >= 0x7FFFFFFFFLL)
      {
        v17 = v16;
      }

      else
      {
        v17 = 5;
      }

      if (a4 >= 0xFFFFFFF)
      {
        v18 = v17;
      }

      else
      {
        v18 = 4;
      }

      if (a4 >= 0x1FFFFF)
      {
        v19 = v18;
      }

      else
      {
        v19 = 3;
      }

      if (a4 >= 0x3FFF)
      {
        v14 = v19;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
    }

    v20 = 1 << (7 * v14);
    if (v20 - 2 >= a4)
    {
      v21 = v20 | a4;
      v22 = v14;
      for (i = 8 * v14 - 8; ; i -= 8)
      {
        v25 = v21 >> i;
        if (((**this)(this, &v25, 1) & 0x80000000) != 0)
        {
          break;
        }

        if (!--v22)
        {
          return (**this)(this, a3, a4) == 0;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL mkvmuxer::WriteEbmlDateElement(_BOOL8 this, unint64_t a2, uint64_t a3)
{
  if (this)
  {
    v5 = this;
    v6 = (*(*this + 8))(this);
    (*(*v5 + 32))(v5, a2, v6);
    if (HIBYTE(a2))
    {
      v7 = 8;
    }

    else
    {
      v7 = 7;
    }

    if (HIWORD(a2))
    {
      v8 = v7;
    }

    else
    {
      v8 = 6;
    }

    if (a2 >> 40)
    {
      v9 = v8;
    }

    else
    {
      v9 = 5;
    }

    if (HIDWORD(a2))
    {
      v10 = v9;
    }

    else
    {
      v10 = 4;
    }

    if (a2 >> 24)
    {
      v11 = v10;
    }

    else
    {
      v11 = 3;
    }

    if (a2 >= 0x10000)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2;
    }

    if (a2 >= 0x100)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    v14 = 8 * v13 - 8;
    do
    {
      v16 = a2 >> v14;
      if (((**v5)(v5, &v16, 1) & 0x80000000) != 0)
      {
        return 0;
      }

      v14 -= 8;
      --v13;
    }

    while (v13);
    v17 = -120;
    if (((**v5)(v5, &v17, 1) & 0x80000000) != 0)
    {
      return 0;
    }

    v18 = HIBYTE(a3);
    v15 = (**v5)(v5, &v18, 1);
    if ((v15 & 0x80000000) == 0)
    {
      v18 = BYTE6(a3);
      v15 = (**v5)(v5, &v18, 1);
      if ((v15 & 0x80000000) == 0)
      {
        v18 = BYTE5(a3);
        v15 = (**v5)(v5, &v18, 1);
        if ((v15 & 0x80000000) == 0)
        {
          v18 = BYTE4(a3);
          v15 = (**v5)(v5, &v18, 1);
          if ((v15 & 0x80000000) == 0)
          {
            v18 = BYTE3(a3);
            v15 = (**v5)(v5, &v18, 1);
            if ((v15 & 0x80000000) == 0)
            {
              v18 = BYTE2(a3);
              v15 = (**v5)(v5, &v18, 1);
              if ((v15 & 0x80000000) == 0)
              {
                v18 = BYTE1(a3);
                v15 = (**v5)(v5, &v18, 1);
                if ((v15 & 0x80000000) == 0)
                {
                  v18 = a3;
                  v15 = (**v5)(v5, &v18, 1);
                }
              }
            }
          }
        }
      }
    }

    return v15 >= 0;
  }

  return this;
}

uint64_t mkvmuxer::WriteFrame(mkvmuxer *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if (!a1 || !a2)
  {
    return v5;
  }

  v6 = *(a2 + 56);
  if (!v6)
  {
    return 0;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    return v5;
  }

  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v7)
  {
    if (!v8 || (*(a2 + 64) - 127) < 0xFFFFFFFFFFFFFF82)
    {
      return 0;
    }
  }

  else
  {
    if (v8 || (*(a2 + 64) - 127) < 0xFFFFFFFFFFFFFF82)
    {
      return 0;
    }

    if (!*(a2 + 80) && !*(a2 + 24))
    {
      goto LABEL_9;
    }
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    v5 = 0;
    if (!a3 || (*(a2 + 96) & 1) == 0)
    {
      return v5;
    }

    goto LABEL_17;
  }

LABEL_9:
  if (!a3)
  {
    return 0;
  }

LABEL_17:
  v78 = v3;
  v79 = v4;
  v10 = *(a3 + 40);
  if (!v10)
  {
    return 0;
  }

  v11 = *(a2 + 72) / v10 - *(a3 + 32);
  if (v11 >> 15)
  {
    LOWORD(v12) = -1;
  }

  else
  {
    v12 = *(a2 + 72) / v10 - *(a3 + 32);
  }

  if (v11 >> 15)
  {
    return 0;
  }

  if (!v8)
  {
    v16 = (a2 + 80);
    v15 = *(a2 + 80);
    if (!v15)
    {
      if (!*(a2 + 24))
      {
        v21 = (*(*a1 + 8))();
        (*(*a1 + 32))(a1, 163, v21);
        v71 = -93;
        if (((**a1)(a1, &v71, 1) & 0x80000000) == 0)
        {
          v22 = *(a2 + 56) + 4;
          if (v22 >= 0x7F)
          {
            if (v22 >= 0x3FFF)
            {
              if (v22 >= 0x1FFFFF)
              {
                if (v22 >= 0xFFFFFFF)
                {
                  v23 = v22 >= 0x7FFFFFFFFLL ? 8 : 5;
                }

                else
                {
                  v23 = 4;
                }
              }

              else
              {
                v23 = 3;
              }
            }

            else
            {
              v23 = 2;
            }
          }

          else
          {
            v23 = 1;
          }

          v49 = a1;
          v50 = 1 << (7 * v23);
          if (v50 - 2 >= v22)
          {
            v51 = v12;
            v52 = v50 | v22;
            v53 = v23;
            v54 = 8 * v23 - 8;
            while (1)
            {
              v72 = v52 >> v54;
              if (((**v49)(v49, &v72, 1) & 0x80000000) != 0)
              {
                break;
              }

              v54 -= 8;
              --v53;
              v49 = a1;
              if (!v53)
              {
                v55 = *(a2 + 64);
                if (v55 >= 0x7F)
                {
                  if (v55 >= 0x3FFF)
                  {
                    if (v55 >= 0x1FFFFF)
                    {
                      if (v55 < 0x1FFFFFFFFFFFFLL)
                      {
                        v57 = 7;
                      }

                      else
                      {
                        v57 = 8;
                      }

                      if (v55 >= 0x3FFFFFFFFFFLL)
                      {
                        v58 = v57;
                      }

                      else
                      {
                        v58 = 6;
                      }

                      if (v55 >= 0x7FFFFFFFFLL)
                      {
                        v59 = v58;
                      }

                      else
                      {
                        v59 = 5;
                      }

                      if (v55 >= 0xFFFFFFF)
                      {
                        v56 = v59;
                      }

                      else
                      {
                        v56 = 4;
                      }
                    }

                    else
                    {
                      v56 = 3;
                    }
                  }

                  else
                  {
                    v56 = 2;
                  }
                }

                else
                {
                  v56 = 1;
                }

                v60 = 1 << (7 * v56);
                if (v60 - 2 >= v55)
                {
                  v61 = v60 | v55;
                  v62 = v56;
                  v63 = 8 * v56 - 8;
                  v64 = a1;
                  while (1)
                  {
                    v73 = v61 >> v63;
                    if (((**v64)(v64, &v73, 1) & 0x80000000) != 0)
                    {
                      break;
                    }

                    v63 -= 8;
                    --v62;
                    v64 = a1;
                    if (!v62)
                    {
                      v74 = HIBYTE(v51);
                      if (((**a1)() & 0x80000000) != 0)
                      {
                        return 0;
                      }

                      v74 = v51;
                      if (((**a1)(a1, &v74, 1) & 0x80000000) != 0)
                      {
                        return 0;
                      }

                      v65 = *(a2 + 48) ? 128 : 0;
                      if (mkvmuxer::SerializeInt(a1, v65, 1) || (**a1)(a1, *(a2 + 40), *(a2 + 56)))
                      {
                        return 0;
                      }

                      if (v22 >= 0x7F)
                      {
                        if (v22 >= 0x3FFF)
                        {
                          if (v22 >= 0x1FFFFF)
                          {
                            v66 = 9;
                            if (v22 >= 0xFFFFFFF)
                            {
                              v66 = 10;
                            }
                          }

                          else
                          {
                            v66 = 8;
                          }
                        }

                        else
                        {
                          v66 = 7;
                        }
                      }

                      else
                      {
                        v66 = 6;
                      }

                      return *(a2 + 56) + v66;
                    }
                  }
                }

                return 0;
              }
            }
          }
        }

        return 0;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v15 = 0;
      goto LABEL_106;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_92;
  }

  v13 = v7 + 1;
  if (v7 >= 0x7F)
  {
    if (v7 >= 0x3FFF)
    {
      if (v7 >= 0x1FFFFF)
      {
        if (v7 >= 0xFFFFFFF)
        {
          if (v7 >= 0x7FFFFFFFFLL)
          {
            if (v7 >= 0x3FFFFFFFFFFLL)
            {
              v24 = v7 >= 0x1FFFFFFFFFFFFLL;
              v14 = 7;
              if (v24)
              {
                v14 = 8;
              }
            }

            else
            {
              v14 = 6;
            }
          }

          else
          {
            v14 = 5;
          }
        }

        else
        {
          v14 = 4;
        }
      }

      else
      {
        v14 = 3;
      }
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 1;
  }

  v25 = v13 + v14;
  v26 = *a2;
  if (*a2 >= 0x100uLL)
  {
    if (v26 >= 0x10000)
    {
      if (v26 >> 24)
      {
        if (HIDWORD(v26))
        {
          if (v26 >> 40)
          {
            if (HIWORD(v26))
            {
              v28 = HIBYTE(v26) == 0;
              v27 = 9;
              if (!v28)
              {
                v27 = 10;
              }
            }

            else
            {
              v27 = 8;
            }
          }

          else
          {
            v27 = 7;
          }
        }

        else
        {
          v27 = 6;
        }
      }

      else
      {
        v27 = 5;
      }
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 3;
  }

  v17 = v25 + v27;
  if (v25 + v27 >= 0x7F)
  {
    if (v17 >= 0x3FFF)
    {
      if (v17 >= 0x1FFFFF)
      {
        if (v17 >= 0xFFFFFFF)
        {
          if (v17 >= 0x7FFFFFFFFLL)
          {
            if (v17 >= 0x3FFFFFFFFFFLL)
            {
              v29 = 8;
              if (v17 >= 0x1FFFFFFFFFFFFLL)
              {
                v29 = 9;
              }
            }

            else
            {
              v29 = 7;
            }
          }

          else
          {
            v29 = 6;
          }
        }

        else
        {
          v29 = 5;
        }
      }

      else
      {
        v29 = 4;
      }
    }

    else
    {
      v29 = 3;
    }
  }

  else
  {
    v29 = 2;
  }

  v19 = v29 + v17;
  if (v29 + v17 >= 0x7F)
  {
    if (v19 >= 0x3FFF)
    {
      if (v19 >= 0x1FFFFF)
      {
        if (v19 >= 0xFFFFFFF)
        {
          if (v19 >= 0x7FFFFFFFFLL)
          {
            if (v19 >= 0x3FFFFFFFFFFLL)
            {
              v30 = 9;
              if (v19 >= 0x1FFFFFFFFFFFFLL)
              {
                v30 = 10;
              }
            }

            else
            {
              v30 = 8;
            }
          }

          else
          {
            v30 = 7;
          }
        }

        else
        {
          v30 = 6;
        }
      }

      else
      {
        v30 = 5;
      }
    }

    else
    {
      v30 = 4;
    }
  }

  else
  {
    v30 = 3;
  }

  v18 = v30 + v19;
  v16 = (a2 + 80);
  v15 = *(a2 + 80);
  if (v15)
  {
LABEL_92:
    v31 = 2 * (v15 ^ (v15 >> 63));
    if (v31 >= 0x100)
    {
      if (v31 >= 0x10000)
      {
        if (v31 >> 24)
        {
          if (HIDWORD(v31))
          {
            if (v31 >> 40)
            {
              if (HIWORD(v31))
              {
                v28 = HIBYTE(v31) == 0;
                v15 = 10;
                if (!v28)
                {
                  v15 = 11;
                }
              }

              else
              {
                v15 = 9;
              }
            }

            else
            {
              v15 = 8;
            }
          }

          else
          {
            v15 = 7;
          }
        }

        else
        {
          v15 = 6;
        }
      }

      else
      {
        v15 = 5;
      }
    }

    else
    {
      v15 = 4;
    }
  }

LABEL_106:
  v32 = *(a2 + 88) / v10;
  if (*(a2 + 48))
  {
    v33 = 0;
  }

  else if (v32 >= 0x100)
  {
    if (v32 >= 0x10000)
    {
      if (v32 >> 24)
      {
        if (HIDWORD(v32))
        {
          if (v32 >> 40)
          {
            if (HIWORD(v32))
            {
              v33 = 9;
              if (HIBYTE(v32))
              {
                v33 = 10;
              }
            }

            else
            {
              v33 = 8;
            }
          }

          else
          {
            v33 = 7;
          }
        }

        else
        {
          v33 = 6;
        }
      }

      else
      {
        v33 = 5;
      }
    }

    else
    {
      v33 = 4;
    }
  }

  else
  {
    v33 = 3;
  }

  v34 = *(a2 + 24);
  v35 = v34 / v10;
  if (v34 >= v10)
  {
    if (v35 >= 0x100)
    {
      if (v35 >= 0x10000)
      {
        if (v35 >> 24)
        {
          if (HIDWORD(v35))
          {
            if (v35 >> 40)
            {
              if (HIWORD(v35))
              {
                v36 = 9;
                if (HIBYTE(v35))
                {
                  v36 = 10;
                }
              }

              else
              {
                v36 = 8;
              }
            }

            else
            {
              v36 = 7;
            }
          }

          else
          {
            v36 = 6;
          }
        }

        else
        {
          v36 = 5;
        }
      }

      else
      {
        v36 = 4;
      }
    }

    else
    {
      v36 = 3;
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = v6 + 4;
  if ((v6 + 4) >= 0x7F)
  {
    if (v37 >= 0x3FFF)
    {
      if (v37 >= 0x1FFFFF)
      {
        if (v37 >= 0xFFFFFFF)
        {
          if (v37 >= 0x7FFFFFFFFLL)
          {
            if (v37 >= 0x3FFFFFFFFFFLL)
            {
              v38 = 8;
              if (v37 >= 0x1FFFFFFFFFFFFLL)
              {
                v38 = 9;
              }
            }

            else
            {
              v38 = 7;
            }
          }

          else
          {
            v38 = 6;
          }
        }

        else
        {
          v38 = 5;
        }
      }

      else
      {
        v38 = 4;
      }
    }

    else
    {
      v38 = 3;
    }
  }

  else
  {
    v38 = 2;
  }

  v39 = v18 + v37 + v15 + v33 + v36 + v38;
  if (mkvmuxer::WriteEbmlMasterElement(a1, 0xA0uLL, v39) && mkvmuxer::WriteEbmlMasterElement(a1, 0xA1uLL, v37))
  {
    v40 = *(a2 + 64);
    if (v40 >= 0x7F)
    {
      v42 = a1;
      if (v40 >= 0x3FFF)
      {
        if (v40 >= 0x1FFFFF)
        {
          if (v40 >= 0xFFFFFFF)
          {
            if (v40 >= 0x7FFFFFFFFLL)
            {
              if (v40 >= 0x3FFFFFFFFFFLL)
              {
                v41 = v40 < 0x1FFFFFFFFFFFFLL ? 7 : 8;
              }

              else
              {
                v41 = 6;
              }
            }

            else
            {
              v41 = 5;
            }
          }

          else
          {
            v41 = 4;
          }
        }

        else
        {
          v41 = 3;
        }
      }

      else
      {
        v41 = 2;
      }
    }

    else
    {
      v41 = 1;
      v42 = a1;
    }

    v43 = 1 << (7 * v41);
    if (v43 - 2 >= v40)
    {
      v67 = v32;
      v68 = v12;
      v45 = v43 | v40;
      v46 = v41;
      v47 = 8 * v41 - 8;
      while (1)
      {
        v75 = v45 >> v47;
        if (((**v42)(v42, &v75, 1) & 0x80000000) != 0)
        {
          break;
        }

        v47 -= 8;
        --v46;
        v42 = a1;
        if (!v46)
        {
          v76 = HIBYTE(v68);
          if (((**a1)() & 0x80000000) == 0)
          {
            v76 = v68;
            if (((**a1)(a1, &v76, 1) & 0x80000000) == 0)
            {
              v77 = 0;
              if (((**a1)(a1, &v77, 1) & 0x80000000) == 0 && !(**a1)(a1, *(a2 + 40), *(a2 + 56)) && (!*(a2 + 8) || mkvmuxer::WriteEbmlMasterElement(a1, 0x75A1uLL, v19) && mkvmuxer::WriteEbmlMasterElement(a1, 0xA6uLL, v17) && mkvmuxer::WriteEbmlElement(a1, 0xEEuLL, *a2, 0) && mkvmuxer::WriteEbmlElement(a1, 0xA5uLL, *(a2 + 8), *(a2 + 16))) && (!*v16 || mkvmuxer::WriteEbmlElement(a1, *v16)) && ((*(a2 + 48) & 1) != 0 || mkvmuxer::WriteEbmlElement(a1, 0xFBuLL, v67, 0)) && (v34 < v10 || mkvmuxer::WriteEbmlElement(a1, 0x9BuLL, v34 / v10, 0)))
              {
                if (v39 >= 0x7F)
                {
                  if (v39 >= 0x3FFF)
                  {
                    if (v39 >= 0x1FFFFF)
                    {
                      if (v39 >= 0xFFFFFFF)
                      {
                        if (v39 >= 0x7FFFFFFFFLL)
                        {
                          if (v39 >= 0x3FFFFFFFFFFLL)
                          {
                            v48 = 8;
                            if (v39 >= 0x1FFFFFFFFFFFFLL)
                            {
                              v48 = 9;
                            }
                          }

                          else
                          {
                            v48 = 7;
                          }
                        }

                        else
                        {
                          v48 = 6;
                        }
                      }

                      else
                      {
                        v48 = 5;
                      }
                    }

                    else
                    {
                      v48 = 4;
                    }
                  }

                  else
                  {
                    v48 = 3;
                  }
                }

                else
                {
                  v48 = 2;
                }

                return v48 + v39;
              }
            }
          }

          return 0;
        }
      }
    }
  }

  return 0;
}

mkvmuxer::IMkvWriter *mkvmuxer::WriteVoidElement(mkvmuxer::IMkvWriter *this, mkvmuxer::IMkvWriter *a2)
{
  if (this)
  {
    v2 = this;
    v3 = a2 - 1;
    if (a2 - 1 >= 0x7F)
    {
      v11 = -2;
      v12 = -3;
      v13 = -4;
      v14 = -5;
      v15 = -6;
      v16 = -8;
      if (v3 < 0x1FFFFFFFFFFFFLL)
      {
        v16 = -7;
      }

      if (v3 >= 0x3FFFFFFFFFFLL)
      {
        v15 = v16;
      }

      if (v3 >= 0x7FFFFFFFFLL)
      {
        v14 = v15;
      }

      if (v3 >= 0xFFFFFFF)
      {
        v13 = v14;
      }

      if (v3 >= 0x1FFFFF)
      {
        v12 = v13;
      }

      if (v3 >= 0x3FFF)
      {
        v11 = v12;
      }

      v4 = &v3[v11];
      if (&v3[v11] >= 0x7F)
      {
LABEL_4:
        v5 = 3;
        v6 = 4;
        v7 = 5;
        v8 = 6;
        v9 = 7;
        v10 = 8;
        if (v4 >= 0x1FFFFFFFFFFFFLL)
        {
          v10 = 9;
        }

        if (v4 >= 0x3FFFFFFFFFFLL)
        {
          v9 = v10;
        }

        if (v4 >= 0x7FFFFFFFFLL)
        {
          v8 = v9;
        }

        if (v4 >= 0xFFFFFFF)
        {
          v7 = v8;
        }

        if (v4 >= 0x1FFFFF)
        {
          v6 = v7;
        }

        if (v4 >= 0x3FFF)
        {
          v5 = v6;
        }

        if ((v5 + v4) != a2)
        {
          return 0;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v4 = a2 - 2;
      if (a2 - 2 >= 0x7F)
      {
        goto LABEL_4;
      }
    }

    if ((v4 + 2) != a2)
    {
      return 0;
    }

LABEL_32:
    v18 = (*(*v2 + 8))(v2);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 = v18;
      v20 = (*(*v2 + 8))(v2);
      (*(*v2 + 32))(v2, 236, v20);
      v29 = -20;
      if (((**v2)(v2, &v29, 1) & 0x80000000) == 0)
      {
        if (v4 >= 0x7F)
        {
          if (v4 >= 0x3FFF)
          {
            if (v4 >= 0x1FFFFF)
            {
              if (v4 >= 0xFFFFFFF)
              {
                if (v4 >= 0x7FFFFFFFFLL)
                {
                  if (v4 >= 0x3FFFFFFFFFFLL)
                  {
                    v21 = v4 < 0x1FFFFFFFFFFFFLL ? 7 : 8;
                  }

                  else
                  {
                    v21 = 6;
                  }
                }

                else
                {
                  v21 = 5;
                }
              }

              else
              {
                v21 = 4;
              }
            }

            else
            {
              v21 = 3;
            }
          }

          else
          {
            v21 = 2;
          }
        }

        else
        {
          v21 = 1;
        }

        v22 = 1 << (7 * v21);
        if (v22 - 2 >= v4)
        {
          v23 = v22 | v4;
          v24 = v21;
          v25 = 8 * v21 - 8;
          while (1)
          {
            v30 = v23 >> v25;
            if (((**v2)(v2, &v30, 1) & 0x80000000) != 0)
            {
              break;
            }

            v25 -= 8;
            if (!--v24)
            {
              v28 = 0;
              if (v4 < 1)
              {
LABEL_58:
                v26 = (*(*v2 + 8))(v2);
                if ((v26 - v19) != a2 || v26 <= -1)
                {
                  return 0;
                }

                else
                {
                  return a2;
                }
              }

              while (!(**v2)(v2, &v28, 1))
              {
                LODWORD(v4) = v4 - 1;
                if (!v4)
                {
                  goto LABEL_58;
                }
              }

              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return this;
}