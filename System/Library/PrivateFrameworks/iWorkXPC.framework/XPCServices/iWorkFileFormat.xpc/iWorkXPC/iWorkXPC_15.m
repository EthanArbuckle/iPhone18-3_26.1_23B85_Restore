char *sub_10011E8B4(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10011E310(i, &v10);
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
      *(*(a3 + 1) + 8 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 8 * v7) = v10;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10011E95C(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_10011EAA8(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_10011EAA8(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_10011EAA8(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_10011EAA8(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10011E310(i, &v10);
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
      *(*(a3 + 1) + 8 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 8 * v7) = v10;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10011EB50(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_10011EC9C(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_10011EC9C(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_10011EC9C(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_10011EC9C(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10011E310(i, &v10);
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
      *(*(a3 + 1) + 4 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10011ED50(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_10011EE9C(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_10011EE9C(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_10011EE9C(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_10011EE9C(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10011E310(i, &v10);
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
      *(*(a3 + 1) + 8 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10011EF50(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_10011F09C(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_10011F09C(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_10011F09C(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_10011F09C(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10011E310(i, &v10);
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
      *(*(a3 + 1) + v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

google::protobuf::internal::EpsCopyInputStream *sub_10011F14C(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v5 >> 2));
    v12 = *a4;
    v13 = (*(a4 + 1) + 4 * v12);
    *a4 = v12 + (v5 >> 2);
    memcpy(v13, v6, (v5 & 0xFFFFFFFC));
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
      v9 = *a4;
      v10 = (*(a4 + 1) + 4 * v9);
      *a4 = v9 + (v7 >> 2);
      memcpy(v10, v6, (v7 & 0xFFFFFFFC));
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

google::protobuf::internal::EpsCopyInputStream *sub_10011F254(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v5 >> 2));
    v12 = *a4;
    v13 = (*(a4 + 1) + 4 * v12);
    *a4 = v12 + (v5 >> 2);
    memcpy(v13, v6, (v5 & 0xFFFFFFFC));
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
      v9 = *a4;
      v10 = (*(a4 + 1) + 4 * v9);
      *a4 = v9 + (v7 >> 2);
      memcpy(v10, v6, (v7 & 0xFFFFFFFC));
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

google::protobuf::internal::EpsCopyInputStream *sub_10011F35C(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v5 >> 3));
    v12 = *a4;
    v13 = (*(a4 + 1) + 8 * v12);
    *a4 = v12 + (v5 >> 3);
    memcpy(v13, v6, (v5 & 0xFFFFFFF8));
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
      v9 = *a4;
      v10 = (*(a4 + 1) + 8 * v9);
      *a4 = v9 + (v7 >> 3);
      memcpy(v10, v6, (v7 & 0xFFFFFFF8));
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

google::protobuf::internal::EpsCopyInputStream *sub_10011F464(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v5 >> 3));
    v12 = *a4;
    v13 = (*(a4 + 1) + 8 * v12);
    *a4 = v12 + (v5 >> 3);
    memcpy(v13, v6, (v5 & 0xFFFFFFF8));
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
      v9 = *a4;
      v10 = (*(a4 + 1) + 8 * v9);
      *a4 = v9 + (v7 >> 3);
      memcpy(v10, v6, (v7 & 0xFFFFFFF8));
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

google::protobuf::internal::EpsCopyInputStream *sub_10011F56C(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v5 >> 2));
    v12 = *a4;
    v13 = (*(a4 + 1) + 4 * v12);
    *a4 = v12 + (v5 >> 2);
    memcpy(v13, v6, (v5 & 0xFFFFFFFC));
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
      v9 = *a4;
      v10 = (*(a4 + 1) + 4 * v9);
      *a4 = v9 + (v7 >> 2);
      memcpy(v10, v6, (v7 & 0xFFFFFFFC));
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

google::protobuf::internal::EpsCopyInputStream *sub_10011F674(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v5 >> 3));
    v12 = *a4;
    v13 = (*(a4 + 1) + 8 * v12);
    *a4 = v12 + (v5 >> 3);
    memcpy(v13, v6, (v5 & 0xFFFFFFF8));
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
      v9 = *a4;
      v10 = (*(a4 + 1) + 8 * v9);
      *a4 = v9 + (v7 >> 3);
      memcpy(v10, v6, (v7 & 0xFFFFFFF8));
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

void sub_10011F77C(std::string **a1, int a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1)
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
    v9 = *a1;
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

std::string *sub_10011F844(std::string *result, int a2, uint64_t a3)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
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
    v9 = a3;
    return std::string::append(*v5, &v9, 8uLL);
  }

  return result;
}

google::protobuf::internal::EpsCopyInputStream *sub_10011F904(std::string **a1, int a2, std::string::value_type *this, google::protobuf::internal::EpsCopyInputStream *a4)
{
  v7 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = this + 1;
  }

  v9 = *a1;
  if (*a1)
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
    v15 = *a1;
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
    v18 = *a1;

    return sub_10011FC0C(a4, v8, v7, v18);
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

google::protobuf::internal *sub_10011FA84(std::string **a1, int a2, char *a3, int32x2_t *a4)
{
  v7 = *a1;
  v8 = 8 * a2;
  v9 = (8 * a2) | 3;
  if (*a1)
  {
    if (v8 < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 3;
    }

    else
    {
      v10 = (8 * a2) | 3u;
      do
      {
        std::string::push_back(v7, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v7, v11);
  }

  v13 = sub_10011FC78(a4, a1, a3, v9);
  if (v13)
  {
    v14 = *a1;
    if (v14)
    {
      v15 = v8 | 4;
      if (v8 < 0x80)
      {
        LOBYTE(v16) = v8 | 4;
      }

      else
      {
        do
        {
          std::string::push_back(v14, v15 | 0x80);
          v16 = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }

      std::string::push_back(v14, v16);
    }
  }

  return v13;
}

std::string *sub_10011FB78(std::string *result, int a2, int a3)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
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

  return result;
}

google::protobuf::internal::EpsCopyInputStream *sub_10011FC0C(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
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

google::protobuf::internal *sub_10011FC78(int32x2_t *a1, int a2, char *a3, int a4)
{
  v4 = a1[11].i32[0];
  v5 = __OFSUB__(v4--, 1);
  a1[11].i32[0] = v4;
  if (v4 < 0 != v5)
  {
    return 0;
  }

  ++a1[11].i32[1];
  result = sub_10011E094(a2, a3, a1);
  a1[11] = vadd_s32(a1[11], 0xFFFFFFFF00000001);
  v9 = a1[10].i32[0];
  a1[10].i32[0] = 0;
  if (v9 != a4)
  {
    return 0;
  }

  return result;
}

void sub_10011FD14(uint64_t a1@<X8>)
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

std::string *sub_10011FD50(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void google::protobuf::internal::ReflectionOps::Copy(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  if (this != a2)
  {
    google::protobuf::internal::ReflectionOps::Clear(a2, a2);

    google::protobuf::internal::ReflectionOps::Merge(this, a2, v6);
  }
}

void google::protobuf::internal::ReflectionOps::Clear(google::protobuf::internal::ReflectionOps *this, google::protobuf::Message *a2)
{
  v3 = sub_10012083C(this);
  __p = 0;
  v9 = 0;
  v10 = 0;
  google::protobuf::Reflection::ListFieldsOmitStripped(v3, this, &__p);
  v5 = __p;
  v6 = v9;
  while (v5 != v6)
  {
    google::protobuf::Reflection::ClearField(v3, this, *v5++);
  }

  v7 = google::protobuf::Reflection::MutableUnknownFields(v3, this, v4);
  if (*v7 != *(v7 + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_10011FE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::ReflectionOps::Merge(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  if (this == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v67, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/reflection_ops.cc", 71);
    v5 = google::protobuf::internal::LogMessage::operator<<(v67, "CHECK failed: (&from) != (to): ");
    google::protobuf::internal::LogFinisher::operator=(&v71, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v67[0].__r_.__value_.__l.__data_);
  }

  v6 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v67, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/reflection_ops.cc", 74);
    v7 = google::protobuf::internal::LogMessage::operator<<(v67, "CHECK failed: (to->GetDescriptor()) == (descriptor): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Tried to merge messages of different types ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "(merge ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, *(v6 + 8));
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " to ");
    v12 = (*(*a2 + 152))(a2);
    v13 = google::protobuf::internal::LogMessage::operator<<(v11, *(v12 + 8));
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, ")");
    google::protobuf::internal::LogFinisher::operator=(&v71, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v67[0].__r_.__value_.__l.__data_);
  }

  v15 = sub_10012083C(this);
  v16 = sub_10012083C(a2);
  MessageFactory = google::protobuf::Reflection::GetMessageFactory(v15);
  v18 = google::protobuf::MessageFactory::generated_factory(MessageFactory);
  v19 = google::protobuf::Reflection::GetMessageFactory(v16);
  v20 = google::protobuf::MessageFactory::generated_factory(v19);
  memset(v67, 0, 24);
  google::protobuf::Reflection::ListFieldsOmitStripped(v15, this, &v67[0].__r_.__value_.__l.__data_);
  size = v67[0].__r_.__value_.__l.__size_;
  v22 = v67[0].__r_.__value_.__r.__words[0];
  if (v67[0].__r_.__value_.__r.__words[0] != v67[0].__r_.__value_.__l.__size_)
  {
    v61 = (MessageFactory == v18) ^ (v19 != v20);
    do
    {
      v23 = *v22;
      if (*(*v22 + 60) == 3)
      {
        if (!v61)
        {
          goto LABEL_25;
        }

        v24 = *(v23 + 48);
        if (v24)
        {
          v68 = *v22;
          v69 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v24, memory_order_acquire) != -1)
          {
            v71 = &v69;
            v72 = &v68;
            v70 = &v71;
            std::__call_once(v24, &v70, sub_1000B32C4);
          }
        }

        if (*(v23 + 56) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(v23) && (MapData = google::protobuf::Reflection::GetMapData(v15, this, v23), v26 = google::protobuf::Reflection::MutableMapData(v16, a2, v23), google::protobuf::internal::MapFieldBase::IsMapValid(v26)) && google::protobuf::internal::MapFieldBase::IsMapValid(MapData))
        {
          (*(*v26 + 72))(v26, MapData);
        }

        else
        {
LABEL_25:
          v30 = google::protobuf::Reflection::FieldSize(v15, this, v23);
          if (v30 >= 1)
          {
            for (i = 0; i != v30; ++i)
            {
              v32 = *(v23 + 48);
              if (v32)
              {
                v68 = v23;
                v69 = google::protobuf::FieldDescriptor::TypeOnceInit;
                if (atomic_load_explicit(v32, memory_order_acquire) != -1)
                {
                  v71 = &v69;
                  v72 = &v68;
                  v70 = &v71;
                  std::__call_once(v32, &v70, sub_1000B32C4);
                }
              }

              v33 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v23 + 56)];
              if (v33 > 5)
              {
                if (v33 <= 7)
                {
                  if (v33 == 6)
                  {
                    RepeatedFloat = google::protobuf::Reflection::GetRepeatedFloat(v15, this, v23, i);
                    google::protobuf::Reflection::AddFloat(v16, a2, v23, RepeatedFloat);
                  }

                  else
                  {
                    RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(v15, this, v23, i);
                    google::protobuf::Reflection::AddBool(v16, a2, v23, RepeatedBool);
                  }
                }

                else
                {
                  switch(v33)
                  {
                    case 8:
                      RepeatedEnum = google::protobuf::Reflection::GetRepeatedEnum(v15, this, v23, i);
                      google::protobuf::Reflection::AddEnum(v16, a2, v23, RepeatedEnum);
                      break;
                    case 9:
                      google::protobuf::Reflection::GetRepeatedString(v15, this, v23, i, __p);
                      google::protobuf::Reflection::AddString(v16, a2, v23, __p);
                      if (v66 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      break;
                    case 10:
                      RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v15, this, v23, i);
                      v36 = RepeatedMessage;
                      if (v15 == v16)
                      {
                        (*(*RepeatedMessage + 152))(RepeatedMessage);
                        v37 = google::protobuf::Reflection::GetMessageFactory(v45);
                      }

                      else
                      {
                        v37 = 0;
                      }

                      v46 = google::protobuf::Reflection::AddMessage(v16, a2, v23, v37);
                      (*(*v46 + 120))(v46, v36);
                      break;
                  }
                }
              }

              else if (v33 <= 2)
              {
                if (v33 == 1)
                {
                  RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(v15, this, v23, i);
                  google::protobuf::Reflection::AddInt32(v16, a2, v23, RepeatedInt32);
                }

                else if (v33 == 2)
                {
                  RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(v15, this, v23, i);
                  google::protobuf::Reflection::AddInt64(v16, a2, v23, RepeatedInt64);
                }
              }

              else if (v33 == 3)
              {
                RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(v15, this, v23, i);
                google::protobuf::Reflection::AddUInt32(v16, a2, v23, RepeatedUInt32);
              }

              else if (v33 == 4)
              {
                RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(v15, this, v23, i);
                google::protobuf::Reflection::AddUInt64(v16, a2, v23, RepeatedUInt64);
              }

              else
              {
                RepeatedDouble = google::protobuf::Reflection::GetRepeatedDouble(v15, this, v23, i);
                google::protobuf::Reflection::AddDouble(v16, a2, v23, RepeatedDouble);
              }
            }
          }
        }
      }

      else
      {
        v27 = *(v23 + 48);
        if (v27)
        {
          v68 = *v22;
          v69 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v27, memory_order_acquire) != -1)
          {
            v71 = &v69;
            v72 = &v68;
            v70 = &v71;
            std::__call_once(v27, &v70, sub_1000B32C4);
          }
        }

        v28 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v23 + 56)];
        if (v28 > 5)
        {
          if (v28 <= 7)
          {
            if (v28 == 6)
            {
              Float = google::protobuf::Reflection::GetFloat(v15, this, v23);
              google::protobuf::Reflection::SetFloat(v16, a2, v23, Float);
            }

            else
            {
              Bool = google::protobuf::Reflection::GetBool(v15, this, v23);
              google::protobuf::Reflection::SetBool(v16, a2, v23, Bool);
            }
          }

          else
          {
            switch(v28)
            {
              case 8:
                Enum = google::protobuf::Reflection::GetEnum(v15, this, v23);
                google::protobuf::Reflection::SetEnum(v16, a2, v23, Enum);
                break;
              case 9:
                google::protobuf::Reflection::GetString(v15, this, v23, v63);
                google::protobuf::Reflection::SetString(v16, a2, v23, v63);
                if (v64 < 0)
                {
                  operator delete(v63[0]);
                }

                break;
              case 10:
                Message = google::protobuf::Reflection::GetMessage(v15, this, v23, 0);
                v48 = Message;
                if (v15 == v16)
                {
                  (*(*Message + 152))(Message);
                  v49 = google::protobuf::Reflection::GetMessageFactory(v57);
                }

                else
                {
                  v49 = 0;
                }

                v58 = google::protobuf::Reflection::MutableMessage(v16, a2, v23, v49);
                (*(*v58 + 120))(v58, v48);
                break;
            }
          }
        }

        else if (v28 <= 2)
        {
          if (v28 == 1)
          {
            Int32 = google::protobuf::Reflection::GetInt32(v15, this, v23);
            google::protobuf::Reflection::SetInt32(v16, a2, v23, Int32);
          }

          else if (v28 == 2)
          {
            Int64 = google::protobuf::Reflection::GetInt64(v15, this, v23);
            google::protobuf::Reflection::SetInt64(v16, a2, v23, Int64);
          }
        }

        else if (v28 == 3)
        {
          UInt32 = google::protobuf::Reflection::GetUInt32(v15, this, v23);
          google::protobuf::Reflection::SetUInt32(v16, a2, v23, UInt32);
        }

        else if (v28 == 4)
        {
          UInt64 = google::protobuf::Reflection::GetUInt64(v15, this, v23);
          google::protobuf::Reflection::SetUInt64(v16, a2, v23, UInt64);
        }

        else
        {
          Double = google::protobuf::Reflection::GetDouble(v15, this, v23);
          google::protobuf::Reflection::SetDouble(v16, a2, v23, Double);
        }
      }

      v22 += 8;
    }

    while (v22 != size);
  }

  v59 = google::protobuf::Reflection::MutableUnknownFields(v16, a2, v21);
  UnknownFields = google::protobuf::Reflection::GetUnknownFields(v15, this);
  google::protobuf::UnknownFieldSet::MergeFrom(v59, UnknownFields);
  if (v67[0].__r_.__value_.__r.__words[0])
  {
    v67[0].__r_.__value_.__l.__size_ = v67[0].__r_.__value_.__r.__words[0];
    operator delete(v67[0].__r_.__value_.__l.__data_);
  }
}

uint64_t sub_10012083C(uint64_t a1)
{
  (*(*a1 + 152))(a1);
  v3 = v2;
  if (!v2)
  {
    v4 = (*(*a1 + 152))(a1);
    if (v4)
    {
      v5 = *v4;
      if (*(*v4 + 23) < 0)
      {
        sub_1000B32D8(&__dst, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        v14 = *(v5 + 2);
        __dst = v6;
      }
    }

    else
    {
      sub_1000B347C(&__dst, "unknown");
    }

    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/reflection_ops.cc", 59);
    v7 = google::protobuf::internal::LogMessage::operator<<(v12, "Message does not support reflection (type ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, &__dst);
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, ").");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__dst);
    }
  }

  return v3;
}

void sub_100120960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 - 25) < 0)
  {
    operator delete(*(v3 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ReflectionOps::IsInitialized(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2)
{
  v3 = (*(*this + 152))(this, a2);
  v4 = sub_10012083C(this);
  v5 = *(v3 + 104);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 152 * v5;
    do
    {
      v8 = (*(v3 + 40) + v6);
      if (*(v8 + 15) == 2 && !google::protobuf::Reflection::HasField(v4, this, v8))
      {
        return 0;
      }

      v6 += 152;
    }

    while (v7 != v6);
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  google::protobuf::Reflection::ListFieldsOmitStripped(v4, this, &__p);
  v9 = __p;
  v10 = v26;
  if (__p == v26)
  {
LABEL_36:
    v23 = 1;
    goto LABEL_40;
  }

  while (1)
  {
    v11 = *v9;
    v12 = *(*v9 + 48);
    if (v12)
    {
      v28 = *v9;
      v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v31 = &v29;
        v32 = &v28;
        v30[0] = &v31;
        std::__call_once(v12, v30, sub_1000B32C4);
      }
    }

    v13 = *(v11 + 56);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v13] != 10)
    {
      goto LABEL_33;
    }

    v14 = *(v11 + 48);
    if (v14)
    {
      v28 = v11;
      v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v14, memory_order_acquire) != -1)
      {
        v31 = &v29;
        v32 = &v28;
        v30[0] = &v31;
        std::__call_once(v14, v30, sub_1000B32C4);
      }

      LODWORD(v13) = *(v11 + 56);
    }

    if (v13 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(v11))
    {
      v15 = *(google::protobuf::FieldDescriptor::message_type(v11) + 40);
      v16 = *(v15 + 200);
      if (v16)
      {
        v28 = v15 + 152;
        v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v16, memory_order_acquire) != -1)
        {
          v31 = &v29;
          v32 = &v28;
          v30[0] = &v31;
          std::__call_once(v16, v30, sub_1000B32C4);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v15 + 208)] != 10)
      {
        goto LABEL_33;
      }

      MapData = google::protobuf::Reflection::GetMapData(v4, this, v11);
      if (google::protobuf::internal::MapFieldBase::IsMapValid(MapData))
      {
        sub_1001132CC(&v31, this, v11);
        sub_1001132CC(v30, this, v11);
        (*(*MapData + 56))(MapData, &v31);
        (*(*MapData + 64))(MapData, v30);
        while (1)
        {
          if ((*(*v32 + 48))(v32, &v31, v30))
          {
            sub_100113504(v30);
            sub_100113504(&v31);
            goto LABEL_33;
          }

          v18 = sub_1001026B0(&v33);
          if (((*(*v18 + 48))(v18) & 1) == 0)
          {
            break;
          }

          (*(*v32 + 152))(v32, &v31);
        }

        sub_100113504(v30);
        sub_100113504(&v31);
        goto LABEL_39;
      }
    }

    if (*(v11 + 60) == 3)
    {
      break;
    }

    Message = google::protobuf::Reflection::GetMessage(v4, this, v11, 0);
    if (((*(*Message + 48))(Message) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_33:
    v9 += 8;
    if (v9 == v10)
    {
      goto LABEL_36;
    }
  }

  v19 = google::protobuf::Reflection::FieldSize(v4, this, v11);
  if (v19 < 1)
  {
    goto LABEL_33;
  }

  v20 = 0;
  while (1)
  {
    RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v4, this, v11, v20);
    if (((*(*RepeatedMessage + 48))(RepeatedMessage) & 1) == 0)
    {
      break;
    }

    if (v19 == ++v20)
    {
      goto LABEL_33;
    }
  }

LABEL_39:
  v23 = 0;
LABEL_40:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v23;
}

void sub_100120E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_100113504(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::internal::ReflectionOps::DiscardUnknownFields(google::protobuf::internal::ReflectionOps *this, google::protobuf::Message *a2)
{
  v3 = sub_10012083C(this);
  v5 = google::protobuf::Reflection::MutableUnknownFields(v3, this, v4);
  if (*v5 != *(v5 + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  google::protobuf::Reflection::ListFields(v3, this, &v20);
  v6 = v20;
  v7 = v21;
  if (v20 != v21)
  {
    do
    {
      v8 = *v6;
      v9 = *(*v6 + 48);
      if (v9)
      {
        v23 = *v6;
        v24 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v9, memory_order_acquire) != -1)
        {
          v26 = &v24;
          v27 = &v23;
          v25[0] = &v26;
          std::__call_once(v9, v25, sub_1000B32C4);
        }
      }

      v10 = *(v8 + 56);
      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10] == 10)
      {
        v11 = *(v8 + 48);
        if (v11)
        {
          v23 = v8;
          v24 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v11, memory_order_acquire) != -1)
          {
            v26 = &v24;
            v27 = &v23;
            v25[0] = &v26;
            std::__call_once(v11, v25, sub_1000B32C4);
          }

          LODWORD(v10) = *(v8 + 56);
        }

        if (v10 != 11 || !google::protobuf::FieldDescriptor::is_map_message_type(v8))
        {
          goto LABEL_22;
        }

        v12 = *(google::protobuf::FieldDescriptor::message_type(v8) + 40);
        v13 = *(v12 + 200);
        if (v13)
        {
          v23 = v12 + 152;
          v24 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v13, memory_order_acquire) != -1)
          {
            v26 = &v24;
            v27 = &v23;
            v25[0] = &v26;
            std::__call_once(v13, v25, sub_1000B32C4);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + 208)] == 10)
        {
          v14 = google::protobuf::Reflection::MutableMapData(v3, this, v8);
          if (google::protobuf::internal::MapFieldBase::IsMapValid(v14))
          {
            sub_1001132CC(&v26, this, v8);
            sub_1001132CC(v25, this, v8);
            (*(*v14 + 56))(v14, &v26);
            (*(*v14 + 64))(v14, v25);
            while (((*(*v27 + 48))(v27, &v26, v25) & 1) == 0)
            {
              google::protobuf::internal::MapFieldBase::SetMapDirty(v27);
              v15 = sub_1001025B8(&v28);
              (*(*v15 + 128))(v15);
              (*(*v27 + 152))(v27, &v26);
            }

            sub_100113504(v25);
            sub_100113504(&v26);
          }
        }

        else
        {
LABEL_22:
          if (*(v8 + 60) == 3)
          {
            v16 = google::protobuf::Reflection::FieldSize(v3, this, v8);
            if (v16 >= 1)
            {
              v17 = 0;
              do
              {
                v18 = google::protobuf::Reflection::MutableRepeatedMessage(v3, this, v8, v17);
                (*(*v18 + 128))(v18);
                ++v17;
              }

              while (v16 != v17);
            }
          }

          else
          {
            v19 = google::protobuf::Reflection::MutableMessage(v3, this, v8, 0);
            (*(*v19 + 128))(v19);
          }
        }
      }

      v6 += 8;
    }

    while (v6 != v7);
    v6 = v20;
  }

  if (v6)
  {
    v21 = v6;
    operator delete(v6);
  }
}

void sub_100121264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_100113504(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::internal::ReflectionOps::FindInitializationErrors(const google::protobuf::Message *a1, const void **a2, uint64_t a3)
{
  v6 = (*(*a1 + 152))(a1);
  v7 = sub_10012083C(a1);
  v8 = *(v6 + 104);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 152 * v8;
    do
    {
      v11 = (*(v6 + 40) + v9);
      if (*(v11 + 15) == 2 && (google::protobuf::Reflection::HasField(v7, a1, v11) & 1) == 0)
      {
        sub_1000F1244(a2, *(*(v6 + 40) + v9), &__p);
        v13 = *(a3 + 8);
        v12 = *(a3 + 16);
        if (v13 >= v12)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a3) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_100070E64();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v16;
          }

          v40 = a3;
          if (v18)
          {
            sub_1000CE87C(a3, v18);
          }

          v19 = 24 * v15;
          v20 = *&__p.__r_.__value_.__l.__data_;
          *(v19 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v19 = v20;
          memset(&__p, 0, sizeof(__p));
          v21 = 24 * v15 + 24;
          v22 = *(a3 + 8) - *a3;
          v23 = 24 * v15 - v22;
          memcpy((v19 - v22), *a3, v22);
          v24 = *a3;
          *a3 = v23;
          *(a3 + 8) = v21;
          v25 = *(a3 + 16);
          *(a3 + 16) = 0;
          v38 = v24;
          v39 = v25;
          v36 = v24;
          v37 = v24;
          sub_1000CE8D4(&v36);
          v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a3 + 8) = v21;
          if (v26 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v14 = *&__p.__r_.__value_.__l.__data_;
          *(v13 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v13 = v14;
          *(a3 + 8) = v13 + 24;
        }
      }

      v9 += 152;
    }

    while (v10 != v9);
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  google::protobuf::Reflection::ListFieldsOmitStripped(v7, a1, &v36);
  v27 = v36;
  v28 = v37;
  if (v36 != v37)
  {
    do
    {
      v29 = *v27;
      v30 = *(*v27 + 6);
      if (v30)
      {
        v41 = *v27;
        v42 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v30, memory_order_acquire) != -1)
        {
          __p.__r_.__value_.__r.__words[0] = &v42;
          __p.__r_.__value_.__l.__size_ = &v41;
          p_p = &__p;
          std::__call_once(v30, &p_p, sub_1000B32C4);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v29[14]] == 10)
      {
        if (v29[15] == 3)
        {
          v31 = google::protobuf::Reflection::FieldSize(v7, a1, v29);
          if (v31 >= 1)
          {
            v32 = 0;
            do
            {
              RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v7, a1, v29, v32);
              sub_1001216A4(a2, v29, v32, &__p);
              google::protobuf::internal::ReflectionOps::FindInitializationErrors(RepeatedMessage, &__p, a3);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v32 = (v32 + 1);
            }

            while (v31 != v32);
          }
        }

        else
        {
          Message = google::protobuf::Reflection::GetMessage(v7, a1, v29, 0);
          sub_1001216A4(a2, v29, 0xFFFFFFFFLL, &__p);
          google::protobuf::internal::ReflectionOps::FindInitializationErrors(Message, &__p, a3);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      ++v27;
    }

    while (v27 != v28);
    v27 = v36;
  }

  if (v27)
  {
    v37 = v27;
    operator delete(v27);
  }
}

