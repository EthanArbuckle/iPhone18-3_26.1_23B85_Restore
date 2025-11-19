void sub_213CC5548(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v18 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (v18 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC2C2C(a1, *(a2 + 4 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC56F8(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v18 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (v18 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC2FA8(a1, *(a2 + 8 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC58A8(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v18 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (v18 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC3314(a1, *a4, *(a4 + 16), *(a2 + 4 * v12));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC5A58(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v18 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (v18 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC369C(a1, *a4, *(a4 + 16), *(a2 + 8 * v12));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

uint64_t sub_213CC5C08(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*a4 == 15)
  {
    v10 = *(*(a4 + 8) + 200);
  }

  else
  {
    v10 = 0;
  }

  v11 = (*a1)->__r_.__value_.__r.__words[1];
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v12 = (v11 & ~(v11 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (v14)
      {
        v15 = *a1;
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
          v15 = *a1;
        }

        if ((v15->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      std::string::append(a1[1], v12, 32);
      if (v10)
      {
        v16 = a2 + *(*(a4 + 8) + 216) * v13;
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if ((sub_213CA4B54(a1, v16) & 1) == 0)
      {
        return 0;
      }

      v13 = ++v14;
      if (v14 >= a3)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    std::string::append(a1[1], a5, 32);
    std::string::push_back(a1[1], 93);
    return 1;
  }
}

char *sub_213CC5D78(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 12);
  if (v3 <= 5)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v10 = *a1;
        v11 = *(a1 + 8);
        if (v11 <= 3)
        {
          if (v11 > 1)
          {
            v12 = *v10;
          }

          else
          {
            v12 = *v10;
          }

          return v12;
        }

        if (v11 > 7)
        {
          return *v10;
        }

        return *v10;
      }

      if (v3 == 5)
      {
        sub_213CC6C7C(v25, a1);
        v26 = 0;
        if (sub_213C98C40(&v26, v25[0], 10, 1))
        {
          return v26;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      if (v3 == 1)
      {
LABEL_17:
        v4 = *a1;
        v9 = *(a1 + 8);
        if (v9 <= 3)
        {
          if (v9 > 1)
          {
            return *v4;
          }

          else
          {
            return *v4;
          }
        }

        if (v9 <= 7)
        {
          return *v4;
        }

        return *v4;
      }

      if (v3 != 2)
      {
        return result;
      }

      v4 = *a1;
      v5 = *(a1 + 8);
      if (v5 > 3)
      {
        if (v5 <= 7)
        {
          return *v4;
        }

        return *v4;
      }

      if (v5 > 1)
      {
        return *v4;
      }

      else
      {
        return *v4;
      }
    }
  }

  else
  {
    if (v3 > 7)
    {
      if (v3 != 8)
      {
        if (v3 != 26)
        {
          if (v3 == 10)
          {
            sub_213CC6878(v25, a1);
            return v25[2];
          }

          return result;
        }

        goto LABEL_17;
      }

      v15 = *a1;
      v16 = *(a1 + 8);
      if (v16 > 3)
      {
        if (v16 > 7)
        {
          v17 = *v15;
        }

        else
        {
          v17 = *v15;
        }
      }

      else if (v16 > 1)
      {
        v17 = *v15;
      }

      else
      {
        v17 = *v15;
      }

      v23 = -v17;
      v24 = *(a1 + 9);
      if (v24 <= 3)
      {
        if (v24 > 1)
        {
          v12 = *&v15[v23];
        }

        else
        {
          v12 = v15[v23];
        }

        return v12;
      }

      if (v24 > 7)
      {
        return *&v15[v23];
      }

      return *&v15[v23];
    }

    if (v3 != 6)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7 > 3)
      {
        if (v7 > 7)
        {
          v8 = *v6;
        }

        else
        {
          v8 = *v6;
        }
      }

      else if (v7 > 1)
      {
        v8 = *v6;
      }

      else
      {
        v8 = *v6;
      }

      v19 = -v8;
      v22 = *(a1 + 9);
      if (v22 <= 3)
      {
        if (v22 > 1)
        {
          return *&v6[v19];
        }

        else
        {
          return v6[v19];
        }
      }

      if (v22 <= 7)
      {
        return *&v6[v19];
      }

      return *&v6[v19];
    }

    v6 = *a1;
    v13 = *(a1 + 8);
    if (v13 > 3)
    {
      if (v13 > 7)
      {
        v14 = *v6;
      }

      else
      {
        v14 = *v6;
      }
    }

    else if (v13 > 1)
    {
      v14 = *v6;
    }

    else
    {
      v14 = *v6;
    }

    v19 = -v14;
    v20 = *(a1 + 9);
    if (v20 > 3)
    {
      if (v20 <= 7)
      {
        return *&v6[v19];
      }

      return *&v6[v19];
    }

    if (v20 > 1)
    {
      return *&v6[v19];
    }

    else
    {
      return v6[v19];
    }
  }

  return result;
}

char *sub_213CC606C(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 12);
  if (v3 <= 5)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v9 = *a1;
        v10 = *(a1 + 8);
        if (v10 <= 3)
        {
          if (v10 > 1)
          {
            v11 = *v9;
          }

          else
          {
            v11 = *v9;
          }

          return v11;
        }

        if (v10 > 7)
        {
          return *v9;
        }

        return *v9;
      }

      if (v3 == 5)
      {
        sub_213CC6C7C(v25, a1);
        v26 = 0;
        if (sub_213C97BE4(&v26, v25[0], 10, 1))
        {
          return v26;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          return result;
        }

LABEL_10:
        v4 = *a1;
        v5 = *(a1 + 8);
        if (v5 <= 3)
        {
          if (v5 > 1)
          {
            return *v4;
          }

          else
          {
            return *v4;
          }
        }

        if (v5 <= 7)
        {
          return *v4;
        }

        return *v4;
      }

      v4 = *a1;
      v14 = *(a1 + 8);
      if (v14 > 3)
      {
        if (v14 <= 7)
        {
          return *v4;
        }

        return *v4;
      }

      if (v14 > 1)
      {
        return *v4;
      }

      else
      {
        return *v4;
      }
    }
  }

  else
  {
    if (v3 > 7)
    {
      if (v3 != 8)
      {
        if (v3 != 26)
        {
          if (v3 == 10)
          {
            sub_213CC6878(v25, a1);
            return v25[2];
          }

          return result;
        }

        goto LABEL_10;
      }

      v15 = *a1;
      v16 = *(a1 + 8);
      if (v16 > 3)
      {
        if (v16 > 7)
        {
          v17 = *v15;
        }

        else
        {
          v17 = *v15;
        }
      }

      else if (v16 > 1)
      {
        v17 = *v15;
      }

      else
      {
        v17 = *v15;
      }

      v23 = -v17;
      v24 = *(a1 + 9);
      if (v24 <= 3)
      {
        if (v24 > 1)
        {
          v11 = *&v15[v23];
        }

        else
        {
          v11 = v15[v23];
        }

        return v11;
      }

      if (v24 > 7)
      {
        return *&v15[v23];
      }

      return *&v15[v23];
    }

    if (v3 != 6)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7 > 3)
      {
        if (v7 > 7)
        {
          v8 = *v6;
        }

        else
        {
          v8 = *v6;
        }
      }

      else if (v7 > 1)
      {
        v8 = *v6;
      }

      else
      {
        v8 = *v6;
      }

      v19 = -v8;
      v22 = *(a1 + 9);
      if (v22 <= 3)
      {
        if (v22 > 1)
        {
          return *&v6[v19];
        }

        else
        {
          return v6[v19];
        }
      }

      if (v22 <= 7)
      {
        return *&v6[v19];
      }

      return *&v6[v19];
    }

    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12 > 3)
    {
      if (v12 > 7)
      {
        v13 = *v6;
      }

      else
      {
        v13 = *v6;
      }
    }

    else if (v12 > 1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *v6;
    }

    v19 = -v13;
    v20 = *(a1 + 9);
    if (v20 > 3)
    {
      if (v20 <= 7)
      {
        return *&v6[v19];
      }

      return *&v6[v19];
    }

    if (v20 > 1)
    {
      return *&v6[v19];
    }

    else
    {
      return v6[v19];
    }
  }

  return result;
}

double sub_213CC6360(uint64_t a1)
{
  v1 = *(a1 + 12);
  result = 0.0;
  if (v1 > 5)
  {
    if (v1 > 7)
    {
      if (v1 != 8)
      {
        if (v1 != 26)
        {
          if (v1 == 10)
          {
            sub_213CC6878(v28, a1);
            return v28[2];
          }

          return result;
        }

        goto LABEL_10;
      }

      v18 = *a1;
      v19 = *(a1 + 8);
      if (v19 > 3)
      {
        if (v19 > 7)
        {
          v20 = *v18;
        }

        else
        {
          v20 = *v18;
        }
      }

      else if (v19 > 1)
      {
        v20 = *v18;
      }

      else
      {
        v20 = *v18;
      }

      v26 = -v20;
      v27 = *(a1 + 9);
      if (v27 <= 3)
      {
        if (v27 > 1)
        {
          return *(v18 + v26);
        }

        else
        {
          return *(v18 + v26);
        }
      }

      if (v27 > 7)
      {
        return *(v18 + v26);
      }

      return *(v18 + v26);
    }

    if (v1 != 6)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7 > 3)
      {
        if (v7 > 7)
        {
          v8 = *v6;
        }

        else
        {
          v8 = *v6;
        }
      }

      else if (v7 > 1)
      {
        v8 = *v6;
      }

      else
      {
        v8 = *v6;
      }

      v24 = -v8;
      v25 = *(a1 + 9);
      if (v25 > 3)
      {
        if (v25 > 7)
        {
          return *(v6 + v24);
        }

        else
        {
          return *(v6 + v24);
        }
      }

      else if (v25 > 1)
      {
        return *(v6 + v24);
      }

      else
      {
        return *(v6 + v24);
      }
    }

    v12 = *a1;
    v13 = *(a1 + 8);
    if (v13 > 3)
    {
      if (v13 > 7)
      {
        v14 = *v12;
      }

      else
      {
        v14 = *v12;
      }
    }

    else if (v13 > 1)
    {
      v14 = *v12;
    }

    else
    {
      v14 = *v12;
    }

    v22 = -v14;
    v23 = *(a1 + 9);
    if (v23 > 3)
    {
      if (v23 > 7)
      {
        return *(v12 + v22);
      }

      else
      {
        return *(v12 + v22);
      }
    }

    else if (v23 > 1)
    {
      return *(v12 + v22);
    }

    else
    {
      return *(v12 + v22);
    }
  }

  if (v1 <= 2)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        return result;
      }

LABEL_10:
      v3 = *a1;
      v4 = *(a1 + 8);
      if (v4 > 3)
      {
        if (v4 > 7)
        {
          return *v3;
        }

        else
        {
          return *v3;
        }
      }

      else if (v4 > 1)
      {
        return *v3;
      }

      else
      {
        return *v3;
      }
    }

    v15 = *a1;
    v16 = *(a1 + 8);
    if (v16 > 3)
    {
      if (v16 > 7)
      {
        return *v15;
      }

      else
      {
        return *v15;
      }
    }

    else if (v16 > 1)
    {
      return *v15;
    }

    else
    {
      return *v15;
    }
  }

  if (v1 == 3)
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    if (v10 <= 3)
    {
      if (v10 > 1)
      {
        return *v9;
      }

      else
      {
        return *v9;
      }
    }

    if (v10 > 7)
    {
      return *v9;
    }

    return *v9;
  }

  if (v1 == 5)
  {
    v29 = 0.0;
    sub_213CC6C7C(v28, a1);
    sub_213CBED98(&v29, v28[0]);
    return v29;
  }

  return result;
}

