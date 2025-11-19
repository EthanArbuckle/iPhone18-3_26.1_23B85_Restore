uint64_t google::protobuf::internal::SingularFieldHelper<11>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t *a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v7 = *(a2 + 4);
  google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
  return google::protobuf::internal::SerializeMessageTo<google::protobuf::io::CodedOutputStream>(*a1, *(a2 + 16), this);
}

uint64_t google::protobuf::internal::RepeatedFieldHelper<11>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 8) >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      result = google::protobuf::internal::SerializeMessageTo<google::protobuf::io::CodedOutputStream>(*(v10 + 8 * v8++), *(a2 + 16), this);
    }

    while (v8 < *(v7 + 8));
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<13>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<unsigned int>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<13>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<unsigned int>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<15>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<int>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<15>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<int>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<16>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<long long>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<16>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<long long>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<17>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<int>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<17,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<17>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<int>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<17,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<18>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<long long>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<18,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<18>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<long long>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<18,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<1>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
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
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<double>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t google::protobuf::internal::PackedFieldHelper<1>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<double>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<2>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
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
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<float>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<2>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<float>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

unint64_t *google::protobuf::internal::SingularFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(unint64_t *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(a1, a3);
}

unint64_t *google::protobuf::internal::RepeatedFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(unint64_t *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
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
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = google::protobuf::RepeatedField<long long>::Get(v5, v6);
      result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<long long>::Get(v4, v16);
        result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

unint64_t *google::protobuf::internal::RepeatedFieldHelper<4>::Serialize<google::protobuf::internal::ArrayOutput>(unint64_t *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
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
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = google::protobuf::RepeatedField<unsigned long long>::Get(v5, v6);
      result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<4>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<unsigned long long>::Get(v4, v16);
        result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::SingularFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(int *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,5>::Serialize(a1, a3);
}

int *google::protobuf::internal::RepeatedFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
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
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = google::protobuf::RepeatedField<int>::Get(v5, v6);
      result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,5>::Serialize(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<int>::Get(v4, v16);
        result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,5>::Serialize(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<6>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
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
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<unsigned long long>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t google::protobuf::internal::PackedFieldHelper<6>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<unsigned long long>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<7>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
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
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<unsigned int>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<7>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<unsigned int>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<8>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
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
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<BOOL>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t google::protobuf::internal::PackedFieldHelper<8>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<BOOL>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::SingularFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(void *a1, uint64_t a2, char **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(*a1 & 0xFFFFFFFFFFFFFFFELL, v6);
  *a3 = result;
  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(char *result, uint64_t a2, char **a3)
{
  if (*(result + 2) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
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
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      v13 = *(v5 + 2);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      result = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(*(v14 + 8 * v6), v9);
      v7 = result;
      *a3 = result;
      ++v6;
    }

    while (v6 < *(v5 + 2));
  }

  return result;
}

void google::protobuf::internal::PackedFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 509);
  v3 = google::protobuf::internal::LogMessage::operator<<(v8, "Not implemented field number ");
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, *(a2 + 4));
  v5 = google::protobuf::internal::LogMessage::operator<<(v4, " with type ");
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a2 + 12));
  google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
}

void sub_2656937EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::SingularFieldHelper<10>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 4);
  v6 = *a3;
  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x80;
    v8 = v5 >> 7;
    if (v5 >> 14)
    {
      v7 = v6 + 2;
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
      v6[1] = v8;
      v7 = v6 + 2;
    }
  }

  else
  {
    *v6 = v5;
    v7 = v6 + 1;
  }

  *a3 = v7;
  google::protobuf::internal::SerializeGroupTo<google::protobuf::internal::ArrayOutput>(*a1, *(a2 + 16), a3);
  v11 = *(a2 + 4) + 1;
  v12 = *a3;
  if (v11 > 0x7F)
  {
    *v12 = v11 | 0x80;
    v14 = v11 >> 7;
    if (v11 >> 14)
    {
      v13 = v12 + 2;
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
      v12[1] = v14;
      v13 = v12 + 2;
    }
  }

  else
  {
    *v12 = v11;
    v13 = v12 + 1;
  }

  *a3 = v13;
}

void google::protobuf::internal::RepeatedFieldHelper<10>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8) >= 1)
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
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
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      google::protobuf::internal::SerializeGroupTo<google::protobuf::internal::ArrayOutput>(*(v14 + 8 * v6), *(a2 + 16), a3);
      v15 = *(a2 + 4) + 1;
      v16 = *a3;
      if (v15 > 0x7F)
      {
        *v16 = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v7 = v16 + 2;
          do
          {
            *(v7 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v7;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v7 - 1) = v18;
        }

        else
        {
          v16[1] = v17;
          v7 = v16 + 2;
        }
      }

      else
      {
        *v16 = v15;
        v7 = v16 + 1;
      }

      *a3 = v7;
      ++v6;
    }

    while (v6 < *(a1 + 8));
  }
}

void google::protobuf::internal::SingularFieldHelper<11>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  google::protobuf::internal::SerializeMessageTo<google::protobuf::internal::ArrayOutput>(*a1, *(a2 + 16), a3);
}

void google::protobuf::internal::RepeatedFieldHelper<11>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
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
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      google::protobuf::internal::SerializeMessageTo<google::protobuf::internal::ArrayOutput>(*(v14 + 8 * v6++), *(a2 + 16), a3);
    }

    while (v6 < *(a1 + 8));
  }
}

unsigned int *google::protobuf::internal::SingularFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(unsigned int *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,13>::Serialize(a1, a3);
}