void sub_10012163C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001216A4@<X0>(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, google::protobuf *a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_1000B32D8(a4, *a1, *(a1 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a1;
    a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  if (*(a2 + 67) == 1)
  {
    std::string::append(a4, "(");
    v7 = a2[1];
    v8 = v7[23];
    if (v8 >= 0)
    {
      v9 = a2[1];
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 1);
    }

    std::string::append(a4, v9, v10);
    std::string::append(a4, ")");
  }

  else
  {
    v11 = (*a2)[23];
    if (v11 >= 0)
    {
      v12 = *a2;
    }

    else
    {
      v12 = **a2;
    }

    if (v11 >= 0)
    {
      v13 = *(*a2 + 23);
    }

    else
    {
      v13 = *(*a2 + 1);
    }

    std::string::append(a4, v12, v13);
  }

  if (a3 != -1)
  {
    std::string::append(a4, "[");
    __src = v24;
    v15 = google::protobuf::FastInt32ToBufferLeft(a3, v24, v14);
    v16 = v15 - v24;
    v23 = v15 - v24;
    if ((v15 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000B337C();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v21 = v15 - v24;
    if (v15 != v24)
    {
      memmove(__p, __src, v16);
    }

    *(__p + v16) = 0;
    if ((v21 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v18 = v21;
    }

    else
    {
      v18 = __p[1];
    }

    std::string::append(a4, v17, v18);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::append(a4, "]");
  }

  return std::string::append(a4, ".");
}

void sub_1001218BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *google::protobuf::internal::GenericSwap(google::protobuf::internal *this, google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = (*(*a2 + 32))(a2, v5, a3);
  v7 = v6;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  (*(*v6 + 64))(v6, this);
  (*(*this + 40))(this);
  (*(*this + 64))(this, a2);
  (*(*a2 + 152))(a2);
  result = google::protobuf::Reflection::Swap(v9, v7, a2);
  if (v8)
  {
    v11 = *(*v8 + 8);

    return v11(v8);
  }

  return result;
}

void sub_100121A68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100165F18(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::RepeatedField<BOOL>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, v4);
    v5 = *(a1 + 8);
    *a1 += *a2;
    memcpy(v5, *(a2 + 1), *a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<BOOL>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  if (v4)
  {
    v8 = sub_1000324F8(v4, v6 + 8);
  }

  else
  {
    v8 = operator new(v6 + 8);
  }

  *v8 = v4;
  v9 = v8 + 1;
  a1[1] = v6;
  *(a1 + 1) = v9;
  v10 = *a1;
  if (v10 >= 1)
  {
    memcpy(v9, v5 + 1, v10);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void google::protobuf::RepeatedField<BOOL>::Swap(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 2);
    if (a1[1])
    {
      v4 = (*v4 - 8);
    }

    v5 = *v4;
    v6 = *(a2 + 1);
    if (a2[1])
    {
      v6 = *(v6 - 1);
    }

    if (v5 == v6)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = *a2;
      *a2 = v12;
      *(a2 + 1) = v13;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v6;
      if (*a1)
      {
        google::protobuf::RepeatedField<BOOL>::Reserve(__dst, *a1);
        v7 = *a1;
        LODWORD(__dst[0]) += v7;
        memcpy(__dst[1], *(a1 + 1), v7);
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<BOOL>::Reserve(a1, *a2);
        v8 = *(a1 + 1);
        *a1 += *a2;
        memcpy(v8, *(a2 + 1), *a2);
      }

      if (__dst == a2)
      {
        LODWORD(v11) = HIDWORD(__dst[0]);
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 1);
        *a2 = *__dst;
        __dst[0] = v9;
        __dst[1] = v10;
        v11 = HIDWORD(v9);
      }

      if (v11 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_100121D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_100165F3C((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<int>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    v9 = sub_1000324F8(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<int>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<int>::Reserve(a1, v4);
    v5 = *(a1 + 8);
    *a1 += *a2;
    memcpy(v5, *(a2 + 1), 4 * *a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<int>::Add(unsigned int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<int>::Reserve(a1, v3 + 1);
    *(*(a1 + 1) + 4 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

void google::protobuf::RepeatedField<int>::Swap(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 2);
    if (a1[1])
    {
      v4 = (*v4 - 8);
    }

    v5 = *v4;
    v6 = *(a2 + 1);
    if (a2[1])
    {
      v6 = *(v6 - 1);
    }

    if (v5 == v6)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = *a2;
      *a2 = v12;
      *(a2 + 1) = v13;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v6;
      if (*a1)
      {
        google::protobuf::RepeatedField<int>::Reserve(__dst, *a1);
        v7 = *a1;
        LODWORD(__dst[0]) += v7;
        memcpy(__dst[1], *(a1 + 1), 4 * v7);
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<int>::Reserve(a1, *a2);
        v8 = *(a1 + 1);
        *a1 += *a2;
        memcpy(v8, *(a2 + 1), 4 * *a2);
      }

      if (__dst == a2)
      {
        LODWORD(v11) = HIDWORD(__dst[0]);
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 1);
        *a2 = *__dst;
        __dst[0] = v9;
        __dst[1] = v10;
        v11 = HIDWORD(v9);
      }

      if (v11 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_10012201C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_100165F3C((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<unsigned int>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    v9 = sub_1000324F8(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<unsigned int>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, v4);
    v5 = *(a1 + 8);
    *a1 += *a2;
    memcpy(v5, *(a2 + 1), 4 * *a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<unsigned int>::Add(unsigned int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, v3 + 1);
    *(*(a1 + 1) + 4 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

void google::protobuf::RepeatedField<unsigned int>::Swap(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 2);
    if (a1[1])
    {
      v4 = (*v4 - 8);
    }

    v5 = *v4;
    v6 = *(a2 + 1);
    if (a2[1])
    {
      v6 = *(v6 - 1);
    }

    if (v5 == v6)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = *a2;
      *a2 = v12;
      *(a2 + 1) = v13;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v6;
      if (*a1)
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve(__dst, *a1);
        v7 = *a1;
        LODWORD(__dst[0]) += v7;
        memcpy(__dst[1], *(a1 + 1), 4 * v7);
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve(a1, *a2);
        v8 = *(a1 + 1);
        *a1 += *a2;
        memcpy(v8, *(a2 + 1), 4 * *a2);
      }

      if (__dst == a2)
      {
        LODWORD(v11) = HIDWORD(__dst[0]);
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 1);
        *a2 = *__dst;
        __dst[0] = v9;
        __dst[1] = v10;
        v11 = HIDWORD(v9);
      }

      if (v11 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_100122334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_100165F3C((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<long long>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    v9 = sub_1000324F8(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<long long>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<long long>::Reserve(a1, v4);
    v5 = *(a1 + 8);
    *a1 += *a2;
    memcpy(v5, *(a2 + 1), 8 * *a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<long long>::Swap(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 2);
    if (a1[1])
    {
      v4 = (*v4 - 8);
    }

    v5 = *v4;
    v6 = *(a2 + 1);
    if (a2[1])
    {
      v6 = *(v6 - 1);
    }

    if (v5 == v6)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = *a2;
      *a2 = v12;
      *(a2 + 1) = v13;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v6;
      if (*a1)
      {
        google::protobuf::RepeatedField<long long>::Reserve(__dst, *a1);
        v7 = *a1;
        LODWORD(__dst[0]) += v7;
        memcpy(__dst[1], *(a1 + 1), 8 * v7);
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<long long>::Reserve(a1, *a2);
        v8 = *(a1 + 1);
        *a1 += *a2;
        memcpy(v8, *(a2 + 1), 8 * *a2);
      }

      if (__dst == a2)
      {
        LODWORD(v11) = HIDWORD(__dst[0]);
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 1);
        *a2 = *__dst;
        __dst[0] = v9;
        __dst[1] = v10;
        v11 = HIDWORD(v9);
      }

      if (v11 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_1001225E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_100165F3C((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<unsigned long long>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    v9 = sub_1000324F8(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, v4);
    v5 = *(a1 + 8);
    *a1 += *a2;
    memcpy(v5, *(a2 + 1), 8 * *a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<unsigned long long>::Add(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, v3 + 1);
    *(*(a1 + 1) + 8 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

void google::protobuf::RepeatedField<unsigned long long>::Swap(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 2);
    if (a1[1])
    {
      v4 = (*v4 - 8);
    }

    v5 = *v4;
    v6 = *(a2 + 1);
    if (a2[1])
    {
      v6 = *(v6 - 1);
    }

    if (v5 == v6)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = *a2;
      *a2 = v12;
      *(a2 + 1) = v13;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v6;
      if (*a1)
      {
        google::protobuf::RepeatedField<unsigned long long>::Reserve(__dst, *a1);
        v7 = *a1;
        LODWORD(__dst[0]) += v7;
        memcpy(__dst[1], *(a1 + 1), 8 * v7);
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, *a2);
        v8 = *(a1 + 1);
        *a1 += *a2;
        memcpy(v8, *(a2 + 1), 8 * *a2);
      }

      if (__dst == a2)
      {
        LODWORD(v11) = HIDWORD(__dst[0]);
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 1);
        *a2 = *__dst;
        __dst[0] = v9;
        __dst[1] = v10;
        v11 = HIDWORD(v9);
      }

      if (v11 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_100122900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_100165F3C((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::RepeatedField<float>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<float>::Reserve(a1, v4);
    v5 = *(a1 + 8);
    *a1 += *a2;
    memcpy(v5, *(a2 + 1), 4 * *a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<float>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    v9 = sub_1000324F8(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void google::protobuf::RepeatedField<float>::Swap(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 2);
    if (a1[1])
    {
      v4 = (*v4 - 8);
    }

    v5 = *v4;
    v6 = *(a2 + 1);
    if (a2[1])
    {
      v6 = *(v6 - 1);
    }

    if (v5 == v6)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = *a2;
      *a2 = v12;
      *(a2 + 1) = v13;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v6;
      if (*a1)
      {
        google::protobuf::RepeatedField<float>::Reserve(__dst, *a1);
        v7 = *a1;
        LODWORD(__dst[0]) += v7;
        memcpy(__dst[1], *(a1 + 1), 4 * v7);
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<float>::Reserve(a1, *a2);
        v8 = *(a1 + 1);
        *a1 += *a2;
        memcpy(v8, *(a2 + 1), 4 * *a2);
      }

      if (__dst == a2)
      {
        LODWORD(v11) = HIDWORD(__dst[0]);
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 1);
        *a2 = *__dst;
        __dst[0] = v9;
        __dst[1] = v10;
        v11 = HIDWORD(v9);
      }

      if (v11 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_100122BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_100165F3C((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::RepeatedField<double>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<double>::Reserve(a1, v4);
    v5 = *(a1 + 8);
    *a1 += *a2;
    memcpy(v5, *(a2 + 1), 8 * *a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<double>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    v9 = sub_1000324F8(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void google::protobuf::RepeatedField<double>::Swap(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 2);
    if (a1[1])
    {
      v4 = (*v4 - 8);
    }

    v5 = *v4;
    v6 = *(a2 + 1);
    if (a2[1])
    {
      v6 = *(v6 - 1);
    }

    if (v5 == v6)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = *a2;
      *a2 = v12;
      *(a2 + 1) = v13;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v6;
      if (*a1)
      {
        google::protobuf::RepeatedField<double>::Reserve(__dst, *a1);
        v7 = *a1;
        LODWORD(__dst[0]) += v7;
        memcpy(__dst[1], *(a1 + 1), 8 * v7);
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<double>::Reserve(a1, *a2);
        v8 = *(a1 + 1);
        *a1 += *a2;
        memcpy(v8, *(a2 + 1), 8 * *a2);
      }

      if (__dst == a2)
      {
        LODWORD(v11) = HIDWORD(__dst[0]);
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 1);
        *a2 = *__dst;
        __dst[0] = v9;
        __dst[1] = v10;
        v11 = HIDWORD(v9);
      }

      if (v11 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_100122E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_100165F3C((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(unsigned int *this, int a2)
{
  v2 = this[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v4);
  }

  return this;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = sub_1000324F8(*this, v10 + 8);
    }

    else
    {
      v11 = operator new(v10 + 8);
    }

    *(this + 2) = v11;
    *(this + 3) = v9;
    if (v5 && (v12 = *v5, v12 >= 1))
    {
      memcpy(v11 + 2, v5 + 2, 8 * v12);
      v11 = *(this + 2);
      *v11 = *v5;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v11 = 0;
      if (!v7)
      {
LABEL_15:
        operator delete(v5);
        v11 = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = v11;
  }

  return &v5[2 * v2 + 2];
}

__n128 sub_100122F74(google::protobuf::Arena *a1, __n128 *a2)
{
  if (!a1)
  {
    operator new();
  }

  v3 = sub_1000B3578(a1, 0);
  result = *a2;
  v3[1].n128_u64[0] = a2[1].n128_u64[0];
  *v3 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void sub_100122FD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/field_mask.pb.cc", a4);
  google::protobuf::FieldMask::FieldMask(&google::protobuf::_FieldMask_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FieldMask_default_instance_, v4);
}

uint64_t google::protobuf::FieldMask::FieldMask(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D2500;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_FieldMask_google_2fprotobuf_2ffield_5fmask_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldMask_google_2fprotobuf_2ffield_5fmask_2eproto);
  }

  return a1;
}

void google::protobuf::FieldMask::~FieldMask(google::protobuf::FieldMask *this)
{
  sub_10002F4C4(this + 1);
  sub_1000ED63C(this + 2);
}

{
  google::protobuf::FieldMask::~FieldMask(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::FieldMask::Clear(google::protobuf::FieldMask *this)
{
  result = sub_1000ED4AC(this + 16);
  v6 = *(this + 8);
  v5 = (this + 8);
  if (v6)
  {

    return sub_1000315EC(v5, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::FieldMask::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  if ((sub_1000313B0(a3, &v23, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = v12 + 1;
          v23 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v15 = *(a1 + 24);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(a1 + 28))
            {
LABEL_21:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v16 + 1);
              v14 = *(a1 + 32);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v17 = sub_1000B3534(*(a1 + 16));
            v18 = *(a1 + 24);
            v19 = *(a1 + 32) + 8 * v18;
            *(a1 + 24) = v18 + 1;
            *(v19 + 8) = v17;
            v13 = v23;
            goto LABEL_23;
          }

          *(a1 + 24) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
LABEL_23:
          v23 = google::protobuf::internal::InlineGreedyStringParser(v17, v13, a3);
          sub_1000B3420(v24, v17, v20);
          if (!google::protobuf::internal::VerifyUTF8(v24[0], v24[1], "google.protobuf.FieldMask.paths"))
          {
            return 0;
          }

          v12 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 10)
          {
            goto LABEL_27;
          }
        }

        v16 = *(a1 + 28);
        goto LABEL_21;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v23;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_100031428((a1 + 8), v5, v6);
        v6 = v23;
      }

      v23 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      if (!v23)
      {
        return 0;
      }

LABEL_27:
      if (sub_1000313B0(a3, &v23, *(a3 + 92)))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FieldMask::_InternalSerialize(google::protobuf::FieldMask *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 6);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(this + 4);
      v10 = *(v9 + v8);
      v11 = *(v10 + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = *v10;
        v11 = *(v10 + 8);
      }

      else
      {
        v12 = *(v9 + v8);
      }

      google::protobuf::internal::WireFormatLite::VerifyUtf8String(v12, v11, 1, "google.protobuf.FieldMask.paths");
      a2 = sub_1000D92B8(a3, 1, v10, a2);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::FieldMask::ByteSizeLong(google::protobuf::FieldMask *this)
{
  v1 = *(this + 6);
  if (v1 < 1)
  {
    v3 = *(this + 6);
  }

  else
  {
    v2 = (*(this + 4) + 8);
    v3 = *(this + 6);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 = (v3 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6));
      --v1;
    }

    while (v1);
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 10);
  }

  *(this + 10) = v3;
  return v3;
}

void google::protobuf::FieldMask::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FieldMask::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::FieldMask::MergeFrom(std::string *this, const google::protobuf::FieldMask *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], v6);
    this = sub_1000ED8E8(&v4->__r_.__value_.__r.__words[2], v8, (v7 + 8), v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  return this;
}

void google::protobuf::FieldMask::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::FieldMask::Clear(this);

    google::protobuf::FieldMask::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::FieldMask::GetMetadata(google::protobuf::FieldMask *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2ffield_5fmask_2eproto, 0);
  result = *off_1001EA698;
  v2 = off_1001EA698[1];
  return result;
}

void *sub_1001236DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_100123774(a1, 1);
  google::protobuf::FieldMask::FieldMask(v2, a1);
  return v2;
}

void *sub_100123774(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165F68(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::FieldMask::~FieldMask);
}

std::string *google::protobuf::StripWhitespace(std::string *this)
{
  v1 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size < 1)
  {
    if (size)
    {
      return this;
    }

    goto LABEL_24;
  }

  v3 = 0;
  while (1)
  {
    this = std::string::at(v1, v3);
    v4 = this->__r_.__value_.__s.__data_[0];
    if ((v4 - 9) >= 5 && v4 != 32)
    {
      break;
    }

    if ((size & 0x7FFFFFFF) == ++v3)
    {
      goto LABEL_24;
    }
  }

  if (size == v3)
  {
LABEL_24:
    if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
    {
      *v1->__r_.__value_.__l.__data_ = 0;
      v1->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v1->__r_.__value_.__s.__data_[0] = 0;
      *(&v1->__r_.__value_.__s + 23) = 0;
    }

    return this;
  }

  if (v3)
  {
    this = std::string::erase(v1, 0, v3);
    LODWORD(size) = size - v3;
  }

  v5 = (size - 1);
  if (size >= 1)
  {
    for (i = 0; ; ++i)
    {
      this = std::string::at(v1, v5);
      v7 = this->__r_.__value_.__s.__data_[0];
      if ((v7 - 9) >= 5 && v7 != 32)
      {
        break;
      }

      if (v5-- <= 0)
      {
        return this;
      }
    }

    if (i)
    {

      return std::string::erase(v1, (v5 + 1), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return this;
}

void google::protobuf::SplitStringUsing(unsigned __int8 *__src, uint64_t a2, char *__s, unint64_t a4)
{
  v34[0] = __src;
  v34[1] = a2;
  v7 = *__s;
  if (*__s && !__s[1])
  {
    if (a2)
    {
      v23 = __src;
      v24 = &__src[a2];
      v25 = &__src[a2];
      do
      {
        if (*v23 == v7)
        {
          v26 = v23 + 1;
        }

        else
        {
          v27 = (v23 + 1);
          while (v27 != v24)
          {
            v28 = *v27++;
            if (v28 == v7)
            {
              v26 = (v27 - 1);
              goto LABEL_27;
            }
          }

          v26 = v25;
LABEL_27:
          sub_1000CD78C(__p, v23, v26 - v23);
          v30 = a4;
          sub_1001256BC(&v30, __p);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v23 = v26;
      }

      while (v26 != v24);
    }
  }

  else
  {
    v8 = strlen(__s);
    v10 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v8, "size_t to int conversion", v9);
    }

    first_not_of = google::protobuf::StringPiece::find_first_not_of(v34, __s, v10, 0);
    if (first_not_of != -1)
    {
      v12 = first_not_of;
      while (1)
      {
        v13 = strlen(__s);
        v15 = v13;
        if ((v13 & 0x8000000000000000) != 0)
        {
          google::protobuf::StringPiece::LogFatalSizeTooBig(v13, "size_t to int conversion", v14);
        }

        first_of = google::protobuf::StringPiece::find_first_of(v34, __s, v15, v12);
        if (first_of == -1)
        {
          break;
        }

        v17 = first_of;
        v30 = google::protobuf::StringPiece::substr(v34, v12);
        v31 = v18;
        sub_1000CD768(&v30, __p);
        v29 = a4;
        sub_1001256BC(&v29, __p);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        v19 = strlen(__s);
        v21 = v19;
        if ((v19 & 0x8000000000000000) != 0)
        {
          google::protobuf::StringPiece::LogFatalSizeTooBig(v19, "size_t to int conversion", v20);
        }

        v12 = google::protobuf::StringPiece::find_first_not_of(v34, __s, v21, v17);
        if (v12 == -1)
        {
          return;
        }
      }

      v30 = google::protobuf::StringPiece::substr(v34, v12);
      v31 = v22;
      sub_1000CD768(&v30, __p);
      v29 = a4;
      sub_1001256BC(&v29, __p);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100123B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::UnescapeCEscapeSequences(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    v2 = a2;
LABEL_9:
    v4 = a1;
    goto LABEL_10;
  }

  v3 = a2;
  do
  {
    if (!*a1 || *a1 == 92)
    {
      v2 = v3;
      goto LABEL_9;
    }

    v4 = a1 + 1;
    v2 = v3 + 1;
    v17 = v3++ == a1++;
  }

  while (v17);
  while (1)
  {
LABEL_10:
    v5 = *v4;
    if (v5 != 92)
    {
      if (!*v4)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v6 = v4 + 1;
    v5 = v4[1];
    if (v5 <= 0x3E)
    {
      break;
    }

    if (v4[1] <= 0x65u)
    {
      if (v4[1] > 0x5Bu)
      {
        if (v5 != 92)
        {
          if (v5 == 97)
          {
            LOBYTE(v5) = 7;
          }

          else
          {
            if (v5 != 98)
            {
              goto LABEL_61;
            }

            LOBYTE(v5) = 8;
          }
        }

LABEL_59:
        v4 = v6;
LABEL_60:
        *v2++ = v5;
        v6 = v4;
        goto LABEL_61;
      }

      if (v5 == 63)
      {
        goto LABEL_59;
      }

      if (v5 != 88)
      {
        goto LABEL_61;
      }

LABEL_42:
      if ((v4[2] - 48) < 0xAu || (v13 = v4[2] - 65, v13 <= 0x25) && ((1 << v13) & 0x3F0000003FLL) != 0)
      {
        LOBYTE(v5) = 0;
        v14 = v4 + 1;
        while (1)
        {
          v16 = *++v14;
          v15 = v16;
          if ((v16 - 48) >= 0xAu)
          {
            v17 = v15 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0;
            if (v17)
            {
              break;
            }
          }

          v18 = v15;
          v19 = v15 + 9;
          if (v18 <= 0x39)
          {
            v19 = v18;
          }

          v6 = v14;
          LOBYTE(v5) = v19 & 0xF | (16 * v5);
        }

        goto LABEL_59;
      }

      goto LABEL_61;
    }

    if (v4[1] <= 0x73u)
    {
      switch(v5)
      {
        case 'f':
          LOBYTE(v5) = 12;
          break;
        case 'n':
          LOBYTE(v5) = 10;
          break;
        case 'r':
          LOBYTE(v5) = 13;
          break;
        default:
          goto LABEL_61;
      }

      goto LABEL_59;
    }

    switch(v5)
    {
      case 't':
        LOBYTE(v5) = 9;
        goto LABEL_59;
      case 'v':
        LOBYTE(v5) = 11;
        goto LABEL_59;
      case 'x':
        goto LABEL_42;
    }

LABEL_61:
    v4 = v6 + 1;
  }

  if (v4[1] > 0x2Fu)
  {
    v5 -= 48;
    if (v5 >= 8)
    {
      goto LABEL_61;
    }

    v8 = v4[2];
    v7 = v4 + 2;
    v9 = v8 + 8 * v5 - 48;
    if ((v8 & 0xF8) == 0x30)
    {
      v6 = v7;
      LOBYTE(v5) = v9;
    }

    v4 = v6 + 1;
    v10 = v6[1];
    v11 = v10 & 0xF8;
    v12 = v10 + 8 * v5 - 48;
    if (v11 == 48)
    {
      LOBYTE(v5) = v12;
    }

    else
    {
      v4 = v6;
    }

    goto LABEL_60;
  }

  if (v5 == 34 || v5 == 39)
  {
    goto LABEL_59;
  }

  if (v4[1])
  {
    goto LABEL_61;
  }

LABEL_62:
  *v2 = 0;
  return (v2 - a2);
}

void google::protobuf::UnescapeCEscapeString(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

uint64_t google::protobuf::CEscapeInternal(google::protobuf *this, const char *a2, uint64_t a3, char *a4, int a5, char a6)
{
  v6 = a4;
  if (a2 >= 1)
  {
    v9 = a5;
    v10 = this;
    v11 = 0;
    LODWORD(v12) = 0;
    if (a5)
    {
      v13 = "\\x%02x";
    }

    else
    {
      v13 = "\\%03o";
    }

    v14 = this + a2;
    while (1)
    {
      if (v6 - v12 < 2)
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      if (v15 > 0x21)
      {
        switch(v15)
        {
          case '""':
            v11 = 0;
            *(a3 + v12) = 8796;
            goto LABEL_23;
          case '\'':
            v11 = 0;
            *(a3 + v12) = 10076;
            goto LABEL_23;
          case '\\':
            v11 = 0;
            *(a3 + v12) = 23644;
            goto LABEL_23;
        }
      }

      else
      {
        switch(v15)
        {
          case 9u:
            v11 = 0;
            *(a3 + v12) = 29788;
            goto LABEL_23;
          case 0xAu:
            v11 = 0;
            *(a3 + v12) = 28252;
            goto LABEL_23;
          case 0xDu:
            v11 = 0;
            *(a3 + v12) = 29276;
LABEL_23:
            v12 = (v12 + 2);
            goto LABEL_24;
        }
      }

      if ((v15 & 0x80) != 0 && (a6 & 1) != 0 || v15 - 32 <= 0x5E && ((v11 & 1) == 0 || v15 - 48 >= 0xA && (v15 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0)))
      {
        v11 = 0;
        *(a3 + v12) = v15;
        v12 = (v12 + 1);
      }

      else
      {
        if ((v6 - v12) < 4)
        {
          return 0xFFFFFFFFLL;
        }

        sprintf((a3 + v12), v13, *v10);
        v12 = (v12 + 4);
        v11 = v9;
      }

LABEL_24:
      if (++v10 >= v14)
      {
        goto LABEL_34;
      }
    }
  }

  v12 = 0;
LABEL_34:
  if (v12 >= v6)
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + v12) = 0;
  return v12;
}

void google::protobuf::CEscapeAndAppend(std::string::value_type *__s, int64_t __n, std::string *this)
{
  v3 = this;
  v4 = __n;
  v5 = __s;
  if (__n < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = __s;
    v8 = __n;
    do
    {
      v9 = *v7++;
      v6 += byte_1001810B5[v9];
      --v8;
    }

    while (v8);
  }

  if (v6 == __n)
  {

    std::string::append(this, __s, __n);
    return;
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  std::string::resize(this, size + v6, 0);
  if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = v3->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 1)
  {
    v11 = v3 + size;
    do
    {
      v13 = *v5++;
      v12 = v13;
      if (v13 > 33)
      {
        switch(v12)
        {
          case '""':
            *v11 = 8796;
            v11 += 2;
            break;
          case '\'':
            *v11 = 10076;
            v11 += 2;
            break;
          case '\\':
            *v11 = 23644;
            v11 += 2;
            break;
          default:
LABEL_27:
            if (v12 - 32 >= 0x5F)
            {
              *v11 = 92;
              v11[1] = (v12 >> 6) | 0x30;
              v11[2] = (v12 >> 3) & 7 | 0x30;
              v11[3] = v12 & 7 | 0x30;
              v11 += 4;
            }

            else
            {
              *v11++ = v12;
            }

            break;
        }
      }

      else
      {
        switch(v12)
        {
          case 9u:
            *v11 = 29788;
            v11 += 2;
            break;
          case 0xAu:
            *v11 = 28252;
            v11 += 2;
            break;
          case 0xDu:
            *v11 = 29276;
            v11 += 2;
            break;
          default:
            goto LABEL_27;
        }
      }

      --v4;
    }

    while (v4);
  }
}

void google::protobuf::CEscape(uint64_t *a1@<X0>, const char *a2@<X2>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  sub_1000B3420(v4, a1, a2);
  google::protobuf::CEscapeAndAppend(v4[0], v4[1], a3);
}

void sub_100124230(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::strings::Utf8SafeCEscape(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

_BYTE *google::protobuf::FastInt64ToBuffer(unint64_t this, _BYTE *a2, char *a3)
{
  v3 = this;
  a2[21] = 0;
  if ((this & 0x8000000000000000) != 0)
  {
    if (this < 0xFFFFFFFFFFFFFFF7)
    {
      v7 = -10 - this;
      result = a2 + 19;
      a2[20] = (v7 % 0xA) | 0x30;
      v8 = v7 / 0xA + 1;
      do
      {
        *result-- = (v8 % 0xA) | 0x30;
        v9 = v8 > 9;
        v8 /= 0xAuLL;
      }

      while (v9);
    }

    else
    {
      v6 = 48 - this;
      result = a2 + 19;
      a2[20] = v6;
    }

    *result = 45;
  }

  else
  {
    result = a2 + 21;
    do
    {
      *--result = (v3 % 0xA) | 0x30;
      v5 = v3 >= 0xA;
      v3 /= 0xAuLL;
    }

    while (v5);
  }

  return result;
}

_BYTE *google::protobuf::FastInt32ToBuffer(google::protobuf *this, _BYTE *a2, char *a3)
{
  v3 = this;
  a2[11] = 0;
  if ((this & 0x80000000) != 0)
  {
    if (this < 0xFFFFFFF7)
    {
      v7 = -10 - this;
      v8 = (-10 - this) / 0xAu;
      result = a2 + 9;
      a2[10] = (v7 % 0xA) | 0x30;
      v9 = v8 + 1;
      do
      {
        *result-- = (v9 % 0xA) | 0x30;
        v10 = v9 > 9;
        v9 /= 0xAu;
      }

      while (v10);
    }

    else
    {
      v6 = 48 - this;
      result = a2 + 9;
      a2[10] = v6;
    }

    *result = 45;
  }

  else
  {
    result = a2 + 11;
    do
    {
      *--result = (v3 % 0xA) | 0x30;
      v5 = v3 >= 0xA;
      v3 /= 0xAu;
    }

    while (v5);
  }

  return result;
}

_BYTE *google::protobuf::FastUInt32ToBufferLeft(google::protobuf *this, _BYTE *a2, char *a3)
{
  if (this >= 0x3B9ACA00)
  {
    v3 = this / 0x5F5E100uLL;
    *a2 = word_100180FED[v3];
    a2 += 2;
    goto LABEL_3;
  }

  if (this > 0x63)
  {
    if (this >> 4 <= 0x270)
    {
      if (this <= 0x3E7)
      {
        LODWORD(v6) = this / 0x64u;
        *a2++ = v6 | 0x30;
        goto LABEL_9;
      }

LABEL_8:
      v6 = this / 0x64uLL;
      *a2 = word_100180FED[v6];
      a2 += 2;
LABEL_9:
      LODWORD(this) = this - 100 * v6;
      goto LABEL_10;
    }

    if (this <= 0xF423F)
    {
      if (this >> 5 <= 0xC34)
      {
        LODWORD(v5) = this / 0x2710;
        *a2++ = (this / 0x2710) | 0x30;
        goto LABEL_7;
      }

LABEL_6:
      v5 = this / 0x2710uLL;
      *a2 = word_100180FED[v5];
      a2 += 2;
LABEL_7:
      LODWORD(this) = this - 10000 * v5;
      goto LABEL_8;
    }

    if (this <= 0x5F5E0FF)
    {
      if (this <= 0x98967F)
      {
        LODWORD(v4) = this / 0xF4240;
        *a2++ = this / 0xF4240 + 48;
        goto LABEL_5;
      }

LABEL_4:
      v4 = this / 0xF4240uLL;
      *a2 = word_100180FED[v4];
      a2 += 2;
LABEL_5:
      LODWORD(this) = this - 1000000 * v4;
      goto LABEL_6;
    }

    LODWORD(v3) = this / 0x5F5E100;
    *a2++ = (this / 0x5F5E100) | 0x30;
LABEL_3:
    LODWORD(this) = this - 100000000 * v3;
    goto LABEL_4;
  }

  if (this <= 9)
  {
    *a2 = this | 0x30;
    v7 = a2 + 1;
    goto LABEL_11;
  }

LABEL_10:
  *a2 = word_100180FED[this];
  v7 = a2 + 2;
LABEL_11:
  *v7 = 0;
  return v7;
}

_BYTE *google::protobuf::FastInt32ToBufferLeft(google::protobuf *this, _BYTE *a2, char *a3)
{
  if ((this & 0x80000000) != 0)
  {
    *a2++ = 45;
    this = -this;
  }

  return google::protobuf::FastUInt32ToBufferLeft(this, a2, a3);
}

_BYTE *google::protobuf::FastUInt64ToBufferLeft(google::protobuf *this, _BYTE *a2, char *a3)
{
  v3 = this;
  if (this >> 32)
  {
    v5 = this / 0x3B9ACA00;
    v6 = google::protobuf::FastUInt64ToBufferLeft((this / 0x3B9ACA00), a2, a3);
    v7 = v3 - 1000000000 * v5;
    *v6 = word_100180FED[v7 / 0x989680uLL];
    v7 %= 0x989680u;
    v6[1] = word_100180FED[v7 / 0x186A0uLL];
    v7 %= 0x186A0u;
    v6[2] = word_100180FED[v7 / 0x3E8uLL];
    v7 %= 0x3E8u;
    v6[3] = word_100180FED[v7 / 0xAuLL];
    v6[4] = (v7 % 0xA + 48);
    return v6 + 9;
  }

  else
  {

    return google::protobuf::FastUInt32ToBufferLeft(this, a2, a3);
  }
}

_BYTE *google::protobuf::FastInt64ToBufferLeft(uint64_t this, _BYTE *a2, char *a3)
{
  if (this < 0)
  {
    *a2++ = 45;
    this = -this;
  }

  return google::protobuf::FastUInt64ToBufferLeft(this, a2, a3);
}

std::string *google::protobuf::DoubleToBuffer(std::string *this, double a2, char *a3)
{
  if (a2 == INFINITY)
  {
    v5 = 6712937;
LABEL_5:
    LODWORD(this->__r_.__value_.__l.__data_) = v5;
    return this;
  }

  if (a2 == -INFINITY)
  {
    this->__r_.__value_.__s.__data_[4] = 0;
    v5 = 1718511917;
    goto LABEL_5;
  }

  snprintf(this, 0x20uLL, "%.*g", 15, a2);
  if (google::protobuf::internal::NoLocaleStrtod(this, 0, v7) != a2)
  {
    snprintf(this, 0x20uLL, "%.*g", 17, a2);
  }

  google::protobuf::DelocalizeRadix(this, v8);
  return this;
}

google::protobuf *google::protobuf::FloatToBuffer(google::protobuf *this, float a2, char *a3)
{
  if (a2 == INFINITY)
  {
    v5 = 6712937;
LABEL_5:
    *this = v5;
    return this;
  }

  if (a2 == -INFINITY)
  {
    *(this + 4) = 0;
    v5 = 1718511917;
    goto LABEL_5;
  }

  snprintf(this, 0x18uLL, "%.*g", 6, a2);
  *v9 = 0.0;
  if (!google::protobuf::safe_strtof(this, v9, v7) || *v9 != a2)
  {
    snprintf(this, 0x18uLL, "%.*g", 9, a2);
  }

  google::protobuf::DelocalizeRadix(this, v8);
  return this;
}

char *google::protobuf::DelocalizeRadix(google::protobuf *this, char *a2)
{
  result = strchr(this, 46);
  if (!result)
  {
    for (i = this + 2; ; ++i)
    {
      v5 = *(i - 2);
      if ((v5 - 48) >= 0xA && ((v5 - 43) > 0x3A || ((1 << (v5 - 43)) & 0x400000004000005) == 0))
      {
        break;
      }
    }

    if (*(i - 2))
    {
      v8 = (i - 1);
      v7 = *(i - 1);
      *(i - 2) = 46;
      if ((v7 - 48) >= 0xA && ((v7 - 43) > 0x3A || ((1 << (v7 - 43)) & 0x400000004000005) == 0))
      {
        if (v7)
        {
          do
          {
            v9 = i;
            v10 = *i;
            if ((v10 - 48) < 0xA)
            {
              break;
            }

            ++i;
            v11 = (v10 - 43) > 0x3A || ((1 << (v10 - 43)) & 0x400000004000005) == 0;
          }

          while (v11 && v10 != 0);
          v13 = strlen(v9) + 1;

          return memmove(v8, v9, v13);
        }
      }
    }
  }

  return result;
}

double google::protobuf::internal::NoLocaleStrtod(std::string *this, char *a2, char **a3)
{
  v18 = 0;
  v5 = strtod(this, &v18);
  v6 = v18;
  if (a2)
  {
    *a2 = v18;
  }

  if (v6->__r_.__value_.__s.__data_[0] == 46)
  {
    v7 = snprintf(&__str, 0x10uLL, "%.1f", 1.5);
    if (__str != 49)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/stubs/strutil.cc", 2425);
      v8 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (temp[0]) == ('1'): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    if (v22[v7 - 2] != 53)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/stubs/strutil.cc", 2426);
      v9 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (temp[size - 1]) == ('5'): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    if (v7 >= 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/stubs/strutil.cc", 2427);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (size) <= (6): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    memset(&v17, 0, sizeof(v17));
    v11 = strlen(this);
    std::string::reserve(&v17, v11 + v7 - 3);
    sub_100125494(&v17, this, v6);
    std::string::append(&v17, v22, v7 - 2);
    std::string::append(&v17, &v6->__r_.__value_.__s.__data_[1]);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v17;
    }

    else
    {
      v12 = v17.__r_.__value_.__r.__words[0];
    }

    v20[0].__r_.__value_.__r.__words[0] = 0;
    v5 = strtod(v12, &v20[0].__r_.__value_.__l.__data_);
    v13 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    if (a2 && (v20[0].__r_.__value_.__r.__words[0] - v12) > v18 - this)
    {
      v14 = strlen(this);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v17.__r_.__value_.__r.__words[1];
      }

      *a2 = this + v20[0].__r_.__value_.__r.__words[0] - (v12 + v15 - v14);
    }

    if (v13 < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  return v5;
}

BOOL google::protobuf::safe_strtof(google::protobuf *this, float *a2, float *a3)
{
  v6 = 0;
  *__error() = 0;
  *a2 = strtof(this, &v6);
  return *this && !*v6 && *__error() == 0;
}

uint64_t google::protobuf::safe_strto32(uint64_t a1, int *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_1000B32D8(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_100124F24(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_100124F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100124F24(std::string *__str, int *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return sub_100125898(__str, a2);
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1000B32D8(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_100125804(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void *google::protobuf::strings::AlphaNum::AlphaNum(void *result, unint64_t a2, char a3)
{
  v3 = 0;
  v4 = (1 << (4 * a3 - 4)) | a2;
  do
  {
    *(result + v3 + 47) = a0123456789abcd_0[a2 & 0xF];
    a2 >>= 4;
    --v3;
    v5 = v4 > 0xF;
    v4 >>= 4;
  }

  while (v5);
  *result = result + v3 + 48;
  result[1] = -v3;
  return result;
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = a3;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a3, *(a2 + 8) + *(a1 + 8), 0);
  if ((v5->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v5->__r_.__value_.__r.__words[0];
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    memcpy(v5, *a1, v6);
    v5 = (v5 + *(a1 + 8));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *a2;

    memcpy(v5, v8, v7);
  }
}

void sub_1001251A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = a4;
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a4, *(a2 + 8) + *(a1 + 8) + *(a3 + 8), 0);
  if ((v7->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v7->__r_.__value_.__r.__words[0];
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    memcpy(v7, *a1, v8);
    v7 = (v7 + *(a1 + 8));
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    memcpy(v7, *a2, v9);
    v7 = (v7 + *(a2 + 8));
  }

  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = *a3;

    memcpy(v7, v11, v10);
  }
}

void sub_100125290(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001252AC(char *__dst, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __dst;
  v9 = *(a2 + 8);
  if (v9)
  {
    memcpy(__dst, *a2, v9);
    v8 += *(a2 + 8);
  }

  v11 = *(a3 + 8);
  if (v11)
  {
    memcpy(v8, *a3, v11);
    v8 += *(a3 + 8);
  }

  v12 = *(a4 + 8);
  if (v12)
  {
    memcpy(v8, *a4, v12);
    v8 += *(a4 + 8);
  }

  v13 = *(a5 + 8);
  if (v13)
  {
    memcpy(v8, *a5, v13);
    v8 += *(a5 + 8);
  }

  return v8;
}

char *google::protobuf::StrCat@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  std::string::resize(a7, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8), 0);
  if (*(a7 + 23) >= 0)
  {
    v14 = a7;
  }

  else
  {
    v14 = *a7;
  }

  result = sub_1001252AC(v14, a1, a2, a3, a4);
  v16 = result;
  v17 = *(a5 + 8);
  if (v17)
  {
    result = memcpy(result, *a5, v17);
    v16 += *(a5 + 8);
  }

  v18 = *(a6 + 8);
  if (v18)
  {
    v19 = *a6;

    return memcpy(v16, v19, v18);
  }

  return result;
}

void sub_10012546C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100125494(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_10012560C(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1001255F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10012560C(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t *sub_1001256BC(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100070E64();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = *a1;
    if (v12)
    {
      sub_1000CE87C(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 8) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20[0] = v17;
    v20[1] = v17;
    *(v4 + 8) = v8;
    v20[2] = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20[3] = v18;
    sub_1000CE8D4(v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 8) = v8;
  return a1;
}

uint64_t sub_100125804(unsigned __int8 *a1, int *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 214748364 || (v7 = 10 * v4, v7 > -2147483601 - v6))
      {
        result = 0;
        v4 = 0x7FFFFFFF;
        goto LABEL_14;
      }

      v4 = v7 + v6 - 48;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t sub_100125898(unsigned __int8 *a1, int *a2)
{
  v2 = a1[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3)
  {
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = a1[23];
  }

  if (v5 < 1)
  {
    v6 = 0;
LABEL_15:
    result = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v4[v5];
    while (1)
    {
      v8 = *v4;
      if ((v8 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v6 < -214748364 || (v9 = 10 * v6, v9 < v8 + 2147483600))
      {
        result = 0;
        v6 = 0x80000000;
        goto LABEL_18;
      }

      v6 = v9 - v8 + 48;
      if (++v4 >= v7)
      {
        goto LABEL_15;
      }
    }

    result = 0;
  }

LABEL_18:
  *a2 = v6;
  return result;
}

void google::protobuf::strings::Substitute(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, std::string *a9@<X8>, __int128 a10, uint64_t a11)
{
  a9->__r_.__value_.__r.__words[0] = 0;
  a9->__r_.__value_.__l.__size_ = 0;
  a9->__r_.__value_.__r.__words[2] = 0;
  *(&v11 + 1) = a10;
  *&v11 = a8;
  google::protobuf::strings::SubstituteAndAppend(a9, a1, a2, a3, a4, a5, a6, a7, v11, *(&a10 + 1), a11);
}

void sub_1001259A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::strings::SubstituteAndAppend(std::string *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v46 = a3;
  v47[0] = a4;
  v47[1] = a5;
  v47[2] = a6;
  v47[3] = a7;
  v47[4] = a8;
  v48 = a9;
  v49 = a10;
  v50 = a11;
  v51 = 0;
  v11 = *a2;
  if (!*a2)
  {
    return;
  }

  v12 = a3;
  v14 = this;
  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    if (v11 == 36)
    {
      v16 = v16 + 1;
      v17 = a2[v16];
      v18 = v17 - 48;
      if ((v17 - 48) <= 9)
      {
        v19 = *(v47[v18 - 1] + 8);
        if (v19 != -1)
        {
          v15 += v19;
          goto LABEL_9;
        }

        google::protobuf::internal::LogMessage::LogMessage(v45, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/stubs/substitute.cc", 84);
        v25 = google::protobuf::internal::LogMessage::operator<<(v45, "strings::Substitute format string invalid: asked for $");
        v26 = google::protobuf::internal::LogMessage::operator<<(v25, v18);
        v27 = google::protobuf::internal::LogMessage::operator<<(v26, ", but only ");
        v28 = 0;
        while (*(v12 + 8) != -1)
        {
          v29 = v28 + 1;
          v12 = v47[v28++];
          if (!v12)
          {
            goto LABEL_35;
          }
        }

        v29 = v28;
LABEL_35:
        v36 = google::protobuf::internal::LogMessage::operator<<(v27, v29);
        v37 = google::protobuf::internal::LogMessage::operator<<(v36, " args were given.  Full format string was: ");
        sub_1000B347C(v42, a2);
        google::protobuf::CEscape(v42, v38, &__p);
        v39 = google::protobuf::internal::LogMessage::operator<<(v37, &__p);
        v40 = google::protobuf::internal::LogMessage::operator<<(v39, ".");
        google::protobuf::internal::LogFinisher::operator=(&v41, &v40->__r_.__value_.__l.__data_);
LABEL_36:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
        return;
      }

      if (v17 != 36)
      {
        google::protobuf::internal::LogMessage::LogMessage(v45, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/stubs/substitute.cc", 97);
        v21 = google::protobuf::internal::LogMessage::operator<<(v45, "Invalid strings::Substitute() format string: ");
        sub_1000B347C(v42, a2);
        google::protobuf::CEscape(v42, v22, &__p);
        v23 = google::protobuf::internal::LogMessage::operator<<(v21, &__p);
        v24 = google::protobuf::internal::LogMessage::operator<<(v23, ".");
        google::protobuf::internal::LogFinisher::operator=(&v41, &v24->__r_.__value_.__l.__data_);
        goto LABEL_36;
      }
    }

    ++v15;
LABEL_9:
    v16 = v16 + 1;
    v11 = a2[v16];
  }

  while (a2[v16]);
  if (v15)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::string::resize(this, v15 + size, 0);
    if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v14->__r_.__value_.__l.__size_)
      {
        goto LABEL_23;
      }

      v14 = v14->__r_.__value_.__r.__words[0];
    }

    else if (!*(&v14->__r_.__value_.__s + 23))
    {
LABEL_23:
      v14 = 0;
    }

    v30 = 0;
    v31 = v14 + size;
    while (2)
    {
      v32 = a2[v30];
      if (v32 == 36)
      {
        v33 = v30 + 1;
        v34 = a2[v33];
        if ((v34 - 48) > 9)
        {
          if (v34 != 36)
          {
            goto LABEL_28;
          }

          *v31++ = 36;
        }

        else
        {
          v35 = v47[(v34 & 0xF) - 1];
          memcpy(v31, *v35, *(v35 + 8));
          v31 += *(v35 + 8);
        }
      }

      else
      {
        if (!a2[v30])
        {
          return;
        }

        *v31++ = v32;
LABEL_28:
        LODWORD(v33) = v30;
      }

      v30 = v33 + 1;
      continue;
    }
  }
}

void sub_100125CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a23);
  _Unwind_Resume(a1);
}

void sub_100125D38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/type.pb.cc", a4);
  google::protobuf::Enum::Enum(&google::protobuf::_Enum_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Enum_default_instance_, v4);
}

void sub_100125DA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/type.pb.cc", a4);
  google::protobuf::EnumValue::EnumValue(&google::protobuf::_EnumValue_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumValue_default_instance_, v4);
}

void sub_100125E18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/type.pb.cc", a4);
  google::protobuf::Field::Field(&google::protobuf::_Field_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Field_default_instance_, v4);
}

void sub_100125E88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/type.pb.cc", a4);
  google::protobuf::_Option_default_instance_ = off_1001D28E8;
  *algn_1001ED698 = 0;
  dword_1001ED6B0 = 0;
  if (atomic_load_explicit(scc_info_Option_google_2fprotobuf_2ftype_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Option_google_2fprotobuf_2ftype_2eproto);
  }

  qword_1001ED6A0 = &google::protobuf::internal::fixed_address_empty_string;
  unk_1001ED6A8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Option_default_instance_, v4);
}

void sub_100125F38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/type.pb.cc", a4);
  google::protobuf::Type::Type(&google::protobuf::_Type_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Type_default_instance_, v4);
}

uint64_t google::protobuf::Type::Type(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D2628;
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
  *(a1 + 108) = 0;
  if (atomic_load_explicit(scc_info_Type_google_2fprotobuf_2ftype_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Type_google_2fprotobuf_2ftype_2eproto);
  }

  *(a1 + 88) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_100126048(_Unwind_Exception *a1)
{
  sub_1000FF738(v3);
  sub_1000ED63C(v2);
  sub_1001294C8(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::Type::~Type(google::protobuf::Type *this)
{
  v2 = *(this + 11);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != &google::protobuf::_Type_default_instance_)
  {
    v3 = *(this + 12);
    if (v3)
    {
      google::protobuf::SourceContext::~SourceContext(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_1000FF738(this + 8);
  sub_1000ED63C(this + 5);
  sub_1001294C8(this + 2);
}

{
  google::protobuf::Type::~Type(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Type::Clear(google::protobuf::Type *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::Field::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  sub_1000ED4AC(this + 40);
  v5 = *(this + 18);
  if (v5 >= 1)
  {
    v6 = (*(this + 10) + 8);
    do
    {
      v7 = *v6++;
      google::protobuf::Option::Clear(v7);
      --v5;
    }

    while (v5);
    *(this + 18) = 0;
  }

  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 11);
  v11 = *(this + 1);
  if (v11)
  {
    if (*(v11 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_13;
    }
  }

  else if (v11)
  {
    goto LABEL_13;
  }

  result = *(this + 12);
  if (result)
  {
    google::protobuf::SourceContext::~SourceContext(result);
    operator delete();
  }

LABEL_13:
  *(this + 12) = 0;
  *(this + 26) = 0;
  if (v11)
  {

    return sub_1000315EC(this + 1, v9, v10);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Type::_InternalSerialize(google::protobuf::Type *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Type.name");
    a2 = sub_100030384(a3, 1, (*(this + 11) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 6);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 4) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 23);
      if (v12 > 0x7F)
      {
        *(a2 + 1) = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = (a2 + 3);
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            v13 = (v13 + 1);
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          *(a2 + 2) = v14;
          v13 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v12;
        v13 = (a2 + 2);
      }

      a2 = google::protobuf::Field::_InternalSerialize(v11, v13, a3, a4);
    }
  }

  v17 = *(this + 12);
  if (v17 >= 1)
  {
    v18 = 8;
    do
    {
      v19 = *(this + 7);
      v20 = *(v19 + v18);
      v21 = *(v20 + 23);
      if ((v21 & 0x8000000000000000) != 0)
      {
        v22 = *v20;
        v21 = *(v20 + 8);
      }

      else
      {
        v22 = *(v19 + v18);
      }

      google::protobuf::internal::WireFormatLite::VerifyUtf8String(v22, v21, 1, "google.protobuf.Type.oneofs");
      a2 = sub_1000D92B8(a3, 3, v20, a2);
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  v23 = *(this + 18);
  if (v23)
  {
    for (j = 0; j != v23; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v25 = *(*(this + 10) + 8 * j + 8);
      *a2 = 34;
      v26 = *(v25 + 8);
      if (v26 > 0x7F)
      {
        *(a2 + 1) = v26 | 0x80;
        v28 = v26 >> 7;
        if (v26 >> 14)
        {
          v27 = (a2 + 3);
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
          *(a2 + 2) = v28;
          v27 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v26;
        v27 = (a2 + 2);
      }

      a2 = google::protobuf::Option::_InternalSerialize(v25, v27, a3, a4);
    }
  }

  if (this != &google::protobuf::_Type_default_instance_)
  {
    v31 = *(this + 12);
    if (v31)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v31 = *(this + 12);
      }

      *a2 = 42;
      v32 = *(v31 + 6);
      if (v32 > 0x7F)
      {
        *(a2 + 1) = v32 | 0x80;
        v34 = v32 >> 7;
        if (v32 >> 14)
        {
          v33 = (a2 + 3);
          do
          {
            *(v33 - 1) = v34 | 0x80;
            v35 = v34 >> 7;
            v33 = (v33 + 1);
            v36 = v34 >> 14;
            v34 >>= 7;
          }

          while (v36);
          *(v33 - 1) = v35;
        }

        else
        {
          *(a2 + 2) = v34;
          v33 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v32;
        v33 = (a2 + 2);
      }

      a2 = google::protobuf::SourceContext::_InternalSerialize(v31, v33, a3, a4);
    }
  }

  v37 = *(this + 26);
  if (v37)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v37 = *(this + 26);
    }

    *a2 = 48;
    if (v37 > 0x7F)
    {
      *(a2 + 1) = v37 | 0x80;
      v38 = v37 >> 7;
      if (v37 >> 14)
      {
        a2 = (a2 + 3);
        do
        {
          *(a2 - 1) = v38 | 0x80;
          v39 = v38 >> 7;
          a2 = (a2 + 1);
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
        *(a2 - 1) = v39;
      }

      else
      {
        *(a2 + 2) = v38;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v37;
      a2 = (a2 + 2);
    }
  }

  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v41 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Type::ByteSizeLong(google::protobuf::Type *this)
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
      v7 = google::protobuf::Field::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
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
  if (v8 >= 1)
  {
    v10 = (*(this + 7) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(this + 18);
  v15 = (v9 + v14);
  v16 = *(this + 10);
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
      v20 = google::protobuf::Option::ByteSizeLong(v19);
      v15 = (v15 + v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6));
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  if (v22 < 0)
  {
    if (!*(v21 + 8))
    {
      goto LABEL_25;
    }
  }

  else if (!*(v21 + 23))
  {
    goto LABEL_25;
  }

  v23 = *(v21 + 8);
  if (v22 >= 0)
  {
    v23 = v22;
  }

  v15 = (v15 + v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_25:
  if (this != &google::protobuf::_Type_default_instance_)
  {
    v24 = *(this + 12);
    if (v24)
    {
      v25 = google::protobuf::SourceContext::ByteSizeLong(v24);
      v15 = &v25[((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1 + v15];
    }
  }

  v26 = *(this + 26);
  v27 = 11;
  v28 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v26 >= 0)
  {
    v27 = v28;
  }

  v29 = (v15 + v27);
  if (v26)
  {
    v30 = v29;
  }

  else
  {
    v30 = v15;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v30, this + 27);
  }

  else
  {
    *(this + 27) = v30;
    return v30;
  }
}

void google::protobuf::Type::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Type::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::Type::MergeFrom(std::string *this, const google::protobuf::Type *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = sub_10012954C(&v4->__r_.__value_.__r.__words[2], v8, v7 + 8, v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1].__r_.__value_.__r.__words[2], *(a2 + 12));
    this = sub_1000ED8E8((v4 + 40), v13, (v12 + 8), v11, *v4[2].__r_.__value_.__l.__size_ - LODWORD(v4[2].__r_.__value_.__l.__data_));
    v14 = LODWORD(v4[2].__r_.__value_.__l.__data_) + v11;
    LODWORD(v4[2].__r_.__value_.__l.__data_) = v14;
    v15 = v4[2].__r_.__value_.__l.__size_;
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 18);
  if (v16)
  {
    v17 = *(a2 + 10);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[2].__r_.__value_.__r.__words[2], *(a2 + 18));
    this = sub_1000FF900((v4 + 64), v18, v17 + 8, v16, *v4[3].__r_.__value_.__l.__size_ - LODWORD(v4[3].__r_.__value_.__l.__data_));
    v19 = LODWORD(v4[3].__r_.__value_.__l.__data_) + v16;
    LODWORD(v4[3].__r_.__value_.__l.__data_) = v19;
    v20 = v4[3].__r_.__value_.__l.__size_;
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 11) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  if (v22 < 0)
  {
    v22 = *(v21 + 8);
  }

  if (v22)
  {
    v23 = v4->__r_.__value_.__l.__size_;
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[3].__r_.__value_.__r.__words[2], v21, v23);
  }

  if (a2 != &google::protobuf::_Type_default_instance_)
  {
    v24 = *(a2 + 12);
    if (v24)
    {
      data = v4[4].__r_.__value_.__l.__data_;
      if (!data)
      {
        v26 = v4->__r_.__value_.__l.__size_;
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        data = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceContext>(v26);
        v4[4].__r_.__value_.__r.__words[0] = data;
        v24 = *(a2 + 12);
      }

      if (v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = &google::protobuf::_SourceContext_default_instance_;
      }

      this = google::protobuf::SourceContext::MergeFrom(data, v27, a3);
    }
  }

  v28 = *(a2 + 26);
  if (v28)
  {
    LODWORD(v4[4].__r_.__value_.__r.__words[1]) = v28;
  }

  return this;
}

void google::protobuf::Type::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::Type::Clear(this);

    google::protobuf::Type::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Type::GetMetadata(google::protobuf::Type *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2ftype_2eproto, 0);
  result = *off_1001EA7D0;
  v2 = off_1001EA7D0[1];
  return result;
}

uint64_t google::protobuf::Field::Field(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D26D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 92) = 0;
  if (atomic_load_explicit(scc_info_Field_google_2fprotobuf_2ftype_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Field_google_2fprotobuf_2ftype_2eproto);
  }

  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void google::protobuf::Field::~Field(google::protobuf::Field *this)
{
  sub_100126CA4(this);
  sub_10002F4C4(this + 1);
  sub_1000FF738(this + 2);
}

{
  google::protobuf::Field::~Field(this);

  operator delete();
}

void *sub_100126CA4(void *result)
{
  v1 = result[5];
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v2 = result[6];
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = result[7];
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = result[8];
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::Field::Clear(google::protobuf::Field *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::Option::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 5);
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 6);
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 7);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 8);
  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 8) = 0;
  *(v8 + 9) = 0;
  v8[80] = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v6, v7);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Field::_InternalSerialize(google::protobuf::Field *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 18);
  if (v7)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v7 = *(this + 18);
    }

    *v5 = 8;
    if (v7 > 0x7F)
    {
      v5[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        v5 += 3;
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v5;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v5 - 1) = v9;
      }

      else
      {
        v5[2] = v8;
        v5 += 3;
      }
    }

    else
    {
      v5[1] = v7;
      v5 += 2;
    }
  }

  v11 = *(this + 19);
  if (v11)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v11 = *(this + 19);
    }

    *v5 = 16;
    if (v11 > 0x7F)
    {
      v5[1] = v11 | 0x80;
      v12 = v11 >> 7;
      if (v11 >> 14)
      {
        v5 += 3;
        do
        {
          *(v5 - 1) = v12 | 0x80;
          v13 = v12 >> 7;
          ++v5;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
        *(v5 - 1) = v13;
      }

      else
      {
        v5[2] = v12;
        v5 += 3;
      }
    }

    else
    {
      v5[1] = v11;
      v5 += 2;
    }
  }

  v15 = *(this + 20);
  if (v15)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v15 = *(this + 20);
    }

    *v5 = 24;
    if (v15 > 0x7F)
    {
      v5[1] = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v5 += 3;
        do
        {
          *(v5 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v5;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v5 - 1) = v17;
      }

      else
      {
        v5[2] = v16;
        v5 += 3;
      }
    }

    else
    {
      v5[1] = v15;
      v5 += 2;
    }
  }

  v19 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v20 = *(v19 + 8);
    if (!v20)
    {
      goto LABEL_37;
    }

    v19 = *v19;
    goto LABEL_36;
  }

  if (*(v19 + 23))
  {
LABEL_36:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v19, v20, 1, "google.protobuf.Field.name");
    v5 = sub_100030384(a3, 4, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v5);
  }

LABEL_37:
  v21 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  if ((v22 & 0x8000000000000000) != 0)
  {
    v22 = *(v21 + 8);
    if (!v22)
    {
      goto LABEL_43;
    }

    v21 = *v21;
    goto LABEL_42;
  }

  if (*(v21 + 23))
  {
LABEL_42:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v21, v22, 1, "google.protobuf.Field.type_url");
    v5 = sub_100030384(a3, 6, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v5);
  }

LABEL_43:
  v23 = *(this + 21);
  if (v23)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v23 = *(this + 21);
    }

    *v5 = 56;
    if (v23 > 0x7F)
    {
      v5[1] = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        v5 += 3;
        do
        {
          *(v5 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++v5;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(v5 - 1) = v25;
      }

      else
      {
        v5[2] = v24;
        v5 += 3;
      }
    }

    else
    {
      v5[1] = v23;
      v5 += 2;
    }
  }

  v27 = *(this + 88);
  if (v27 == 1)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      LOBYTE(v27) = *(this + 88);
    }

    *v5 = 64;
    v5[1] = v27;
    v5 += 2;
  }

  v28 = *(this + 6);
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v30 = *(*(this + 4) + 8 * i + 8);
      *v5 = 74;
      v31 = *(v30 + 8);
      if (v31 > 0x7F)
      {
        v5[1] = v31 | 0x80;
        v33 = v31 >> 7;
        if (v31 >> 14)
        {
          v32 = (v5 + 3);
          do
          {
            *(v32 - 1) = v33 | 0x80;
            v34 = v33 >> 7;
            v32 = (v32 + 1);
            v35 = v33 >> 14;
            v33 >>= 7;
          }

          while (v35);
          *(v32 - 1) = v34;
        }

        else
        {
          v5[2] = v33;
          v32 = (v5 + 3);
        }
      }

      else
      {
        v5[1] = v31;
        v32 = (v5 + 2);
      }

      v5 = google::protobuf::Option::_InternalSerialize(v30, v32, a3, a4);
    }
  }

  v36 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  if ((v37 & 0x8000000000000000) != 0)
  {
    v37 = *(v36 + 8);
    if (!v37)
    {
      goto LABEL_75;
    }

    v36 = *v36;
    goto LABEL_74;
  }

  if (*(v36 + 23))
  {
LABEL_74:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v36, v37, 1, "google.protobuf.Field.json_name");
    v5 = sub_100030384(a3, 10, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v5);
  }

LABEL_75:
  v38 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v39 = *(v38 + 23);
  if ((v39 & 0x8000000000000000) != 0)
  {
    v39 = *(v38 + 8);
    if (!v39)
    {
      goto LABEL_81;
    }

    v38 = *v38;
    goto LABEL_80;
  }

  if (*(v38 + 23))
  {
LABEL_80:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v38, v39, 1, "google.protobuf.Field.default_value");
    v5 = sub_100030384(a3, 11, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v5);
  }

LABEL_81:
  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v40 & 0xFFFFFFFFFFFFFFFELL) + 8), v5, a3, a4);
}

char *google::protobuf::Field::ByteSizeLong(google::protobuf::Field *this)
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
      v7 = google::protobuf::Option::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (!*(v8 + 8))
    {
      goto LABEL_14;
    }
  }

  else if (!*(v8 + 23))
  {
    goto LABEL_14;
  }

  v10 = *(v8 + 8);
  if (v9 >= 0)
  {
    v10 = v9;
  }

  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_14:
  v11 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    if (!*(v11 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (!*(v11 + 23))
  {
    goto LABEL_19;
  }

  v13 = *(v11 + 8);
  if (v12 >= 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_19:
  v14 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    if (!*(v14 + 8))
    {
      goto LABEL_24;
    }
  }

  else if (!*(v14 + 23))
  {
    goto LABEL_24;
  }

  v16 = *(v14 + 8);
  if (v15 >= 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_24:
  v17 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    if (!*(v17 + 8))
    {
      goto LABEL_29;
    }
  }

  else if (!*(v17 + 23))
  {
    goto LABEL_29;
  }

  v19 = *(v17 + 8);
  if (v18 >= 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_29:
  v20 = *(this + 18);
  if (v20)
  {
    if (v20 < 0)
    {
      v21 = 11;
    }

    else
    {
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v21;
  }

  v22 = *(this + 19);
  if (v22)
  {
    if (v22 < 0)
    {
      v23 = 11;
    }

    else
    {
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v23;
  }

  v24 = *(this + 20);
  if (v24)
  {
    if (v24 < 0)
    {
      v25 = 11;
    }

    else
    {
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v25;
  }

  v26 = *(this + 21);
  if (v26)
  {
    if (v26 < 0)
    {
      v27 = 11;
    }

    else
    {
      v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v27;
  }

  if (*(this + 88))
  {
    v28 = (v2 + 2);
  }

  else
  {
    v28 = v2;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v28, this + 23);
  }

  else
  {
    *(this + 23) = v28;
    return v28;
  }
}

void google::protobuf::Field::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Field::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::Field::MergeFrom(std::string *this, const google::protobuf::Field *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = sub_1000FF900(&v4->__r_.__value_.__r.__words[2], v8, v7 + 8, v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  v11 = *(a2 + 5) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    v13 = v4->__r_.__value_.__l.__size_;
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1].__r_.__value_.__r.__words[2], v11, v13);
  }

  v14 = *(a2 + 6) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v15 = *(v14 + 8);
  }

  if (v15)
  {
    v16 = v4->__r_.__value_.__l.__size_;
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2], v14, v16);
  }

  v17 = *(a2 + 7) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    v18 = *(v17 + 8);
  }

  if (v18)
  {
    v19 = v4->__r_.__value_.__l.__size_;
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2].__r_.__value_.__l.__size_, v17, v19);
  }

  v20 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  if (v21 < 0)
  {
    v21 = *(v20 + 8);
  }

  if (v21)
  {
    v22 = v4->__r_.__value_.__l.__size_;
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2].__r_.__value_.__r.__words[2], v20, v22);
  }

  v23 = *(a2 + 18);
  if (v23)
  {
    LODWORD(v4[3].__r_.__value_.__l.__data_) = v23;
  }

  v24 = *(a2 + 19);
  if (v24)
  {
    HIDWORD(v4[3].__r_.__value_.__r.__words[0]) = v24;
  }

  v25 = *(a2 + 20);
  if (v25)
  {
    LODWORD(v4[3].__r_.__value_.__r.__words[1]) = v25;
  }

  v26 = *(a2 + 21);
  if (v26)
  {
    HIDWORD(v4[3].__r_.__value_.__r.__words[1]) = v26;
  }

  if (*(a2 + 88) == 1)
  {
    v4[3].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void google::protobuf::Field::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::Field::Clear(this);

    google::protobuf::Field::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Field::GetMetadata(google::protobuf::Field *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2ftype_2eproto, 0);
  result = off_1001EA7D0[2];
  v2 = off_1001EA7D0[3];
  return result;
}

uint64_t google::protobuf::Enum::Enum(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *a1 = off_1001D2788;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 84) = 0;
  if (atomic_load_explicit(scc_info_Enum_google_2fprotobuf_2ftype_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Enum_google_2fprotobuf_2ftype_2eproto);
  }

  *(a1 + 64) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_100127A00(_Unwind_Exception *a1)
{
  sub_1000FF738(v2);
  sub_10012960C(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::Enum::~Enum(google::protobuf::Enum *this)
{
  v2 = *(this + 8);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != &google::protobuf::_Enum_default_instance_)
  {
    v3 = *(this + 9);
    if (v3)
    {
      google::protobuf::SourceContext::~SourceContext(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_1000FF738(this + 5);
  sub_10012960C(this + 2);
}

{
  google::protobuf::Enum::~Enum(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Enum::Clear(google::protobuf::Enum *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::EnumValue::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  v5 = *(this + 12);
  if (v5 >= 1)
  {
    v6 = (*(this + 7) + 8);
    do
    {
      v7 = *v6++;
      google::protobuf::Option::Clear(v7);
      --v5;
    }

    while (v5);
    *(this + 12) = 0;
  }

  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 8);
  v11 = *(this + 1);
  if (v11)
  {
    if (*(v11 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_13;
    }
  }

  else if (v11)
  {
    goto LABEL_13;
  }

  result = *(this + 9);
  if (result)
  {
    google::protobuf::SourceContext::~SourceContext(result);
    operator delete();
  }

LABEL_13:
  *(this + 9) = 0;
  *(this + 20) = 0;
  if (v11)
  {

    return sub_1000315EC(this + 1, v9, v10);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Enum::_InternalSerialize(google::protobuf::Enum *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Enum.name");
    a2 = sub_100030384(a3, 1, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 6);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 4) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 13);
      if (v12 > 0x7F)
      {
        *(a2 + 1) = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = (a2 + 3);
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            v13 = (v13 + 1);
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          *(a2 + 2) = v14;
          v13 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v12;
        v13 = (a2 + 2);
      }

      a2 = google::protobuf::EnumValue::_InternalSerialize(v11, v13, a3, a4);
    }
  }

  v17 = *(this + 12);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 7) + 8 * j + 8);
      *a2 = 26;
      v20 = *(v19 + 8);
      if (v20 > 0x7F)
      {
        *(a2 + 1) = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = (a2 + 3);
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
          *(a2 + 2) = v22;
          v21 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v20;
        v21 = (a2 + 2);
      }

      a2 = google::protobuf::Option::_InternalSerialize(v19, v21, a3, a4);
    }
  }

  if (this != &google::protobuf::_Enum_default_instance_)
  {
    v25 = *(this + 9);
    if (v25)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v25 = *(this + 9);
      }

      *a2 = 34;
      v26 = *(v25 + 6);
      if (v26 > 0x7F)
      {
        *(a2 + 1) = v26 | 0x80;
        v28 = v26 >> 7;
        if (v26 >> 14)
        {
          v27 = (a2 + 3);
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
          *(a2 + 2) = v28;
          v27 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v26;
        v27 = (a2 + 2);
      }

      a2 = google::protobuf::SourceContext::_InternalSerialize(v25, v27, a3, a4);
    }
  }

  v31 = *(this + 20);
  if (v31)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v31 = *(this + 20);
    }

    *a2 = 40;
    if (v31 > 0x7F)
    {
      *(a2 + 1) = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        a2 = (a2 + 3);
        do
        {
          *(a2 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          a2 = (a2 + 1);
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(a2 - 1) = v33;
      }

      else
      {
        *(a2 + 2) = v32;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v31;
      a2 = (a2 + 2);
    }
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v35 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Enum::ByteSizeLong(google::protobuf::Enum *this)
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
      v7 = google::protobuf::EnumValue::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = (v2 + v8);
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
      v14 = google::protobuf::Option::ByteSizeLong(v13);
      v9 = (v9 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6));
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    if (!*(v15 + 8))
    {
      goto LABEL_20;
    }
  }

  else if (!*(v15 + 23))
  {
    goto LABEL_20;
  }

  v17 = *(v15 + 8);
  if (v16 >= 0)
  {
    v17 = v16;
  }

  v9 = (v9 + v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_20:
  if (this != &google::protobuf::_Enum_default_instance_)
  {
    v18 = *(this + 9);
    if (v18)
    {
      v19 = google::protobuf::SourceContext::ByteSizeLong(v18);
      v9 = &v19[((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1 + v9];
    }
  }

  v20 = *(this + 20);
  v21 = 11;
  v22 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v20 >= 0)
  {
    v21 = v22;
  }

  v23 = (v9 + v21);
  if (v20)
  {
    v24 = v23;
  }

  else
  {
    v24 = v9;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v24, this + 21);
  }

  else
  {
    *(this + 21) = v24;
    return v24;
  }
}

void google::protobuf::Enum::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Enum::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::Enum::MergeFrom(std::string *this, const google::protobuf::Enum *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = sub_100129690(&v4->__r_.__value_.__r.__words[2], v8, v7 + 8, v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1].__r_.__value_.__r.__words[2], *(a2 + 12));
    this = sub_1000FF900((v4 + 40), v13, v12 + 8, v11, *v4[2].__r_.__value_.__l.__size_ - LODWORD(v4[2].__r_.__value_.__l.__data_));
    v14 = LODWORD(v4[2].__r_.__value_.__l.__data_) + v11;
    LODWORD(v4[2].__r_.__value_.__l.__data_) = v14;
    v15 = v4[2].__r_.__value_.__l.__size_;
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  if (v17 < 0)
  {
    v17 = *(v16 + 8);
  }

  if (v17)
  {
    v18 = v4->__r_.__value_.__l.__size_;
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2].__r_.__value_.__r.__words[2], v16, v18);
  }

  if (a2 != &google::protobuf::_Enum_default_instance_)
  {
    v19 = *(a2 + 9);
    if (v19)
    {
      data = v4[3].__r_.__value_.__l.__data_;
      if (!data)
      {
        v21 = v4->__r_.__value_.__l.__size_;
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        data = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceContext>(v21);
        v4[3].__r_.__value_.__r.__words[0] = data;
        v19 = *(a2 + 9);
      }

      if (v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = &google::protobuf::_SourceContext_default_instance_;
      }

      this = google::protobuf::SourceContext::MergeFrom(data, v22, a3);
    }
  }

  v23 = *(a2 + 20);
  if (v23)
  {
    LODWORD(v4[3].__r_.__value_.__r.__words[1]) = v23;
  }

  return this;
}

void google::protobuf::Enum::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::Enum::Clear(this);

    google::protobuf::Enum::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Enum::GetMetadata(google::protobuf::Enum *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2ftype_2eproto, 0);
  result = off_1001EA7D0[4];
  v2 = off_1001EA7D0[5];
  return result;
}

uint64_t google::protobuf::EnumValue::EnumValue(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D2838;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 52) = 0;
  if (atomic_load_explicit(scc_info_EnumValue_google_2fprotobuf_2ftype_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValue_google_2fprotobuf_2ftype_2eproto);
  }

  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 48) = 0;
  return a1;
}