BOOL sub_213CC665C(uint64_t a1)
{
  if (*(a1 + 12) == 26)
  {
    v1 = *a1;
    v2 = *(a1 + 8);
    if (v2 > 3)
    {
      if (v2 > 7)
      {
        v3 = *v1;
      }

      else
      {
        v3 = *v1;
      }
    }

    else if (v2 > 1)
    {
      v3 = *v1;
    }

    else
    {
      v3 = *v1;
    }
  }

  else
  {
    v3 = sub_213CC606C(a1);
  }

  return v3 != 0;
}

uint64_t sub_213CC66CC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = (a2 - 3 * a3);
  if (a3 > 3u)
  {
    if (a3 < 8u)
    {
      v5 = v3 - *v3;
      v6 = *(v3 + a3);
      goto LABEL_9;
    }

    v4 = *v3;
  }

  else
  {
    if (a3 >= 2u)
    {
      v5 = v3 - *v3;
      LOWORD(v6) = *(v3 + a3);
      goto LABEL_9;
    }

    v4 = *v3;
  }

  v5 = v3 - v4;
  LOBYTE(v6) = *(v3 + a3);
LABEL_9:
  v7 = v6;
  *result = v5;
  *(result + 8) = v6;
  v8 = -v6;
  if (v7 > 3)
  {
    if (v7 > 7)
    {
      v9 = *&v5[v8];
    }

    else
    {
      v9 = *&v5[v8];
    }
  }

  else if (v7 > 1)
  {
    v9 = *&v5[v8];
  }

  else
  {
    v9 = v5[v8];
  }

  *(result + 16) = v9;
  *(result + 24) = 4;
  return result;
}