unsigned int *google::protobuf::internal::RepeatedFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(unsigned int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
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
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = google::protobuf::RepeatedField<unsigned int>::Get(v5, v6);
      result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,13>::Serialize(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<unsigned int>::Get(v4, v16);
        result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,13>::Serialize(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<15>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
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
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<int>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<15>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<int>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<16>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
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
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<long long>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t google::protobuf::internal::PackedFieldHelper<16>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<long long>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

_BYTE *google::protobuf::internal::SingularFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(int *a1, uint64_t a2, _BYTE **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = google::protobuf::internal::PrimitiveTypeHelper<17>::SerializeToArray(a1, v6);
  *a3 = result;
  return result;
}

_BYTE *google::protobuf::internal::RepeatedFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(_BYTE *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    result = *a3;
    do
    {
      v7 = *(a2 + 4);
      if (v7 > 0x7F)
      {
        *result = v7 | 0x80;
        v9 = v7 >> 7;
        if (v7 >> 14)
        {
          v8 = result + 2;
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
          result[1] = v9;
          v8 = result + 2;
        }
      }

      else
      {
        *result = v7;
        v8 = result + 1;
      }

      *a3 = v8;
      v12 = google::protobuf::RepeatedField<int>::Get(v5, v6);
      result = google::protobuf::internal::PrimitiveTypeHelper<17>::SerializeToArray(v12, *a3);
      *a3 = result;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<int>::Get(v4, v16);
        result = google::protobuf::internal::PrimitiveTypeHelper<17>::SerializeToArray(v17, *a3);
        *a3 = result;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

_BYTE *google::protobuf::internal::SingularFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t *a1, uint64_t a2, _BYTE **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = google::protobuf::internal::PrimitiveTypeHelper<18>::SerializeToArray(a1, v6);
  *a3 = result;
  return result;
}

_BYTE *google::protobuf::internal::RepeatedFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(_BYTE *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    result = *a3;
    do
    {
      v7 = *(a2 + 4);
      if (v7 > 0x7F)
      {
        *result = v7 | 0x80;
        v9 = v7 >> 7;
        if (v7 >> 14)
        {
          v8 = result + 2;
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
          result[1] = v9;
          v8 = result + 2;
        }
      }

      else
      {
        *result = v7;
        v8 = result + 1;
      }

      *a3 = v8;
      v12 = google::protobuf::RepeatedField<long long>::Get(v5, v6);
      result = google::protobuf::internal::PrimitiveTypeHelper<18>::SerializeToArray(v12, *a3);
      *a3 = result;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<long long>::Get(v4, v16);
        result = google::protobuf::internal::PrimitiveTypeHelper<18>::SerializeToArray(v17, *a3);
        *a3 = result;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSerializer(google::protobuf::internal *this, const unsigned __int8 *a2, signed int a3, int a4, unsigned __int8 **a5, google::protobuf::io::CodedOutputStream *a6)
{
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + a2), a3, a4, a5[8], a5);
  a5[8] = result;
  return result;
}

unsigned __int8 *google::protobuf::internal::UnknownFieldSerializerLite(google::protobuf::internal *this, const unsigned __int8 *a2, unsigned int a3, unsigned int a4, google::protobuf::io::EpsCopyOutputStream *a5, google::protobuf::io::CodedOutputStream *a6)
{
  v7 = *(this + a2);
  if (v7)
  {
    v8 = ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::internal::InitProtobufDefaultsSlow(this);
    }

    v8 = &google::protobuf::internal::fixed_address_empty_string;
  }

  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  if (v9 >= 0)
  {
    LODWORD(v11) = *(v8 + 23);
  }

  else
  {
    v11 = v8[1];
  }

  v12 = *(a5 + 8);
  if (*a5 - v12 < v11)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a5, v10, v11, *(a5 + 8));
  }

  else
  {
    v13 = v11;
    memcpy(*(a5 + 8), v10, v11);
    result = (v12 + v13);
  }

  *(a5 + 8) = result;
  return result;
}

uint64_t google::protobuf::internal::DuplicateIfNonNullInternal(google::protobuf::internal *this, google::protobuf::MessageLite *a2)
{
  if (!this)
  {
    return 0;
  }

  v3 = (*(*this + 24))(this, a2);
  (*(*v3 + 64))(v3, this);
  return v3;
}

uint64_t google::protobuf::internal::GenericSwap(google::protobuf::internal *this, google::protobuf::MessageLite *a2, google::protobuf::MessageLite *a3)
{
  v5 = (*(*this + 24))(this, a2, a3);
  (*(*v5 + 64))(v5, this);
  (*(*this + 40))(this);
  (*(*this + 64))(this, a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 64))(a2, v5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

google::protobuf::Arena *google::protobuf::internal::GetOwnedMessageInternal(atomic_ullong *this, google::protobuf::Arena *a2, atomic_ullong *a3, google::protobuf::Arena *a4)
{
  v5 = a2;
  v7 = *(a2 + 1);
  if (v7)
  {
    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (v7 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 722);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: submessage->GetArena() == submessage_arena: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (this == a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 723);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: message_arena != submessage_arena: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    if (!this)
    {
LABEL_11:
      v10 = (*(*v5 + 32))(v5, this);
      (*(*v10 + 64))(v10, v5);
      return v10;
    }
  }

  else if (!this)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    goto LABEL_11;
  }

  google::protobuf::Arena::Own<google::protobuf::MessageLite>(this, v5);
  return v5;
}

void sub_265694B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::InitSCCImpl(_DWORD *a1)
{
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2 = pthread_self();
  v3 = v2;
  if (google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner == v2)
  {
    if (*a1 != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::internal::InitProtobufDefaultsSlow(v2);
    }

    std::mutex::lock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = v3;
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = 0;

    std::mutex::unlock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
  }
}

void sub_265694C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *google::protobuf::internal::anonymous namespace::InitSCC_DFS(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[2 * i])
        {
          v3 = *(v1 + 1);
        }
      }
    }

    v5 = v3;
    v6 = *(v1 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &v2[2 * v5];
      do
      {
        if (**&v8[2 * v7])
        {
          v6 = *(v1 + 2);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

char *google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = *result;
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

char *google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = *result;
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

char *google::protobuf::internal::PrimitiveTypeHelper<5>::Serialize(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = *result;
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

unsigned __int8 *google::protobuf::internal::PrimitiveTypeHelper<9>::Serialize(void **a1, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = a1[1];
  }

  v5 = *(this + 8);
  if (*this <= v5)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, *(this + 8));
  }

  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *(this + 8) = v6;
  v10 = *(v3 + 23);
  if (v10 < 0)
  {
    v11 = v3;
    v3 = *v3;
    v10 = v11[1];
  }

  result = google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(this, v3, v10, v6);
  *(this + 8) = result;
  return result;
}

uint64_t google::protobuf::internal::SerializeGroupTo<google::protobuf::io::CodedOutputStream>(uint64_t a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (a2)
  {
    v4 = *a2 - 1;
    v5 = *(a2 + 8) + 24;

    return google::protobuf::internal::SerializeInternal(a1, v5, v4, this);
  }

  else
  {
    result = (*(*a1 + 96))(a1, *(this + 8), this);
    *(this + 8) = result;
  }

  return result;
}

uint64_t google::protobuf::internal::SerializeMessageTo<google::protobuf::io::CodedOutputStream>(uint64_t a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (a2)
  {
    v6 = *(a2 + 8);
    v9 = *(a1 + *v6);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    return google::protobuf::internal::SerializeInternal(a1, v6 + 24, *a2 - 1, this);
  }

  else
  {
    v8 = (*(*a1 + 80))(a1);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    result = (*(*a1 + 96))(a1, *(this + 8), this);
    *(this + 8) = result;
  }

  return result;
}

char *google::protobuf::internal::SerializeTo<17,google::protobuf::io::CodedOutputStream>(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = (2 * *result) ^ (*result >> 31);
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

char *google::protobuf::internal::SerializeTo<18,google::protobuf::io::CodedOutputStream>(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = (2 * *result) ^ (*result >> 63);
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

unsigned int *google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,13>::Serialize(unsigned int *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (*result > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

unint64_t *google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(unint64_t *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (*result > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

int *google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,5>::Serialize(int *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (v3 > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

void google::protobuf::internal::SerializeGroupTo<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *a3 = google::protobuf::internal::SerializeInternalToArray(a1, *(a2 + 8) + 24, (*a2 - 1), *(a3 + 8), *a3);
  }

  else
  {

    google::protobuf::internal::SerializeMessageNoTable(a1, a3);
  }
}

void google::protobuf::internal::SerializeMessageTo<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a2 + 8);
    v6 = *(a1 + *v5);
    v7 = *a3;
    if (v6 > 0x7F)
    {
      *v7 = v6 | 0x80;
      v12 = v6 >> 7;
      if (v6 >> 14)
      {
        v8 = v7 + 2;
        do
        {
          *(v8 - 1) = v12 | 0x80;
          v14 = v12 >> 7;
          ++v8;
          v15 = v12 >> 14;
          v12 >>= 7;
        }

        while (v15);
        *(v8 - 1) = v14;
      }

      else
      {
        v7[1] = v12;
        v8 = v7 + 2;
      }
    }

    else
    {
      *v7 = v6;
      v8 = v7 + 1;
    }

    *a3 = v8;
    *a3 = google::protobuf::internal::SerializeInternalToArray(a1, v5 + 6, (*a2 - 1), *(a3 + 8), v8);
  }

  else
  {
    v9 = (*(*a1 + 80))(a1);
    v10 = *a3;
    if (v9 > 0x7F)
    {
      *v10 = v9 | 0x80;
      v13 = v9 >> 7;
      if (v9 >> 14)
      {
        v11 = v10 + 2;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v16 = v13 >> 7;
          ++v11;
          v17 = v13 >> 14;
          v13 >>= 7;
        }

        while (v17);
        *(v11 - 1) = v16;
      }

      else
      {
        v10[1] = v13;
        v11 = v10 + 2;
      }
    }

    else
    {
      *v10 = v9;
      v11 = v10 + 1;
    }

    *a3 = v11;

    google::protobuf::internal::SerializeMessageNoTable(a1, a3);
  }
}

_BYTE *google::protobuf::internal::PrimitiveTypeHelper<17>::SerializeToArray(int *a1, _BYTE *a2)
{
  v2 = (2 * *a1) ^ (*a1 >> 31);
  if (v2 > 0x7F)
  {
    *a2 = v2 | 0x80;
    v4 = v2 >> 7;
    if (v2 >> 14)
    {
      v3 = a2 + 2;
      do
      {
        *(v3 - 1) = v4 | 0x80;
        v5 = v4 >> 7;
        ++v3;
        v6 = v4 >> 14;
        v4 >>= 7;
      }

      while (v6);
      *(v3 - 1) = v5;
    }

    else
    {
      a2[1] = v4;
      return a2 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a2 + 1;
  }

  return v3;
}

_BYTE *google::protobuf::internal::PrimitiveTypeHelper<18>::SerializeToArray(uint64_t *a1, _BYTE *a2)
{
  v2 = (2 * *a1) ^ (*a1 >> 63);
  if (v2 > 0x7F)
  {
    *a2 = v2 | 0x80;
    v4 = v2 >> 7;
    if (v2 >> 14)
    {
      v3 = a2 + 2;
      do
      {
        *(v3 - 1) = v4 | 0x80;
        v5 = v4 >> 7;
        ++v3;
        v6 = v4 >> 14;
        v4 >>= 7;
      }

      while (v6);
      *(v3 - 1) = v5;
    }

    else
    {
      a2[1] = v4;
      return a2 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a2 + 1;
  }

  return v3;
}

void google::protobuf::internal::InitSCCImpl()
{
  {
    __cxa_atexit(google::protobuf::internal::WrappedMutex::~WrappedMutex, &google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu, &dword_26563A000);
  }
}

void google::protobuf::internal::InitImplicitWeakMessageDefaultInstance(google::protobuf::internal *this)
{
  qword_28001ADE8 = 0;
  unk_28001ADF0 = 0;
  google::protobuf::internal::implicit_weak_message_default_instance = &unk_287704C98;
  qword_28001ADF8 = 0;
  unk_28001AE00 = 0;
}

uint64_t *google::protobuf::internal::ImplicitWeakMessage::default_instance(google::protobuf::internal::ImplicitWeakMessage *this)
{
  if (atomic_load_explicit(&google::protobuf::internal::implicit_weak_message_once_init_, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v4 = v5;
    v5[0] = google::protobuf::internal::InitImplicitWeakMessageDefaultInstance;
    std::__call_once(&google::protobuf::internal::implicit_weak_message_once_init_, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  return &google::protobuf::internal::implicit_weak_message_default_instance;
}

void google::protobuf::internal::ImplicitWeakMessage::~ImplicitWeakMessage(void **this)
{
  *this = &unk_287704C98;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_287704C98;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x26675B300);
}

void *google::protobuf::internal::ImplicitWeakMessage::New(google::protobuf::internal::ImplicitWeakMessage *this, google::protobuf::Arena *a2)
{
  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    google::protobuf::internal::ImplicitWeakMessage::New(a2);
  }

  result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a2, 0x28, google::protobuf::internal::arena_destruct_object<google::protobuf::internal::ImplicitWeakMessage>);
  *result = &unk_287704C98;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t google::protobuf::internal::ImplicitWeakMessage::Clear(uint64_t this)
{
  if (*(this + 39) < 0)
  {
    **(this + 16) = 0;
    *(this + 24) = 0;
  }

  else
  {
    *(this + 16) = 0;
    *(this + 39) = 0;
  }

  return this;
}

std::string *google::protobuf::internal::ImplicitWeakMessage::CheckTypeAndMergeFrom(google::protobuf::internal::ImplicitWeakMessage *this, const google::protobuf::MessageLite *a2)
{
  v4 = *(a2 + 2);
  v2 = a2 + 16;
  v3 = v4;
  v5 = *(v2 + 1);
  if (v2[23] >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v2 = v3;
    v6 = v5;
  }

  return std::string::append((this + 16), v2, v6);
}

uint64_t google::protobuf::internal::ImplicitWeakMessage::ByteSizeLong(google::protobuf::internal::ImplicitWeakMessage *this)
{
  result = *(this + 39);
  if (result < 0)
  {
    return *(this + 3);
  }

  return result;
}

uint64_t google::protobuf::internal::ImplicitWeakMessage::GetCachedSize(google::protobuf::internal::ImplicitWeakMessage *this)
{
  result = *(this + 39);
  if (result < 0)
  {
    return *(this + 3);
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ImplicitWeakMessage::_InternalSerialize(google::protobuf::internal::ImplicitWeakMessage *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = *(this + 39);
  if (v4 < 0)
  {
    v5 = *(this + 2);
    v4 = *(this + 3);
  }

  else
  {
    v5 = this + 16;
  }

  if (*a3 - a2 < v4)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v5, v4, a2);
  }

  else
  {
    v6 = v4;
    memcpy(a2, v5, v4);
    return &a2[v6];
  }
}

uint64_t google::protobuf::internal::EpsCopyInputStream::AppendUntilEnd<google::protobuf::internal::EpsCopyInputStream::AppendString(char const*,std::string *)::{lambda(char const*,long)#1}>(uint64_t a1, std::string::value_type *__s, std::string **a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 28);
  if (&__s[-v3] > v4)
  {
    return 0;
  }

  v7 = __s;
  if (v4 < 17)
  {
LABEL_9:
    v5 = v3 + v4;
    v12 = v3 + v4 - v7;
    if (v3 + v4 < v7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 358);
      v13 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: end >= ptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    std::string::append(*a3, v7, v12);
  }

  else
  {
    while (1)
    {
      v9 = *(a1 + 8) - v7 + 16;
      if (v9 < 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 351);
        v10 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (chunk_size) >= (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
      }

      std::string::append(*a3, v7, v9);
      v11 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v11)
      {
        return *a1;
      }

      v7 = v11 + 16;
      v4 = *(a1 + 28);
      if (v4 < 17)
      {
        v3 = *(a1 + 8);
        goto LABEL_9;
      }
    }
  }

  return v5;
}

void sub_265695B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::uint128::DivModImpl(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5, unint64_t *a6)
{
  v6 = a2;
  v7 = a1;
  if (!(a3 | a4))
  {
    google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 86);
    v8 = google::protobuf::internal::LogMessage::operator<<(v45, "Division or mod by zero: dividend.hi=");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, v6);
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, ", lo=");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, v7);
    google::protobuf::internal::LogFinisher::operator=(&v44, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
    return;
  }

  v16 = a1 < a3;
  if (a2 != a4)
  {
    v16 = a2 < a4;
  }

  if (!v16)
  {
    if (a2)
    {
      v17 = HIDWORD(a2);
      if (!HIDWORD(a2))
      {
        v17 = a2;
      }

      if (v17 >> 16)
      {
        v18 = (32 * (HIDWORD(a2) != 0)) | 0x10;
      }

      else
      {
        v18 = 32 * (HIDWORD(a2) != 0);
      }

      if (v17 >> 16)
      {
        LODWORD(v17) = WORD1(v17);
      }

      if (v17 > 0xFF)
      {
        v18 |= 8u;
        LODWORD(v17) = v17 >> 8;
      }

      if (v17 > 0xF)
      {
        v18 |= 4u;
        LOBYTE(v17) = v17 >> 4;
      }

      v19 = v18 + ((0x3333333322221100uLL >> (4 * v17)) & 3) + 64;
      if (a4)
      {
LABEL_20:
        v20 = HIDWORD(a4);
        if (!HIDWORD(a4))
        {
          v20 = a4;
        }

        if (v20 >> 16)
        {
          v21 = (32 * (HIDWORD(a4) != 0)) | 0x10;
        }

        else
        {
          v21 = 32 * (HIDWORD(a4) != 0);
        }

        if (v20 >> 16)
        {
          LODWORD(v20) = WORD1(v20);
        }

        if (v20 > 0xFF)
        {
          v21 |= 8u;
          LODWORD(v20) = v20 >> 8;
        }

        if (v20 > 0xF)
        {
          v21 |= 4u;
          LOBYTE(v20) = v20 >> 4;
        }

        v22 = v21 + ((0x3333333322221100uLL >> (4 * v20)) & 3) + 64;
LABEL_60:
        v29 = (v19 - v22);
        if (v19 - v22 < 0)
        {
          v31 = 0;
          v30 = 0;
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = v29 + 1;
          do
          {
            *(&v33 + 1) = v30;
            *&v33 = v31;
            v30 = v33 >> 63;
            v31 *= 2;
            v34 = a3 << v29;
            if (v29 <= 0x7F)
            {
              v35 = a3 << v29;
            }

            else
            {
              v35 = 0;
            }

            v36 = (a4 << v29) | (a3 >> 1 >> ~v29);
            if (!v29)
            {
              v36 = a4;
              v34 = a3;
            }

            if (v29 > 0x3F)
            {
              v34 = 0;
            }

            else
            {
              v35 = v36;
            }

            v37 = v7 >= v34;
            v38 = v6 >= v35;
            v39 = v6 - v35;
            v40 = v38;
            if (v39)
            {
              v37 = v40;
            }

            v38 = v7 >= v34;
            v41 = v7 - v34;
            v42 = !v38;
            v43 = v39 - v42;
            if (v37)
            {
              v31 |= 1uLL;
              v7 = v41;
              v6 = v43;
            }

            --v29;
            --v32;
          }

          while (v32 > 0);
        }

        *a5 = v31;
        a5[1] = v30;
        goto LABEL_84;
      }
    }

    else
    {
      if (!a1)
      {
        google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 63);
        v23 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: (0) != (n): ");
        google::protobuf::internal::LogFinisher::operator=(&v44, &v23->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
      }

      v24 = HIDWORD(v7);
      if (!HIDWORD(v7))
      {
        v24 = v7;
      }

      if (v24 >> 16)
      {
        v25 = (32 * (HIDWORD(v7) != 0)) | 0x10;
      }

      else
      {
        v25 = 32 * (HIDWORD(v7) != 0);
      }

      if (v24 >> 16)
      {
        LODWORD(v24) = WORD1(v24);
      }

      if (v24 > 0xFF)
      {
        v25 |= 8u;
        LODWORD(v24) = v24 >> 8;
      }

      if (v24 > 0xF)
      {
        v25 |= 4u;
        LOBYTE(v24) = v24 >> 4;
      }

      v19 = ((0x3333333322221100uLL >> (4 * v24)) & 3) + v25;
      if (a4)
      {
        goto LABEL_20;
      }
    }

    if (!a3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 63);
      v26 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: (0) != (n): ");
      google::protobuf::internal::LogFinisher::operator=(&v44, &v26->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
    }

    v27 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v27 = a3;
    }

    if (v27 >> 16)
    {
      v28 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    else
    {
      v28 = 32 * (HIDWORD(a3) != 0);
    }

    if (v27 >> 16)
    {
      LODWORD(v27) = WORD1(v27);
    }

    if (v27 > 0xFF)
    {
      v28 |= 8u;
      LODWORD(v27) = v27 >> 8;
    }

    if (v27 > 0xF)
    {
      v28 |= 4u;
      LOBYTE(v27) = v27 >> 4;
    }

    v22 = ((0x3333333322221100uLL >> (4 * v27)) & 3) + v28;
    goto LABEL_60;
  }

  *a5 = 0;
  a5[1] = 0;
LABEL_84:
  *a6 = v7;
  a6[1] = v6;
}

void sub_265695F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t *google::protobuf::uint128::operator/=(unint64_t *a1, unint64_t *a2)
{
  v5 = 0uLL;
  google::protobuf::uint128::DivModImpl(*a1, a1[1], *a2, a2[1], &v5, &v4);
  *a1 = v5;
  return a1;
}

unint64_t *google::protobuf::uint128::operator%=(unint64_t *a1, unint64_t *a2)
{
  v4 = 0uLL;
  google::protobuf::uint128::DivModImpl(*a1, a1[1], *a2, a2[1], &v5, &v4);
  *a1 = v4;
  return a1;
}

void *google::protobuf::operator<<(uint64_t *a1, __int128 *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  if ((v4 & 0x4A) == 8)
  {
    v5 = 0x1000000000000000;
    v6 = 15;
  }

  else if ((v4 & 0x4A) == 0x40)
  {
    v5 = 0x8000000000000000;
    v6 = 21;
  }

  else
  {
    v5 = 0x8AC7230489E80000;
    v6 = 19;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  *(&v28 + *(v28 - 24) + 8) = *(&v28 + *(v28 - 24) + 8) & 0xFFFFBDB5 | v4 & 0x424A;
  v27 = *a2;
  v26[0] = 0;
  v26[1] = 0;
  google::protobuf::uint128::DivModImpl(v27, *(&v27 + 1), v5, 0, &v27, v26);
  v25[0] = 0;
  v25[1] = 0;
  google::protobuf::uint128::DivModImpl(v27, *(&v27 + 1), v5, 0, &v27, v25);
  if (v27)
  {
    MEMORY[0x26675B190](&v28);
    *(&v28 + *(v28 - 24) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v28, &v24);
    *(v7 + *(*v7 - 24) + 24) = v6;
    MEMORY[0x26675B190](&v28, v25[0]);
    v8 = &v28 + *(v28 - 24);
  }

  else
  {
    if (!v25[0])
    {
      goto LABEL_11;
    }

    MEMORY[0x26675B190](&v28);
    *(&v28 + *(v28 - 24) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v28, &v24);
    v8 = v9 + *(*v9 - 24);
  }

  *(v8 + 3) = v6;
LABEL_11:
  MEMORY[0x26675B190](&v28, v26[0]);
  std::stringbuf::str();
  v10 = *a1;
  v11 = a1 + *(*a1 - 24);
  v12 = *(v11 + 3);
  *(v11 + 3) = 0;
  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v14 = v12 - size;
  if (v12 > size)
  {
    v15 = v4 & 0xB0;
    v16 = (a1 + *(v10 - 24));
    fmtflags = v16[1].__fmtflags_;
    if (v15 == 32)
    {
      if (fmtflags == -1)
      {
        std::ios_base::getloc(v16);
        v18 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
        fmtflags = (v18->__vftable[2].~facet_0)(v18, 32);
        std::locale::~locale(&v33);
        v16[1].__fmtflags_ = fmtflags;
      }

      std::string::append(&v24, v14, fmtflags);
    }

    else
    {
      if (fmtflags == -1)
      {
        std::ios_base::getloc(v16);
        v19 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
        fmtflags = (v19->__vftable[2].~facet_0)(v19, 32);
        std::locale::~locale(&v33);
        v16[1].__fmtflags_ = fmtflags;
      }

      std::string::insert(&v24, 0, v14, fmtflags);
    }
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v24;
  }

  else
  {
    v20 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v24.__r_.__value_.__l.__size_;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v20, v21);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x277D82828];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
  v29 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  MEMORY[0x26675B290](&v32);
  return v22;
}

void sub_265696534(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale((v28 - 72));
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15, MEMORY[0x277D82828]);
  MEMORY[0x26675B290](va);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void google::protobuf::internal::EpsCopyInputStream::BackUp(google::protobuf::internal::EpsCopyInputStream *this, const char *a2)
{
  v2 = a2;
  if (*(this + 1) + 16 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 116);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: ptr <= buffer_end_ + kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 2) == (this + 40))
  {
    v5 = (*(this + 2) - v2 + 16);
  }

  else
  {
    v5 = (*(this + 6) + *(this + 2) - v2);
  }

  if (v5 >= 1)
  {
    (*(**(this + 4) + 24))(*(this + 4), v5);
    *(this + 21) += v5;
  }
}