void google::protobuf::EnumValue::~EnumValue(google::protobuf::EnumValue *this)
{
  v2 = *(this + 5);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
  sub_1000FF738(this + 2);
}

{
  google::protobuf::EnumValue::~EnumValue(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumValue::Clear(google::protobuf::EnumValue *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::Option::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 5);
  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 10) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v6, v7);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumValue::_InternalSerialize(google::protobuf::EnumValue *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.EnumValue.name");
    a2 = sub_100030384(a3, 1, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 12);
  if (v9)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v9 = *(this + 12);
    }

    *a2 = 16;
    if (v9 > 0x7F)
    {
      *(a2 + 1) = v9 | 0x80;
      v10 = v9 >> 7;
      if (v9 >> 14)
      {
        a2 = (a2 + 3);
        do
        {
          *(a2 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          a2 = (a2 + 1);
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(a2 - 1) = v11;
      }

      else
      {
        *(a2 + 2) = v10;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v9;
      a2 = (a2 + 2);
    }
  }

  v13 = *(this + 6);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 4) + 8 * i + 8);
      *a2 = 26;
      v16 = *(v15 + 8);
      if (v16 > 0x7F)
      {
        *(a2 + 1) = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = (a2 + 3);
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            v17 = (v17 + 1);
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          *(a2 + 2) = v18;
          v17 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v16;
        v17 = (a2 + 2);
      }

      a2 = google::protobuf::Option::_InternalSerialize(v15, v17, a3, a4);
    }
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::EnumValue::ByteSizeLong(google::protobuf::EnumValue *this)
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
      v7 = google::protobuf::Option::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (!*(v8 + 8))
    {
      goto LABEL_14;
    }
  }

  else if (!*(v8 + 23))
  {
    goto LABEL_14;
  }

  v10 = *(v8 + 8);
  if (v9 >= 0)
  {
    v10 = v9;
  }

  v2 = (v2 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_14:
  v11 = *(this + 12);
  if (v11)
  {
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 = (v2 + v12);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 13);
  }

  else
  {
    *(this + 13) = v2;
    return v2;
  }
}

void google::protobuf::EnumValue::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumValue::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::EnumValue::MergeFrom(std::string *this, const google::protobuf::EnumValue *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = sub_1000FF900(&v4->__r_.__value_.__r.__words[2], v8, v7 + 8, v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  v11 = *(a2 + 5) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    v13 = v4->__r_.__value_.__l.__size_;
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1].__r_.__value_.__r.__words[2], v11, v13);
  }

  v14 = *(a2 + 12);
  if (v14)
  {
    LODWORD(v4[2].__r_.__value_.__l.__data_) = v14;
  }

  return this;
}