std::string *sub_213CC6780(std::string *a1, uint64_t a2, uint64_t a3)
{
  std::string::append(a1, "[ ");
  v6 = *(a2 + 16);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      if (i)
      {
        std::string::append(a1, ", ");
        v6 = *(a2 + 16);
      }

      if (v6 <= i)
      {
        v10 = 0;
        v11 = 257;
      }

      else
      {
        v8 = *(a2 + 8);
        v9 = *(*a2 + v6 * v8 + i);
        v10 = *a2 + i * v8;
        v11 = ((v9 >> 2) << 32) | ((1 << (v9 & 3)) << 8) | v8;
      }

      v13[0] = v10;
      v13[1] = v11;
      sub_213CC16F8(v13, a3, a1);
      v6 = *(a2 + 16);
    }
  }

  return std::string::append(a1, " ]");
}

uint64_t sub_213CC6878(uint64_t result, unsigned int **a2)
{
  if ((*(a2 + 3) - 9) > 1)
  {
    v5 = 0;
    *result = &unk_213CC7D0D;
    *(result + 8) = 1;
  }

  else
  {
    v2 = *a2;
    v3 = *(a2 + 8);
    if (v3 > 3)
    {
      if (v3 > 7)
      {
        v4 = *v2;
      }

      else
      {
        v4 = *v2;
      }
    }

    else if (v3 > 1)
    {
      v4 = *v2;
    }

    else
    {
      v4 = *v2;
    }

    v6 = v2 - v4;
    v7 = *(a2 + 9);
    *result = v6;
    *(result + 8) = v7;
    if (v7 > 3)
    {
      if (v7 > 7)
      {
        v5 = *&v6[-v7];
      }

      else
      {
        v5 = *&v6[-v7];
      }
    }

    else if (v7 > 1)
    {
      v5 = *&v6[-v7];
    }

    else
    {
      v5 = v6[-v7];
    }
  }

  *(result + 16) = v5;
  return result;
}