void sub_265696748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::MessageLite::DebugString(google::protobuf::MessageLite *this@<X0>, std::string *a2@<X8>)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = "MessageLite at 0x";
  v5[1] = 17;
  google::protobuf::strings::AlphaNum::AlphaNum(v4, this, 1);
  google::protobuf::StrCat(v5, v4, a2);
  v3 = *MEMORY[0x277D85DE8];
}

void google::protobuf::MessageLite::LogInitializationErrorMessage(google::protobuf::MessageLite *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, &__p);
  google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
}

void sub_2656968D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::InitializationErrorMessage(const std::string::value_type *this@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, this);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  std::string::append(a3, p_p, v8);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 56))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12;
  }

  std::string::append(a3, v9, v10);
  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_265696A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *google::protobuf::MessageLite::New(google::protobuf::MessageLite *this, atomic_ullong *a2)
{
  v3 = (*(*this + 24))(this);
  if (a2)
  {
    google::protobuf::Arena::Own<google::protobuf::MessageLite>(a2, v3);
  }

  return v3;
}

uint64_t google::protobuf::MessageLite::MergeFromImpl(google::protobuf::MessageLite *a1, uint64_t a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v15[0] = &unk_287704DC0;
  v15[1] = a2;
  v6 = *(a2 + 52);
  v7 = *(a2 + 37);
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = v7;
  v22 = -NAN;
  v23 = v6;
  v24 = 0x80000000;
  v25 = 0uLL;
  v8 = google::protobuf::internal::EpsCopyInputStream::InitFrom(v16, v15);
  v24 = 0;
  v25 = *(a2 + 64);
  v9 = (*(*a1 + 88))(a1, v8, v16);
  if (!v9)
  {
    goto LABEL_14;
  }

  google::protobuf::internal::EpsCopyInputStream::BackUp(v16, v9);
  if (LODWORD(v22) == 1)
  {
    *(a2 + 36) = 1;
    if ((a3 & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    if ((*(*a1 + 48))(a1))
    {
      goto LABEL_12;
    }

    google::protobuf::MessageLite::LogInitializationErrorMessage(a1);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (!LODWORD(v22))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 240);
    v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: ctx.LastTag() != 1: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (v16[0] < v9 && (!v16[2] || &v9[-v16[1]] > v17))
  {
    goto LABEL_14;
  }

  *(a2 + 32) = LODWORD(v22) + 1;
  if ((a3 & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  result = 1;
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_265696CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParseFromCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedInputStream *a2)
{
  (*(*this + 40))(this);

  return google::protobuf::MessageLite::MergeFromImpl(this, a2, 1);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedInputStream *a2)
{
  (*(*this + 40))(this);

  return google::protobuf::MessageLite::MergeFromImpl(this, a2, 3);
}

uint64_t google::protobuf::MessageLite::ParseFromFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileInputStream::FileInputStream(v5, a2, -1);
  (*(*this + 40))(this);
  v3 = google::protobuf::internal::MergeFromImpl<false>();
  google::protobuf::MessageLite::ParseFromFileDescriptor(v5, v3, &v6);
  return v6;
}

void google::protobuf::io::FileInputStream::~FileInputStream(google::protobuf::io::FileInputStream *this)
{
  *this = &unk_287705250;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v1);
}

{
  *this = &unk_287705250;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v1);

  JUMPOUT(0x26675B300);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileInputStream::FileInputStream(v5, a2, -1);
  (*(*this + 40))(this);
  v3 = google::protobuf::internal::MergeFromImpl<false>();
  google::protobuf::MessageLite::ParseFromFileDescriptor(v5, v3, &v6);
  return v6;
}

uint64_t google::protobuf::MessageLite::ParseFromIstream(uint64_t a1, void *a2)
{
  google::protobuf::io::IstreamInputStream::IstreamInputStream(v6, a2, -1);
  (*(*a1 + 40))(a1);
  v4 = google::protobuf::internal::MergeFromImpl<false>();
  google::protobuf::MessageLite::ParseFromIstream(v4, a2, v6, &v7);
  return v7;
}

void sub_265696FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::IstreamInputStream::~IstreamInputStream(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::IstreamInputStream::~IstreamInputStream(google::protobuf::io::IstreamInputStream *this)
{
  *this = &unk_287705330;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 24));
  google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::~CopyingIstreamInputStream(v1);
}