void google::protobuf::EnumValue::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValue::Clear(this);

    google::protobuf::EnumValue::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::EnumValue::GetMetadata(google::protobuf::EnumValue *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2ftype_2eproto, 0);
  result = off_1001EA7D0[6];
  v2 = off_1001EA7D0[7];
  return result;
}

void google::protobuf::Option::~Option(google::protobuf::Option *this)
{
  v2 = *(this + 2);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != &google::protobuf::_Option_default_instance_)
  {
    v3 = *(this + 3);
    if (v3)
    {
      google::protobuf::Any::~Any(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  google::protobuf::Option::~Option(this);

  operator delete();
}

google::protobuf::Any *google::protobuf::Option::Clear(google::protobuf::Option *this)
{
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 2);
  v5 = *(this + 1);
  if (v5)
  {
    if (*(v5 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  result = *(this + 3);
  if (result)
  {
    google::protobuf::Any::~Any(result);
    operator delete();
  }

LABEL_5:
  *(this + 3) = 0;
  if (v5)
  {

    return sub_1000315EC(this + 1, v3, v4);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Option::_InternalSerialize(google::protobuf::Option *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 2) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (!*(v7 + 23))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = *(v7 + 8);
  if (v8)
  {
    v7 = *v7;
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Option.name");
    a2 = sub_100030384(a3, 1, (*(this + 2) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  if (this != &google::protobuf::_Option_default_instance_)
  {
    v9 = *(this + 3);
    if (v9)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v9 = *(this + 3);
      }

      *a2 = 18;
      v10 = *(v9 + 8);
      if (v10 > 0x7F)
      {
        *(a2 + 1) = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = a2 + 3;
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
          *(a2 + 2) = v12;
          v11 = a2 + 3;
        }
      }

      else
      {
        *(a2 + 1) = v10;
        v11 = a2 + 2;
      }

      a2 = google::protobuf::Any::_InternalSerialize(v9, v11, a3, a4);
    }
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Option::ByteSizeLong(google::protobuf::Option *this)
{
  v2 = *(this + 2) & 0xFFFFFFFFFFFFFFFELL;
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (!*(v2 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(v2 + 8);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  v5 = (v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_8:
  if (this != &google::protobuf::_Option_default_instance_)
  {
    v6 = *(this + 3);
    if (v6)
    {
      v7 = google::protobuf::Any::ByteSizeLong(v6);
      v5 = &v7[v5 + 1 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6)];
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 8);
  }

  else
  {
    *(this + 8) = v5;
    return v5;
  }
}

void google::protobuf::Option::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Option::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::Option::MergeFrom(std::string *this, const google::protobuf::Option *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL;
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7)
  {
    size = v4->__r_.__value_.__l.__size_;
    if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4->__r_.__value_.__r.__words[2], v6, size);
  }

  if (a2 != &google::protobuf::_Option_default_instance_)
  {
    v9 = *(a2 + 3);
    if (v9)
    {
      data = v4[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        v11 = v4->__r_.__value_.__l.__size_;
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        data = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Any>(v11);
        v4[1].__r_.__value_.__r.__words[0] = data;
        v9 = *(a2 + 3);
      }

      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = &google::protobuf::_Any_default_instance_;
      }

      return google::protobuf::Any::MergeFrom(data, v12, a3);
    }
  }

  return this;
}

void google::protobuf::Option::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::Option::Clear(this);

    google::protobuf::Option::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Option::GetMetadata(google::protobuf::Option *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2ftype_2eproto, 0);
  result = off_1001EA7D0[8];
  v2 = off_1001EA7D0[9];
  return result;
}

void *sub_100129158(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_100129750(a1, 1);
  google::protobuf::Type::Type(v2, a1);
  return v2;
}

void *sub_1001291E4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1001297DC(a1, 1);
  google::protobuf::Field::Field(v2, a1);
  return v2;
}

void *sub_100129270(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_100129868(a1, 1);
  google::protobuf::Enum::Enum(v2, a1);
  return v2;
}

void *sub_1001292FC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1001298F4(a1, 1);
  google::protobuf::EnumValue::EnumValue(v2, a1);
  return v2;
}

void *sub_100129388(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_100129980(a1);
}

void sub_1001294C8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::Field::~Field(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_10012954C(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_1001295FC(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Field>(v18);
      result = sub_1001295FC(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10012960C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::EnumValue::~EnumValue(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_100129690(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_100129740(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValue>(v18);
      result = sub_100129740(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_100129750(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100167130(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x70uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, google::protobuf::Type::~Type);
}

void *sub_1001297DC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_10016716C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x60uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x60uLL, google::protobuf::Field::~Field);
}

void *sub_100129868(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001671A8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x58uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x58uLL, google::protobuf::Enum::~Enum);
}

void *sub_1001298F4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001671E4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::EnumValue::~EnumValue);
}

void *sub_100129980(google::protobuf::Arena *a1)
{
  v2 = sub_1001299FC(a1, 1);
  *v2 = off_1001D28E8;
  v2[1] = a1;
  *(v2 + 8) = 0;
  if (atomic_load_explicit(scc_info_Option_google_2fprotobuf_2ftype_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Option_google_2fprotobuf_2ftype_2eproto);
  }

  v2[2] = &google::protobuf::internal::fixed_address_empty_string;
  v2[3] = 0;
  return v2;
}

void *sub_1001299FC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100167220(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::Option::~Option);
}

uint64_t sub_100129AF4(uint64_t result)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56) + 8 * v2;
  *(v1 + 48) = v2 + 1;
  *(v3 + 8) = result;
  return result;
}

char *sub_100129B10(std::string *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string::value_type *a10)
{

  return google::protobuf::internal::InlineGreedyStringParser(a1, a10, v10);
}

char *sub_100129B4C(std::string *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string::value_type *a10)
{

  return google::protobuf::internal::InlineGreedyStringParser(a1, a10, v10);
}

unsigned int *sub_100129BB8()
{

  return google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v1 + 16), v0 + 1);
}

BOOL google::protobuf::TextFormat::Printer::PrintToString(google::protobuf::TextFormat::Printer *a1, const google::protobuf::Message *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  google::protobuf::io::StringOutputStream::StringOutputStream(v6, a3);
  return google::protobuf::TextFormat::Printer::Print(a1, a2, v6);
}

void google::protobuf::Message::ShortDebugString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  google::protobuf::TextFormat::Printer::Printer(v2);
}

void sub_100129D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000CE708(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::ParseInfoTree::RecordLocation(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v19[0] = a2;
  v19[2] = v19;
  v4 = sub_1001333BC(a1, v19);
  v5 = v4;
  v7 = v4[6];
  v6 = v4[7];
  if (v7 >= v6)
  {
    v9 = v4[5];
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      sub_100070E64();
    }

    v11 = v6 - v9;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      sub_100133490((v4 + 5), v13);
    }

    v14 = (8 * v10);
    *v14 = a3;
    v8 = 8 * v10 + 8;
    v15 = v4[5];
    v16 = v4[6] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = v5[5];
    v5[5] = v17;
    v5[6] = v8;
    v5[7] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = a3;
    v8 = (v7 + 1);
  }

  v5[6] = v8;
}

void google::protobuf::TextFormat::ParseInfoTree::CreateNested(google::protobuf::TextFormat::ParseInfoTree *this, const google::protobuf::FieldDescriptor *a2)
{
  v2[0] = a2;
  v2[2] = v2;
  sub_1001333BC(this + 24, v2);
  operator new();
}

uint64_t sub_10012A090(uint64_t a1, const void **a2, uint64_t *a3)
{
  v6 = strlen("type.googleapis.com/");
  v7 = v6;
  v8 = *(a2 + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    if (v7 != v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!memcmp(v9, "type.googleapis.com/", v7))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (v6 == a2[1])
  {
    if (v6 == -1)
    {
      sub_1000CF3C0();
    }

    v9 = *a2;
    goto LABEL_7;
  }

LABEL_8:
  v10 = strlen("type.googleprod.com/");
  if ((v8 & 0x80000000) != 0)
  {
    if (v10 != a2[1])
    {
      return 0;
    }

    if (v10 == -1)
    {
      sub_1000CF3C0();
    }

    a2 = *a2;
  }

  else if (v10 != v8)
  {
    return 0;
  }

  if (memcmp(a2, "type.googleprod.com/", v10))
  {
    return 0;
  }

LABEL_16:
  v12 = *(*((*(*a1 + 152))(a1) + 16) + 16);

  return google::protobuf::DescriptorPool::FindMessageTypeByName(v12, a3, v13);
}

double google::protobuf::TextFormat::Parser::Parser(google::protobuf::TextFormat::Parser *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0x7FFFFFFF;
  return result;
}

uint64_t google::protobuf::TextFormat::Parser::Parse(uint64_t a1, uint64_t a2, google::protobuf::Message *a3)
{
  (*(*a3 + 40))(a3);
  v6 = *(a1 + 31);
  v7 = (*(*a3 + 152))(a3);
  sub_10012E7FC(v11, v7, a2, *a1, *(a1 + 8), *(a1 + 16), v6 ^ 1, *(a1 + 25), *(a1 + 26), BYTE1(*(a1 + 26)), BYTE2(*(a1 + 26)), HIBYTE(*(a1 + 26)), *(a1 + 30), *(a1 + 24), *(a1 + 32));
  v9 = google::protobuf::TextFormat::Parser::MergeUsingImpl(a1, v8, a3, v11);
  google::protobuf::io::Tokenizer::~Tokenizer(&v13);
  google::protobuf::io::ErrorCollector::~ErrorCollector(&v12);
  return v9;
}

void sub_10012A2EC(_Unwind_Exception *a1)
{
  google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Parser::MergeUsingImpl(uint64_t a1, uint64_t a2, google::protobuf::Message *a3, uint64_t a4)
{
  while (*(a4 + 40) != 1)
  {
    if ((sub_10012EACC(a4, a3) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a4 + 244))
  {
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0 && ((*(*a3 + 48))(a3) & 1) == 0)
  {
    memset(v13, 0, sizeof(v13));
    google::protobuf::Message::FindInitializationErrors(a3, v13);
    sub_1000CE968(", ", v13, &v10);
    v8 = std::string::insert(&v10, 0, "Message missing required fields: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_10012A6A4(a4, -1, 0, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    __p[0] = v13;
    sub_1000CF468(__p);
    return 0;
  }

  return 1;
}

void sub_10012A444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __p = &a22;
  sub_1000CF468(&__p);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Parser::ParseFromString(char **a1, uint64_t a2, char *a3)
{
  sub_1000B3420(v10, a2, a3);
  result = sub_10012A51C(v10[0], v10[1], *a1);
  if (result)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    google::protobuf::io::ArrayInputStream::ArrayInputStream(v10, v8, v9, -1);
    return google::protobuf::TextFormat::Parser::Parse(a1, v10, a3);
  }

  return result;
}

BOOL sub_10012A51C(int a1, uint64_t this, char *a3)
{
  if (this >= 0x80000000)
  {
    v16[0] = "Input size too large: ";
    v16[1] = 22;
    v14[0] = v15;
    v14[1] = google::protobuf::FastInt64ToBufferLeft(this, v15, a3) - v15;
    v13[0] = " bytes";
    v13[1] = 6;
    v12[0] = " > ";
    v12[1] = 3;
    v10[0] = v11;
    v10[1] = google::protobuf::FastInt32ToBufferLeft(0x7FFFFFFF, v11, v5) - v11;
    v9[0] = " bytes.";
    v9[1] = 7;
    google::protobuf::StrCat(v16, v14, v13, v12, v10, v9, __p);
    (*(*a3 + 16))(a3, 0xFFFFFFFFLL, 0, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this < 0x80000000;
}

void sub_10012A680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012A6A4(uint64_t *a1, int a2, int a3, const std::string::value_type *a4)
{
  *(a1 + 244) = 1;
  v8 = *a1;
  if (v8)
  {
    v9 = *(*v8 + 16);

    v9();
  }

  else
  {
    if (a2 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 323);
      v18 = google::protobuf::internal::LogMessage::operator<<(v20, "Error parsing text-format ");
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, *(a1[27] + 8));
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 319);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "Error parsing text-format ");
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1[27] + 8));
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, ": ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2 + 1);
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, ":");
      v15 = google::protobuf::internal::LogMessage::operator<<(v14, a3 + 1);
    }

    v16 = google::protobuf::internal::LogMessage::operator<<(v15, ": ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, a4);
    google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }
}

void sub_10012A810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintBool(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(*a3 + 40);
  if (a2)
  {
    return v3(a3, "true", 4);
  }

  else
  {
    return v3(a3, "false", 5);
  }
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintInt32(int a1, google::protobuf *this, char *a3)
{
  __src = v12;
  v4 = google::protobuf::FastInt32ToBufferLeft(this, v12, a3);
  v5 = v4 - v12;
  v11 = v4 - v12;
  if ((v4 - v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v9 = v4 - v12;
  if (v4 != v12)
  {
    memmove(__p, __src, v5);
  }

  *(__p + v5) = 0;
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a3 + 40))(a3, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012A9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintUInt32(int a1, google::protobuf *this, char *a3)
{
  __src = v12;
  v4 = google::protobuf::FastUInt32ToBufferLeft(this, v12, a3);
  v5 = v4 - v12;
  v11 = v4 - v12;
  if ((v4 - v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v9 = v4 - v12;
  if (v4 != v12)
  {
    memmove(__p, __src, v5);
  }

  *(__p + v5) = 0;
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a3 + 40))(a3, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012AB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintInt64(int a1, google::protobuf *this, char *a3)
{
  __src = v12;
  v4 = google::protobuf::FastInt64ToBufferLeft(this, v12, a3);
  v5 = v4 - v12;
  v11 = v4 - v12;
  if ((v4 - v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v9 = v4 - v12;
  if (v4 != v12)
  {
    memmove(__p, __src, v5);
  }

  *(__p + v5) = 0;
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a3 + 40))(a3, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012ACD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintUInt64(int a1, google::protobuf *this, char *a3)
{
  __src = v12;
  v4 = google::protobuf::FastUInt64ToBufferLeft(this, v12, a3);
  v5 = v4 - v12;
  v11 = v4 - v12;
  if ((v4 - v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v9 = v4 - v12;
  if (v4 != v12)
  {
    memmove(__p, __src, v5);
  }

  *(__p + v5) = 0;
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a3 + 40))(a3, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012AE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintFloat(float a1, uint64_t a2, char *a3)
{
  google::protobuf::SimpleFtoa(a1, a3, __p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012AF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintDouble(double a1, uint64_t a2, char *a3)
{
  google::protobuf::SimpleDtoa(a1, a3, __p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012AFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintString(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  (*(*a3 + 40))(a3, "", 1);
  google::protobuf::CEscape(a2, v5, &__p);
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

  (*(*a3 + 40))(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return (*(*a3 + 40))(a3, "", 1);
}

void sub_10012B0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintEnum(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  return (*(*a4 + 40))(a4, v5, v6);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintFieldName(int a1, int a2, int a3, std::once_flag::_State_type **this, uint64_t a5)
{
  if (*(this + 67) == 1)
  {
    (*(*a5 + 40))(a5, "[", 1);
    v7 = google::protobuf::FieldDescriptor::PrintableNameForExtension(this);
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    (*(*a5 + 40))(a5, v9, v10);
    v11 = *(*a5 + 40);

    return v11(a5, "]", 1);
  }

  else
  {
    v13 = this[6];
    if (v13)
    {
      v18 = this;
      v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v21[0] = &v19;
        v21[1] = &v18;
        v20 = v21;
        std::__call_once(v13, &v20, sub_1000B32C4);
      }
    }

    if (*(this + 14) == 10)
    {
      v14 = *google::protobuf::FieldDescriptor::message_type(this);
    }

    else
    {
      v14 = *this;
    }

    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = v14[1];
    }

    return (*(*a5 + 40))(a5, v16, v17);
  }
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintMessageStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v6 = " { ";
  }

  else
  {
    v6 = " {\n";
  }

  return (*(*a6 + 40))(a6, v6, 3);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintMessageEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v6 = "} ";
  }

  else
  {
    v6 = "}\n";
  }

  return (*(*a6 + 40))(a6, v6, 2);
}

void google::protobuf::TextFormat::Printer::Printer(google::protobuf::TextFormat::Printer *this)
{
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 7) = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  google::protobuf::TextFormat::Printer::SetUseUtf8StringEscaping(this);
}

void sub_10012B458(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_1000CE774(v4, *(v1 + 64));
  sub_1000CE7F8(v2, *(v1 + 40));
  v6 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v6)
  {
    sub_10016725C(v6);
  }

  _Unwind_Resume(a1);
}

BOOL google::protobuf::TextFormat::Printer::Print(google::protobuf::TextFormat::Printer *this, const google::protobuf::Message *a2, google::protobuf::io::ZeroCopyOutputStream *a3)
{
  v3 = *this;
  v6[0] = off_1001D2BD0;
  v6[1] = a3;
  v6[2] = 0;
  v7 = 0;
  v8 = 1;
  v9 = v3;
  v10 = v3;
  google::protobuf::TextFormat::Printer::Print(this, a2, v6);
  v4 = HIBYTE(v8);
  sub_10013333C(v6);
  return (v4 & 1) == 0;
}

void sub_10012B504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013333C(va);
  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::Printer::Print(uint64_t a1, google::protobuf::Message *a2, char *a3)
{
  (*(*a2 + 152))(a2);
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a2 + 152))(a2);
    v9 = v8;
    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = a1 + 64;
      do
      {
        v12 = *(v10 + 32);
        v13 = v12 >= v8;
        v14 = v12 < v8;
        if (v13)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * v14);
      }

      while (v10);
      if (v11 != a1 + 64 && *(v11 + 32) <= v8)
      {
        v26 = *(a1 + 4);
        v27 = *(**(v11 + 40) + 16);

        v27();
        return;
      }
    }

    v15 = *(v8 + 8);
    v16 = strlen("google.protobuf.Any");
    v17 = *(v15 + 23);
    if (v17 < 0)
    {
      if (v16 != v15[1])
      {
        goto LABEL_31;
      }

      if (v16 == -1)
      {
        sub_1000CF3C0();
      }

      v15 = *v15;
    }

    else if (v16 != v17)
    {
LABEL_31:
      v28 = 0;
      v29 = 0;
      v30 = 0;
      if (*(*(v9 + 32) + 75) == 1)
      {
        v34 = *(v9 + 40);
        sub_1000CAE3C(&v28, &v34);
        v34 = (*(v9 + 40) + 152);
        sub_1000CAE3C(&v28, &v34);
      }

      else
      {
        google::protobuf::Reflection::ListFieldsOmitStripped(v7, a2, &v28);
        (*(*a2 + 152))(a2);
      }

      if (*(a1 + 8) == 1)
      {
        v21 = 126 - 2 * __clz((v29 - v28) >> 3);
        if (v29 == v28)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        sub_1001336D0(v28, v29, v22, 1);
      }

      v23 = v28;
      v24 = v29;
      while (v23 != v24)
      {
        google::protobuf::TextFormat::Printer::PrintField(a1, a2, v7, *v23++, a3);
      }

      if ((*(a1 + 7) & 1) == 0)
      {
        UnknownFields = google::protobuf::Reflection::GetUnknownFields(v7, a2);
        google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, UnknownFields, a3, 10);
      }

      v20 = v28;
      if (v28)
      {
        v29 = v28;
        goto LABEL_46;
      }

      return;
    }

    if (!memcmp(v15, "google.protobuf.Any", v16) && *(a1 + 9) == 1 && (google::protobuf::TextFormat::Printer::PrintAny(a1, a2, a3) & 1) != 0)
    {
      return;
    }

    goto LABEL_31;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  google::protobuf::MessageLite::SerializeAsString(a2, &__p);
  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v19 = v33;
  }

  else
  {
    v19 = v32;
  }

  google::protobuf::io::ArrayInputStream::ArrayInputStream(&v28, p_p, v19, -1);
  google::protobuf::UnknownFieldSet::ParseFromZeroCopyStream(&v34, &v28);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, &v34, a3, 10);
  v20 = v34;
  if (v34 != v35)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(&v34);
    v20 = v34;
  }

  if (v20)
  {
    v35 = v20;
LABEL_46:
    operator delete(v20);
  }
}

void sub_10012B878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::Printer::PrintUnknownFields(uint64_t a1, uint64_t *a2, char *a3, int a4)
{
  v4 = *a2;
  if (((a2[1] - *a2) >> 4) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v56 = a4 - 1;
    do
    {
      v9 = *(v4 + v7);
      __src = &v70;
      v10 = google::protobuf::FastInt32ToBufferLeft(v9, &v70, a3);
      v11 = v10 - &v70;
      __len = v10 - &v70;
      if ((v10 - &v70) > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1000B337C();
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      v67 = v10 - &v70;
      if (v10 != &v70)
      {
        memmove(&__dst, __src, v11);
      }

      *(&__dst + v11) = 0;
      v12 = *(v4 + v7 + 4);
      if (v12 <= 1)
      {
        if (!v12)
        {
          if ((v67 & 0x80u) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if ((v67 & 0x80u) == 0)
          {
            v29 = v67;
          }

          else
          {
            v29 = v66;
          }

          (*(*a3 + 40))(a3, p_dst, v29);
          (*(*a3 + 40))(a3, ": ", 2);
          v30 = *(v4 + v7 + 8);
          __src = &v70;
          v32 = google::protobuf::FastUInt64ToBufferLeft(v30, &v70, v31);
          v33 = v32 - &v70;
          __len = v32 - &v70;
          if ((v32 - &v70) > 0x7FFFFFFFFFFFFFF7)
          {
            sub_1000B337C();
          }

          if (v33 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v64) = v32 - &v70;
          if (v32 != &v70)
          {
            memmove(&__p, __src, v33);
          }

          *(&__p + v33) = 0;
          if (v64 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v64 >= 0)
          {
            v43 = HIBYTE(v64);
          }

          else
          {
            v43 = v63;
          }

          (*(*a3 + 40))(a3, p_p, v43);
          if (SHIBYTE(v64) < 0)
          {
            operator delete(__p);
          }

          v35 = (*a3 + 40);
          if (*(a1 + 4))
          {
            v36 = " ";
          }

          else
          {
            v36 = "\n";
          }

          v37 = 1;
          goto LABEL_94;
        }

        if (v12 == 1)
        {
          if ((v67 & 0x80u) == 0)
          {
            v16 = &__dst;
          }

          else
          {
            v16 = __dst;
          }

          if ((v67 & 0x80u) == 0)
          {
            v17 = v67;
          }

          else
          {
            v17 = v66;
          }

          (*(*a3 + 40))(a3, v16, v17);
          (*(*a3 + 40))(a3, ": 0x", 4);
          google::protobuf::strings::AlphaNum::AlphaNum(&__src, *(v4 + v7 + 8), 8);
          v18 = __len;
          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
            sub_1000B337C();
          }

          if (__len >= 0x17)
          {
            operator new();
          }

          HIBYTE(v64) = __len;
          if (__len)
          {
            memmove(&__p, __src, __len);
          }

          *(&__p + v18) = 0;
          if (v64 >= 0)
          {
            v44 = &__p;
          }

          else
          {
            v44 = __p;
          }

          if (v64 >= 0)
          {
            v45 = HIBYTE(v64);
          }

          else
          {
            v45 = v63;
          }

          (*(*a3 + 40))(a3, v44, v45);
          v58 = v58 & 0xFFFFFFFF00000000 | 8;
          if (SHIBYTE(v64) < 0)
          {
            operator delete(__p);
          }

          v46 = *a3 + 40;
          if (*(a1 + 4))
          {
            v41 = " ";
          }

          else
          {
            v41 = "\n";
          }

          goto LABEL_79;
        }
      }

      else
      {
        switch(v12)
        {
          case 2:
            if ((v67 & 0x80u) == 0)
            {
              v19 = &__dst;
            }

            else
            {
              v19 = __dst;
            }

            if ((v67 & 0x80u) == 0)
            {
              v20 = v67;
            }

            else
            {
              v20 = v66;
            }

            (*(*a3 + 40))(a3, v19, v20);
            (*(*a3 + 40))(a3, ": 0x", 4);
            google::protobuf::strings::AlphaNum::AlphaNum(&__src, *(v4 + v7 + 8), 16);
            v21 = __len;
            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              sub_1000B337C();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            HIBYTE(v64) = __len;
            if (__len)
            {
              memmove(&__p, __src, __len);
            }

            *(&__p + v21) = 0;
            if (v64 >= 0)
            {
              v38 = &__p;
            }

            else
            {
              v38 = __p;
            }

            if (v64 >= 0)
            {
              v39 = HIBYTE(v64);
            }

            else
            {
              v39 = v63;
            }

            (*(*a3 + 40))(a3, v38, v39);
            v57 = v57 & 0xFFFFFFFF00000000 | 0x10;
            if (SHIBYTE(v64) < 0)
            {
              operator delete(__p);
            }

            v40 = *a3 + 40;
            if (*(a1 + 4))
            {
              v41 = " ";
            }

            else
            {
              v41 = "\n";
            }

LABEL_79:
            (*(*a3 + 40))(a3, v41, 1);
            break;
          case 3:
            if ((v67 & 0x80u) == 0)
            {
              v22 = &__dst;
            }

            else
            {
              v22 = __dst;
            }

            if ((v67 & 0x80u) == 0)
            {
              v23 = v67;
            }

            else
            {
              v23 = v66;
            }

            (*(*a3 + 40))(a3, v22, v23);
            v25 = *(v4 + v7 + 8);
            v26 = *(v25 + 23);
            if (v26 < 0)
            {
              v27 = *v25;
              v26 = *(v25 + 8);
            }

            else
            {
              v27 = *(v4 + v7 + 8);
            }

            __src = v27;
            __len = v27 + v26;
            v70 = 0;
            v72 = 0;
            v73 = 0;
            v71 = v26;
            v74 = v26;
            v75 = -NAN;
            v78 = 0;
            v79 = 0;
            v76 = a4;
            v77 = a4;
            v63 = 0;
            v64 = 0;
            __p = 0;
            v47 = *(v25 + 23);
            if (v47 < 0)
            {
              v47 = *(v25 + 8);
            }

            if (a4 >= 1 && v47 && google::protobuf::UnknownFieldSet::ParseFromCodedStream(&__p, &__src, v24))
            {
              v48 = *(*a3 + 40);
              if (*(a1 + 4) == 1)
              {
                v48(a3, " { ", 3);
              }

              else
              {
                v48(a3, " {\n", 3);
                (*(*a3 + 16))(a3);
              }

              google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, &__p, a3, v56);
              v55 = *a3;
              if (*(a1 + 4) == 1)
              {
                v52 = (v55 + 40);
                v53 = "} ";
              }

              else
              {
                (*(v55 + 24))(a3);
                v52 = (*a3 + 40);
                v53 = "}\n";
              }
            }

            else
            {
              (*(*a3 + 40))(a3, ": ", 3);
              google::protobuf::CEscape(v25, v49, &v61);
              if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v50 = &v61;
              }

              else
              {
                v50 = v61.__r_.__value_.__r.__words[0];
              }

              if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v61.__r_.__value_.__l.__size_;
              }

              (*(*a3 + 40))(a3, v50, size);
              if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v61.__r_.__value_.__l.__data_);
              }

              v52 = (*a3 + 40);
              if (*(a1 + 4))
              {
                v53 = " ";
              }

              else
              {
                v53 = "\n";
              }
            }

            (*v52)(a3, v53, 2);
            v54 = __p;
            if (__p != v63)
            {
              google::protobuf::UnknownFieldSet::ClearFallback(&__p);
              v54 = __p;
            }

            if (v54)
            {
              v63 = v54;
              operator delete(v54);
            }

            google::protobuf::io::CodedInputStream::~CodedInputStream(&__src);
            break;
          case 4:
            if ((v67 & 0x80u) == 0)
            {
              v13 = &__dst;
            }

            else
            {
              v13 = __dst;
            }

            if ((v67 & 0x80u) == 0)
            {
              v14 = v67;
            }

            else
            {
              v14 = v66;
            }

            (*(*a3 + 40))(a3, v13, v14);
            v15 = *(*a3 + 40);
            if (*(a1 + 4) == 1)
            {
              v15(a3, " { ", 3);
            }

            else
            {
              v15(a3, " {\n", 3);
              (*(*a3 + 16))(a3);
            }

            google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, *(v4 + v7 + 8), a3, v56);
            v34 = *a3;
            if (*(a1 + 4) == 1)
            {
              v35 = (v34 + 40);
              v36 = "} ";
            }

            else
            {
              (*(v34 + 24))(a3);
              v35 = (*a3 + 40);
              v36 = "}\n";
            }

            v37 = 2;
LABEL_94:
            (*v35)(a3, v36, v37);
            break;
        }
      }

      if (v67 < 0)
      {
        operator delete(__dst);
      }

      ++v8;
      v4 = *a2;
      v7 += 16;
    }

    while (v8 < ((a2[1] - *a2) >> 4));
  }
}

void sub_10012C49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a2)
  {
    sub_100118EE0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::Printer::PrintAny(uint64_t a1, const google::protobuf::Message *a2, uint64_t a3)
{
  v40 = 0;
  v41 = 0;
  if (!google::protobuf::internal::GetAnyFieldDescriptors(a2, &v41, &v40))
  {
    return 0;
  }

  (*(*a2 + 152))(a2);
  v7 = v6;
  google::protobuf::Reflection::GetString(v6, a2, v41, v38);
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  sub_1000B3420(v42, v38, v8);
  if (google::protobuf::internal::ParseAnyTypeUrl(v42[0].__r_.__value_.__l.__data_, v42[0].__r_.__value_.__l.__size_, v36, v34))
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      v10 = (*(*v9 + 32))(v9, a2, v36, v34);
    }

    else
    {
      v10 = sub_10012A090(a2, v36, v34);
    }

    v12 = v10;
    if (v10)
    {
      google::protobuf::DynamicMessageFactory::DynamicMessageFactory(v42);
      Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(v42, v12);
      v14 = (*(*Prototype + 24))(Prototype);
      google::protobuf::Reflection::GetString(v7, a2, v40, __p);
      v11 = google::protobuf::MessageLite::ParseFromString(v14, __p);
      if (v11)
      {
        (*(*a3 + 40))(a3, "[", 1);
        if ((v39 & 0x80u) == 0)
        {
          v15 = v38;
        }

        else
        {
          v15 = v38[0];
        }

        if ((v39 & 0x80u) == 0)
        {
          v16 = v39;
        }

        else
        {
          v16 = v38[1];
        }

        (*(*a3 + 40))(a3, v15, v16);
        (*(*a3 + 40))(a3, "]", 1);
        v17 = *(a1 + 40);
        if (!v17)
        {
          goto LABEL_23;
        }

        v18 = a1 + 40;
        do
        {
          v19 = *(v17 + 32);
          v20 = v19 >= v40;
          v21 = v19 < v40;
          if (v20)
          {
            v18 = v17;
          }

          v17 = *(v17 + 8 * v21);
        }

        while (v17);
        if (v18 != a1 + 40 && *(v18 + 32) <= v40)
        {
          v22 = (v18 + 40);
        }

        else
        {
LABEL_23:
          v22 = (a1 + 24);
        }

        v23 = *v22;
        (*(**v22 + 112))(*v22, a2, 0xFFFFFFFFLL, 0, *(a1 + 4), a3);
        (*(*a3 + 16))(a3);
        google::protobuf::TextFormat::Printer::Print(a1, v14, a3);
        (*(*a3 + 24))(a3);
        (*(*v23 + 128))(v23, a2, 0xFFFFFFFFLL, 0, *(a1 + 4), a3);
      }

      else
      {
        google::protobuf::internal::LogMessage::LogMessage(v31, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 2001);
        v27 = google::protobuf::internal::LogMessage::operator<<(v31, v38);
        v28 = google::protobuf::internal::LogMessage::operator<<(v27, ": failed to parse contents");
        google::protobuf::internal::LogFinisher::operator=(&v30, &v28->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v31[0].__r_.__value_.__l.__data_);
      }

      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(v42);
      goto LABEL_33;
    }

    google::protobuf::internal::LogMessage::LogMessage(v42, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 1992);
    v24 = google::protobuf::internal::LogMessage::operator<<(v42, "Can't print proto content: proto type ");
    v25 = google::protobuf::internal::LogMessage::operator<<(v24, v38);
    v26 = google::protobuf::internal::LogMessage::operator<<(v25, " not found");
    google::protobuf::internal::LogFinisher::operator=(v31, &v26->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v42[0].__r_.__value_.__l.__data_);
  }

  v11 = 0;
LABEL_33:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  return v11;
}

void sub_10012C9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a42);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::Printer::PrintField(uint64_t a1, google::protobuf::Message *a2, google::protobuf::Reflection *a3, google::protobuf::FieldDescriptor *a4, uint64_t a5)
{
  if (*(a1 + 6) != 1 || *(a4 + 15) != 3)
  {
    goto LABEL_12;
  }

  v9 = *(a4 + 6);
  if (v9)
  {
    v40 = a4;
    v41 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v43 = &v41;
      v44 = &v40;
      __p = &v43;
      std::__call_once(v9, &__p, sub_1000B32C4);
    }
  }

  v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)];
  if (v10 == 9)
  {
    goto LABEL_12;
  }

  v11 = *(a4 + 6);
  if (v11)
  {
    v40 = a4;
    v41 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v43 = &v41;
      v44 = &v40;
      __p = &v43;
      std::__call_once(v11, &__p, sub_1000B32C4);
    }

    v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)];
  }

  if (v10 != 10)
  {
    google::protobuf::TextFormat::Printer::PrintShortRepeatedField(a1, a2, a3, a4, a5);
  }

  else
  {
LABEL_12:
    if (*(a4 + 15) == 3)
    {
      v12 = google::protobuf::Reflection::FieldSize(a3, a2, a4);
    }

    else
    {
      v12 = ((google::protobuf::Reflection::HasField(a3, a2, a4) & 1) != 0 || *(*(*(a4 + 10) + 32) + 75) == 1);
    }

    google::protobuf::DynamicMessageFactory::DynamicMessageFactory(&v43);
    __p = 0;
    v36 = 0;
    v37 = 0;
    v13 = *(a4 + 6);
    if (v13)
    {
      v38 = a4;
      v39 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v41 = &v39;
        v42 = &v38;
        v40 = &v41;
        std::__call_once(v13, &v40, sub_1000B32C4);
      }
    }

    if (*(a4 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a4))
    {
      LOBYTE(v33) = google::protobuf::internal::MapFieldPrinterHelper::SortMap(a2, a3, a4, &v43, &__p);
      HIDWORD(v33) = 1;
    }

    else
    {
      v33 = 0;
    }

    if (v12 >= 1)
    {
      v14 = 0;
      v15 = (a1 + 40);
      while (1)
      {
        if (*(a4 + 15) == 3)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0xFFFFFFFFLL;
        }

        google::protobuf::TextFormat::Printer::PrintFieldName(a1, a2, v16, v12, a3, a4, a5);
        v17 = *(a4 + 6);
        if (v17)
        {
          v38 = a4;
          v39 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v17, memory_order_acquire) != -1)
          {
            v41 = &v39;
            v42 = &v38;
            v40 = &v41;
            std::__call_once(v17, &v40, sub_1000B32C4);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)] == 10)
        {
          break;
        }

        (*(*a5 + 40))(a5, ": ", 2);
        google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, a3, a4, v16);
        v28 = *a5 + 40;
        if (*(a1 + 4))
        {
          v29 = " ";
        }

        else
        {
          v29 = "\n";
        }

        (*(*a5 + 40))(a5, v29, 1);