std::string *sub_213CC6930(std::string *a1, uint64_t a2, uint64_t a3)
{
  std::string::append(a1, "[ ");
  v6 = *(a2 + 16);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      if (i)
      {
        std::string::append(a1, ", ");
        v6 = *(a2 + 16);
      }

      if (v6 <= i)
      {
        v9 = 0;
        v10 = 257;
      }

      else
      {
        v8 = *(a2 + 8);
        v9 = *a2 + i * v8;
        v10 = v8 | (*(a2 + 24) << 32) | 0x100;
      }

      v12[0] = v9;
      v12[1] = v10;
      sub_213CC16F8(v12, a3, a1);
      v6 = *(a2 + 16);
    }
  }

  return std::string::append(a1, " ]");
}

uint64_t sub_213CC6A10(uint64_t result, unsigned int **a2)
{
  v2 = *(a2 + 3);
  if ((v2 - 11) < 5 || v2 == 36)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    if (v4 > 3)
    {
      if (v4 > 7)
      {
        v5 = *v3;
      }

      else
      {
        v5 = *v3;
      }
    }

    else if (v4 > 1)
    {
      v5 = *v3;
    }

    else
    {
      v5 = *v3;
    }

    v7 = v3 - v5;
    v8 = *(a2 + 9);
    v6 = v2 - 10;
    *result = v7;
    *(result + 8) = v8;
    if (v8 > 3)
    {
      if (v8 > 7)
      {
        v9 = *&v7[-v8];
      }

      else
      {
        v9 = *&v7[-v8];
      }
    }

    else if (v8 > 1)
    {
      v9 = *&v7[-v8];
    }

    else
    {
      v9 = v7[-v8];
    }

    *(result + 16) = v9;
    if (v6 == 5)
    {
      v6 = 4;
    }
  }

  else
  {
    *result = &unk_213CC7D12;
    v6 = 1;
    *(result + 8) = 1;
    *(result + 16) = 0;
  }

  *(result + 24) = v6;
  return result;
}