{
  *this = &unk_287705330;
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 24));

  JUMPOUT(0x26675B300);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromIstream(uint64_t a1, void *a2)
{
  google::protobuf::io::IstreamInputStream::IstreamInputStream(v6, a2, -1);
  (*(*a1 + 40))(a1);
  v4 = google::protobuf::internal::MergeFromImpl<false>();
  google::protobuf::MessageLite::ParseFromIstream(v4, a2, v6, &v7);
  return v7;
}

void sub_2656970B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::IstreamInputStream::~IstreamInputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParseFromArray(google::protobuf::MessageLite *this, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    google::protobuf::MessageLite::ParseFromArray();
  }

  google::protobuf::MessageLite::ParseFromArray(a3, a2, this);
  return v4;
}

uint64_t google::protobuf::MessageLite::ParsePartialFromArray(google::protobuf::MessageLite *this, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    google::protobuf::MessageLite::ParseFromArray();
  }

  google::protobuf::MessageLite::ParsePartialFromArray(a3, a2, this);
  return v4;
}

uint64_t google::protobuf::MessageLite::SerializeWithCachedSizesToArray(google::protobuf::MessageLite *this, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = &a2[(*(*this + 80))(this)];
  v11[0] = v4;
  v11[1] = 0;
  v11[6] = 0;
  v12 = 0;
  v13 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  v5 = (*(*this + 96))(this, a2, v11);
  if (v4 != v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_265697268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeToCodedStream(google::protobuf::MessageLite *this, unsigned __int8 **a2)
{
  if (((*(*this + 48))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 372);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToCodedStream(this, a2);
}

void sub_265697360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToCodedStream(google::protobuf::MessageLite *this, unsigned __int8 **a2)
{
  v4 = (*(*this + 72))(this);
  if (v4 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 380);
    (*(*this + 16))(__p, this);
    v5 = google::protobuf::internal::LogMessage::operator<<(v23, __p);
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " exceeded maximum protobuf size of 2GB: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, v4);
    google::protobuf::internal::LogFinisher::operator=(&v20, &v7->__r_.__value_.__l.__data_);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    return 0;
  }

  else
  {
    v9 = google::protobuf::io::EpsCopyOutputStream::ByteCount(a2, a2[8]);
    v10 = a2[9];
    a2[8] = (*(*this + 96))(this, a2[8], a2);
    v11 = google::protobuf::io::CodedOutputStream::HadError(a2);
    if ((v11 & 1) == 0 && v4 != v10 + google::protobuf::io::EpsCopyOutputStream::ByteCount(a2, a2[8]) - (v9 + *(a2 + 18)))
    {
      if (v4 != (*(*this + 72))(this))
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 84);
        v12 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
        (*(*this + 16))(__p, this);
        v13 = google::protobuf::internal::LogMessage::operator<<(v12, __p);
        v14 = google::protobuf::internal::LogMessage::operator<<(v13, " was modified concurrently during serialization.");
        google::protobuf::internal::LogFinisher::operator=(&v20, &v14->__r_.__value_.__l.__data_);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 87);
      v15 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
      v16 = google::protobuf::internal::LogMessage::operator<<(v15, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of ");
      (*(*this + 16))(__p, this);
      v17 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
      v18 = google::protobuf::internal::LogMessage::operator<<(v17, ".");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v18->__r_.__value_.__l.__data_);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 92);
      v19 = google::protobuf::internal::LogMessage::operator<<(v23, "This shouldn't be called if all the sizes are equal.");
      google::protobuf::internal::LogFinisher::operator=(__p, &v19->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    }

    return v11 ^ 1u;
  }
}