LABEL_57:
        if (++v14 == v12)
        {
          goto LABEL_58;
        }
      }

      v18 = *v15;
      v19 = (a1 + 24);
      if (*v15)
      {
        v20 = (a1 + 40);
        do
        {
          v21 = v18[4];
          v22 = v21 >= a4;
          v23 = v21 < a4;
          if (v22)
          {
            v20 = v18;
          }

          v18 = v18[v23];
        }

        while (v18);
        v19 = (a1 + 24);
        if (v20 != v15)
        {
          v24 = v20[4];
          v25 = v20 + 5;
          if (v24 <= a4)
          {
            v19 = v25;
          }

          else
          {
            v19 = (a1 + 24);
          }
        }
      }

      v26 = *v19;
      if (*(a4 + 15) == 3)
      {
        if (HIDWORD(v33))
        {
          v27 = *(__p + v14);
LABEL_54:
          (*(*v26 + 112))(v26, v27, v16, v12, *(a1 + 4), a5);
          (*(*a5 + 16))(a5);
          if (((*(*v26 + 120))(v26, v27, v16, v12, *(a1 + 4), a5) & 1) == 0)
          {
            google::protobuf::TextFormat::Printer::Print(a1, v27, a5);
          }

          (*(*a5 + 24))(a5);
          (*(*v26 + 128))(v26, v27, v16, v12, *(a1 + 4), a5);
          goto LABEL_57;
        }

        RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(a3, a2, a4, v14);
      }

      else
      {
        RepeatedMessage = google::protobuf::Reflection::GetMessage(a3, a2, a4, 0);
      }

      v27 = RepeatedMessage;
      goto LABEL_54;
    }

LABEL_58:
    v31 = __p;
    if (v33)
    {
      v32 = v36;
      if (__p != v36)
      {
        do
        {
          if (*v31)
          {
            (*(**v31 + 8))(*v31);
          }

          ++v31;
        }

        while (v31 != v32);
        v31 = __p;
      }
    }

    if (v31)
    {
      v36 = v31;
      operator delete(v31);
    }

    google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&v43);
  }
}

void sub_10012D0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a21);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Printer::PrintFieldValueToString(int *a1, google::protobuf::Message *a2, google::protobuf::FieldDescriptor *a3, int a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 23) = 0;
  }

  google::protobuf::io::StringOutputStream::StringOutputStream(v17, a5);
  v9 = *a1;
  v12[0] = off_1001D2BD0;
  v12[1] = v17;
  v12[2] = 0;
  v13 = 0;
  v14 = 1;
  v15 = v9;
  v16 = v9;
  (*(*a2 + 152))(a2);
  google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, v10, a3, a4, v12);
  return sub_10013333C(v12);
}

void sub_10012D1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013333C(va);
  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::Printer::PrintFieldValue(uint64_t a1, google::protobuf::Message *a2, google::protobuf::Reflection *this, google::protobuf::FieldDescriptor *a4, int a5, char *a6)
{
  v12 = *(a1 + 40);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = a1 + 40;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a4;
    v16 = v14 < a4;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 != a1 + 40 && *(v13 + 32) <= a4)
  {
    v17 = (v13 + 40);
  }

  else
  {
LABEL_9:
    v17 = (a1 + 24);
  }

  v18 = *v17;
  v19 = *(a4 + 6);
  if (v19)
  {
    v47.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    *v55 = a4;
    if (atomic_load_explicit(v19, memory_order_acquire) != -1)
    {
      __src = &v47;
      v53 = v55;
      __p = &__src;
      std::__call_once(v19, &__p, sub_1000B32C4);
    }
  }

  v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)];
  if (v20 <= 5)
  {
    if (v20 <= 2)
    {
      if (v20 == 1)
      {
        if (*(a4 + 15) == 3)
        {
          RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(this, a2, a4, a5);
        }

        else
        {
          RepeatedInt32 = google::protobuf::Reflection::GetInt32(this, a2, a4);
        }

        (*(*v18 + 24))(v18, RepeatedInt32, a6);
      }

      else if (v20 == 2)
      {
        if (*(a4 + 15) == 3)
        {
          RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(this, a2, a4, a5);
        }

        else
        {
          RepeatedInt64 = google::protobuf::Reflection::GetInt64(this, a2, a4);
        }

        (*(*v18 + 40))(v18, RepeatedInt64, a6);
      }
    }

    else if (v20 == 3)
    {
      if (*(a4 + 15) == 3)
      {
        RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(this, a2, a4, a5);
      }

      else
      {
        RepeatedUInt32 = google::protobuf::Reflection::GetUInt32(this, a2, a4);
      }

      (*(*v18 + 32))(v18, RepeatedUInt32, a6);
    }

    else if (v20 == 4)
    {
      if (*(a4 + 15) == 3)
      {
        RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(this, a2, a4, a5);
      }

      else
      {
        RepeatedUInt64 = google::protobuf::Reflection::GetUInt64(this, a2, a4);
      }

      (*(*v18 + 48))(v18, RepeatedUInt64, a6);
    }

    else
    {
      if (*(a4 + 15) == 3)
      {
        v21.n128_f64[0] = google::protobuf::Reflection::GetRepeatedDouble(this, a2, a4, a5);
      }

      else
      {
        v21.n128_f64[0] = google::protobuf::Reflection::GetDouble(this, a2, a4);
      }

      (*(*v18 + 64))(v18, a6, v21);
    }

    return;
  }

  if (v20 <= 7)
  {
    if (v20 == 6)
    {
      if (*(a4 + 15) == 3)
      {
        v26.n128_f32[0] = google::protobuf::Reflection::GetRepeatedFloat(this, a2, a4, a5);
      }

      else
      {
        v26.n128_f32[0] = google::protobuf::Reflection::GetFloat(this, a2, a4);
      }

      (*(*v18 + 56))(v18, a6, v26);
    }

    else
    {
      if (*(a4 + 15) == 3)
      {
        RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(this, a2, a4, a5);
      }

      else
      {
        RepeatedBool = google::protobuf::Reflection::GetBool(this, a2, a4);
      }

      (*(*v18 + 16))(v18, RepeatedBool, a6);
    }

    return;
  }

  if (v20 == 8)
  {
    if (*(a4 + 15) == 3)
    {
      RepeatedEnumValue = google::protobuf::Reflection::GetRepeatedEnumValue(this, a2, a4, a5);
    }

    else
    {
      RepeatedEnumValue = google::protobuf::Reflection::GetEnumValue(this, a2, a4);
    }

    v31 = RepeatedEnumValue;
    v32 = google::protobuf::FieldDescriptor::enum_type(a4);
    ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v32, v31);
    if (ValueByNumber)
    {
      (*(*v18 + 88))(v18, v31, *ValueByNumber, a6);
      return;
    }

    __src = v54;
    v45 = google::protobuf::FastInt32ToBufferLeft(v31, v54, v34);
    v46 = v45 - v54;
    v53 = (v45 - v54);
    if ((v45 - v54) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000B337C();
    }

    if (v46 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v49) = v45 - v54;
    if (v45 != v54)
    {
      memmove(&__p, __src, v46);
    }

    *(&__p + v46) = 0;
    (*(*v18 + 88))(v18, v31, &__p, a6);
    if (SHIBYTE(v49) < 0)
    {
      v44 = __p;
      goto LABEL_90;
    }
  }

  else
  {
    if (v20 != 9)
    {
      if (v20 == 10)
      {
        if (*(a4 + 15) == 3)
        {
          RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(this, a2, a4, a5);
        }

        else
        {
          RepeatedMessage = google::protobuf::Reflection::GetMessage(this, a2, a4, 0);
        }

        google::protobuf::TextFormat::Printer::Print(a1, RepeatedMessage, a6);
      }

      return;
    }

    __src = 0;
    v53 = 0;
    v54[0] = 0;
    if (*(a4 + 15) == 3)
    {
      RepeatedStringReference = google::protobuf::Reflection::GetRepeatedStringReference(this, a2, a4, a5);
    }

    else
    {
      RepeatedStringReference = google::protobuf::Reflection::GetStringReference(this, a2, a4);
    }

    p_p = RepeatedStringReference;
    __p = 0;
    v49 = 0uLL;
    v36 = *(a1 + 16);
    if (v36 >= 1)
    {
      v37 = *(RepeatedStringReference + 23);
      if ((v37 & 0x8000000000000000) != 0)
      {
        v37 = *(RepeatedStringReference + 8);
      }

      if (v36 < v37)
      {
        std::string::basic_string(&v47, RepeatedStringReference, 0, v36, &v51);
        v38 = std::string::append(&v47, "...<truncated>...");
        v39 = v38->__r_.__value_.__r.__words[0];
        *v55 = v38->__r_.__value_.__l.__size_;
        *&v55[7] = *(&v38->__r_.__value_.__r.__words[1] + 7);
        v40 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        *(&v49 + 7) = *&v55[7];
        __p = v39;
        *&v49 = *v55;
        HIBYTE(v49) = v40;
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        p_p = &__p;
      }
    }

    v41 = *(a4 + 6);
    if (v41)
    {
      v50 = a4;
      v51 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v41, memory_order_acquire) != -1)
      {
        v47.__r_.__value_.__r.__words[0] = &v51;
        v47.__r_.__value_.__l.__size_ = &v50;
        *v55 = &v47;
        std::__call_once(v41, v55, sub_1000B32C4);
      }
    }

    v42 = *v18;
    if (*(a4 + 14) == 9)
    {
      v43 = (v42 + 72);
    }

    else
    {
      v43 = (v42 + 80);
    }

    *(a4 + 14);
    (*v43)(v18, p_p, a6);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v54[0]) < 0)
    {
      v44 = __src;
LABEL_90:
      operator delete(v44);
    }
  }
}

void sub_10012D9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::MapFieldPrinterHelper::SortMap(google::protobuf::Message *a1, google::protobuf::Reflection *this, const google::protobuf::FieldDescriptor *a3, uint64_t a4, uint64_t a5)
{
  MapData = google::protobuf::Reflection::GetMapData(this, a1, a3);
  IsRepeatedFieldValid = google::protobuf::internal::MapFieldBase::IsRepeatedFieldValid(MapData);
  if (IsRepeatedFieldValid)
  {
    RawRepeatedField = google::protobuf::Reflection::GetRawRepeatedField(this, a1, a3, 10, -1, 0);
    if (*(RawRepeatedField + 8) >= 1)
    {
      v12 = RawRepeatedField;
      v13 = 0;
      v14 = *(a5 + 8);
      do
      {
        v15 = *(*(v12 + 16) + 8 * v13 + 8);
        v16 = *(a5 + 16);
        if (v14 >= v16)
        {
          v17 = (v14 - *a5) >> 3;
          if ((v17 + 1) >> 61)
          {
            sub_100070E64();
          }

          v18 = v16 - *a5;
          v19 = v18 >> 2;
          if (v18 >> 2 <= (v17 + 1))
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            sub_1000D1B24(a5, v20);
          }

          v21 = (8 * v17);
          *v21 = v15;
          v14 = (8 * v17 + 8);
          v22 = *(a5 + 8) - *a5;
          v23 = v21 - v22;
          memcpy(v21 - v22, *a5, v22);
          v24 = *a5;
          *a5 = v23;
          *(a5 + 8) = v14;
          *(a5 + 16) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v14++ = v15;
        }

        *(a5 + 8) = v14;
        ++v13;
      }

      while (v13 < *(v12 + 8));
    }
  }

  else
  {
    v25 = google::protobuf::FieldDescriptor::message_type(a3);
    v26 = (*(*a4 + 16))(a4, v25);
    google::protobuf::Reflection::MapBegin(this, a1, a3, &v46);
    while (1)
    {
      google::protobuf::Reflection::MapEnd(this, a1, a3, v45);
      v27 = (*(*v47 + 48))(v47, &v46, v45);
      sub_100113504(v45);
      if (v27)
      {
        break;
      }

      v28 = (*(*v26 + 24))(v26);
      google::protobuf::internal::MapFieldPrinterHelper::CopyKey(v48, v28, *(v25 + 40));
      google::protobuf::internal::MapFieldPrinterHelper::CopyValue(&v49, v28, *(v25 + 40) + 152);
      v30 = *(a5 + 8);
      v29 = *(a5 + 16);
      if (v30 >= v29)
      {
        v32 = (v30 - *a5) >> 3;
        if ((v32 + 1) >> 61)
        {
          sub_100070E64();
        }

        v33 = v29 - *a5;
        v34 = v33 >> 2;
        if (v33 >> 2 <= (v32 + 1))
        {
          v34 = v32 + 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          sub_1000D1B24(a5, v35);
        }

        v36 = (8 * v32);
        *v36 = v28;
        v31 = 8 * v32 + 8;
        v37 = *(a5 + 8) - *a5;
        v38 = v36 - v37;
        memcpy(v36 - v37, *a5, v37);
        v39 = *a5;
        *a5 = v38;
        *(a5 + 8) = v31;
        *(a5 + 16) = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v30 = v28;
        v31 = (v30 + 1);
      }

      *(a5 + 8) = v31;
      (*(*v47 + 152))(v47, &v46);
    }

    sub_100113504(&v46);
  }

  v40 = *(google::protobuf::FieldDescriptor::message_type(a3) + 40);
  v41 = *a5;
  v42 = *(a5 + 8);
  v46 = v40;
  sub_100134C94(v41, v42, &v46);
  return !IsRepeatedFieldValid;
}

void google::protobuf::internal::MapFieldPrinterHelper::CopyKey(unsigned int *a1, google::protobuf::Message *a2, uint64_t a3)
{
  (*(*a2 + 152))(a2);
  v7 = v6;
  v8 = *(a3 + 48);
  if (v8)
  {
    v21 = a3;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v20[0].__r_.__value_.__r.__words[0] = &v22;
      v20[0].__r_.__value_.__l.__size_ = &v21;
      v23 = v20;
      std::__call_once(v8, &v23, sub_1000B32C4);
    }
  }

  v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)];
  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1:
        v15 = sub_10010311C(a1);
        google::protobuf::Reflection::SetInt32(v7, a2, a3, v15);
        break;
      case 2:
        v16 = sub_100103024(a1);
        google::protobuf::Reflection::SetInt64(v7, a2, a3, v16);
        break;
      case 3:
        v11 = sub_10010330C(a1);
        google::protobuf::Reflection::SetUInt32(v7, a2, a3, v11);
        break;
    }
  }

  else
  {
    if (v9 > 0xA)
    {
      goto LABEL_16;
    }

    if (((1 << v9) & 0x560) != 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 2186);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "Not supported.");
      google::protobuf::internal::LogFinisher::operator=(&v23, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      return;
    }

    if (v9 == 7)
    {
      v17 = sub_100103404(a1);
      google::protobuf::Reflection::SetBool(v7, a2, a3, v17);
      return;
    }

    if (v9 == 9)
    {
      v12 = sub_100102F2C(a1);
      if (*(v12 + 23) < 0)
      {
        sub_1000B32D8(__p, *v12, *(v12 + 8));
      }

      else
      {
        v13 = *v12;
        v19 = *(v12 + 16);
        *__p = v13;
      }

      google::protobuf::Reflection::SetString(v7, a2, a3, __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
LABEL_16:
      if (v9 == 4)
      {
        v14 = sub_100103214(a1);
        google::protobuf::Reflection::SetUInt64(v7, a2, a3, v14);
      }
    }
  }
}

void sub_10012E048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::MapFieldPrinterHelper::CopyValue(unsigned __int8 **a1, google::protobuf::Message *a2, uint64_t a3)
{
  (*(*a2 + 152))(a2);
  v7 = v6;
  v8 = *(a3 + 48);
  if (v8)
  {
    v25 = a3;
    v26 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v28[0] = &v26;
      v28[1] = &v25;
      v27 = v28;
      std::__call_once(v8, &v27, sub_1000B32C4);
    }
  }

  v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)];
  if (v9 > 5)
  {
    if (v9 <= 7)
    {
      if (v9 == 6)
      {
        v17 = sub_100101CC4(a1);
        google::protobuf::Reflection::SetFloat(v7, a2, a3, v17);
      }

      else
      {
        v15 = sub_1001020C4(a1);
        google::protobuf::Reflection::SetBool(v7, a2, a3, v15);
      }
    }

    else
    {
      switch(v9)
      {
        case 8:
          v19 = sub_1001024BC(a1);
          google::protobuf::Reflection::SetEnumValue(v7, a2, a3, v19);
          break;
        case 9:
          v21 = sub_1001022C4(a1);
          if (*(v21 + 23) < 0)
          {
            sub_1000B32D8(__p, *v21, *(v21 + 8));
          }

          else
          {
            v22 = *v21;
            v24 = *(v21 + 16);
            *__p = v22;
          }

          google::protobuf::Reflection::SetString(v7, a2, a3, __p);
          if (SHIBYTE(v24) < 0)
          {
            operator delete(__p[0]);
          }

          break;
        case 10:
          v11 = sub_1001026B0(a1);
          v12 = (*(*v11 + 24))(v11);
          v13 = sub_1001026B0(a1);
          (*(*v12 + 112))(v12, v13);
          google::protobuf::Reflection::SetAllocatedMessage(v7, a2, v12, a3);
          break;
      }
    }
  }

  else if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v16 = sub_1001014CC(a1);
      google::protobuf::Reflection::SetInt32(v7, a2, a3, v16);
    }

    else if (v9 == 2)
    {
      v14 = sub_1001016C8(a1);
      google::protobuf::Reflection::SetInt64(v7, a2, a3, v14);
    }
  }

  else if (v9 == 3)
  {
    v18 = sub_1001018C4(a1);
    google::protobuf::Reflection::SetUInt32(v7, a2, a3, v18);
  }

  else if (v9 == 4)
  {
    v20 = sub_100101AC0(a1);
    google::protobuf::Reflection::SetUInt64(v7, a2, a3, v20);
  }

  else
  {
    v10 = sub_100101EC8(a1);
    google::protobuf::Reflection::SetDouble(v7, a2, a3, v10);
  }
}

void sub_10012E374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::Printer::PrintShortRepeatedField(uint64_t a1, const google::protobuf::Message *a2, google::protobuf::Reflection *this, google::protobuf::FieldDescriptor *a4, uint64_t a5)
{
  v10 = google::protobuf::Reflection::FieldSize(this, a2, a4);
  v11 = v10;
  google::protobuf::TextFormat::Printer::PrintFieldName(a1, a2, 0xFFFFFFFFLL, v10, this, a4, a5);
  (*(*a5 + 40))(a5, ": [", 3);
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if (i)
      {
        (*(*a5 + 40))(a5, ", ", 2);
      }

      google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, this, a4, i);
    }
  }

  v13 = *(*a5 + 40);
  if (*(a1 + 4))
  {
    v14 = "] ";
  }

  else
  {
    v14 = "]\n";
  }

  return v13(a5, v14, 2);
}

void google::protobuf::TextFormat::Printer::PrintFieldName(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (*(a1 + 5) == 1)
  {
    v8 = *(a6 + 68);
    __src = v24;
    v9 = google::protobuf::FastInt32ToBufferLeft(v8, v24, a3);
    v10 = v9 - v24;
    v23 = v9 - v24;
    if ((v9 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000B337C();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v21 = v9 - v24;
    if (v9 != v24)
    {
      memmove(__p, __src, v10);
    }

    *(__p + v10) = 0;
    if ((v21 & 0x80u) == 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v19 = v21;
    }

    else
    {
      v19 = __p[1];
    }

    (*(*a7 + 40))(a7, v18, v19);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = a1 + 40;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= a6;
      v15 = v13 < a6;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 != a1 + 40 && *(v12 + 32) <= a6)
    {
      v16 = v12 + 40;
    }

    else
    {
LABEL_14:
      v16 = a1 + 24;
    }

    v17 = *(**v16 + 96);

    v17();
  }
}

void sub_10012E714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012E7E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000CE708(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012E7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, int a15)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = &off_1001D2AD8;
  *(a1 + 32) = a1;
  google::protobuf::io::Tokenizer::Tokenizer(a1 + 40, a3, a1 + 24);
  *(a1 + 216) = a2;
  *(a1 + 224) = a7;
  *(a1 + 228) = a8;
  *(a1 + 229) = a9;
  *(a1 + 230) = a10;
  *(a1 + 231) = a11;
  *(a1 + 232) = a12;
  *(a1 + 233) = a14;
  *(a1 + 236) = a15;
  *(a1 + 240) = a15;
  *(a1 + 244) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = 1;
  if (a13)
  {
    *(a1 + 212) = 256;
  }

  google::protobuf::io::Tokenizer::Next((a1 + 40));
  return a1;
}

void sub_10012E8D8(_Unwind_Exception *a1)
{
  google::protobuf::io::Tokenizer::~Tokenizer((v2 + 40));
  google::protobuf::io::ErrorCollector::~ErrorCollector(v1);
  _Unwind_Resume(a1);
}

void sub_10012E900(google::protobuf::io::ErrorCollector *a1)
{
  google::protobuf::io::ErrorCollector::~ErrorCollector(a1);

  operator delete();
}

void sub_10012E948(uint64_t *a1, int a2, int a3, const std::string::value_type *a4)
{
  v8 = *a1;
  if (v8)
  {
    v9 = *(*v8 + 24);

    v9();
  }

  else
  {
    if (a2 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 338);
      v18 = google::protobuf::internal::LogMessage::operator<<(v20, "Warning parsing text-format ");
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, *(a1[27] + 8));
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 334);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "Warning parsing text-format ");
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1[27] + 8));
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, ": ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2 + 1);
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, ":");
      v15 = google::protobuf::internal::LogMessage::operator<<(v14, a3 + 1);
    }

    v16 = google::protobuf::internal::LogMessage::operator<<(v15, ": ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, a4);
    google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }
}

void sub_10012EAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012EACC(uint64_t a1, google::protobuf::Message *a2)
{
  (*(*a2 + 152))(a2);
  v5 = v4;
  v6 = (*(*a2 + 152))(a2);
  memset(&v142, 0, sizeof(v142));
  v7 = *(a1 + 72);
  v140 = 0;
  v141 = 0;
  if (google::protobuf::internal::GetAnyFieldDescriptors(a2, &v141, &v140))
  {
    sub_1000B347C(__p, "[");
    v8 = sub_1001301C8(a1, __p);
    v9 = v8;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v9)
      {
LABEL_4:
        memset(__p, 0, 24);
        memset(&v139, 0, sizeof(v139));
        if (sub_10013025C(a1, __p, &v139))
        {
          sub_1000B347C(&v138, "]");
          v10 = sub_1001303FC(a1, &v138);
          v11 = v10;
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v138.__r_.__value_.__l.__data_);
            if (v11)
            {
LABEL_7:
              sub_1000B347C(&v138, ":");
              sub_1001301C8(a1, &v138);
              if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v138.__r_.__value_.__l.__data_);
              }

              memset(&v138, 0, sizeof(v138));
              v12 = *(a1 + 8);
              if (v12)
              {
                v13 = (*(*v12 + 32))(v12, a2, &v139, __p);
              }

              else
              {
                v13 = sub_10012A090(a2, &v139.__r_.__value_.__l.__data_, __p);
              }

              if (v13)
              {
                if (!sub_1001305E8(a1, v13, &v138))
                {
                  goto LABEL_70;
                }

                if (*(a1 + 224) != 1 || (*(v141 + 15) == 3 || (google::protobuf::Reflection::HasField(v5, a2, v141) & 1) == 0) && (*(v140 + 15) == 3 || !google::protobuf::Reflection::HasField(v5, a2, v140)))
                {
                  v53 = v141;
                  sub_1000F1244(&v139.__r_.__value_.__l.__data_, &__p[0].__r_.__value_.__l.__data_, v133);
                  google::protobuf::Reflection::SetString(v5, a2, v53, v133);
                  if (v134 < 0)
                  {
                    operator delete(v133[0]);
                  }

                  v54 = v140;
                  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_1000B32D8(&__dst, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    __dst = v138;
                  }

                  google::protobuf::Reflection::SetString(v5, a2, v54, &__dst);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  v25 = 1;
                  goto LABEL_297;
                }

                sub_1000B347C(&v137, "Non-repeated Any specified multiple times.");
                sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &v137);
                if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_70:
                  v25 = 0;
LABEL_297:
                  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v138.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_33;
                }

                v33 = v137.__r_.__value_.__r.__words[0];
              }

              else
              {
                std::operator+<char>();
                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v34 = __p;
                }

                else
                {
                  v34 = __p[0].__r_.__value_.__r.__words[0];
                }

                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __p[0].__r_.__value_.__l.__size_;
                }

                v36 = std::string::append(&v135, v34, size);
                v37 = *&v36->__r_.__value_.__l.__data_;
                v136.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
                *&v136.__r_.__value_.__l.__data_ = v37;
                v36->__r_.__value_.__l.__size_ = 0;
                v36->__r_.__value_.__r.__words[2] = 0;
                v36->__r_.__value_.__r.__words[0] = 0;
                v38 = std::string::append(&v136, " stored in google.protobuf.Any.");
                v39 = *&v38->__r_.__value_.__l.__data_;
                v137.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
                *&v137.__r_.__value_.__l.__data_ = v39;
                v38->__r_.__value_.__l.__size_ = 0;
                v38->__r_.__value_.__r.__words[2] = 0;
                v38->__r_.__value_.__r.__words[0] = 0;
                sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &v137);
                if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v137.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v136.__r_.__value_.__l.__data_);
                }

                if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_70;
                }

                v33 = v135.__r_.__value_.__r.__words[0];
              }

              operator delete(v33);
              goto LABEL_70;
            }
          }

          else if (v10)
          {
            goto LABEL_7;
          }
        }

        v25 = 0;
LABEL_33:
        if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v139.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        goto LABEL_280;
      }
    }

    else if (v8)
    {
      goto LABEL_4;
    }
  }

  sub_1000B347C(__p, "[");
  v14 = sub_1001301C8(a1, __p);
  v15 = v14;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_19:
    if (!sub_1001309D4(a1, &v142))
    {
      goto LABEL_279;
    }

    LODWORD(v135.__r_.__value_.__l.__data_) = 0;
    if (*(a1 + 232) == 1 && google::protobuf::safe_strto32(&v142, &v135))
    {
      if (google::protobuf::Descriptor::FindExtensionRangeContainingNumber(v6, v135.__r_.__value_.__l.__data_))
      {
        v19 = *(a1 + 8);
        if (v19)
        {
          ExtensionByNumber = (*(*v19 + 24))(v19, v6, LODWORD(v135.__r_.__value_.__l.__data_));
        }

        else
        {
          ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(*(*(v6 + 16) + 16), v6, v135.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (google::protobuf::Descriptor::FindReservedRangeContainingNumber(v6, v135.__r_.__value_.__l.__data_))
        {
          v52 = 1;
          goto LABEL_178;
        }

        ExtensionByNumber = google::protobuf::Descriptor::FindFieldByNumber(v6, v135.__r_.__value_.__l.__data_);
      }

      FieldByName = ExtensionByNumber;
      v52 = 0;
    }

    else
    {
      FieldByName = google::protobuf::Descriptor::FindFieldByName(v6, &v142, v18);
      if (FieldByName)
      {
        goto LABEL_307;
      }

      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000B32D8(__p, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
      }

      else
      {
        __p[0] = v142;
      }

      v40 = (__p + HIBYTE(__p[0].__r_.__value_.__r.__words[2]));
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = __p;
      }

      else
      {
        v40 = (__p[0].__r_.__value_.__r.__words[0] + __p[0].__r_.__value_.__l.__size_);
        v41 = __p[0].__r_.__value_.__r.__words[0];
      }

      while (v41 != v40)
      {
        v42 = v41->__r_.__value_.__s.__data_[0];
        if ((v42 - 65) <= 0x19)
        {
          v41->__r_.__value_.__s.__data_[0] = v42 | 0x20;
        }

        v41 = (v41 + 1);
      }

      v43 = google::protobuf::Descriptor::FindFieldByName(v6, __p, v21);
      FieldByName = v43;
      if (v43)
      {
        v45 = *(v43 + 48);
        if (v45)
        {
          v137.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v136.__r_.__value_.__r.__words[0] = FieldByName;
          if (atomic_load_explicit(v45, memory_order_acquire) != -1)
          {
            v139.__r_.__value_.__r.__words[0] = &v137;
            v139.__r_.__value_.__l.__size_ = &v136;
            v138.__r_.__value_.__r.__words[0] = &v139;
            std::__call_once(v45, &v138, sub_1000B32C4);
          }
        }

        if (*(FieldByName + 56) != 10)
        {
          FieldByName = 0;
        }
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (FieldByName)
      {
LABEL_307:
        v46 = *(FieldByName + 48);
        if (v46)
        {
          v138.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v137.__r_.__value_.__r.__words[0] = FieldByName;
          if (atomic_load_explicit(v46, memory_order_acquire) != -1)
          {
            __p[0].__r_.__value_.__r.__words[0] = &v138;
            __p[0].__r_.__value_.__l.__size_ = &v137;
            v139.__r_.__value_.__r.__words[0] = __p;
            std::__call_once(v46, &v139, sub_1000B32C4);
          }
        }

        if (*(FieldByName + 56) != 10)
        {
          goto LABEL_171;
        }

        v47 = google::protobuf::FieldDescriptor::message_type(FieldByName);
        v48 = *(*v47 + 23);
        if (v48 >= 0)
        {
          v44 = *(*v47 + 23);
        }

        else
        {
          v44 = *(*v47 + 8);
        }

        v49 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v49 = v142.__r_.__value_.__l.__size_;
        }

        if (v44 == v49)
        {
          v50 = v48 >= 0 ? *v47 : **v47;
          v51 = (v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v142 : v142.__r_.__value_.__r.__words[0];
          if (!memcmp(v50, v51, v44))
          {
            goto LABEL_171;
          }
        }
      }

      if (*(a1 + 228) == 1)
      {
        if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_1000B32D8(__p, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
        }

        else
        {
          __p[0] = v142;
        }

        v55 = (__p + HIBYTE(__p[0].__r_.__value_.__r.__words[2]));
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = __p;
        }

        else
        {
          v55 = (__p[0].__r_.__value_.__r.__words[0] + __p[0].__r_.__value_.__l.__size_);
          v56 = __p[0].__r_.__value_.__r.__words[0];
        }

        while (v56 != v55)
        {
          v57 = v56->__r_.__value_.__s.__data_[0];
          if ((v57 - 65) <= 0x19)
          {
            v56->__r_.__value_.__s.__data_[0] = v57 | 0x20;
          }

          v56 = (v56 + 1);
        }

        FieldByName = google::protobuf::Descriptor::FindFieldByLowercaseName(v6, __p, v44);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (FieldByName)
        {
          goto LABEL_171;
        }
      }

      v130 = v5;
      v58 = *(v6 + 136);
      if (v58 < 1)
      {
        FieldByName = 0;
        v52 = 0;
        v5 = v130;
      }

      else
      {
        v129 = v7;
        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = v142.__r_.__value_.__l.__size_;
        }

        v60 = *(v6 + 96);
        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v142;
        }

        else
        {
          v61 = v142.__r_.__value_.__r.__words[0];
        }

        v62 = 1;
        v63 = *(v6 + 136);
        v52 = 1;
        do
        {
          v64 = *(*v60 + 23);
          v65 = v64;
          if ((v64 & 0x80u) != 0)
          {
            v64 = *(*v60 + 8);
          }

          if (v59 == v64)
          {
            v66 = v65 >= 0 ? *v60 : **v60;
            if (!memcmp(v61, v66, v59))
            {
              break;
            }
          }

          v52 = v62++ < v58;
          v60 += 8;
          --v63;
        }

        while (v63);
        FieldByName = 0;
        v7 = v129;
        v5 = v130;
      }
    }

    if (!FieldByName && !v52)
    {
      if (*(a1 + 229))
      {
        v73 = *(v6 + 8);
        std::operator+<char>();
        v74 = std::string::append(&v137, " has no field named ");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v138.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
        *&v138.__r_.__value_.__l.__data_ = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v142;
        }

        else
        {
          v31 = v142.__r_.__value_.__r.__words[0];
        }

        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = v142.__r_.__value_.__l.__size_;
        }

        goto LABEL_161;
      }

      v119 = *(v6 + 8);
      std::operator+<char>();
      v120 = std::string::append(&v137, " has no field named ");
      v121 = *&v120->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = v121;
      v120->__r_.__value_.__l.__size_ = 0;
      v120->__r_.__value_.__r.__words[2] = 0;
      v120->__r_.__value_.__r.__words[0] = 0;
      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v142;
      }

      else
      {
        v71 = v142.__r_.__value_.__r.__words[0];
      }

      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = v142.__r_.__value_.__l.__size_;
      }

      goto LABEL_270;
    }

    if (FieldByName)
    {
      goto LABEL_171;
    }