std::string *sub_213CC6AE4(std::string *a1, uint64_t a2, uint64_t a3)
{
  std::string::append(a1, "[ ");
  LODWORD(v6) = *(a2 + 16);
  if (*(a2 + 16))
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        std::string::append(a1, ", ");
        LODWORD(v6) = *(a2 + 16);
      }

      if (v7 >= v6)
      {
        v9 = 0;
        v10 = 257;
      }

      else
      {
        v8 = *(a2 + 8);
        v9 = *a2 + v7 * v8;
        v10 = v8 | (*(a2 + 12) << 32) | 0x100;
      }

      v12[0] = v9;
      v12[1] = v10;
      sub_213CC16F8(v12, a3, a1);
      ++v7;
      v6 = *(a2 + 16);
    }

    while (v7 < v6);
  }

  return std::string::append(a1, " ]");
}

uint64_t sub_213CC6BC4(uint64_t result, unsigned int **a2)
{
  v2 = *(a2 + 3);
  if (v2 == 25 || v2 == 5)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (v5 > 3)
    {
      if (v5 > 7)
      {
        v6 = *v4;
      }

      else
      {
        v6 = *v4;
      }
    }

    else if (v5 > 1)
    {
      v6 = *v4;
    }

    else
    {
      v6 = *v4;
    }

    v8 = v4 - v6;
    v9 = *(a2 + 9);
    *result = v8;
    *(result + 8) = v9;
    if (v9 > 3)
    {
      if (v9 > 7)
      {
        v7 = *&v8[-v9];
      }

      else
      {
        v7 = *&v8[-v9];
      }
    }

    else if (v9 > 1)
    {
      v7 = *&v8[-v9];
    }

    else
    {
      v7 = v8[-v9];
    }
  }

  else
  {
    v7 = 0;
    *result = &unk_213CC7D13;
    *(result + 8) = 1;
  }

  *(result + 16) = v7;
  return result;
}

size_t sub_213CC6C7C(uint64_t a1, const char **a2)
{
  v3 = *(a2 + 3);
  if (v3 == 4)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    if (v8 > 3)
    {
      if (v8 > 7)
      {
        v9 = *v7;
      }

      else
      {
        v9 = *v7;
      }
    }

    else if (v8 > 1)
    {
      v9 = *v7;
    }

    else
    {
      v9 = *v7;
    }

    v13 = &v7[-v9];
    v14 = *(a2 + 9);
    result = strlen(&v7[-v9]);
    *a1 = v13;
    *(a1 + 8) = v14;
  }

  else if (v3 == 5)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (v5 > 3)
    {
      if (v5 > 7)
      {
        v6 = *v4;
      }

      else
      {
        v6 = *v4;
      }
    }

    else if (v5 > 1)
    {
      v6 = *v4;
    }

    else
    {
      v6 = *v4;
    }

    v11 = v4 - v6;
    v12 = *(a2 + 9);
    *a1 = v11;
    *(a1 + 8) = v12;
    if (v12 > 3)
    {
      if (v12 > 7)
      {
        result = *&v11[-v12];
      }

      else
      {
        result = *&v11[-v12];
      }
    }

    else if (v12 > 1)
    {
      result = *&v11[-v12];
    }

    else
    {
      result = v11[-v12];
    }
  }

  else
  {
    result = 0;
    *a1 = &unk_213CC7D0C;
    *(a1 + 8) = 1;
  }

  *(a1 + 16) = result;
  return result;
}