void sub_2656976AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedOutputStream::HadError(char **this)
{
  v2 = google::protobuf::io::EpsCopyOutputStream::FlushAndResetBuffer(this, this[8]);
  this[8] = v2;
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 1062);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: cur_: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  return *(this + 56);
}

void sub_26569777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  if (((*(*this + 48))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 402);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToZeroCopyStream(this, a2);
}

void sub_26569786C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 72))(this);
  if (v4 >> 31)
  {
    v5 = v4;
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 410);
    (*(*this + 16))(__p, this);
    v6 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, " exceeded maximum protobuf size of 2GB: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, v5);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v8->__r_.__value_.__l.__data_);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    v9 = 0;
  }

  else
  {
    v16[0].__r_.__value_.__r.__words[0] = &v16[0].__r_.__value_.__r.__words[2];
    v16[0].__r_.__value_.__l.__size_ = &v16[0].__r_.__value_.__r.__words[2];
    v17 = a2;
    v18 = 0;
    v19 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
    v10 = (*(*this + 96))(this);
    google::protobuf::io::EpsCopyOutputStream::Trim(v16, v10);
    v9 = v18 ^ 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void sub_265697A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a17);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeToFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileOutputStream::FileOutputStream(v5, a2);
  if (google::protobuf::MessageLite::SerializeToZeroCopyStream(this, v5))
  {
    v3 = google::protobuf::io::CopyingOutputStreamAdaptor::Flush(v5);
  }

  else
  {
    v3 = 0;
  }

  google::protobuf::io::FileOutputStream::~FileOutputStream(v5);
  return v3;
}

void sub_265697AC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::FileOutputStream::~FileOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileOutputStream::FileOutputStream(v5, a2);
  if (google::protobuf::MessageLite::SerializePartialToZeroCopyStream(this, v5))
  {
    v3 = google::protobuf::io::CopyingOutputStreamAdaptor::Flush(v5);
  }

  else
  {
    v3 = 0;
  }

  google::protobuf::io::FileOutputStream::~FileOutputStream(v5);
  return v3;
}