LABEL_178:
    if ((*(a1 + 229) & 1) == 0 && ((*(a1 + 230) | v52) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 516);
      v83 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: allow_unknown_field_ || allow_unknown_extension_ || reserved_field: ");
      google::protobuf::internal::LogFinisher::operator=(&v139, &v83->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    sub_1000B347C(__p, ":");
    if (sub_1001301C8(a1, __p))
    {
      sub_1000B347C(&v139, "{");
      if (sub_100130AA8(a1, &v139))
      {
        v86 = 0;
      }

      else
      {
        sub_1000B347C(&v138, "<");
        v86 = !sub_100130AA8(a1, &v138);
        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v86 = 0;
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v86)
    {
      v127 = sub_100130B1C(a1, v84, v85);
    }

    else
    {
      v127 = sub_100130FE8(a1, v84, v85);
    }

    v25 = v127;
    goto LABEL_280;
  }

  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((sub_1001308CC(a1, &v142) & 1) == 0)
  {
    goto LABEL_279;
  }

  sub_1000B347C(__p, "]");
  v16 = sub_1001303FC(a1, __p);
  v17 = v16;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if ((v17 & 1) == 0)
    {
      goto LABEL_279;
    }
  }

  else if ((v16 & 1) == 0)
  {
    goto LABEL_279;
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    ExtensionByPrintableName = (*(*v23 + 16))(v23, a2, &v142);
  }

  else
  {
    v26 = (*(*a2 + 152))(a2);
    ExtensionByPrintableName = google::protobuf::DescriptorPool::FindExtensionByPrintableName(*(*(v26 + 16) + 16), v26, &v142);
  }

  FieldByName = ExtensionByPrintableName;
  if (!ExtensionByPrintableName)
  {
    if (*(a1 + 229) & 1) != 0 || (*(a1 + 230))
    {
      std::operator+<char>();
      v27 = std::string::append(&v137, " which is not defined or is not an extension of ");
      v28 = *&v27->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = *(v6 + 8);
      v30 = *(v29 + 23);
      if (v30 >= 0)
      {
        v31 = *(v6 + 8);
      }

      else
      {
        v31 = *v29;
      }

      if (v30 >= 0)
      {
        v32 = *(v29 + 23);
      }

      else
      {
        v32 = *(v29 + 8);
      }

LABEL_161:
      v76 = std::string::append(&v138, v31, v32);
      v77 = *&v76->__r_.__value_.__l.__data_;
      v139.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
      *&v139.__r_.__value_.__l.__data_ = v77;
      v76->__r_.__value_.__l.__size_ = 0;
      v76->__r_.__value_.__r.__words[2] = 0;
      v76->__r_.__value_.__r.__words[0] = 0;
      v78 = std::string::append(&v139, ".");
      v79 = *&v78->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v79;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      sub_10012E948(a1, *(a1 + 72), *(a1 + 76), __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      v52 = 0;
      goto LABEL_178;
    }

    std::operator+<char>();
    v67 = std::string::append(&v137, " is not defined or is not an extension of ");
    v68 = *&v67->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    v69 = *(v6 + 8);
    v70 = *(v69 + 23);
    if (v70 >= 0)
    {
      v71 = *(v6 + 8);
    }

    else
    {
      v71 = *v69;
    }

    if (v70 >= 0)
    {
      v72 = *(v69 + 23);
    }

    else
    {
      v72 = *(v69 + 8);
    }

LABEL_270:
    v122 = std::string::append(&v138, v71, v72);
    v123 = *&v122->__r_.__value_.__l.__data_;
    v139.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
    *&v139.__r_.__value_.__l.__data_ = v123;
    v122->__r_.__value_.__l.__size_ = 0;
    v122->__r_.__value_.__r.__words[2] = 0;
    v122->__r_.__value_.__r.__words[0] = 0;
    v124 = std::string::append(&v139, ".");
    v125 = *&v124->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v125;
    v124->__r_.__value_.__l.__size_ = 0;
    v124->__r_.__value_.__r.__words[2] = 0;
    v124->__r_.__value_.__r.__words[0] = 0;
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

    v82 = v137.__r_.__value_.__r.__words[0];
    goto LABEL_278;
  }

LABEL_171:
  if (*(a1 + 224) == 1)
  {
    if (*(FieldByName + 60) != 3 && google::protobuf::Reflection::HasField(v5, a2, FieldByName))
    {
      std::operator+<char>();
      v80 = std::string::append(&v139, " is specified multiple times.");
      v81 = *&v80->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v81;
      v80->__r_.__value_.__l.__size_ = 0;
      v80->__r_.__value_.__r.__words[2] = 0;
      v80->__r_.__value_.__r.__words[0] = 0;
      sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_279;
      }

      v82 = v139.__r_.__value_.__r.__words[0];
      goto LABEL_278;
    }

    v87 = *(FieldByName + 88);
    if (v87 && google::protobuf::Reflection::HasOneof(v5, a2, *(FieldByName + 88)))
    {
      OneofFieldDescriptor = google::protobuf::Reflection::GetOneofFieldDescriptor(v5, a2, v87);
      std::operator+<char>();
      v89 = std::string::append(&v135, " is specified along with field ");
      v90 = *&v89->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      v91 = *(*OneofFieldDescriptor + 23);
      if (v91 >= 0)
      {
        v92 = *OneofFieldDescriptor;
      }

      else
      {
        v92 = **OneofFieldDescriptor;
      }

      if (v91 >= 0)
      {
        v93 = *(*OneofFieldDescriptor + 23);
      }

      else
      {
        v93 = (*OneofFieldDescriptor)[1];
      }

      v94 = std::string::append(&v136, v92, v93);
      v95 = *&v94->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v95;
      v94->__r_.__value_.__l.__size_ = 0;
      v94->__r_.__value_.__r.__words[2] = 0;
      v94->__r_.__value_.__r.__words[0] = 0;
      v96 = std::string::append(&v137, ", another member of oneof ");
      v97 = *&v96->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = v97;
      v96->__r_.__value_.__l.__size_ = 0;
      v96->__r_.__value_.__r.__words[2] = 0;
      v96->__r_.__value_.__r.__words[0] = 0;
      v98 = (*v87)[23];
      if (v98 >= 0)
      {
        v99 = *v87;
      }

      else
      {
        v99 = **v87;
      }

      if (v98 >= 0)
      {
        v100 = *(*v87 + 23);
      }

      else
      {
        v100 = *(*v87 + 1);
      }

      v101 = std::string::append(&v138, v99, v100);
      v102 = *&v101->__r_.__value_.__l.__data_;
      v139.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
      *&v139.__r_.__value_.__l.__data_ = v102;
      v101->__r_.__value_.__l.__size_ = 0;
      v101->__r_.__value_.__r.__words[2] = 0;
      v101->__r_.__value_.__r.__words[0] = 0;
      v103 = std::string::append(&v139, ".");
      v104 = *&v103->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v104;
      v103->__r_.__value_.__l.__size_ = 0;
      v103->__r_.__value_.__r.__words[2] = 0;
      v103->__r_.__value_.__r.__words[0] = 0;
      sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_279;
      }

      v82 = v135.__r_.__value_.__r.__words[0];
LABEL_278:
      operator delete(v82);
      goto LABEL_279;
    }
  }

  v105 = *(FieldByName + 48);
  if (v105)
  {
    v138.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v137.__r_.__value_.__r.__words[0] = FieldByName;
    if (atomic_load_explicit(v105, memory_order_acquire) != -1)
    {
      __p[0].__r_.__value_.__r.__words[0] = &v138;
      __p[0].__r_.__value_.__l.__size_ = &v137;
      v139.__r_.__value_.__r.__words[0] = __p;
      std::__call_once(v105, &v139, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)] == 10)
  {
    sub_1000B347C(__p, ":");
    v106 = sub_1001301C8(a1, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v106 && *(*(FieldByName + 120) + 79) == 1 && *(a1 + 40) == 5)
    {
      memset(__p, 0, 24);
      v107 = sub_100131208(a1, __p);
      if (v107)
      {
        v108 = *(a1 + 8);
        if (v108)
        {
          v109 = (*(*v108 + 40))(v108, FieldByName);
        }

        else
        {
          v109 = 0;
        }

        v128 = google::protobuf::Reflection::MutableMessage(v5, a2, FieldByName, v109);
        google::protobuf::MessageLite::ParseFromString(v128, __p);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (!v107)
      {
        goto LABEL_279;
      }

      goto LABEL_251;
    }
  }

  else
  {
    sub_1000B347C(__p, ":");
    v110 = sub_1001303FC(a1, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if ((v110 & 1) == 0)
    {
      goto LABEL_279;
    }
  }

  if (*(FieldByName + 60) == 3)
  {
    sub_1000B347C(__p, "[");
    v111 = sub_1001301C8(a1, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v111)
    {
      sub_1000B347C(__p, "]");
      v112 = sub_1001301C8(a1, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if ((v112 & 1) == 0)
      {
        while (1)
        {
          v113 = *(FieldByName + 48);
          if (v113)
          {
            v138.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            v137.__r_.__value_.__r.__words[0] = FieldByName;
            if (atomic_load_explicit(v113, memory_order_acquire) != -1)
            {
              __p[0].__r_.__value_.__r.__words[0] = &v138;
              __p[0].__r_.__value_.__l.__size_ = &v137;
              v139.__r_.__value_.__r.__words[0] = __p;
              std::__call_once(v113, &v139, sub_1000B32C4);
            }
          }

          if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)] == 10)
          {
            if ((sub_1001312EC(a1, a2, v5, FieldByName) & 1) == 0)
            {
              goto LABEL_279;
            }
          }

          else if (!sub_1001315D0(a1, a2, v5, FieldByName))
          {
            goto LABEL_279;
          }

          sub_1000B347C(__p, "]");
          v114 = sub_1001301C8(a1, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (v114)
          {
            break;
          }

          sub_1000B347C(__p, ",");
          v115 = sub_1001303FC(a1, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v25 = 0;
          if ((v115 & 1) == 0)
          {
            goto LABEL_280;
          }
        }
      }

      goto LABEL_251;
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[sub_1000B6AA4(FieldByName)] == 10)
  {
    if ((sub_1001312EC(a1, a2, v5, FieldByName) & 1) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_251;
  }

  if (!sub_1001315D0(a1, a2, v5, FieldByName))
  {
LABEL_279:
    v25 = 0;
    goto LABEL_280;
  }

LABEL_251:
  sub_1000B347C(__p, ";");
  if ((sub_1001301C8(a1, __p) & 1) == 0)
  {
    sub_1000B347C(&v139, ",");
    sub_1001301C8(a1, &v139);
    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (*(*(FieldByName + 120) + 78) == 1)
  {
    std::operator+<char>();
    v116 = std::string::append(&v139, "");
    v117 = *&v116->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    sub_10012E948(a1, *(a1 + 72), *(a1 + 76), __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }
  }

  v118 = *(a1 + 16);
  if (v118)
  {
    google::protobuf::TextFormat::ParseInfoTree::RecordLocation(v118, FieldByName, v7);
  }

  v25 = 1;
LABEL_280:
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  return v25;
}

void sub_10012FEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (*(v51 - 97) < 0)
  {
    operator delete(*(v51 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001301C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 48);
  }

  else
  {
    v7 = *(a1 + 48);
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v7, a2, v3))
  {
    return 0;
  }

  google::protobuf::io::Tokenizer::Next((a1 + 40));
  return 1;
}

uint64_t sub_10013025C(uint64_t a1, std::string *a2, std::string *this)
{
  result = sub_1001309D4(a1, this);
  if (result)
  {
    while (1)
    {
      sub_1000B347C(&__p, ".");
      v7 = sub_1001301C8(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v7)
      {
        break;
      }

      memset(&__p, 0, sizeof(__p));
      v8 = sub_1001309D4(a1, &__p);
      if (v8)
      {
        std::operator+<char>();
        if ((v14 & 0x80u) == 0)
        {
          v9 = v13;
        }

        else
        {
          v9 = v13[0];
        }

        if ((v14 & 0x80u) == 0)
        {
          v10 = v14;
        }

        else
        {
          v10 = v13[1];
        }

        std::string::append(this, v9, v10);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    sub_1000B347C(&__p, "/");
    v11 = sub_1001303FC(a1, &__p);
    v12 = v11;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v12)
      {
        goto LABEL_21;
      }
    }

    else if (v11)
    {
LABEL_21:
      std::string::append(this, "/");
      return sub_1001308CC(a1, a2);
    }

    return 0;
  }

  return result;
}

void sub_1001303BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001303FC(uint64_t a1, void *a2)
{
  v3 = (a1 + 48);
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    goto LABEL_13;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 48);
  }

  else
  {
    v8 = *v3;
  }

  v9 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(v8, a2, v5))
  {
    google::protobuf::io::Tokenizer::Next((a1 + 40));
    return 1;
  }

  else
  {
LABEL_13:
    std::operator+<char>();
    v10 = std::string::append(&v20, ", found ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = *(a1 + 71);
    if (v12 >= 0)
    {
      v13 = v3;
    }

    else
    {
      v13 = *(a1 + 48);
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 71);
    }

    else
    {
      v14 = *(a1 + 56);
    }

    v15 = std::string::append(&v21, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v22, ".");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v24 = v17->__r_.__value_.__r.__words[2];
    v23 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &v23);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    return 0;
  }
}

void sub_100130584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001305E8(uint64_t a1, const google::protobuf::Descriptor *a2, std::string *a3)
{
  google::protobuf::DynamicMessageFactory::DynamicMessageFactory(v20);
  Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(v20, a2);
  if (!Prototype)
  {
    v8 = 0;
    goto LABEL_25;
  }

  v7 = (*(*Prototype + 24))(Prototype);
  memset(&v19, 0, sizeof(v19));
  if ((sub_1001321EC(a1, &v19) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1000B32D8(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v19;
  }

  v9 = sub_1001322D8(a1, v7, &__p);
  v10 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v10 & 1) == 0)
    {
LABEL_20:
      v8 = 0;
      goto LABEL_21;
    }
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(a1 + 233) == 1)
  {
    google::protobuf::MessageLite::AppendPartialToString(v7, a3);
  }

  else
  {
    if (((*(*v7 + 48))(v7) & 1) == 0)
    {
      v11 = *(a2 + 1);
      std::operator+<char>();
      v12 = std::string::append(&v15, " stored in google.protobuf.Any has missing required fields");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v17 = v12->__r_.__value_.__r.__words[2];
      *v16 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), v16);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      goto LABEL_20;
    }

    google::protobuf::MessageLite::AppendToString(v7, a3);
  }

  v8 = 1;
LABEL_21:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_25:
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(v20);
  return v8;
}

void sub_100130820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_1001308CC(uint64_t a1, std::string *a2)
{
  result = sub_1001309D4(a1, a2);
  if (result)
  {
    while (1)
    {
      sub_1000B347C(&__p, ".");
      v5 = sub_1001301C8(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v5)
      {
        break;
      }

      memset(&__p, 0, sizeof(__p));
      v6 = sub_1001309D4(a1, &__p);
      if (v6)
      {
        std::string::append(a2, ".");
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

        std::string::append(a2, p_p, size);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v6 & 1) == 0)
        {
          return v5 ^ 1u;
        }
      }

      else if ((v6 & 1) == 0)
      {
        return v5 ^ 1u;
      }
    }

    return v5 ^ 1u;
  }

  return result;
}

void sub_1001309B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001309D4(uint64_t a1, std::string *this)
{
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 232) & 1) != 0 || (*(a1 + 229))
  {
    if (v3 != 3)
    {
      goto LABEL_5;
    }

LABEL_10:
    std::string::operator=(this, (a1 + 48));
    google::protobuf::io::Tokenizer::Next(v4);
    return 1;
  }

  if (v3 == 3 && (*(a1 + 230) & 1) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  std::operator+<char>();
  sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_100130A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100130AA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v6 = (a1 + 48);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v9 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(v6, a2, v3) == 0;
}

uint64_t sub_100130B1C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 240);
  *(a1 + 240) = v4 - 1;
  if (v4 > 0)
  {
    v5 = (a1 + 40);
    if (*(a1 + 40) == 5)
    {
      do
      {
        google::protobuf::io::Tokenizer::Next((a1 + 40));
      }

      while (*v5 == 5);
      goto LABEL_33;
    }

    sub_1000B347C(&__dst, "[");
    v8 = sub_1001301C8(a1, &__dst);
    v9 = v8;
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      if (v8)
      {
        goto LABEL_10;
      }

LABEL_29:
      sub_1000B347C(&__dst, "-");
      v17 = sub_1001301C8(a1, &__dst);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__dst);
      }

      if ((*v5 - 3) < 2)
      {
        goto LABEL_32;
      }

      if (*v5 != 2)
      {
        if (*(a1 + 71) < 0)
        {
          sub_1000B32D8(&__dst, *(a1 + 48), *(a1 + 56));
        }

        else
        {
          __dst = *(a1 + 48);
          v32 = *(a1 + 64);
        }

LABEL_41:
        std::operator+<char>();
        sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), v28);
        if (v30 < 0)
        {
          operator delete(v28[0]);
        }

        ++*(a1 + 240);
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          return 0;
        }

        v7 = __dst;
        goto LABEL_7;
      }

      if (!v17)
      {
LABEL_32:
        google::protobuf::io::Tokenizer::Next((a1 + 40));
LABEL_33:
        ++*(a1 + 240);
        return 1;
      }

      if (*(a1 + 71) < 0)
      {
        sub_1000B32D8(&__dst, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        __dst = *(a1 + 48);
        v32 = *(a1 + 64);
      }

      v18 = HIBYTE(v32);
      p_dst = __dst;
      if (v32 >= 0)
      {
        v20 = &__dst + HIBYTE(v32);
      }

      else
      {
        v20 = (__dst + *(&__dst + 1));
      }

      if (v32 >= 0)
      {
        p_dst = &__dst;
      }

      if (p_dst != v20)
      {
        do
        {
          v21 = *p_dst;
          if ((v21 - 65) <= 0x19)
          {
            *p_dst = v21 | 0x20;
          }

          p_dst = (p_dst + 1);
        }

        while (p_dst != v20);
        v18 = HIBYTE(v32);
      }

      if ((v18 & 0x80) != 0)
      {
        if (*(&__dst + 1) == 3)
        {
          v22 = __dst;
LABEL_63:
          v23 = *v22;
          v24 = *(v22 + 2);
          if (v23 == 28265 && v24 == 102)
          {
LABEL_69:
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__dst);
            }

            goto LABEL_32;
          }
        }
      }

      else if (v18 == 3)
      {
        v22 = &__dst;
        goto LABEL_63;
      }

      if (!sub_1000EF79C(&__dst, "infinity") || !sub_1000EF79C(&__dst, "nan"))
      {
        goto LABEL_69;
      }

      goto LABEL_41;
    }

    operator delete(__dst);
    if (!v9)
    {
      goto LABEL_29;
    }

    while (1)
    {
LABEL_10:
      sub_1000B347C(&__dst, "{");
      if (sub_100130AA8(a1, &__dst))
      {
        v12 = 0;
      }

      else
      {
        sub_1000B347C(v28, "<");
        v13 = sub_100130AA8(a1, v28);
        if (v30 < 0)
        {
          operator delete(v28[0]);
        }

        v12 = !v13;
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(__dst);
        if (v12)
        {
LABEL_17:
          if ((sub_100130B1C(a1) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_21;
        }
      }

      else if (v12)
      {
        goto LABEL_17;
      }

      result = sub_100130FE8(a1, v10, v11);
      if (!result)
      {
        return result;
      }

LABEL_21:
      sub_1000B347C(&__dst, "]");
      v15 = sub_1001301C8(a1, &__dst);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__dst);
      }

      if (v15)
      {
        goto LABEL_33;
      }

      sub_1000B347C(&__dst, ",");
      v16 = sub_1001303FC(a1, &__dst);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__dst);
      }

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  *&__dst = "Message is too deep, the parser exceeded the configured recursion limit of ";
  *(&__dst + 1) = 75;
  v6 = *(a1 + 236);
  v28[0] = v29;
  v28[1] = (google::protobuf::FastInt32ToBufferLeft(v6, v29, a3) - v29);
  v27[0] = ".";
  v27[1] = 1;
  google::protobuf::StrCat(&__dst, v28, v27, &__p);
  sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = __p.__r_.__value_.__r.__words[0];
LABEL_7:
    operator delete(v7);
  }

  return 0;
}

void sub_100130F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100130FE8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 240);
  *(a1 + 240) = v4 - 1;
  if (v4 <= 0)
  {
    v15[0].__r_.__value_.__r.__words[0] = "Message is too deep, the parser exceeded the configured recursion limit of ";
    v15[0].__r_.__value_.__l.__size_ = 75;
    v7 = *(a1 + 236);
    v13[0] = v14;
    v13[1] = (google::protobuf::FastInt32ToBufferLeft(v7, v14, a3) - v14);
    __p[0] = ".";
    __p[1] = 1;
    google::protobuf::StrCat(v15, v13, __p, &v10);
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &v10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  else
  {
    memset(v15, 0, 24);
    if (!sub_1001321EC(a1, v15))
    {
      goto LABEL_18;
    }

    while (1)
    {
      sub_1000B347C(v13, ">");
      if (sub_100130AA8(a1, v13))
      {
        v5 = 0;
      }

      else
      {
        sub_1000B347C(__p, "}");
        v6 = sub_100130AA8(a1, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        v5 = !v6;
      }

      if ((v14[7] & 0x80000000) != 0)
      {
        operator delete(v13[0]);
      }

      if (!v5)
      {
        break;
      }

      if ((sub_1001323D0(a1) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (sub_1001303FC(a1, v15))
    {
      ++*(a1 + 240);
      v8 = 1;
    }

    else
    {
LABEL_18:
      v8 = 0;
    }

    if (SHIBYTE(v15[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15[0].__r_.__value_.__l.__data_);
    }
  }

  return v8;
}

void sub_1001311B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100131208(uint64_t a1, std::string *this)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4 == 5)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    while (*v3 == 5)
    {
      google::protobuf::io::Tokenizer::ParseStringAppend((a1 + 48), this);
      google::protobuf::io::Tokenizer::Next(v3);
    }
  }

  else
  {
    std::operator+<char>();
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  return v4 == 5;
}

void sub_1001312D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001312EC(uint64_t a1, google::protobuf::Message *a2, google::protobuf::Reflection *a3, google::protobuf::FieldDescriptor *a4)
{
  v5 = *(a1 + 240);
  *(a1 + 240) = v5 - 1;
  if (v5 > 0)
  {
    if (*(a1 + 16))
    {
      google::protobuf::TextFormat::ParseInfoTree::CreateNested(*(a1 + 16), a4);
    }

    memset(v24, 0, 24);
    if ((sub_1001321EC(a1, v24) & 1) == 0)
    {
      goto LABEL_25;
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = (*(*v9 + 40))(v9, a4);
    }

    else
    {
      v10 = 0;
    }

    if (*(a4 + 15) == 3)
    {
      v13 = google::protobuf::Reflection::AddMessage(a3, a2, a4, v10);
      if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000B32D8(&__dst, v24[0].__r_.__value_.__l.__data_, v24[0].__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = v24[0];
      }

      v15 = sub_1001322D8(a1, v13, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        v16 = __dst.__r_.__value_.__r.__words[0];
        goto LABEL_24;
      }
    }

    else
    {
      v14 = google::protobuf::Reflection::MutableMessage(a3, a2, a4, v10);
      if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000B32D8(&v18, v24[0].__r_.__value_.__l.__data_, v24[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v18 = v24[0];
      }

      v15 = sub_1001322D8(a1, v14, &v18);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        v16 = v18.__r_.__value_.__r.__words[0];
LABEL_24:
        operator delete(v16);
        if ((v15 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

    if ((v15 & 1) == 0)
    {
LABEL_25:
      v12 = 0;
LABEL_26:
      if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24[0].__r_.__value_.__l.__data_);
      }

      return v12;
    }

LABEL_22:
    ++*(a1 + 240);
    *(a1 + 16) = 0;
    v12 = 1;
    goto LABEL_26;
  }

  v24[0].__r_.__value_.__r.__words[0] = "Message is too deep, the parser exceeded the configured recursion limit of ";
  v24[0].__r_.__value_.__l.__size_ = 75;
  v11 = *(a1 + 236);
  v22[0] = v23;
  v22[1] = google::protobuf::FastInt32ToBufferLeft(v11, v23, a3) - v23;
  v21[0] = ".";
  v21[1] = 1;
  google::protobuf::StrCat(v24, v22, v21, &__p);
  sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100131568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001315D0(uint64_t a1, google::protobuf::Message *a2, google::protobuf::Reflection *a3, std::once_flag::_State_type **this)
{
  v4 = this;
  v8 = this[6];
  if (v8)
  {
    v59.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v58.__r_.__value_.__r.__words[0] = this;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v63.__r_.__value_.__r.__words[0] = &v59;
      v63.__r_.__value_.__l.__size_ = &v58;
      __p.__r_.__value_.__r.__words[0] = &v63;
      std::__call_once(v8, &__p, sub_1000B32C4);
    }
  }

  v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v4 + 14)];
  if (v9 <= 5)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v63.__r_.__value_.__r.__words[0] = 0;
        if (sub_100132804(a1, &v63, 0xFFFFFFFFuLL))
        {
          if (*(v4 + 15) == 3)
          {
            google::protobuf::Reflection::AddUInt32(a3, a2, v4, v63.__r_.__value_.__l.__data_);
          }

          else
          {
            google::protobuf::Reflection::SetUInt32(a3, a2, v4, v63.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }
      }

      else if (v9 == 4)
      {
        v63.__r_.__value_.__r.__words[0] = 0;
        if (sub_100132804(a1, &v63, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (*(v4 + 15) == 3)
          {
            google::protobuf::Reflection::AddUInt64(a3, a2, v4, v63.__r_.__value_.__l.__data_);
          }

          else
          {
            google::protobuf::Reflection::SetUInt64(a3, a2, v4, v63.__r_.__value_.__r.__words[0]);
          }

          goto LABEL_160;
        }
      }

      else
      {
        v63.__r_.__value_.__r.__words[0] = 0;
        if (sub_100132950(a1, &v63))
        {
          if (*(v4 + 15) == 3)
          {
            google::protobuf::Reflection::AddDouble(a3, a2, v4, *&v63.__r_.__value_.__l.__data_);
          }

          else
          {
            google::protobuf::Reflection::SetDouble(a3, a2, v4, *&v63.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }
      }

LABEL_161:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    if (v9 == 1)
    {
      v63.__r_.__value_.__r.__words[0] = 0;
      if (sub_100132758(a1, &v63, 0x7FFFFFFFLL))
      {
        if (*(v4 + 15) == 3)
        {
          google::protobuf::Reflection::AddInt32(a3, a2, v4, v63.__r_.__value_.__l.__data_);
        }

        else
        {
          google::protobuf::Reflection::SetInt32(a3, a2, v4, v63.__r_.__value_.__l.__data_);
        }

        goto LABEL_160;
      }

      goto LABEL_161;
    }

    if (v9 == 2)
    {
      v63.__r_.__value_.__r.__words[0] = 0;
      if (sub_100132758(a1, &v63, 0x7FFFFFFFFFFFFFFFLL))
      {
        if (*(v4 + 15) == 3)
        {
          google::protobuf::Reflection::AddInt64(a3, a2, v4, v63.__r_.__value_.__l.__data_);
        }

        else
        {
          google::protobuf::Reflection::SetInt64(a3, a2, v4, v63.__r_.__value_.__l.__data_);
        }

        goto LABEL_160;
      }

      goto LABEL_161;
    }

LABEL_160:
    LOBYTE(v4) = 1;
    return v4 & 1;
  }

  if (v9 <= 7)
  {
    if (v9 == 6)
    {
      v63.__r_.__value_.__r.__words[0] = 0;
      v12 = sub_100132950(a1, &v63);
      if (v12)
      {
        v13 = *(v4 + 15) == 3;
        v14 = google::protobuf::io::SafeDoubleToFloat(v12, *&v63.__r_.__value_.__l.__data_);
        if (v13)
        {
          google::protobuf::Reflection::AddFloat(a3, a2, v4, v14);
        }

        else
        {
          google::protobuf::Reflection::SetFloat(a3, a2, v4, v14);
        }

        goto LABEL_160;
      }

      goto LABEL_161;
    }

    if (*(a1 + 40) == 3)
    {
      v63.__r_.__value_.__r.__words[0] = 0;
      if (sub_100132804(a1, &v63, 1uLL))
      {
        if (*(v4 + 15) == 3)
        {
          google::protobuf::Reflection::AddBool(a3, a2, v4, v63.__r_.__value_.__r.__words[0] != 0);
        }

        else
        {
          google::protobuf::Reflection::SetBool(a3, a2, v4, v63.__r_.__value_.__r.__words[0] != 0);
        }

        goto LABEL_160;
      }

      goto LABEL_161;
    }

    memset(&v63, 0, sizeof(v63));
    if ((sub_1001309D4(a1, &v63) & 1) == 0)
    {
      goto LABEL_156;
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v63.__r_.__value_.__l.__size_ == 4)
      {
        v19 = v63.__r_.__value_.__r.__words[0];
LABEL_96:
        if (LODWORD(v19->__r_.__value_.__l.__data_) == 1702195828)
        {
LABEL_99:
          v33 = *(v4 + 15);
          v34 = 1;
LABEL_100:
          if (v33 == 3)
          {
            google::protobuf::Reflection::AddBool(a3, a2, v4, v34);
          }

          else
          {
            google::protobuf::Reflection::SetBool(a3, a2, v4, v34);
          }

          v35 = 1;
LABEL_157:
          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (v35)
          {
            goto LABEL_160;
          }

          goto LABEL_161;
        }
      }
    }

    else if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) == 4)
    {
      v19 = &v63;
      goto LABEL_96;
    }

    if (sub_1000C11FC(&v63, "True") || sub_1000C11FC(&v63, "t"))
    {
      goto LABEL_99;
    }

    if (sub_1000C11FC(&v63, "false") || sub_1000C11FC(&v63, "False") || sub_1000C11FC(&v63, "f"))
    {
      v34 = 0;
      v33 = *(v4 + 15);
      goto LABEL_100;
    }

    v46 = *v4;
    std::operator+<char>();
    v47 = std::string::append(&v57, ". Value: ");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v63;
    }

    else
    {
      v49 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v63.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v58, v49, size);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v59, ".");
    v54 = *&v53->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

LABEL_156:
    v35 = 0;
    goto LABEL_157;
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      if (v9 == 10)
      {
        v10 = google::protobuf::internal::LogMessage::LogMessage(&v63, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 834);
        v11 = google::protobuf::internal::LogMessage::operator<<(v10, "Reached an unintended state: CPPTYPE_MESSAGE");
        google::protobuf::internal::LogFinisher::operator=(&__p, &v11->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v63.__r_.__value_.__l.__data_);
      }

      goto LABEL_160;
    }

    memset(&v63, 0, sizeof(v63));
    v18 = sub_100131208(a1, &v63);
    if (v18)
    {
      if (*(v4 + 15) == 3)
      {
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_1000B32D8(&__dst, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v63;
        }

        google::protobuf::Reflection::AddString(a3, a2, v4, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          p_dst = &__dst;
LABEL_110:
          operator delete(p_dst->__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_1000B32D8(&v61, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
        }

        else
        {
          v61 = v63;
        }

        google::protobuf::Reflection::SetString(a3, a2, v4, &v61);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          p_dst = &v61;
          goto LABEL_110;
        }
      }
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
      if (!v18)
      {
        goto LABEL_161;
      }
    }

    else if (!v18)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  memset(&__p, 0, sizeof(__p));
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = google::protobuf::FieldDescriptor::enum_type(v4);
  if (*(a1 + 40) == 2)
  {
    if ((sub_1001309D4(a1, &__p) & 1) == 0)
    {
      goto LABEL_131;
    }

    ValueByName = google::protobuf::EnumDescriptor::FindValueByName(v15, &__p, v16);
  }

  else
  {
    sub_1000B347C(&v63, "-");
    if (sub_100130AA8(a1, &v63))
    {
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v20 = *(a1 + 40);
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (v20 != 3)
      {
        std::operator+<char>();
        sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &v63);
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          v23 = v63.__r_.__value_.__r.__words[0];
LABEL_130:
          operator delete(v23);
        }

LABEL_131:
        LOBYTE(v4) = 0;
        v22 = 1;
        goto LABEL_132;
      }
    }

    if ((sub_100132758(a1, &v56, 0x7FFFFFFFLL) & 1) == 0)
    {
      goto LABEL_131;
    }

    v63.__r_.__value_.__r.__words[0] = &v63.__r_.__value_.__r.__words[2];
    v63.__r_.__value_.__l.__size_ = google::protobuf::FastInt64ToBufferLeft(v56, &v63.__r_.__value_.__s.__data_[16], v21) - &v63.__r_.__value_.__r.__words[2];
    std::string::__init(&v59, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v59;
    ValueByName = google::protobuf::EnumDescriptor::FindValueByNumber(v15, v56);
  }

  if (!ValueByName)
  {
    if (v56 != 0x7FFFFFFFFFFFFFFFLL && google::protobuf::Reflection::SupportsUnknownEnumValues(a3))
    {
      if (*(v4 + 15) == 3)
      {
        google::protobuf::Reflection::AddEnumValue(a3, a2, v4, v56);
      }

      else
      {
        google::protobuf::Reflection::SetEnumValue(a3, a2, v4, v56);
      }

LABEL_141:
      v22 = 1;
      LOBYTE(v4) = 1;
      goto LABEL_132;
    }

    if (*(a1 + 231))
    {
      std::operator+<char>();
      v24 = std::string::append(&v57, " for field ");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = *(*v4 + 23);
      if (v26 >= 0)
      {
        v27 = *v4;
      }

      else
      {
        v27 = **v4;
      }

      if (v26 >= 0)
      {
        v28 = *(*v4 + 23);
      }

      else
      {
        v28 = *(*v4 + 8);
      }

      v29 = std::string::append(&v58, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v59, ".");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      sub_10012E948(a1, *(a1 + 72), *(a1 + 76), &v63);
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      goto LABEL_141;
    }

    std::operator+<char>();
    v37 = std::string::append(&v57, " for field ");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = *(*v4 + 23);
    if (v39 >= 0)
    {
      v40 = *v4;
    }

    else
    {
      v40 = **v4;
    }

    if (v39 >= 0)
    {
      v41 = *(*v4 + 23);
    }

    else
    {
      v41 = *(*v4 + 8);
    }

    v42 = std::string::append(&v58, v40, v41);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v59, ".");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &v63);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_130;
    }

    goto LABEL_131;
  }

  if (*(v4 + 15) == 3)
  {
    google::protobuf::Reflection::AddEnum(a3, a2, v4, ValueByName);
  }

  else
  {
    google::protobuf::Reflection::SetEnum(a3, a2, v4, ValueByName);
  }

  v22 = 0;