_DWORD *sub_213CC6DB4(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 2) + 1;
  if (v4 >> 62)
  {
    sub_213C97BD4();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 1 > v4)
  {
    v4 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 62))
    {
      operator new();
    }

    sub_213C97BD4();
  }

  v8 = (4 * (v3 >> 2));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

BOOL flatbuffers::FileExistsRaw(flatbuffers *this, const char *a2)
{
  v5[72] = *MEMORY[0x277D85DE8];
  sub_213CC6F34(v5);
  v2 = *(&v5[4] + *(v5[0] - 24)) == 0;
  sub_213CAA738(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t *sub_213CC6F34(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 24;
  v3 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v4 = *(MEMORY[0x277D82808] + 16);
  v5 = *(MEMORY[0x277D82808] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v2;
  a1[53] = v3;
  MEMORY[0x21604CFF0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

BOOL flatbuffers::LoadFileRaw(const char *a1, int a2, std::string *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (stat(a1, &v15) || (v15.st_mode & 0x4000) == 0)
  {
    sub_213CC6F34(&v15.st_dev);
    if (v15.st_qspare[1])
    {
      if (a2)
      {
        std::istream::seekg();
        std::istream::tellg();
        std::string::resize(a3, __n, 0);
        std::istream::seekg();
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v10 = a3;
          v9 = a3->__r_.__value_.__r.__words[0];
          size = v10->__r_.__value_.__l.__size_;
        }

        std::istream::read();
      }

      else
      {
        sub_213CAA838(v13);
        std::ostream::operator<<();
        std::stringbuf::str();
        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(a3->__r_.__value_.__l.__data_);
        }

        *&a3->__r_.__value_.__l.__data_ = v11;
        a3->__r_.__value_.__r.__words[2] = v12;
        sub_213CAA9DC(v13);
      }

      v5 = (*(&v15.st_atimespec.tv_sec + *(*&v15.st_dev - 24)) & 1) == 0;
    }

    else
    {
      v5 = 0;
    }

    sub_213CAA738(&v15);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

std::string *flatbuffers::ConCatPathFileName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_213C9D958(a3, *a1, *(a1 + 8));
  }

  else
  {
    *a3 = *a1;
    *(a3 + 16) = *(a1 + 16);
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v5)
  {
    v7 = v6 >= 0 ? a3 : *a3;
    v8 = v7 + v5;
    v9 = *(v8 - 1);
    if (v9 != 47)
    {
      if (v9 == 92)
      {
        *(v8 - 1) = 47;
      }

      else
      {
        std::string::push_back(a3, 47);
      }
    }
  }

  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  result = std::string::append(a3, v11, v12);
  if (*(a3 + 23) >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (*v14 == 46 && v14[1] == 47)
  {

    return std::string::erase(a3, 0, 2uLL);
  }

  return result;
}

void flatbuffers::PosixPath(flatbuffers *this@<X0>, uint64_t a2@<X8>)
{
  v5 = strlen(this);
  std::string::__init(a2, this, v5);
  v6 = *(a2 + 23);
  v7 = *a2;
  if (v6 >= 0)
  {
    v7 = a2;
  }

  if (v6 < 0)
  {
    v6 = *(a2 + 8);
  }

  for (; v6; --v6)
  {
    if (*v7 == 92)
    {
      *v7 = 47;
    }

    ++v7;
  }
}

void flatbuffers::AbsolutePath(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = realpath_DARWIN_EXTSN(a1, 0);
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  if (v4)
  {
    v5 = v4;
    v2 = __p;
    MEMORY[0x21604CF40](__p, v4);
    free(v5);
  }

  if (*(v2 + 23) < 0)
  {
    sub_213C9D958(a2, *v2, v2[1]);
  }

  else
  {
    *a2 = *v2;
    *(a2 + 16) = v2[2];
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D8]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
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