void sub_265697B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::FileOutputStream::~FileOutputStream(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToOstream(google::protobuf::MessageLite *a1, void *a2)
{
  google::protobuf::io::OstreamOutputStream::OstreamOutputStream(v5, a2, -1);
  LODWORD(a1) = google::protobuf::MessageLite::SerializeToZeroCopyStream(a1, v5);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(v5);
  return a1 && *(a2 + *(*a2 - 24) + 32) == 0;
}

void sub_265697BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToOstream(google::protobuf::MessageLite *a1, uint64_t a2)
{
  google::protobuf::io::OstreamOutputStream::OstreamOutputStream(v5, a2, -1);
  v3 = google::protobuf::MessageLite::SerializePartialToZeroCopyStream(a1, v5);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(v5);
  return v3;
}

void sub_265697C38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendToString(const char *a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

void sub_265697D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v17, __p);
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, v6);
    google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v17;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v17[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v18 = 0;
  v19 = 0;
  v20 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  if (v17[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    google::protobuf::internal::LogMessage::~LogMessage(&v9->__r_.__value_.__l.__data_);
  }

  result = v7 == 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL google::protobuf::MessageLite::SerializeToString(const char *a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return google::protobuf::MessageLite::AppendToString(a1, a2);
}

BOOL google::protobuf::MessageLite::SerializePartialToString(uint64_t a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

uint64_t google::protobuf::MessageLite::SerializeToArray(google::protobuf::MessageLite *this, char *a2, int a3)
{
  if (((*(*this + 48))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 480);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: IsInitialized(): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToArray(this, a2, a3);
}

void sub_2656980B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToArray(google::protobuf::MessageLite *this, char *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (*(*this + 72))(this);
  v7 = v6;
  if (v6 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 487);
    (*(*this + 16))(__p, this);
    v8 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " exceeded maximum protobuf size of 2GB: ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, v7);
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    goto LABEL_6;
  }

  if (v6 > a3)
  {
LABEL_6:
    result = 0;
    goto LABEL_10;
  }

  *&v16[0].__r_.__value_.__l.__data_ = &a2[v6];
  v17 = 0;
  v18 = 0;
  v19 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  if (&a2[v6] != (*(*this + 96))(this, a2, v16))
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v12 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
  }

  result = 1;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL google::protobuf::MessageLite::SerializeAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendToString(this, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_265698350(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::MessageLite::SerializePartialAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendPartialToString(this, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_2656983C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  v5 = google::protobuf::internal::ShutdownData::get(this);
  std::mutex::lock((v5 + 24));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - *v5;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(v5, v12);
    }

    v13 = (16 * v9);
    *v13 = this;
    v13[1] = a2;
    v8 = 16 * v9 + 16;
    v14 = *(v5 + 8) - *v5;
    v15 = (16 * v9 - v14);
    memcpy(v15, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = this;
    v7[1] = a2;
    v8 = (v7 + 2);
  }

  *(v5 + 8) = v8;

  std::mutex::unlock((v5 + 24));
}

uint64_t google::protobuf::internal::ShutdownData::get(google::protobuf::internal::ShutdownData *this)
{
  {
    operator new();
  }

  return google::protobuf::internal::ShutdownData::get(void)::data;
}

google::protobuf::internal::ShutdownData *google::protobuf::ShutdownProtobufLibrary(google::protobuf::internal::ShutdownData *this)
{
  if ((google::protobuf::ShutdownProtobufLibrary(void)::is_shutdown & 1) == 0)
  {
    this = google::protobuf::internal::ShutdownData::get(this);
    if (this)
    {
      google::protobuf::internal::ShutdownData::~ShutdownData(this);
      this = MEMORY[0x26675B300]();
    }

    google::protobuf::ShutdownProtobufLibrary(void)::is_shutdown = 1;
  }

  return this;
}

uint64_t google::protobuf::ZeroCopyCodedInputStream::Next(google::protobuf::io::CodedInputStream **this, const void **a2, int *a3)
{
  DirectBufferPointer = google::protobuf::io::CodedInputStream::GetDirectBufferPointer(this[1], a2, a3);
  if (DirectBufferPointer)
  {
    v6 = *a3;
    if ((v6 & 0x80000000) == 0)
    {
      v7 = this[1];
      v8 = *(v7 + 2) - *v7;
      if (v6 <= v8)
      {
        *v7 += v6;
      }

      else
      {
        google::protobuf::io::CodedInputStream::SkipFallback(v7, v6, v8);
      }
    }
  }

  return DirectBufferPointer;
}

uint64_t google::protobuf::ZeroCopyCodedInputStream::Skip(google::protobuf::ZeroCopyCodedInputStream *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(this + 1);
  v3 = *(v2 + 2) - *v2;
  if (v3 < a2)
  {
    return google::protobuf::io::CodedInputStream::SkipFallback(v2, a2, v3);
  }

  *v2 += a2;
  return 1;
}

void google::protobuf::internal::ShutdownData::~ShutdownData(google::protobuf::internal::ShutdownData *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = v3 - 2;
  if (*this != v3 && v4 > v2)
  {
    do
    {
      v6 = *v2;
      *v2 = *v4;
      *v4 = v6;
      v7 = v2[1];
      v2[1] = v4[1];
      v4[1] = v7;
      v2 += 2;
      v4 -= 2;
    }

    while (v2 < v4);
    v2 = *this;
    v3 = *(this + 1);
  }

  while (v2 != v3)
  {
    (*v2)(v2[1]);
    v2 += 2;
  }

  std::mutex::~mutex((this + 24));
  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -1)
  {

    return google::protobuf::internal::EpsCopyInputStream::InitFrom(a1, a2);
  }

  else
  {
    *(a1 + 84) = a3;
    result = google::protobuf::internal::EpsCopyInputStream::InitFrom(a1, a2);
    v6 = *(a1 + 8);
    v7 = result - v6 + a3;
    *(a1 + 28) = v7;
    *a1 = v6 + (v7 & (v7 >> 31));
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, char a2, _BYTE *a3)
{
  *a3 = a2 & (*(a1 + 24) == 0);
  *a1 = &unk_287705250;
  v4 = (a1 + 32);

  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(v4);
}

void google::protobuf::MessageLite::ParseFromIstream(char a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a1)
  {
    v5 = (*(a2 + *(*a2 - 24) + 32) >> 1) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  OUTLINED_FUNCTION_7_0(a4, v5);
  *v4 = v6;
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((v7 + 24));
  google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::~CopyingIstreamInputStream((v4 + 1));
}

uint64_t google::protobuf::MessageLite::ParseFromArray(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = google::protobuf::internal::MergeFromImpl<false>();
  *v3 = result;
  return result;
}

uint64_t google::protobuf::MessageLite::ParsePartialFromArray(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = google::protobuf::internal::MergeFromImpl<false>();
  *v3 = result;
  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this)
{
  if (*(this + 7) <= 16)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: limit_ > kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::EpsCopyInputStream::NextBuffer(this, 0, -1);
  v4 = *(this + 1);
  if (result)
  {
    v5 = *(this + 7) + result - v4;
    *(this + 7) = v5;
    v4 += v5 & (v5 >> 31);
  }

  else
  {
    *(this + 20) = 1;
  }

  *this = v4;
  return result;
}

void sub_265698C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::NextBuffer(google::protobuf::internal::EpsCopyInputStream *this, unsigned int a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v5 = (this + 40);
  if (v3 != (this + 40))
  {
    v6 = *(this + 6);
    if (v6 <= 16)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ > kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&__src, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
      v3 = *(this + 2);
      v6 = *(this + 6);
    }

    *(this + 1) = v3 + v6 - 16;
    *(this + 2) = v5;
    if (*(this + 9) == 1)
    {
      *(this + 9) = 2;
    }

    return v3;
  }

  *v5 = **(this + 1);
  if (*(this + 21) < 1)
  {
    goto LABEL_23;
  }

  v8 = a3;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun >= 0: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
LABEL_27:
    v16 = this + 56;
    v17 = v5 + a2;
    v18 = v17;
    while (1)
    {
      v19 = *v18++;
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v20 + (*v18 << 7) - 128;
        if (*v18 < 0)
        {
          v18 = v17 + 3;
          v25 = -21;
          while (1)
          {
            v20 += (*(v18 - 1) - 1) << (v25 + 35);
            if ((*(v18 - 1) & 0x80000000) == 0)
            {
              break;
            }

            ++v18;
            v25 += 7;
            if (!v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v18 = v17 + 2;
        }
      }

      if (v18 > v16)
      {
        goto LABEL_16;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20 & 7;
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            ++v8;
            break;
          case 4:
            v24 = __OFSUB__(v8--, 1);
            if (v8 < 0 != v24)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            v18 += 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v18 += 8;
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            SizeFallback = google::protobuf::internal::ReadSizeFallback(v18, v22);
            if (!SizeFallback)
            {
              goto LABEL_16;
            }
          }

          else
          {
            SizeFallback = v18 + 1;
          }

          if (v16 - SizeFallback < v22)
          {
            goto LABEL_16;
          }

          v18 = &SizeFallback[v22];
        }
      }

      else
      {
        v34[0].__r_.__value_.__r.__words[0] = 0;
        v18 = google::protobuf::internal::VarintParse<unsigned long long>(v18, v34);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= 0x11)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun <= kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  if (a2 != 16)
  {
    goto LABEL_27;
  }

LABEL_16:
  __src = 0;
  if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
  {
LABEL_22:
    *(this + 21) = 0;
LABEL_23:
    if (*(this + 9) == 2)
    {
      *(this + 9) = *(this + 1) - v3;
    }

    *(this + 1) = this + 56;
    *(this + 2) = 0;
    *(this + 6) = 0;
    return v5;
  }

  while (1)
  {
    v12 = *(this + 6);
    *(this + 21) -= v12;
    if (v12 >= 17)
    {
      v28 = *(this + 9);
      v27 = (this + 72);
      v26 = v28;
      v29 = (v27 - 2);
      v30 = __src;
      *(v27 - 1) = *__src;
      *(v27 - 7) = v30;
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      break;
    }

    if (v12)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ == 0: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(this + 6));
      google::protobuf::internal::LogFinisher::operator=(&v32, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    }

    if (((*(**(this + 4) + 16))(*(this + 4), &__src, this + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy(this + 56, __src, v12);
  v31 = *(this + 9);
  v27 = (this + 72);
  v26 = v31;
  v29 = v5 + v12;
  *(v27 - 7) = v5;
LABEL_59:
  *(v27 - 8) = v29;
  if (v26 > 1)
  {
    *v27 = 1;
  }

  return v5;
}

void sub_265699024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneFallback(google::protobuf::internal::EpsCopyInputStream *this, signed int a2, int a3)
{
  v3 = *(this + 7);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun != limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (v3 <= v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun < limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (*this != *(this + 1) + (v3 & (v3 >> 31)))
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (v3 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  if (*this != *(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    if (v5 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun >= 0: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    Buffer = google::protobuf::internal::EpsCopyInputStream::NextBuffer(this, v5, a3);
    if (!Buffer)
    {
      break;
    }

    v14 = *(this + 1);
    v15 = *(this + 7) + Buffer - v14;
    *(this + 7) = v15;
    result = Buffer + v5;
    v5 = result - v14;
    if (result - v14 < 0)
    {
      *this = v14 + (v15 & (v15 >> 31));
      return result;
    }
  }

  if (v5)
  {
    return 0;
  }

  if (*(this + 7) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  result = *(this + 1);
  *this = result;
  *(this + 20) = 1;
  return result;
}

void sub_265699304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::SkipFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v5 = *(this + 2) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    if (!*(this + 2) || *(this + 7) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!result)
    {
      return result;
    }

    v5 = *(this + 2) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

void sub_26569941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  __src = 0;
  v7 = 0;
  *(a1 + 28) = 0x7FFFFFFF;
  if ((*(*a2 + 16))(a2, &__src, &v7))
  {
    v3 = v7;
    *(a1 + 84) -= v7;
    if (v3 < 17)
    {
      *a1 = a1 + 56;
      *(a1 + 8) = a1 + 56;
      *(a1 + 16) = a1 + 40;
      v4 = (a1 - v3 + 72);
      memcpy(v4, __src, v3);
    }

    else
    {
      v4 = __src;
      *(a1 + 28) = *(a1 + 28) - v3 + 16;
      v5 = v4 + v3 - 16;
      *a1 = v5;
      *(a1 + 8) = v5;
      *(a1 + 16) = a1 + 40;
      if (*(a1 + 72) == 1)
      {
        *(a1 + 72) = 2;
      }
    }
  }

  else
  {
    *(a1 + 84) = 0;
    *(a1 + 24) = 0;
    v4 = (a1 + 40);
    *(a1 + 8) = a1 + 40;
    *(a1 + 16) = 0;
    *a1 = a1 + 40;
  }

  return v4;
}

void google::protobuf::internal::WriteVarint(int a1, unint64_t a2, std::string *this)
{
  v5 = (8 * a1);
  if (v5 < 0x80)
  {
    LOBYTE(v6) = 8 * a1;
  }

  else
  {
    do
    {
      std::string::push_back(this, v5 | 0x80);
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  std::string::push_back(this, v6);
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      std::string::push_back(this, a2 | 0x80);
      v8 = a2 >> 7;
      v9 = a2 >> 14;
      a2 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
}

std::string *google::protobuf::internal::WriteLengthDelimited(int a1, const std::string::value_type *a2, std::string::size_type a3, std::string *this)
{
  v7 = (8 * a1) | 2u;
  if ((8 * a1) < 0x80)
  {
    LOBYTE(v8) = (8 * a1) | 2;
  }

  else
  {
    do
    {
      std::string::push_back(this, v7 | 0x80);
      v8 = v7 >> 7;
      v9 = v7 >> 14;
      v7 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
  LOBYTE(v10) = a3;
  if (a3 >= 0x80)
  {
    v11 = a3;
    do
    {
      std::string::push_back(this, v11 | 0x80);
      v10 = v11 >> 7;
      v12 = v11 >> 14;
      v11 >>= 7;
    }

    while (v12);
  }

  std::string::push_back(this, v10);

  return std::string::append(this, a2, a3);
}

char *google::protobuf::internal::VarintParseSlow32(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 35)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = this + 6;
      v6 = 5;
      result = 0;
      while (*(v5 - 1) < 0)
      {
        ++v5;
        if (!--v6)
        {
          return result;
        }
      }

      return v5;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::VarintParseSlow64(google::protobuf::internal *this, unint64_t a2)
{
  a2 = a2;
  result = this + 3;
  v4 = this + 2;
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::ReadTagFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = this + 2;
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    LODWORD(a2) = ((v6 - 1) << (v5 + 35)) + a2;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

BOOL google::protobuf::internal::VerifyUTF8(google::protobuf::internal *a1, const char *a2, google::protobuf::internal *a3)
{
  IsStructurallyValidUTF8 = google::protobuf::internal::IsStructurallyValidUTF8(a1, a2);
  if (!IsStructurallyValidUTF8)
  {
    google::protobuf::internal::PrintUTF8ErrorLog(a3, "parsing", 0);
  }

  return IsStructurallyValidUTF8;
}

char *google::protobuf::internal::InlineGreedyStringParser(uint64_t a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<unsigned int>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<int>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<unsigned long long>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<long long>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<float>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<double>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(a3, v6, v5, a1);
}

char *google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(google::protobuf::internal::UnknownFieldLiteParserHelper *a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v10 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v10, *(this + 23)))
    {
      return v10;
    }

    v5 = v10 + 1;
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = v10 + 3;
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          ++v5;
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = v10 + 2;
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, a1, v5);
    if (!v10)
    {
      return 0;
    }
  }

  *(this + 20) = v6 - 1;
  return v5;
}

google::protobuf::internal *google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(unint64_t a1, std::string *this, google::protobuf::internal *a3, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = a3;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = google::protobuf::internal::LogMessage::operator<<(v12, "Can't happen");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = (a3 + 4);
        google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(this, v4, *a3);
      }

      return v5;
    }

    result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(this, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = google::protobuf::internal::VarintParse<unsigned long long>(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(this, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = (a3 + 8);
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(this, v4, *a3);
    return v5;
  }

  result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(this, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_265699EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::VarintParse<unsigned long long>(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26569A12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26569A3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<unsigned int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<unsigned int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26569A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26569A99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<unsigned long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<unsigned long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26569AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26569AF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26569B224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<BOOL>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<BOOL>::elements(a3) + v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<BOOL>::elements(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

void google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(std::string **this, int a2, unint64_t a3)
{
  v3 = *this;
  if (*this)
  {
    v6 = (8 * a2);
    if (v6 < 0x80)
    {
      LOBYTE(v7) = 8 * a2;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9 = *this;
    if (a3 < 0x80)
    {
      LOBYTE(v10) = a3;
    }

    else
    {
      do
      {
        std::string::push_back(v9, a3 | 0x80);
        v10 = a3 >> 7;
        v11 = a3 >> 14;
        a3 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v9, v10);
  }
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(std::string *this, int a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 1u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v10[0] = a3;
    this = std::string::append(*v5, v10, 8uLL);
  }

  v9 = *MEMORY[0x277D85DE8];
  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(std::string **this, int a2, std::string::value_type *a3, google::protobuf::internal::ParseContext *a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, *a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = *this;
  if (*this)
  {
    v10 = (8 * a2) | 2u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v9, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v9, v11);
    v14 = v7;
    v15 = *this;
    if (v7 < 0x80)
    {
      LOBYTE(v16) = v7;
    }

    else
    {
      do
      {
        std::string::push_back(v15, v14 | 0x80);
        v16 = v14 >> 7;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
    }

    std::string::push_back(v15, v16);
    v18 = *this;

    return google::protobuf::internal::EpsCopyInputStream::AppendString(a4, v8, v7, v18);
  }

  else if (*(a4 + 1) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::SkipFallback(a4, v8, v7);
  }
}

char *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(std::string **this, int a2, char *a3, int32x2_t *a4)
{
  v7 = *this;
  v8 = 8 * a2;
  if (*this)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  v14 = google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(this, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *this;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(std::string *this, int a2, int a3)
{
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::AppendString(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return google::protobuf::internal::EpsCopyInputStream::AppendStringFallback();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void OUTLINED_FUNCTION_0_3(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return google::protobuf::internal::LogMessage::LogMessage(va, 3, v2, 323);
}

std::string *OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void *google::protobuf::RepeatedField<BOOL>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *google::protobuf::RepeatedField<BOOL>::RepeatedField(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, v4);
    google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<BOOL>::elements(a2);
    memcpy(v6, v8, *a2);
  }

  return a1;
}

void sub_26569C010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  if (v6)
  {
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v3 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<BOOL>::elements(a1);
  if (*a1 >= 1)
  {
    v11 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    memcpy(v11, v5 + 1, *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_26569C1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_26569C280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_26569C36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_26569C44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<BOOL>::InternalDeallocate(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

int *google::protobuf::RepeatedField<BOOL>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<BOOL>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<BOOL>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<BOOL>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<BOOL>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<BOOL>::InternalSwap(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 4))
  {
    v5 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_26569C6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<BOOL>::operator=(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2);
    }

    else
    {
      *a1 = 0;
      google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<BOOL>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_26569C8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::at(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_26569C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26569CA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Set(_DWORD *a1, int a2, char *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v8 = *a3;
  result = google::protobuf::RepeatedField<BOOL>::elements(a1);
  *(result + a2) = v8;
  return result;
}

void sub_26569CB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Add(int *a1, char *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, v3 + 1);
    result = google::protobuf::RepeatedField<BOOL>::elements(a1);
    *(result + v3) = v4;
  }

  else
  {
    result = google::protobuf::RepeatedField<BOOL>::elements(a1);
    *(result + v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::Add(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, v2 + 1);
  }

  v3 = google::protobuf::RepeatedField<BOOL>::elements(a1);
  *a1 = v2 + 1;
  return v3 + v2;
}

void google::protobuf::RepeatedField<BOOL>::RemoveLast(int *a1)
{
  v2 = *a1;
  if (*a1 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
    v2 = *a1;
  }

  *a1 = v2 - 1;
}

void sub_26569CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::ExtractSubrange(int *a1, int a2, int a3, _BYTE *a4)
{
  v6 = a2;
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1391);
    v8 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1392);
  v9 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v16, &v9->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
LABEL_6:
  v10 = a3 + v6;
  if (a3 + v6 > *a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1393);
    v11 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (start + num) <= (this->current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (a4 && a3 >= 1)
  {
    v12 = a3;
    v13 = v6;
    do
    {
      *a4++ = *google::protobuf::RepeatedField<BOOL>::Get(a1, v13++);
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *a1;
    while (v10 < v14)
    {
      v15 = google::protobuf::RepeatedField<BOOL>::Get(a1, v10);
      google::protobuf::RepeatedField<BOOL>::Set(a1, v6, v15);
      ++v10;
      v14 = *a1;
      ++v6;
    }

    if (v14 >= 1)
    {
      *a1 = v14 - a3;
    }
  }
}

void sub_26569CE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::Truncate(int *a1, int a2)
{
  v4 = *a1;
  if (*a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (new_size) <= (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  if (v4 >= 1)
  {
    *a1 = a2;
  }
}

void sub_26569CF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<BOOL>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<BOOL>::elements(a2);
    memcpy(v6, v8, *a2);
  }
}

void sub_26569D058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddAlreadyReserved(int *a1, char *a2)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  result = google::protobuf::RepeatedField<BOOL>::elements(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + v7) = v5;
  return result;
}

void sub_26569D108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddAlreadyReserved(int *a1)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v3 = google::protobuf::RepeatedField<BOOL>::elements(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + v4;
}

void sub_26569D1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::Resize(int *a1, int a2, unsigned __int8 *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (new_size) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a1 < a2)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, a2);
    v7 = (google::protobuf::RepeatedField<BOOL>::elements(a1) + *a1);
    v8 = google::protobuf::RepeatedField<BOOL>::elements(a1) + a2 - v7;
    if (v8 >= 1)
    {
      memset(v7, *a3, v8);
    }
  }

  *a1 = a2;
}

void sub_26569D290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::Swap(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      google::protobuf::RepeatedField<BOOL>::MergeFrom(&v9, a1);
      *a1 = 0;
      google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
      if (&v9 != a2)
      {
        google::protobuf::RepeatedField<BOOL>::InternalSwap(a2, &v9);
      }

      google::protobuf::RepeatedField<BOOL>::~RepeatedField(&v9);
    }
  }
}

double google::protobuf::RepeatedField<BOOL>::UnsafeArenaSwap(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::SwapElements(uint64_t a1, int a2, int a3)
{
  v6 = google::protobuf::RepeatedField<BOOL>::elements(a1);
  result = google::protobuf::RepeatedField<BOOL>::elements(a1);
  v8 = *(v6 + a2);
  *(v6 + a2) = *(result + a3);
  *(result + a3) = v8;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<BOOL>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = (v1 + 8);
  }

  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_26569D4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::erase(int *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 + 1);
  v5 = *(a1 + 1);
  v6 = v2 - v5;
  v7 = *a1;
  v8 = v5 + v6;
  v9 = v5 + v7 - v4;
  if ((v5 + v7) != v4)
  {
    memmove((v5 + v6), v4, v5 + v7 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v10 = v8 + v9 - v5;
  if (v7 < v10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v11 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (new_size) <= (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v10;
  }

  return *(a1 + 1) + v6;
}

void sub_26569D5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::erase(int *a1, void *a2, void *__src)
{
  v4 = *(a1 + 1);
  v5 = a2 - v4;
  if (a2 == __src)
  {
    v11 = v5;
  }

  else
  {
    v6 = *a1;
    v7 = a2;
    v8 = v4 + v6 - __src;
    if ((v4 + v6) != __src)
    {
      memmove((v4 + v5), __src, v4 + v6 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v9 = v7 + v8 - v4;
    if (v6 < v9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (new_size) <= (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
      LODWORD(v6) = *a1;
    }

    v11 = v5;
    if (v6 >= 1)
    {
      *a1 = v9;
    }
  }

  return *(a1 + 1) + v11;
}

void sub_26569D6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<int>::Reserve(a1, v4);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<int>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_26569D7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<int>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<int>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<int>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_26569D998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_26569DA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_26569DB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_26569DC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<int>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *google::protobuf::RepeatedField<int>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<int>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<int>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<int>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<int>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<int>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<int>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<int>::InternalSwap(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 4))
  {
    v5 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_26569DEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<int>::operator=(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      google::protobuf::RepeatedField<int>::InternalSwap(a1, a2);
    }

    else
    {
      *a1 = 0;
      google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<int>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_26569E068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}