LABEL_132:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_160;
  }

  return v4 & 1;
}

void sub_100132074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001321EC(uint64_t a1, std::string *a2)
{
  sub_1000B347C(__p, "<");
  v4 = sub_1001301C8(a1, __p);
  v5 = v4;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    v6 = ">";
LABEL_8:
    std::string::assign(a2, v6);
    return 1;
  }

  sub_1000B347C(__p, "{");
  v7 = sub_1001303FC(a1, __p);
  v8 = v7;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if (v7)
  {
LABEL_7:
    v6 = "}";
    goto LABEL_8;
  }

  return 0;
}

void sub_1001322B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001322D8(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    sub_1000B347C(v11, ">");
    if (sub_100130AA8(a1, v11))
    {
      v6 = 0;
    }

    else
    {
      sub_1000B347C(__p, "}");
      v7 = sub_100130AA8(a1, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = !v7;
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (!v6)
    {
      break;
    }

    if ((sub_10012EACC(a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1001303FC(a1, a3);
}

void sub_1001323B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001323D0(uint64_t a1)
{
  sub_1000B347C(&v13, "[");
  v2 = sub_1001301C8(a1, &v13);
  v3 = v2;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    if ((sub_100132618(a1) & 1) == 0)
    {
      return 0;
    }

    sub_1000B347C(&v13, "]");
    v4 = sub_1001303FC(a1, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

  memset(&v13, 0, sizeof(v13));
  v5 = sub_1001309D4(a1, &v13);
  v6 = v5;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if (!v6)
    {
      return 0;
    }
  }

  else if (!v5)
  {
    return 0;
  }

LABEL_13:
  sub_1000B347C(&v13, ":");
  if (sub_1001301C8(a1, &v13))
  {
    sub_1000B347C(v11, "{");
    if (sub_100130AA8(a1, v11))
    {
      v7 = 0;
    }

    else
    {
      sub_1000B347C(__p, "<");
      v7 = !sub_100130AA8(a1, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    if ((sub_100130B1C(a1) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_100130FE8(a1);
    if (!result)
    {
      return result;
    }
  }

  sub_1000B347C(&v13, ";");
  if ((sub_1001301C8(a1, &v13) & 1) == 0)
  {
    sub_1000B347C(v11, ",");
    sub_1001301C8(a1, v11);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1001325C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100132618(uint64_t a1)
{
  memset(&v9, 0, sizeof(v9));
  if (sub_1001309D4(a1, &v9))
  {
    do
    {
      sub_1000B347C(v7, ".");
      if (sub_1001301C8(a1, v7))
      {
        v2 = 1;
      }

      else
      {
        sub_1000B347C(__p, "/");
        v2 = sub_1001301C8(a1, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v8 < 0)
      {
        operator delete(v7[0]);
      }
    }

    while (v2 && (sub_1001309D4(a1, &v9) & 1) != 0);
    v3 = v2 ^ 1u;
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_100132700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100132758(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1000B347C(__p, "-");
  v6 = sub_1001301C8(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  result = sub_100132804(a1, __p, a3 + v6);
  if (result)
  {
    v8 = __p[0];
    if (v6)
    {
      v8 = -__p[0];
    }

    *a2 = v8;
  }

  return result;
}

void sub_1001327E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100132804(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v4 = (a1 + 40);
  if (*(a1 + 40) == 3)
  {
    if (google::protobuf::io::Tokenizer::ParseInteger((a1 + 48), a3, a2))
    {
      google::protobuf::io::Tokenizer::Next(v4);
      return 1;
    }

    std::operator+<char>();
    v7 = std::string::append(&v9, ")");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v9.__r_.__value_.__r.__words[0];
      goto LABEL_10;
    }
  }

  else
  {
    std::operator+<char>();
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), __p);
    if (SHIBYTE(v11) < 0)
    {
      v6 = __p[0];
LABEL_10:
      operator delete(v6);
    }
  }

  return 0;
}

void sub_100132908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100132950(uint64_t a1, double *a2)
{
  sub_1000B347C(__p, "-");
  v6 = sub_1001301C8(a1, __p);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    if (*(a1 + 71) < 0)
    {
      sub_1000B32D8(__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *__p = *(a1 + 48);
      v23 = *(a1 + 64);
    }

    v9 = HIBYTE(v23);
    v10 = __p[0];
    v11 = (__p + HIBYTE(v23));
    if (v23 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v11 = (__p[0] + __p[1]);
    }

    if (v10 != v11)
    {
      do
      {
        v12 = *v10;
        if ((v12 - 65) <= 0x19)
        {
          *v10 = v12 | 0x20;
        }

        v10 = (v10 + 1);
      }

      while (v10 != v11);
      v9 = HIBYTE(v23);
    }

    if (v9 < 0)
    {
      if (__p[1] == 3 && *__p[0] == 28265 && *(__p[0] + 2) == 102)
      {
        goto LABEL_53;
      }

      if (__p[1] == 8 && *__p[0] == 0x7974696E69666E69)
      {
        goto LABEL_53;
      }

      if (__p[1] != 3)
      {
        goto LABEL_47;
      }

      v14 = __p[0];
    }

    else
    {
      if (v9 != 3)
      {
        if (v9 == 8 && __p[0] == 0x7974696E69666E69)
        {
LABEL_53:
          v19 = 0x7FF0000000000000;
          goto LABEL_55;
        }

LABEL_47:
        std::operator+<char>();
        sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), &v20);
        if (v21 < 0)
        {
          operator delete(v20);
        }

LABEL_49:
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        return 0;
      }

      if (LOWORD(__p[0]) == 28265 && BYTE2(__p[0]) == 102)
      {
        goto LABEL_53;
      }

      v14 = __p;
    }

    v16 = *v14;
    v17 = *(v14 + 2);
    if (v16 == 24942 && v17 == 110)
    {
      v19 = 0x7FF8000000000000;
LABEL_55:
      *a2 = v19;
      google::protobuf::io::Tokenizer::Next((a1 + 40));
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_7:
      if (!v6)
      {
        return 1;
      }

      goto LABEL_10;
    }

    goto LABEL_47;
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      *a2 = google::protobuf::io::Tokenizer::ParseFloat(a1 + 48, v4, v5);
      google::protobuf::io::Tokenizer::Next((a1 + 40));
      goto LABEL_7;
    }

    std::operator+<char>();
    sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), __p);
    goto LABEL_49;
  }

  result = sub_100132C54(a1, a2, 0xFFFFFFFFFFFFFFFFLL);
  if (result & v6)
  {
LABEL_10:
    *a2 = -*a2;
    return 1;
  }

  return result;
}

void sub_100132C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100132C54(uint64_t a1, double *a2, unint64_t a3)
{
  v4 = (a1 + 40);
  if (*(a1 + 40) != 3)
  {
    goto LABEL_16;
  }

  if (*(a1 + 71) < 0)
  {
    if (*(a1 + 56) <= 1uLL)
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 48);
    if (*v7 == 48 && (v7[1] | 0x20) == 0x78)
    {
      goto LABEL_16;
    }

    v8 = *(a1 + 48);
    if (*v8 != 48)
    {
      goto LABEL_19;
    }

    v6 = v8[1];
    if (v6 < 48)
    {
      goto LABEL_19;
    }

    v6 = v6;
LABEL_15:
    if (v6 <= 0x37)
    {
      goto LABEL_16;
    }

LABEL_19:
    __p[0] = 0;
    if (google::protobuf::io::Tokenizer::ParseInteger((a1 + 48), a3, __p))
    {
      v12 = __p[0];
    }

    else
    {
      v12 = google::protobuf::io::Tokenizer::ParseFloat(a1 + 48, v10, v11);
    }

    *a2 = v12;
    google::protobuf::io::Tokenizer::Next(v4);
    return 1;
  }

  if (*(a1 + 71) < 2u || *(a1 + 48) != 48)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 49);
  if ((v6 | 0x20) != 0x78)
  {
    if (v6 <= 47)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_16:
  std::operator+<char>();
  sub_10012A6A4(a1, *(a1 + 72), *(a1 + 76), __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_100132DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100132F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100132F24(uint64_t a1)
{
  sub_10013333C(a1);

  operator delete();
}

void sub_100132F6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && v1 >= *(a1 + 36))
  {
    *(a1 + 32) = v1 - 1;
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v4, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 1268);
    v2 = google::protobuf::internal::LogMessage::operator<<(v4, " Outdent() without matching Indent().");
    google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v4[0].__r_.__value_.__l.__data_);
  }
}

void sub_100132FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100133010(uint64_t a1, char *__src, size_t a3)
{
  if (*(a1 + 32) < 1)
  {
    result = sub_100133104(a1, __src, a3);
    if (a3 && __src[a3 - 1] == 10)
    {
      *(a1 + 28) = 1;
    }
  }

  else
  {
    if (a3)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (__src[v6] == 10)
        {
          sub_100133104(a1, &__src[v7], v6 - v7 + 1);
          ++v6;
          *(a1 + 28) = 1;
          v7 = v6;
        }

        else
        {
          ++v6;
        }
      }

      while (v6 != a3);
    }

    else
    {
      v7 = 0;
    }

    return sub_100133104(a1, &__src[v7], a3 - v7);
  }

  return result;
}

uint64_t sub_100133104(uint64_t result, char *__src, size_t a3)
{
  if (a3)
  {
    v3 = result;
    if ((*(result + 29) & 1) == 0)
    {
      v4 = a3;
      if (*(result + 28) != 1 || (*(result + 28) = 0, result = sub_100133224(result), (*(v3 + 29) & 1) == 0))
      {
        v6 = *(v3 + 24);
        v7 = v6;
        if (v6 >= v4)
        {
          v9 = *(v3 + 16);
LABEL_12:
          result = memcpy(v9, __src, v4);
          *(v3 + 16) += v4;
          *(v3 + 24) -= v4;
        }

        else
        {
          while (1)
          {
            if (v6 >= 1)
            {
              memcpy(*(v3 + 16), __src, v7);
              v8 = *(v3 + 24);
              __src += v8;
              v4 -= v8;
            }

            v10 = 0;
            result = (*(**(v3 + 8) + 16))(*(v3 + 8), &v10, v3 + 24);
            *(v3 + 29) = result ^ 1;
            if ((result & 1) == 0)
            {
              break;
            }

            v9 = v10;
            *(v3 + 16) = v10;
            v6 = *(v3 + 24);
            v7 = v6;
            if (v4 <= v6)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100133224(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = (*(*result + 32))(result);
    v3 = *(v1 + 24);
    if (v3 >= v2)
    {
      v4 = *(v1 + 16);
LABEL_9:
      result = memset(v4, 32, v2);
      *(v1 + 16) += v2;
      *(v1 + 24) -= v2;
    }

    else
    {
      while (1)
      {
        if (v3 >= 1)
        {
          memset(*(v1 + 16), 32, v3);
          v3 = *(v1 + 24);
        }

        v5 = 0;
        result = (*(**(v1 + 8) + 16))(*(v1 + 8), &v5, v1 + 24);
        *(v1 + 29) = result ^ 1;
        if ((result ^ 1))
        {
          break;
        }

        v2 -= v3;
        v4 = v5;
        *(v1 + 16) = v5;
        v3 = *(v1 + 24);
        if (v2 <= v3)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10013333C(uint64_t a1)
{
  *a1 = off_1001D2BD0;
  if ((*(a1 + 29) & 1) == 0 && *(a1 + 24) >= 1)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void *sub_1001333BC(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100133490(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100070F54();
}

void sub_1001334D8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10013355C(v4 - 8);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_10013355C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1001335BC(v1 + 24, *(v1 + 32));
    sub_10013361C(v1, *(v1 + 8));
    operator delete();
  }

  return result;
}

void sub_1001335BC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1001335BC(a1, *a2);
    sub_1001335BC(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1001334D8(&v4);
    operator delete(a2);
  }
}

void sub_10013361C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10013361C(a1, *a2);
    sub_10013361C(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_100133680(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_10013355C((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_1001336D0(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  i = v7;
  while (1)
  {
    v7 = i;
    v10 = a2 - i;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return sub_1001344B4(i, i + 1, a2 - 1);
        case 4:

          return sub_1001346C8(i, i + 1, i + 2, a2 - 1);
        case 5:

          return sub_100134844(i, i + 1, i + 2, i + 3, a2 - 1);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v62 = *(a2 - 1);
        v63 = *i;
        if (*(v62 + 67) == 1)
        {
          if (!*(*i + 67))
          {
            return result;
          }

          v64 = *(v62 + 68);
          v65 = *(v63 + 68);
        }

        else
        {
          if (*(*i + 67))
          {
LABEL_245:
            *i = v62;
            *(a2 - 1) = v63;
            return result;
          }

          v64 = 678152731 * ((v62 - *(*(v62 + 80) + 40)) >> 3);
          v65 = 678152731 * ((v63 - *(*(v63 + 80) + 40)) >> 3);
        }

        if (v64 >= v65)
        {
          return result;
        }

        goto LABEL_245;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v81 = (v10 - 2) >> 1;
      v82 = v81;
      while (1)
      {
        v83 = v82;
        if (v81 < v82)
        {
          goto LABEL_210;
        }

        v84 = (2 * v82) | 1;
        v85 = &i[v84];
        if (2 * v83 + 2 < v10)
        {
          break;
        }

LABEL_185:
        v90 = *v85;
        v91 = i[v83];
        v92 = *(v91 + 67);
        if (*(*v85 + 67) != 1)
        {
          if (v92)
          {
            goto LABEL_210;
          }

          v93 = 678152731 * ((v90 - *(*(v90 + 80) + 40)) >> 3);
          result = 678152731 * ((v91 - *(*(v91 + 80) + 40)) >> 3);
LABEL_190:
          if (v93 < result)
          {
            goto LABEL_210;
          }

          goto LABEL_191;
        }

        if (*(v91 + 67))
        {
          v93 = *(v90 + 68);
          result = *(v91 + 68);
          goto LABEL_190;
        }

LABEL_191:
        i[v83] = v90;
        while (1)
        {
          if (v81 < v84)
          {
            goto LABEL_209;
          }

          v94 = v85;
          v95 = 2 * v84;
          v84 = (2 * v84) | 1;
          v85 = &i[v84];
          v96 = v95 + 2;
          if (v96 < v10)
          {
            v97 = *v85;
            v98 = v85[1];
            if (*(*v85 + 67) == 1)
            {
              if (!*(v98 + 67))
              {
                goto LABEL_201;
              }

              v99 = *(v97 + 68);
              v100 = *(v98 + 68);
              goto LABEL_199;
            }

            if ((*(v98 + 67) & 1) == 0)
            {
              v99 = 678152731 * ((v97 - *(*(v97 + 80) + 40)) >> 3);
              v100 = 678152731 * ((v98 - *(*(v98 + 80) + 40)) >> 3);
LABEL_199:
              if (v99 >= v100)
              {
                goto LABEL_201;
              }
            }

            ++v85;
            v84 = v96;
          }

LABEL_201:
          v101 = *v85;
          result = *(*v85 + 67);
          if (result == 1)
          {
            if (!v92)
            {
              goto LABEL_207;
            }

            result = *(v101 + 68);
            v102 = *(v91 + 68);
          }

          else
          {
            if (v92)
            {
              break;
            }

            result = 678152731 * ((v101 - *(*(v101 + 80) + 40)) >> 3);
            v102 = 678152731 * ((v91 - *(*(v91 + 80) + 40)) >> 3);
          }

          if (result < v102)
          {
            break;
          }

LABEL_207:
          *v94 = v101;
        }

        v85 = v94;
LABEL_209:
        *v85 = v91;
LABEL_210:
        v82 = v83 - 1;
        if (!v83)
        {
LABEL_211:
          v103 = 0;
          v104 = *i;
          v105 = i;
          while (1)
          {
            v106 = v105;
            v107 = &v105[v103];
            v105 = v107 + 1;
            v108 = 2 * v103;
            v103 = (2 * v103) | 1;
            v109 = v108 + 2;
            if (v109 < v10)
            {
              v112 = v107[2];
              v110 = v107 + 2;
              v111 = v112;
              result = *(v110 - 1);
              v113 = *(v112 + 67);
              if (*(result + 67) == 1)
              {
                if (!v113)
                {
                  goto LABEL_220;
                }

                result = *(result + 68);
                v114 = *(v111 + 68);
              }

              else
              {
                if (v113)
                {
                  goto LABEL_219;
                }

                result = 678152731 * ((result - *(*(result + 80) + 40)) >> 3);
                v114 = 678152731 * ((v111 - *(*(v111 + 80) + 40)) >> 3);
              }

              if (result < v114)
              {
LABEL_219:
                v105 = v110;
                v103 = v109;
              }
            }

LABEL_220:
            *v106 = *v105;
            if (v103 > ((v10 - 2) >> 1))
            {
              if (v105 == --a2)
              {
LABEL_238:
                *v105 = v104;
                goto LABEL_239;
              }

              *v105 = *a2;
              *a2 = v104;
              v115 = (v105 - i + 8) >> 3;
              v116 = v115 - 2;
              if (v115 < 2)
              {
                goto LABEL_239;
              }

              v117 = v116 >> 1;
              v118 = &i[v116 >> 1];
              v119 = *v118;
              v104 = *v105;
              v120 = *(*v105 + 67);
              if (*(*v118 + 67) == 1)
              {
                if (*(*v105 + 67))
                {
                  v121 = *(v119 + 68);
                  result = *(v104 + 68);
                  goto LABEL_228;
                }

                goto LABEL_239;
              }

              if (v120)
              {
                goto LABEL_229;
              }

              v121 = 678152731 * ((v119 - *(*(v119 + 80) + 40)) >> 3);
              result = 678152731 * ((v104 - *(*(v104 + 80) + 40)) >> 3);
LABEL_228:
              if (v121 < result)
              {
LABEL_229:
                *v105 = v119;
                if (v116 < 2)
                {
LABEL_230:
                  v105 = v118;
                  goto LABEL_238;
                }

                while (2)
                {
                  v122 = v117 - 1;
                  v117 = (v117 - 1) >> 1;
                  v105 = &i[v117];
                  v123 = *v105;
                  if (*(*v105 + 67) == 1)
                  {
                    if (!v120)
                    {
                      goto LABEL_230;
                    }

                    v124 = *(v123 + 68);
                    result = *(v104 + 68);
                    goto LABEL_236;
                  }

                  if ((v120 & 1) == 0)
                  {
                    v124 = 678152731 * ((v123 - *(*(v123 + 80) + 40)) >> 3);
                    result = 678152731 * ((v104 - *(*(v104 + 80) + 40)) >> 3);
LABEL_236:
                    if (v124 >= result)
                    {
                      goto LABEL_230;
                    }
                  }

                  *v118 = v123;
                  v118 = &i[v117];
                  if (v122 < 2)
                  {
                    goto LABEL_238;
                  }

                  continue;
                }
              }

LABEL_239:
              if (v10-- <= 2)
              {
                return result;
              }

              goto LABEL_211;
            }
          }
        }
      }

      v86 = *v85;
      v87 = v85[1];
      result = *(v87 + 67);
      if (*(*v85 + 67) == 1)
      {
        if (!*(v87 + 67))
        {
          goto LABEL_185;
        }

        v88 = *(v86 + 68);
        v89 = *(v87 + 68);
      }

      else
      {
        if (result)
        {
LABEL_184:
          ++v85;
          v84 = 2 * v83 + 2;
          goto LABEL_185;
        }

        v88 = 678152731 * ((v86 - *(*(v86 + 80) + 40)) >> 3);
        result = *(*(v87 + 80) + 40);
        v89 = 678152731 * ((v87 - result) >> 3);
      }

      if (v88 >= v89)
      {
        goto LABEL_185;
      }

      goto LABEL_184;
    }

    v11 = v10 >> 1;
    v12 = &i[v10 >> 1];
    if (v10 < 0x81)
    {
      result = sub_1001344B4(&v7[v10 >> 1], v7, a2 - 1);
    }

    else
    {
      sub_1001344B4(v7, &v7[v10 >> 1], a2 - 1);
      sub_1001344B4(v7 + 1, v12 - 1, a2 - 2);
      sub_1001344B4(v7 + 2, &v7[v11 + 1], a2 - 3);
      result = sub_1001344B4(v12 - 1, v12, &v7[v11 + 1]);
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
    }

    --a3;
    v14 = *v7;
    if (a4)
    {
      LOBYTE(v15) = *(v14 + 67);
      goto LABEL_24;
    }

    v16 = *(v7 - 1);
    v15 = *(v14 + 67);
    if (*(v16 + 67) == 1)
    {
      if (!*(v14 + 67))
      {
        goto LABEL_77;
      }

      v17 = *(v14 + 68);
      if (*(v16 + 68) < v17)
      {
        LOBYTE(v15) = 1;
        goto LABEL_24;
      }

      v40 = *v8;
      if (*(*v8 + 67))
      {
        v42 = *(v40 + 68);
        v41 = 1;
LABEL_82:
        if (v17 < v42)
        {
          goto LABEL_83;
        }

        goto LABEL_92;
      }

      v41 = 0;
LABEL_92:
      for (i = v7 + 1; i < a2; ++i)
      {
        v46 = *i;
        if (*(v14 + 67))
        {
          if (!*(*i + 67))
          {
            continue;
          }

          v47 = *(v14 + 68);
          v48 = *(v46 + 68);
        }

        else
        {
          if (*(*i + 67))
          {
            break;
          }

          v47 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          v48 = 678152731 * ((v46 - *(*(v46 + 80) + 40)) >> 3);
        }

        if (v47 < v48)
        {
          break;
        }
      }

LABEL_101:
      v49 = a2;
      if (i < a2)
      {
        v49 = a2 - 1;
        if (*(v14 + 67))
        {
LABEL_103:
          if (v41)
          {
            v50 = *(v14 + 68);
            v51 = *(v40 + 68);
            goto LABEL_107;
          }
        }

        else
        {
          while (1)
          {
            if ((v41 & 1) == 0)
            {
              v50 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
              v51 = 678152731 * ((v40 - *(*(v40 + 80) + 40)) >> 3);
LABEL_107:
              if (v50 >= v51)
              {
                break;
              }
            }

            v52 = *--v49;
            v40 = v52;
            v41 = *(v52 + 67);
            if (*(v14 + 67))
            {
              goto LABEL_103;
            }
          }
        }
      }

      if (i >= v49)
      {
        goto LABEL_127;
      }

      v53 = *i;
      v54 = *v49;
      while (2)
      {
        *i++ = v54;
        *v49 = v53;
        while (2)
        {
          v53 = *i;
          if (v15)
          {
            if (*(*i + 67))
            {
              v55 = *(v14 + 68);
              v56 = *(v53 + 68);
              goto LABEL_118;
            }

            goto LABEL_119;
          }

          if (*(*i + 67))
          {
            goto LABEL_120;
          }

          v55 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          v56 = 678152731 * ((v53 - *(*(v53 + 80) + 40)) >> 3);
LABEL_118:
          if (v55 >= v56)
          {
LABEL_119:
            ++i;
            continue;
          }

          break;
        }

        do
        {
LABEL_120:
          v57 = *--v49;
          v54 = v57;
          v58 = *(v57 + 67);
          if (v15)
          {
            if (!v58)
            {
              break;
            }

            v59 = *(v14 + 68);
            v60 = *(v54 + 68);
          }

          else
          {
            if (v58)
            {
              goto LABEL_120;
            }

            v59 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
            v60 = 678152731 * ((v54 - *(*(v54 + 80) + 40)) >> 3);
          }
        }

        while (v59 < v60);
        if (i < v49)
        {
          continue;
        }

        break;
      }

LABEL_127:
      v61 = i - 1;
      if (i - 1 != v7)
      {
        *v7 = *v61;
      }

      a4 = 0;
      *v61 = v14;
    }

    else
    {
      if ((v15 & 1) == 0)
      {
        if ((678152731 * ((v16 - *(*(v16 + 80) + 40)) >> 3)) >= (678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3)))
        {
LABEL_77:
          v40 = *v8;
          if (*(*v8 + 67))
          {
            v41 = 1;
LABEL_83:
            i = v7 + 1;
            while (2)
            {
              v43 = *i;
              if (*(v14 + 67))
              {
                if (*(*i + 67))
                {
                  v44 = *(v14 + 68);
                  v45 = *(v43 + 68);
LABEL_89:
                  if (v44 < v45)
                  {
                    goto LABEL_101;
                  }
                }

                ++i;
                continue;
              }

              break;
            }

            if (*(*i + 67))
            {
              goto LABEL_101;
            }

            v44 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
            v45 = 678152731 * ((v43 - *(*(v43 + 80) + 40)) >> 3);
            goto LABEL_89;
          }

          v41 = 0;
          v17 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          v42 = 678152731 * ((v40 - *(*(v40 + 80) + 40)) >> 3);
          goto LABEL_82;
        }

        LOBYTE(v15) = 0;
      }

LABEL_24:
      for (j = 0; ; ++j)
      {
        v19 = v7[j + 1];
        if (*(v19 + 67) == 1)
        {
          if ((v15 & 1) == 0)
          {
            break;
          }

          v20 = *(v19 + 68);
          v21 = *(v14 + 68);
        }

        else
        {
          if (v15)
          {
            continue;
          }

          v20 = 678152731 * ((v19 - *(*(v19 + 80) + 40)) >> 3);
          v21 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
        }

        if (v20 >= v21)
        {
          break;
        }
      }

      v22 = &v7[j];
      v23 = &v7[j + 1];
      k = a2 - 1;
      if (j * 8)
      {
        while (1)
        {
          v25 = *k;
          if (*(*k + 67) == 1)
          {
            if ((v15 & 1) == 0)
            {
              goto LABEL_39;
            }

            v26 = *(v25 + 68);
            v27 = *(v14 + 68);
          }

          else
          {
            if (v15)
            {
              goto LABEL_53;
            }

            v26 = 678152731 * ((v25 - *(*(v25 + 80) + 40)) >> 3);
            v27 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          }

          if (v26 < v27)
          {
            goto LABEL_53;
          }

LABEL_39:
          --k;
        }
      }

      k = a2;
      if (v23 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          v28 = *k;
          if (*(*k + 67) != 1)
          {
            break;
          }

          if (v15)
          {
            if (v23 >= k)
            {
              goto LABEL_53;
            }

            v29 = *(v28 + 68);
            v30 = *(v14 + 68);
LABEL_49:
            if (v29 < v30)
            {
              goto LABEL_53;
            }

            continue;
          }

          if (v23 >= k)
          {
            goto LABEL_53;
          }
        }

        if ((v15 & 1) != 0 || v23 >= k)
        {
          goto LABEL_53;
        }

        v29 = 678152731 * ((v28 - *(*(v28 + 80) + 40)) >> 3);
        v30 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
        goto LABEL_49;
      }

LABEL_53:
      if (v23 >= k)
      {
        goto LABEL_71;
      }

      v31 = *k;
      v32 = v23;
      v33 = k;
      do
      {
        *v32 = v31;
        v32 += 8;
        *v33 = v19;
        while (1)
        {
          v19 = *v32;
          if (*(*v32 + 67) == 1)
          {
            if ((v15 & 1) == 0)
            {
              goto LABEL_63;
            }

            v34 = *(v19 + 68);
            v35 = *(v14 + 68);
          }

          else
          {
            if (v15)
            {
              goto LABEL_62;
            }

            v34 = 678152731 * ((v19 - *(*(v19 + 80) + 40)) >> 3);
            v35 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          }

          if (v34 >= v35)
          {
            break;
          }

LABEL_62:
          v32 += 8;
        }

        do
        {
LABEL_63:
          while (1)
          {
            v36 = *--v33;
            v31 = v36;
            if (*(v36 + 67) != 1)
            {
              break;
            }

            if (v15)
            {
              v37 = *(v31 + 68);
              v38 = *(v14 + 68);
              goto LABEL_68;
            }
          }

          if (v15)
          {
            break;
          }

          v37 = 678152731 * ((v31 - *(*(v31 + 80) + 40)) >> 3);
          v38 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
LABEL_68:
          ;
        }

        while (v37 >= v38);
      }

      while (v32 < v33);
      v22 = (v32 - 8);
LABEL_71:
      if (v22 != v7)
      {
        *v7 = *v22;
      }

      *v22 = v14;
      if (v23 < k)
      {
LABEL_76:
        result = sub_1001336D0(v7, v22, a3, a4 & 1);
        a4 = 0;
        i = v22 + 1;
      }

      else
      {
        v39 = sub_100134A38(v7, v22);
        i = v22 + 1;
        result = sub_100134A38(v22 + 1, a2);
        if (result)
        {
          a2 = v22;
          if (v39)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v39)
        {
          goto LABEL_76;
        }
      }
    }
  }

  v66 = i + 1;
  v68 = i == a2 || v66 == a2;
  if ((a4 & 1) == 0)
  {
    if (v68)
    {
      return result;
    }

    while (1)
    {
      v126 = v7;
      v7 = v66;
      v128 = *v126;
      v127 = v126[1];
      v129 = *(v127 + 67);
      if (v129 == 1)
      {
        if (!*(*v126 + 67))
        {
          goto LABEL_260;
        }

        v130 = *(v127 + 68);
        v131 = *(v128 + 68);
      }

      else
      {
        if (*(*v126 + 67))
        {
          goto LABEL_253;
        }

        v130 = 678152731 * ((v127 - *(*(v127 + 80) + 40)) >> 3);
        v131 = 678152731 * ((v128 - *(*(v128 + 80) + 40)) >> 3);
      }

      if (v130 < v131)
      {
LABEL_253:
        while (1)
        {
          v132 = v126;
          v133 = v128;
          v134 = *--v126;
          v128 = v134;
          v126[2] = v133;
          v135 = *(v134 + 67);
          if (v129)
          {
            break;
          }

          if ((v135 & 1) == 0)
          {
            v136 = 678152731 * ((v127 - *(*(v127 + 80) + 40)) >> 3);
            v137 = 678152731 * ((v128 - *(*(v128 + 80) + 40)) >> 3);
LABEL_258:
            if (v136 >= v137)
            {
LABEL_259:
              *v132 = v127;
              goto LABEL_260;
            }
          }
        }

        if (!v135)
        {
          goto LABEL_259;
        }

        v136 = *(v127 + 68);
        v137 = *(v128 + 68);
        goto LABEL_258;
      }

LABEL_260:
      v66 = v7 + 1;
      if (v7 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v68)
  {
    return result;
  }

  v69 = 0;
  v70 = i;
  while (2)
  {
    v71 = v70;
    v70 = v66;
    v73 = *v71;
    v72 = v71[1];
    v74 = *(v72 + 67);
    if (v74 == 1)
    {
      if (!*(*v71 + 67))
      {
        goto LABEL_172;
      }

      v75 = *(v72 + 68);
      v76 = *(v73 + 68);
      goto LABEL_158;
    }

    if ((*(*v71 + 67) & 1) == 0)
    {
      v75 = 678152731 * ((v72 - *(*(v72 + 80) + 40)) >> 3);
      v76 = 678152731 * ((v73 - *(*(v73 + 80) + 40)) >> 3);
LABEL_158:
      if (v75 >= v76)
      {
        goto LABEL_172;
      }
    }

    v71[1] = v73;
    v77 = i;
    if (v71 == i)
    {
      goto LABEL_171;
    }

    v78 = v69;
    while (2)
    {
      v79 = *(i + v78 - 8);
      if (!v74)
      {
        if ((*(v79 + 67) & 1) == 0)
        {
          v80 = 678152731 * ((v72 - *(*(v72 + 80) + 40)) >> 3);
          result = 678152731 * ((v79 - *(*(v79 + 80) + 40)) >> 3);
          goto LABEL_166;
        }

LABEL_167:
        --v71;
        *(i + v78) = v79;
        v78 -= 8;
        if (!v78)
        {
          v77 = i;
          goto LABEL_171;
        }

        continue;
      }

      break;
    }

    if (*(v79 + 67))
    {
      v80 = *(v72 + 68);
      result = *(v79 + 68);
LABEL_166:
      if (v80 >= result)
      {
        v77 = v71;
        goto LABEL_171;
      }

      goto LABEL_167;
    }

    v77 = (i + v78);
LABEL_171:
    *v77 = v72;
LABEL_172:
    v66 = v70 + 1;
    v69 += 8;
    if (v70 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t *sub_1001344B4(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*result + 67);
  if (*(*a2 + 67) != 1)
  {
    if ((v5 & 1) != 0 || (v9 = 678152731 * ((v3 - *(*(v3 + 80) + 40)) >> 3), v9 < (678152731 * ((v4 - *(*(v4 + 80) + 40)) >> 3))))
    {
      v7 = *a3;
      if ((*(*a3 + 67) & 1) != 0 || (678152731 * ((v7 - *(*(v7 + 80) + 40)) >> 3)) >= (678152731 * ((v3 - *(*(v3 + 80) + 40)) >> 3)))
      {
        *result = v3;
        *a2 = v4;
        v8 = *a3;
        if ((*(*a3 + 67) & 1) == 0)
        {
          if (v5)
          {
LABEL_21:
            *a2 = v8;
            goto LABEL_22;
          }

          v12 = 678152731 * ((v8 - *(*(v8 + 80) + 40)) >> 3);
          v13 = 678152731 * ((v4 - *(*(v4 + 80) + 40)) >> 3);
LABEL_20:
          if (v12 >= v13)
          {
            return result;
          }

          goto LABEL_21;
        }

        if (!v5)
        {
          return result;
        }

LABEL_17:
        v12 = *(v8 + 68);
        v13 = *(v4 + 68);
        goto LABEL_20;
      }

LABEL_12:
      *result = v7;
LABEL_22:
      *a3 = v4;
      return result;
    }

    v10 = *a3;
    if (*(*a3 + 67))
    {
      return result;
    }

    v11 = 678152731 * ((v10 - *(*(v10 + 80) + 40)) >> 3);
    goto LABEL_26;
  }

  if (*(*result + 67))
  {
    v6 = *(v3 + 68);
    if (v6 < *(v4 + 68))
    {
      v7 = *a3;
      if (*(*a3 + 67) == 1 && *(v7 + 68) >= v6)
      {
        *result = v3;
        *a2 = v4;
        v8 = *a3;
        if ((*(*a3 + 67) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  v10 = *a3;
  if (*(*a3 + 67))
  {
    v11 = *(v10 + 68);
    v9 = *(v3 + 68);
LABEL_26:
    if (v11 >= v9)
    {
      return result;
    }
  }

  *a2 = v10;
  *a3 = v3;
  v14 = *a2;
  v15 = *result;
  if (*(*a2 + 67) == 1)
  {
    if (!*(*result + 67))
    {
      return result;
    }

    v16 = *(v14 + 68);
    v17 = *(v15 + 68);
  }

  else
  {
    if (*(*result + 67))
    {
LABEL_33:
      *result = v14;
      *a2 = v15;
      return result;
    }

    v16 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
    v17 = 678152731 * ((v15 - *(*(v15 + 80) + 40)) >> 3);
  }

  if (v16 < v17)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t *sub_1001346C8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_1001344B4(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  if (*(*a4 + 67) == 1)
  {
    if (!*(*a3 + 67))
    {
      return result;
    }

    v11 = *(v9 + 68);
    v12 = *(v10 + 68);
  }

  else
  {
    if (*(*a3 + 67))
    {
      goto LABEL_7;
    }

    v11 = 678152731 * ((v9 - *(*(v9 + 80) + 40)) >> 3);
    v12 = 678152731 * ((v10 - *(*(v10 + 80) + 40)) >> 3);
  }

  if (v11 >= v12)
  {
    return result;
  }

LABEL_7:
  *a3 = v9;
  *a4 = v10;
  v13 = *a3;
  v14 = *a2;
  if (*(*a3 + 67) == 1)
  {
    if (!*(*a2 + 67))
    {
      return result;
    }

    v15 = *(v13 + 68);
    v16 = *(v14 + 68);
  }

  else
  {
    if (*(*a2 + 67))
    {
      goto LABEL_13;
    }

    v15 = 678152731 * ((v13 - *(*(v13 + 80) + 40)) >> 3);
    v16 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
  }

  if (v15 >= v16)
  {
    return result;
  }

LABEL_13:
  *a2 = v13;
  *a3 = v14;
  v17 = *a2;
  v18 = *a1;
  if (*(*a2 + 67) == 1)
  {
    if (!*(*a1 + 67))
    {
      return result;
    }

    v19 = *(v17 + 68);
    v20 = *(v18 + 68);
LABEL_18:
    if (v19 >= v20)
    {
      return result;
    }

    goto LABEL_19;
  }

  if ((*(*a1 + 67) & 1) == 0)
  {
    v19 = 678152731 * ((v17 - *(*(v17 + 80) + 40)) >> 3);
    v20 = 678152731 * ((v18 - *(*(v18 + 80) + 40)) >> 3);
    goto LABEL_18;
  }

LABEL_19:
  *a1 = v17;
  *a2 = v18;
  return result;
}

uint64_t *sub_100134844(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_1001346C8(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a4;
  if (*(*a5 + 67) == 1)
  {
    if (!*(*a4 + 67))
    {
      return result;
    }

    v13 = *(v11 + 68);
    v14 = *(v12 + 68);
  }

  else
  {
    if (*(*a4 + 67))
    {
      goto LABEL_7;
    }

    v13 = 678152731 * ((v11 - *(*(v11 + 80) + 40)) >> 3);
    v14 = 678152731 * ((v12 - *(*(v12 + 80) + 40)) >> 3);
  }

  if (v13 >= v14)
  {
    return result;
  }

LABEL_7:
  *a4 = v11;
  *a5 = v12;
  v15 = *a4;
  v16 = *a3;
  if (*(*a4 + 67) == 1)
  {
    if (!*(*a3 + 67))
    {
      return result;
    }

    v17 = *(v15 + 68);
    v18 = *(v16 + 68);
  }

  else
  {
    if (*(*a3 + 67))
    {
      goto LABEL_13;
    }

    v17 = 678152731 * ((v15 - *(*(v15 + 80) + 40)) >> 3);
    v18 = 678152731 * ((v16 - *(*(v16 + 80) + 40)) >> 3);
  }

  if (v17 >= v18)
  {
    return result;
  }

LABEL_13:
  *a3 = v15;
  *a4 = v16;
  v19 = *a3;
  v20 = *a2;
  if (*(*a3 + 67) == 1)
  {
    if (!*(*a2 + 67))
    {
      return result;
    }

    v21 = *(v19 + 68);
    v22 = *(v20 + 68);
  }

  else
  {
    if (*(*a2 + 67))
    {
      goto LABEL_19;
    }

    v21 = 678152731 * ((v19 - *(*(v19 + 80) + 40)) >> 3);
    v22 = 678152731 * ((v20 - *(*(v20 + 80) + 40)) >> 3);
  }

  if (v21 >= v22)
  {
    return result;
  }

LABEL_19:
  *a2 = v19;
  *a3 = v20;
  v23 = *a2;
  v24 = *a1;
  if (*(*a2 + 67) == 1)
  {
    if (!*(*a1 + 67))
    {
      return result;
    }

    v25 = *(v23 + 68);
    v26 = *(v24 + 68);
LABEL_24:
    if (v25 >= v26)
    {
      return result;
    }

    goto LABEL_25;
  }

  if ((*(*a1 + 67) & 1) == 0)
  {
    v25 = 678152731 * ((v23 - *(*(v23 + 80) + 40)) >> 3);
    v26 = 678152731 * ((v24 - *(*(v24 + 80) + 40)) >> 3);
    goto LABEL_24;
  }

LABEL_25:
  *a1 = v23;
  *a2 = v24;
  return result;
}

BOOL sub_100134A38(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1001344B4(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_1001346C8(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_100134844(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 67) == 1)
      {
        if (!*(*a1 + 67))
        {
          return 1;
        }

        v7 = *(v5 + 68);
        v8 = *(v6 + 68);
      }

      else
      {
        if (*(*a1 + 67))
        {
LABEL_37:
          *a1 = v5;
          *(a2 - 1) = v6;
          return 1;
        }

        v7 = 678152731 * ((v5 - *(*(v5 + 80) + 40)) >> 3);
        v8 = 678152731 * ((v6 - *(*(v6 + 80) + 40)) >> 3);
      }

      if (v7 >= v8)
      {
        return 1;
      }

      goto LABEL_37;
    }
  }

  v9 = a1 + 2;
  sub_1001344B4(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = *v10;
    v14 = *v9;
    v15 = *(*v10 + 67);
    if (v15 == 1)
    {
      if (!*(*v9 + 67))
      {
        goto LABEL_31;
      }

      v16 = *(v13 + 68);
      v17 = *(v14 + 68);
LABEL_19:
      if (v16 >= v17)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if ((*(*v9 + 67) & 1) == 0)
    {
      v16 = 678152731 * ((v13 - *(*(v13 + 80) + 40)) >> 3);
      v17 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
      goto LABEL_19;
    }

LABEL_20:
    *v10 = v14;
    v18 = v11;
    while (1)
    {
      v19 = *(a1 + v18 + 8);
      if (v15)
      {
        break;
      }

      if ((*(v19 + 67) & 1) == 0)
      {
        v20 = 678152731 * ((v13 - *(*(v13 + 80) + 40)) >> 3);
        v21 = 678152731 * ((v19 - *(*(v19 + 80) + 40)) >> 3);
        goto LABEL_26;
      }

LABEL_27:
      *(a1 + v18 + 16) = v19;
      v18 -= 8;
      if (v18 == -16)
      {
        v22 = a1;
        goto LABEL_30;
      }
    }

    if (!*(v19 + 67))
    {
      goto LABEL_29;
    }

    v20 = *(v13 + 68);
    v21 = *(v19 + 68);
LABEL_26:
    if (v20 < v21)
    {
      goto LABEL_27;
    }

LABEL_29:
    v22 = (a1 + v18 + 16);
LABEL_30:
    *v22 = v13;
    if (++v12 != 8)
    {
LABEL_31:
      v9 = v10;
      v11 += 8;
      if (++v10 == a2)
      {
        return 1;
      }

      continue;
    }

    return v10 + 1 == a2;
  }
}

void sub_100134C94(const google::protobuf::Message **a1, const google::protobuf::Message **a2, const google::protobuf::FieldDescriptor **a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = a2 - a1;
    while (1)
    {
      v8 = operator new(8 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  sub_100134D90(a1, a2, a3, v6, v11, v7);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_100134D78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100134D90(const google::protobuf::Message **a1, const google::protobuf::Message **a2, const google::protobuf::FieldDescriptor **a3, unint64_t a4, const google::protobuf::Message **a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (sub_100134F50(a3, *(a2 - 1), *a1))
      {
        v9 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v9;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_10013531C(a1, v14, a3, v15, a5);
        sub_10013531C(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13]);

        sub_100135478(a5, &a5[v13], &a5[v13], &a5[a4], a1, a3);
      }

      else
      {
        sub_100134D90(a1, v14, a3, v15, a5, a6);
        sub_100134D90(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        sub_100135538(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      sub_100135250(a1, a2, a3);
    }
  }
}

uint64_t sub_100134F50(const google::protobuf::FieldDescriptor **a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3)
{
  (*(*a2 + 152))(a2);
  v7 = v6;
  v8 = *a1;
  v9 = *(*a1 + 6);
  if (v9)
  {
    v33 = *a1;
    v34 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      __p[0].__r_.__value_.__r.__words[0] = &v34;
      __p[0].__r_.__value_.__l.__size_ = &v33;
      v31[0] = __p;
      std::__call_once(v9, v31, sub_1000B32C4);
    }
  }

  v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 14)];
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      UInt64 = google::protobuf::Reflection::GetUInt64(v7, a2, *a1);
      v12 = UInt64 >= google::protobuf::Reflection::GetUInt64(v7, a3, *a1);
      return !v12;
    }

    if (v10 != 9)
    {
      if (v10 == 7)
      {
        Bool = google::protobuf::Reflection::GetBool(v7, a2, *a1);
        return google::protobuf::Reflection::GetBool(v7, a3, *a1) & (Bool ^ 1);
      }

      goto LABEL_18;
    }

    google::protobuf::Reflection::GetString(v7, a2, *a1, __p);
    google::protobuf::Reflection::GetString(v7, a3, *a1, v31);
    v20 = v32;
    v21 = v31[0];
    v22 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0].__r_.__value_.__r.__words[0];
    }

    if (v32 >= 0)
    {
      v25 = v32;
    }

    else
    {
      v25 = v31[1];
    }

    if (v32 >= 0)
    {
      v26 = v31;
    }

    else
    {
      v26 = v31[0];
    }

    if (v25 >= size)
    {
      v27 = size;
    }

    else
    {
      v27 = v25;
    }

    v28 = memcmp(v24, v26, v27);
    if (v28)
    {
      v14 = v28 < 0;
    }

    else
    {
      v14 = size < v25;
    }

    if (v20 < 0)
    {
      operator delete(v21);
      v22 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    if (v22 < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        Int32 = google::protobuf::Reflection::GetInt32(v7, a2, *a1);
        v16 = Int32 < google::protobuf::Reflection::GetInt32(v7, a3, *a1);
        break;
      case 2:
        Int64 = google::protobuf::Reflection::GetInt64(v7, a2, *a1);
        v16 = Int64 < google::protobuf::Reflection::GetInt64(v7, a3, *a1);
        break;
      case 3:
        UInt32 = google::protobuf::Reflection::GetUInt32(v7, a2, *a1);
        v12 = UInt32 >= google::protobuf::Reflection::GetUInt32(v7, a3, *a1);
        return !v12;
      default:
LABEL_18:
        google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/text_format.cc", 2116);
        v18 = google::protobuf::internal::LogMessage::operator<<(__p, "Invalid key for map field.");
        google::protobuf::internal::LogFinisher::operator=(v31, &v18->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        return 1;
    }

    return v16;
  }

  return v14;
}

uint64_t sub_100135250(uint64_t result, const google::protobuf::Message **a2, const google::protobuf::FieldDescriptor **a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = *v8;
        v8 = v5;
        result = sub_100134F50(a3, *v5, v9);
        if (result)
        {
          v10 = *v8;
          v11 = v7;
          while (1)
          {
            *(v4 + v11 + 8) = *(v4 + v11);
            if (!v11)
            {
              break;
            }

            result = sub_100134F50(a3, v10, *(v4 + v11 - 8));
            v11 -= 8;
            if ((result & 1) == 0)
            {
              v12 = (v4 + v11 + 8);
              goto LABEL_10;
            }
          }

          v12 = v4;
LABEL_10:
          *v12 = v10;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

const google::protobuf::Message **sub_10013531C(const google::protobuf::Message **result, const google::protobuf::Message **a2, const google::protobuf::FieldDescriptor **a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      result = sub_100134F50(a3, *(a2 - 1), *result);
      if (result)
      {
        *a5 = *(a2 - 1);
        v10 = *v9;
      }

      else
      {
        *a5 = *v9;
        v10 = *(a2 - 1);
      }

      *(a5 + 8) = v10;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      sub_100134D90(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      sub_100134D90(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5 + 8 * (a4 >> 1), a4 - (a4 >> 1));

      return sub_100135884(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return sub_1001357A8(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t sub_100135478(uint64_t result, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::Message **a4, const google::protobuf::Message **a5, const google::protobuf::FieldDescriptor **a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = sub_100134F50(a6, *a3, *v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 0;
      }

      else
      {
        v13 = 8;
      }

      v11 = (v11 + v13);
      if (result)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

void sub_100135538(const google::protobuf::Message **a1, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::FieldDescriptor **a4, uint64_t a5, uint64_t a6, const google::protobuf::Message **a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    do
    {
      if (v10 <= a8 || a5 <= a8)
      {
        sub_100135944(a1, a2, a3, a4, a5, v10, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v16 = 0;
      v17 = 0;
      while ((sub_100134F50(a4, *a2, a1[v17]) & 1) == 0)
      {
        ++v17;
        v16 -= 8;
        if (a5 == v17)
        {
          return;
        }
      }

      v18 = a5 - v17;
      v40 = a8;
      v41 = a7;
      v42 = a3;
      v39 = &a1[v16 / 0xFFFFFFFFFFFFFFF8];
      if (a5 - v17 >= v10)
      {
        if (a5 - 1 == v17)
        {
          v34 = a1[v17];
          a1[v17] = *a2;
          *a2 = v34;
          return;
        }

        v35 = v18 / 2;
        v37 = v10;
        v24 = &a1[v18 / 2];
        v43 = *a4;
        v21 = a2;
        if (a2 != a3)
        {
          v25 = a3 - a2;
          v21 = a2;
          do
          {
            v26 = &v21[v25 >> 1];
            v28 = *v26;
            v27 = v26 + 1;
            v29 = sub_100134F50(&v43, v28, v24[v17]);
            if (v29)
            {
              v25 += ~(v25 >> 1);
            }

            else
            {
              v25 >>= 1;
            }

            if (v29)
            {
              v21 = v27;
            }
          }

          while (v25);
        }

        v19 = v21 - a2;
        v22 = &v24[v16 / 0xFFFFFFFFFFFFFFF8];
        v23 = v35;
        v20 = v37;
      }

      else
      {
        v19 = v10 / 2;
        v20 = v10;
        v21 = &a2[v10 / 2];
        v22 = sub_100135A18(&a1[v16 / 0xFFFFFFFFFFFFFFF8], a2, v21, a4);
        v23 = (v22 - a1 + v16) >> 3;
      }

      v36 = a5 - v23 - v17;
      v38 = v22;
      v30 = v20 - v19;
      v31 = sub_100135A9C(v22, a2, v21);
      a1 = v31;
      v32 = v23;
      if (v23 + v19 >= v20 + a5 - (v23 + v19) - v17)
      {
        a3 = v31;
        a7 = v41;
        sub_100135538(v31, v21, v42, a4, v36, v30, v41, v40);
        v21 = v38;
        a1 = v39;
        v30 = v19;
        a8 = v40;
        a5 = v32;
      }

      else
      {
        v33 = v19;
        a8 = v40;
        a7 = v41;
        sub_100135538(v39, v38, v31, a4, v23, v33, v41, v40);
        a3 = v42;
        a5 = v36;
      }

      a2 = v21;
      v10 = v30;
    }

    while (v30);
  }
}

const google::protobuf::Message **sub_1001357A8(const google::protobuf::Message **result, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::FieldDescriptor **a4)
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9;
        v11 = *v9++;
        result = sub_100134F50(a4, *v6, v11);
        v12 = v9;
        if (result)
        {
          v10[1] = *v10;
          v12 = a3;
          if (v10 != a3)
          {
            v13 = v8;
            while (1)
            {
              v12 = (a3 + v13);
              result = sub_100134F50(a4, *v6, *(a3 + v13 - 8));
              if (!result)
              {
                break;
              }

              *v12 = *(v12 - 1);
              v13 -= 8;
              if (!v13)
              {
                v12 = a3;
                break;
              }
            }
          }
        }

        v14 = *v6++;
        *v12 = v14;
        v8 += 8;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t sub_100135884(uint64_t result, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::Message **a4, const google::protobuf::Message **a5, const google::protobuf::FieldDescriptor **a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = sub_100134F50(a6, *a3, *v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

void sub_100135944(const google::protobuf::Message **__dst, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::FieldDescriptor **a4, uint64_t a5, uint64_t a6, const google::protobuf::Message **__src)
{
  if (a5 <= a6)
  {
    v12 = __src;
    if (__dst != a2)
    {
      v12 = __src;
      v13 = __dst;
      do
      {
        v14 = *v13++;
        *v12++ = v14;
      }

      while (v13 != a2);
    }

    sub_100135B60(__src, v12, a2, a3, __dst, a4);
  }

  else
  {
    v9 = __src;
    if (a2 != a3)
    {
      v9 = __src;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9++ = v11;
      }

      while (v10 != a3);
    }

    v15 = a4;
    sub_100135C2C(v9, v9, __src, __src, a2, a2, __dst, __dst, a3, a3, &v15);
  }
}

const google::protobuf::Message **sub_100135A18(const google::protobuf::Message **a1, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::FieldDescriptor **a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = &v4[v7 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      if (sub_100134F50(a4, *a3, v10))
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v9;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

char *sub_100135A9C(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_100135CE4(__src, a2, a3);
    }
  }

  return v4;
}

const google::protobuf::Message **sub_100135B60(const google::protobuf::Message **__src, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::Message **a4, const google::protobuf::Message **__dst, const google::protobuf::FieldDescriptor **a6)
{
  if (__src != a2)
  {
    v11 = __src;
    while (a3 != a4)
    {
      __src = sub_100134F50(a6, *a3, *v11);
      if (__src)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (__src)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (__src)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *__dst++ = *v12;
      if (v11 == a2)
      {
        return __src;
      }
    }

    return memmove(__dst, v11, a2 - v11);
  }

  return __src;
}

void sub_100135C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const google::protobuf::FieldDescriptor ***a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v16 = sub_100134F50(*a11, *(v14 - 8), *(a6 - 8));
      if (v16)
      {
        v17 = a6;
      }

      else
      {
        v17 = v14;
      }

      if (v16)
      {
        a6 -= 8;
      }

      else
      {
        v14 -= 8;
      }

      *(a10 - 8) = *(v17 - 8);
      a10 -= 8;
      if (v14 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v18 = -8;
      do
      {
        v19 = *(v14 - 8);
        v14 -= 8;
        *(a10 + v18) = v19;
        v18 -= 8;
      }

      while (v14 != a4);
    }
  }
}

char *sub_100135CE4(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void google::protobuf::StringPiece::LogFatalSizeTooBig(google::protobuf::StringPiece *this, const std::string::value_type *a2, const char *a3)
{
  google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/stubs/stringpiece.cc", 49);
  v5 = google::protobuf::internal::LogMessage::operator<<(v10, "size too big: ");
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, this);
  v7 = google::protobuf::internal::LogMessage::operator<<(v6, " details: ");
  v8 = google::protobuf::internal::LogMessage::operator<<(v7, a2);
  google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
}

void sub_100135E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::StringPiece::find(google::protobuf::StringPiece *this, int a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 < 1 || v3 <= a3)
  {
    return -1;
  }

  v6 = *this;
  v7 = memchr((*this + a3), a2, v3 - a3);
  if (v7)
  {
    return v7 - v6;
  }

  else
  {
    return -1;
  }
}

uint64_t google::protobuf::StringPiece::find_first_of(google::protobuf::StringPiece *a1, unsigned __int8 *a2, uint64_t a3, int64_t a4)
{
  v4 = *(a1 + 1);
  if (v4 < 1 || a3 < 1)
  {
    return -1;
  }

  if (a3 != 1)
  {
    memset(v9, 0, sizeof(v9));
    do
    {
      v8 = *a2++;
      *(v9 + v8) = 1;
      --a3;
    }

    while (a3);
    if (v4 > a4)
    {
      while ((*(v9 + *(*a1 + a4)) & 1) == 0)
      {
        if (v4 == ++a4)
        {
          return -1;
        }
      }

      return a4;
    }

    return -1;
  }

  v7 = *a2;

  return google::protobuf::StringPiece::find(a1, v7, a4);
}

uint64_t google::protobuf::StringPiece::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (v4 < 1)
  {
    return -1;
  }

  if (a3 < 1)
  {
    return 0;
  }

  if (a3 != 1)
  {
    memset(v7, 0, sizeof(v7));
    do
    {
      v5 = *a2++;
      *(v7 + v5) = 1;
      --a3;
    }

    while (a3);
    if (v4 > a4)
    {
      while (*(v7 + *(*a1 + a4)) == 1)
      {
        if (v4 == ++a4)
        {
          return -1;
        }
      }

      return a4;
    }

    return -1;
  }

  if (v4 <= a4)
  {
    return -1;
  }

  while (*(*a1 + a4) == *a2)
  {
    if (v4 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t google::protobuf::StringPiece::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  v6 = v4 < 1;
  v5 = v4 - 1;
  v6 = v6 || a3 < 1;
  if (v6)
  {
    return -1;
  }

  if (a3 == 1)
  {
    if (v5 >= a4)
    {
      v5 = a4;
    }

    while (*(*a1 + v5) != *a2)
    {
      v6 = v5-- < 1;
      if (v6)
      {
        return -1;
      }
    }
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    do
    {
      v8 = *a2++;
      *(v9 + v8) = 1;
      --a3;
    }

    while (a3);
    if (v5 >= a4)
    {
      v5 = a4;
    }

    while ((*(v9 + *(*a1 + v5)) & 1) == 0)
    {
      v6 = v5-- <= 0;
      if (v6)
      {
        return -1;
      }
    }
  }

  return v5;
}

unint64_t google::protobuf::StringPiece::substr(google::protobuf::StringPiece *this, unint64_t a2)
{
  if (*(this + 1) >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = *(this + 1);
  }

  return *this + v2;
}

uint64_t google::protobuf::io::Tokenizer::Tokenizer(uint64_t a1, uint64_t a2, uint64_t a3, double a4, __n128 a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 56) = 0;
  a5.n128_u64[0] = 0;
  *(a1 + 24) = a5;
  *(a1 + 64) = 0u;
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 140) = 0;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = -1;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 40) = 0;
  *a1 = 0;
  google::protobuf::io::Tokenizer::Refresh(a1);
  return a1;
}

void sub_100136284(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::Refresh(uint64_t this)
{
  v1 = this;
  if (*(this + 136) == 1)
  {
    *(this + 112) = 0;
  }

  else
  {
    v2 = *(this + 152);
    if (v2)
    {
      v3 = *(v1 + 160);
      v4 = *(v1 + 128);
      if (v4 > v3)
      {
        std::string::append(v2, (*(v1 + 120) + v3), v4 - v3);
        *(v1 + 160) = 0;
      }
    }

    v7 = 0;
    *(v1 + 120) = 0;
    *(v1 + 132) = 0;
    while (1)
    {
      this = (*(**(v1 + 96) + 16))(*(v1 + 96), &v7, v1 + 128);
      if ((this & 1) == 0)
      {
        break;
      }

      if (*(v1 + 128))
      {
        v5 = v7;
        *(v1 + 120) = v7;
        v6 = *v5;
        goto LABEL_11;
      }
    }

    v6 = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 1;
LABEL_11:
    *(v1 + 112) = v6;
  }

  return this;
}

void google::protobuf::io::Tokenizer::~Tokenizer(google::protobuf::io::Tokenizer *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  if (v2 > v3)
  {
    (*(**(this + 12) + 24))(*(this + 12), (v2 - v3));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t google::protobuf::io::Tokenizer::NextChar(uint64_t this)
{
  v1 = *(this + 112);
  if (v1 == 9)
  {
    v2 = *(this + 144);
    if (v2 <= 0)
    {
      v3 = -(-v2 & 7);
    }

    else
    {
      v3 = *(this + 144) & 7;
    }

    v4 = v2 - v3 + 8;
  }

  else
  {
    if (v1 == 10)
    {
      *(this + 140) = (*(this + 140) + 1);
      goto LABEL_10;
    }

    v4 = *(this + 144) + 1;
  }

  *(this + 144) = v4;
LABEL_10:
  v5 = *(this + 128);
  v6 = *(this + 132) + 1;
  *(this + 132) = v6;
  if (v6 >= v5)
  {
    return google::protobuf::io::Tokenizer::Refresh(this);
  }

  *(this + 112) = *(*(this + 120) + v6);
  return this;
}

void google::protobuf::io::Tokenizer::ConsumeString(google::protobuf::io::Tokenizer *this, unsigned __int8 a2)
{
  v3 = a2;
  while (1)
  {
    v4 = *(this + 112);
    if (v4 == 10)
    {
      break;
    }

    if (v4 == 92)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v5 = *(this + 112);
      v6 = (v5 - 97) > 0x15 || ((1 << (v5 - 97)) & 0x2A2023) == 0;
      if (!v6 || (v5 - 34) <= 0x3A && ((1 << (v5 - 34)) & 0x400000020000021) != 0 || (v5 & 0xF8) == 0x30)
      {
        goto LABEL_23;
      }

      switch(v5)
      {
        case 'U':
          google::protobuf::io::Tokenizer::NextChar(this);
          if (*(this + 112) != 48)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if (*(this + 112) != 48)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) & 0xFE) != 0x30)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu)
          {
            v12 = *(this + 112) - 65;
            if (v12 > 0x25 || ((1 << v12) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_55;
            }
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu)
          {
            v13 = *(this + 112) - 65;
            if (v13 > 0x25 || ((1 << v13) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_55;
            }
          }

          if ((google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v14 = *(this + 112) - 65, v14 > 0x25) || ((1 << v14) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v15 = *(this + 112) - 65, v15 > 0x25) || ((1 << v15) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v16 = *(this + 112) - 65, v16 > 0x25) || ((1 << v16) & 0x3F0000003FLL) == 0))
          {
LABEL_55:
            sub_1000B347C(__p, "Expected eight hex digits up to 10ffff for \\U escape sequence");
            (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
            goto LABEL_57;
          }

          goto LABEL_23;
        case 'u':
          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu && ((v8 = *(this + 112) - 65, v8 > 0x25) || ((1 << v8) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v9 = *(this + 112) - 65, v9 > 0x25) || ((1 << v9) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v10 = *(this + 112) - 65, v10 > 0x25) || ((1 << v10) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v11 = *(this + 112) - 65, v11 > 0x25) || ((1 << v11) & 0x3F0000003FLL) == 0))
          {
            sub_1000B347C(__p, "Expected four hex digits for \\u escape sequence.");
            (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
            goto LABEL_57;
          }

LABEL_23:
          google::protobuf::io::Tokenizer::NextChar(this);
          break;
        case 'x':
          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) < 0xAu)
          {
            goto LABEL_23;
          }

          v7 = *(this + 112) - 65;
          if (v7 <= 0x25 && ((1 << v7) & 0x3F0000003FLL) != 0)
          {
            goto LABEL_23;
          }

          sub_1000B347C(__p, "Expected hex digits for escape sequence.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
LABEL_57:
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          break;
        default:
          sub_1000B347C(__p, "Invalid escape sequence in string literal.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
          goto LABEL_57;
      }
    }

    else
    {
      if (!*(this + 112))
      {
        sub_1000B347C(__p, "Unexpected end of string.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        goto LABEL_61;
      }

      google::protobuf::io::Tokenizer::NextChar(this);
      if (v4 == v3)
      {
        return;
      }
    }
  }

  if (*(this + 173))
  {
    goto LABEL_23;
  }

  sub_1000B347C(__p, "String literals cannot cross line boundaries.");
  (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
LABEL_61:
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001369C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::ConsumeNumber(google::protobuf::io::Tokenizer *this, int a2, int a3)
{
  if (a2)
  {
    v4 = *(this + 112);
    if ((v4 | 0x20) == 0x78)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      if ((*(this + 112) - 48) > 9u && ((v5 = *(this + 112) - 65, v18 = v5 > 0x25, v6 = (1 << v5) & 0x3F0000003FLL, !v18) ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        sub_1000B347C(__p, "0x must be followed by hex digits.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        do
        {
          do
          {
            google::protobuf::io::Tokenizer::NextChar(this);
          }

          while ((*(this + 112) - 48) < 0xAu);
          v8 = *(this + 112) - 65;
          v18 = v8 > 0x25;
          v9 = (1 << v8) & 0x3F0000003FLL;
        }

        while (!v18 && v9 != 0);
      }

LABEL_14:
      v11 = 0;
      goto LABEL_49;
    }

    if ((v4 - 48) <= 9)
    {
      if ((v4 & 0x38) != 0x30)
      {
        goto LABEL_21;
      }

      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v12 = *(this + 112);
      }

      while ((v12 & 0xF8) == 0x30);
      if ((v12 - 48) <= 9)
      {
LABEL_21:
        sub_1000B347C(__p, "Numbers starting with leading zero must be in octal.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (*(this + 112) - 48 <= 9)
        {
          do
          {
            google::protobuf::io::Tokenizer::NextChar(this);
            v11 = 0;
          }

          while (*(this + 112) - 48 < 0xA);
          goto LABEL_49;
        }
      }

      goto LABEL_14;
    }
  }

  v13 = *(this + 112);
  v14 = v13 - 48;
  if (a3)
  {
    if (v14 <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }
  }

  else
  {
    if (v14 <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }

    if (v13 != 46)
    {
      v11 = 0;
      goto LABEL_35;
    }

    google::protobuf::io::Tokenizer::NextChar(this);
    v13 = *(this + 112);
    if ((v13 - 48) <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }
  }

  v11 = 1;
LABEL_35:
  if ((v13 | 0x20) == 0x65)
  {
    google::protobuf::io::Tokenizer::NextChar(this);
    v15 = *(this + 112);
    if (v15 == 45 || v15 == 43)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
    }

    if (*(this + 112) - 48 > 9)
    {
      sub_1000B347C(__p, "e must be followed by exponent.");
      (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
      }

      while (*(this + 112) - 48 < 0xA);
    }

    v11 = 1;
  }

  if (*(this + 164) == 1)
  {
    v16 = *(this + 112);
    if (v16 == 70 || v16 == 102)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v11 = 1;
    }
  }

LABEL_49:
  v17 = *(this + 112);
  v18 = v17 != 95 && (v17 & 0xFFFFFFDF) - 65 > 0x19;
  if (v18 || *(this + 172) != 1)
  {
    if (v17 != 46)
    {
      goto LABEL_62;
    }

    if (v11)
    {
      sub_1000B347C(__p, "Already saw decimal point or exponent; can't have another one.");
    }

    else
    {
      sub_1000B347C(__p, "Hex and octal numbers must be integers.");
    }

    (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  }

  else
  {
    sub_1000B347C(__p, "Need space between number and identifier.");
    (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  if (v11)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void sub_100136E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::ConsumeLineComment(uint64_t this, uint64_t a2)
{
  v3 = this;
  if (a2)
  {
    *(this + 152) = a2;
    *(this + 160) = *(this + 132);
  }

  while (*(v3 + 112))
  {
    if (*(v3 + 112) == 10)
    {
      this = google::protobuf::io::Tokenizer::NextChar(v3);
      break;
    }

    this = google::protobuf::io::Tokenizer::NextChar(v3);
  }

  if (a2)
  {
    v4 = *(v3 + 132);
    v5 = *(v3 + 160);
    if (v4 != v5)
    {
      this = std::string::append(*(v3 + 152), (*(v3 + 120) + v5), v4 - v5);
    }

    *(v3 + 152) = 0;
    *(v3 + 160) = -1;
  }

  return this;
}

void google::protobuf::io::Tokenizer::ConsumeBlockComment(google::protobuf::io::Tokenizer *this, uint64_t a2)
{
  v4 = *(this + 35);
  v5 = (*(this + 36) - 2);
  if (a2)
  {
    *(this + 19) = a2;
    *(this + 40) = *(this + 33);
  }

  while (1)
  {
    while (1)
    {
      v6 = *(this + 112);
      if (v6 > 0x29)
      {
        break;
      }

      if (*(this + 112))
      {
        if (v6 != 10)
        {
          goto LABEL_22;
        }

        google::protobuf::io::Tokenizer::NextChar(this);
        if (a2)
        {
          v7 = *(this + 33);
          v8 = *(this + 40);
          if (v7 != v8)
          {
            std::string::append(*(this + 19), (*(this + 15) + v8), v7 - v8);
          }

          *(this + 19) = 0;
          *(this + 40) = -1;
        }

        while (1)
        {
          v9 = *(this + 112);
          if (v9 > 0x2A)
          {
            break;
          }

          if (((1 << v9) & 0x100003A00) == 0)
          {
            if (v9 == 42)
            {
              google::protobuf::io::Tokenizer::NextChar(this);
              if (*(this + 112) == 47)
              {
                google::protobuf::io::Tokenizer::NextChar(this);
                return;
              }
            }

            break;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
        }

        if (a2)
        {
          *(this + 19) = a2;
          *(this + 40) = *(this + 33);
        }
      }

      else
      {
LABEL_24:
        if (!v6)
        {
          sub_1000B347C(__p, "End-of-file inside block comment.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          v10 = *(this + 13);
          sub_1000B347C(__p, "  Comment started here.");
          (*(*v10 + 16))(v10, v4, v5, __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          if (a2)
          {
            v11 = *(this + 33);
            v12 = *(this + 40);
            if (v11 != v12)
            {
              std::string::append(*(this + 19), (*(this + 15) + v12), v11 - v12);
            }

            *(this + 19) = 0;
            *(this + 40) = -1;
          }

          return;
        }
      }
    }

    if (v6 == 42)
    {
      break;
    }

    if (v6 == 47)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v6 = *(this + 112);
      if (v6 != 42)
      {
        goto LABEL_24;
      }