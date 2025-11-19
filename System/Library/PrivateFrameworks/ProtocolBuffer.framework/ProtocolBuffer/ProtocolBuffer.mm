void *PBDataWriterRecallMark(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 8);
  v5 = result[1];
  v6 = result[2];
  v7 = *a2;
  v8 = v5 - (*a2 + v6);
  v9 = -1;
  v10 = v8;
  do
  {
    ++v9;
    v11 = v10 > 0x7F;
    v10 >>= 7;
  }

  while (v11);
  if (v9)
  {
    v12 = result[3];
    if (v12 < v5 + v9)
    {
      v13 = v12 - v6;
      if (v13 <= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = v13;
      }

      [(PBMutableData *)result _pb_growCapacityBy:v14];
      v6 = *(*(a1 + 8) + 16);
      v7 = *a2;
    }

    result = memmove((v6 + v7 + v9), (v6 + v7), v8);
    v6 = *(*(a1 + 8) + 16);
    v7 = *a2;
  }

  v15 = (v6 + v7 - 1);
  if (v8 < 0x80)
  {
    LOBYTE(v16) = v8;
  }

  else
  {
    do
    {
      *v15++ = v8 | 0x80;
      v16 = v8 >> 7;
      v17 = v8 >> 14;
      v8 >>= 7;
    }

    while (v17);
  }

  *v15 = v16;
  *(*(a1 + 8) + 8) += v9;
  return result;
}

void PBDataWriterWriteStringField(uint64_t a1, void *a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 length] <= 0xA5 && (__n = 0, objc_msgSend(v5, "getBytes:maxLength:usedLength:encoding:options:range:remainingRange:", __src, 1000, &__n, 4, 4, 0, objc_msgSend(v5, "length"), 0)))
  {
    v6 = __n;
    v7 = *(a1 + 8);
    v8 = v7[3];
    if (v8 < v7[1] + __n + 16)
    {
      if (v8 - v7[2] <= __n + 16)
      {
        v9 = __n + 16;
      }

      else
      {
        v9 = v8 - v7[2];
      }

      [(PBMutableData *)v7 _pb_growCapacityBy:v9];
      v7 = *(a1 + 8);
    }

    if (a3 != -1)
    {
      v10 = (8 * a3) | 2u;
      v11 = v7[1];
      if ((8 * a3) < 0x80)
      {
        LOBYTE(v12) = (8 * a3) | 2;
      }

      else
      {
        do
        {
          *v11++ = v10 | 0x80;
          v12 = v10 >> 7;
          v13 = v10 >> 14;
          v10 >>= 7;
        }

        while (v13);
      }

      *v11 = v12;
      *(*(a1 + 8) + 8) = v11 + 1;
      v7 = *(a1 + 8);
    }

    v37 = v7[1];
    if (v6 < 0x80)
    {
      LOBYTE(v39) = v6;
    }

    else
    {
      v38 = v6;
      do
      {
        *v37++ = v38 | 0x80;
        v39 = v38 >> 7;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
    }

    *v37 = v39;
    *(*(a1 + 8) + 8) = v37 + 1;
    memcpy(*(*(a1 + 8) + 8), __src, v6);
    *(*(a1 + 8) + 8) += v6;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [v5 dataUsingEncoding:4];
    if ([v15 length])
    {
      v16 = [v15 bytes];
      v17 = [v15 length];
      v18 = *(a1 + 8);
      v19 = v18[3];
      if (v19 < v18[1] + v17 + 16)
      {
        if (v19 - v18[2] <= v17 + 16)
        {
          v20 = v17 + 16;
        }

        else
        {
          v20 = v19 - v18[2];
        }

        [(PBMutableData *)v18 _pb_growCapacityBy:v20];
        v18 = *(a1 + 8);
      }

      if (a3 != -1)
      {
        v21 = (8 * a3) | 2u;
        v22 = v18[1];
        if ((8 * a3) < 0x80)
        {
          LOBYTE(v23) = (8 * a3) | 2;
        }

        else
        {
          do
          {
            *v22++ = v21 | 0x80;
            v23 = v21 >> 7;
            v24 = v21 >> 14;
            v21 >>= 7;
          }

          while (v24);
        }

        *v22 = v23;
        *(*(a1 + 8) + 8) = v22 + 1;
        v18 = *(a1 + 8);
      }

      v32 = v18[1];
      if (v17 < 0x80)
      {
        LOBYTE(v34) = v17;
      }

      else
      {
        v33 = v17;
        do
        {
          *v32++ = v33 | 0x80;
          v34 = v33 >> 7;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
      }

      *v32 = v34;
      *(*(a1 + 8) + 8) = v32 + 1;
      memcpy(*(*(a1 + 8) + 8), v16, v17);
      *(*(a1 + 8) + 8) += v17;
    }

    else
    {
      v25 = *(a1 + 8);
      v26 = v25[3];
      if (v26 < v25[1] + 16)
      {
        if (v26 - v25[2] <= 0x10)
        {
          v27 = 16;
        }

        else
        {
          v27 = v26 - v25[2];
        }

        [(PBMutableData *)v25 _pb_growCapacityBy:v27];
        v25 = *(a1 + 8);
      }

      if (a3 != -1)
      {
        v28 = (8 * a3) | 2u;
        v29 = v25[1];
        if ((8 * a3) < 0x80)
        {
          LOBYTE(v30) = (8 * a3) | 2;
        }

        else
        {
          do
          {
            *v29++ = v28 | 0x80;
            v30 = v28 >> 7;
            v31 = v28 >> 14;
            v28 >>= 7;
          }

          while (v31);
        }

        *v29 = v30;
        *(*(a1 + 8) + 8) = v29 + 1;
        v25 = *(a1 + 8);
      }

      v36 = v25[1];
      *v36 = 0;
      *(*(a1 + 8) + 8) = v36 + 1;
    }

    objc_autoreleasePoolPop(v14);
  }

  v41 = *MEMORY[0x1E69E9840];
}

id PBReaderReadString(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v15 = 0;
    v5 = [v1 position] + 1;
    if (v5 >= [v1 position] && (v6 = objc_msgSend(v1, "position") + 1, v6 <= objc_msgSend(v1, "length")))
    {
      v7 = [v1 data];
      [v7 getBytes:&v15 range:{objc_msgSend(v1, "position"), 1}];

      [v1 setPosition:{objc_msgSend(v1, "position") + 1}];
    }

    else
    {
      [v1 _setError];
    }

    v4 |= (v15 & 0x7F) << v2;
    if ((v15 & 0x80) == 0)
    {
      break;
    }

    v2 += 7;
    if (v3++ >= 9)
    {
      v9 = 0;
      goto LABEL_13;
    }
  }

  if ([v1 hasError])
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

LABEL_13:
  if (v1[2])
  {
    goto LABEL_17;
  }

  v10 = [v1 position] + v9;
  if (v10 < [v1 position] || (v11 = objc_msgSend(v1, "position") + v9, v11 > objc_msgSend(v1, "length")))
  {
    [v1 _setError];
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v14 = [v1[4] subdataWithRange:{v1[1], v9}];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v14 encoding:4];
  v1[1] = v1[1] + v9;

LABEL_18:

  return v12;
}

uint64_t PBReaderPlaceMark(void *a1, unint64_t *a2)
{
  v3 = a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v16 = 0;
    v7 = [v3 position] + 1;
    if (v7 >= [v3 position] && (v8 = objc_msgSend(v3, "position") + 1, v8 <= objc_msgSend(v3, "length")))
    {
      v9 = [v3 data];
      [v9 getBytes:&v16 range:{objc_msgSend(v3, "position"), 1}];

      [v3 setPosition:{objc_msgSend(v3, "position") + 1}];
    }

    else
    {
      [v3 _setError];
    }

    v6 |= (v16 & 0x7F) << v4;
    if ((v16 & 0x80) == 0)
    {
      break;
    }

    v4 += 7;
    if (v5++ >= 9)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  v12 = [v3 hasError];
  v11 = v6;
  if (v12)
  {
    v11 = 0;
  }

LABEL_12:
  if (*(v3 + 16))
  {
    v13 = 0;
  }

  else
  {
    v14 = *(v3 + 1) + v11;
    if (v14 <= *(v3 + 3))
    {
      *a2 = v14;
      a2[1] = *(v3 + 3);
      *(v3 + 3) = *(v3 + 1) + v11;
      v13 = 1;
    }

    else
    {
      v13 = 0;
      *(v3 + 16) = 1;
    }
  }

  return v13;
}

id PBReaderReadData(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v14 = 0;
    v5 = [v1 position] + 1;
    if (v5 >= [v1 position] && (v6 = objc_msgSend(v1, "position") + 1, v6 <= objc_msgSend(v1, "length")))
    {
      v7 = [v1 data];
      [v7 getBytes:&v14 range:{objc_msgSend(v1, "position"), 1}];

      [v1 setPosition:{objc_msgSend(v1, "position") + 1}];
    }

    else
    {
      [v1 _setError];
    }

    v4 |= (v14 & 0x7F) << v2;
    if ((v14 & 0x80) == 0)
    {
      break;
    }

    v2 += 7;
    if (v3++ >= 9)
    {
      v9 = 0;
      goto LABEL_13;
    }
  }

  if ([v1 hasError])
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

LABEL_13:
  if (v1[2])
  {
    goto LABEL_17;
  }

  v10 = [v1 position] + v9;
  if (v10 < [v1 position] || (v11 = objc_msgSend(v1, "position") + v9, v11 > objc_msgSend(v1, "length")))
  {
    [v1 _setError];
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = [v1[4] subdataWithRange:{v1[1], v9}];
  v1[1] = v1[1] + v9;
LABEL_18:

  return v12;
}

void *PBDataWriterWriteSubmessage(uint64_t a1, void *a2, int a3)
{
  v7 = 0;
  v5 = a2;
  PBDataWriterPlaceMark(a1, &v7, a3);
  [v5 writeTo:a1];

  return PBDataWriterRecallMark(a1, &v7);
}

void *PBDataWriterPlaceMark(uint64_t a1, void *a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 10)
  {
    if (v7 - result[2] <= 0xA)
    {
      v8 = 10;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3) | 2u;
    v10 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v11) = (8 * a3) | 2;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  ++result[1];
  *a2 = *(*(a1 + 8) + 8) - *(*(a1 + 8) + 16);
  return result;
}

void *PBDataWriterWriteDoubleField(uint64_t a1, int a2, double a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 24)
  {
    if (v7 - result[2] <= 0x18)
    {
      v8 = 24;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a2 != -1)
  {
    v9 = (8 * a2) | 1u;
    v10 = result[1];
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a3;
  *(*(a1 + 8) + 8) += 8;
  return result;
}

void PBDataWriterWriteDataField(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 length] + 16;
  v7 = *(a1 + 8);
  v8 = v7[3];
  if (v8 < v7[1] + v6)
  {
    if (v8 - v7[2] <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8 - v7[2];
    }

    [(PBMutableData *)v7 _pb_growCapacityBy:v9];
    v7 = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v10 = (8 * a3) | 2u;
    v11 = v7[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v12) = (8 * a3) | 2;
    }

    else
    {
      do
      {
        *v11++ = v10 | 0x80;
        v12 = v10 >> 7;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
    }

    *v11 = v12;
    *(*(a1 + 8) + 8) = v11 + 1;
    v7 = *(a1 + 8);
  }

  v14 = v7[1];
  v15 = [v5 length];
  if (v15 < 0x80)
  {
    LOBYTE(v16) = v15;
  }

  else
  {
    do
    {
      *v14++ = v15 | 0x80;
      v16 = v15 >> 7;
      v17 = v15 >> 14;
      v15 >>= 7;
    }

    while (v17);
  }

  *v14 = v16;
  *(*(a1 + 8) + 8) = v14 + 1;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __PBDataWriterWriteDataField_block_invoke;
  v18[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32lu32l8;
  v18[4] = a1;
  [v5 enumerateByteRangesUsingBlock:v18];
}

void *__PBDataWriterWriteDataField_block_invoke(uint64_t a1, const void *a2, int a3, size_t __n)
{
  result = memcpy(*(*(*(a1 + 32) + 8) + 8), a2, __n);
  *(*(*(a1 + 32) + 8) + 8) += __n;
  return result;
}

void *PBDataWriterWriteUint32Field(uint64_t a1, unsigned int a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    v8 = v7 - result[2];
    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    [(PBMutableData *)result _pb_growCapacityBy:v9];
    result = *(a1 + 8);
  }

  v10 = a2;
  if (a3 != -1)
  {
    v11 = (8 * a3);
    v12 = result[1];
    if (v11 < 0x80)
    {
      LOBYTE(v13) = 8 * a3;
    }

    else
    {
      do
      {
        *v12++ = v11 | 0x80;
        v13 = v11 >> 7;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
    }

    *v12 = v13;
    *(*(a1 + 8) + 8) = v12 + 1;
    result = *(a1 + 8);
  }

  v15 = result[1];
  if (a2 < 0x80)
  {
    LOBYTE(v16) = a2;
  }

  else
  {
    do
    {
      *v15++ = v10 | 0x80;
      v16 = v10 >> 7;
      v17 = v10 >> 14;
      v10 >>= 7;
    }

    while (v17);
  }

  *v15 = v16;
  *(*(a1 + 8) + 8) = v15 + 1;
  return result;
}

__n128 PB::Reader::recallMark(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 8) = *a2;
  return result;
}

std::string *PB::Reader::read(std::string *result, std::string *this)
{
  v2 = result;
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

  size = result->__r_.__value_.__l.__size_;
  if (size < 0xFFFFFFFFFFFFFFF6 && size + 10 <= result->__r_.__value_.__r.__words[2])
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = (result->__r_.__value_.__r.__words[0] + size);
    v14 = size + 1;
    while (1)
    {
      v7 = v14;
      result->__r_.__value_.__l.__size_ = v14;
      v15 = *v13++;
      v12 |= (v15 & 0x7F) << v10;
      if ((v15 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      ++v14;
      v9 = v11++ > 8;
      if (v9)
      {
LABEL_17:
        v12 = 0;
        break;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = size + 1;
      if (size == -1)
      {
        size = -1;
LABEL_19:
        v12 = 0;
        result[1].__r_.__value_.__s.__data_[0] = 1;
        v7 = size;
        goto LABEL_23;
      }

      if (v7 > result->__r_.__value_.__r.__words[2])
      {
        goto LABEL_19;
      }

      v8 = *(result->__r_.__value_.__r.__words[0] + size);
      result->__r_.__value_.__l.__size_ = v7;
      v6 |= (v8 & 0x7F) << v4;
      if ((v8 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      size = v7;
      v9 = v5++ > 8;
      if (v9)
      {
        goto LABEL_17;
      }
    }

    if (result[1].__r_.__value_.__s.__data_[0])
    {
      v12 = 0;
    }

    else
    {
      v12 = v6;
    }
  }

LABEL_23:
  if ((result[1].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    if (__CFADD__(v7, v12) || v7 + v12 > result->__r_.__value_.__r.__words[2])
    {
      result[1].__r_.__value_.__s.__data_[0] = 1;
    }

    else
    {
      result = std::string::insert(this, 0, (result->__r_.__value_.__r.__words[0] + v7), v12);
      v2->__r_.__value_.__l.__size_ += v12;
    }
  }

  return result;
}

uint64_t _PBReaderSkipValueWithTag(void *a1, int a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  v9 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      while (1)
      {
        v42 = 0;
        v23 = [v8 position] + 1;
        if (v23 >= [v8 position] && (v24 = objc_msgSend(v8, "position") + 1, v24 <= objc_msgSend(v8, "length")))
        {
          v25 = [v8 data];
          [v25 getBytes:&v42 range:{objc_msgSend(v8, "position"), 1}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
        }

        else
        {
          [v8 _setError];
        }

        if ((v42 & 0x80000000) == 0)
        {
          break;
        }

        v22 = a3++ > 8;
        if (v22)
        {
          goto LABEL_58;
        }
      }

      [v8 hasError];
      goto LABEL_58;
    }

    if (a3 != 1)
    {
      goto LABEL_59;
    }

    v45 = 0;
    v18 = [v7 position] + 8;
    if (v18 < [v8 position] || (v19 = objc_msgSend(v8, "position") + 8, v19 > objc_msgSend(v8, "length")))
    {
LABEL_28:
      [v8 _setError];
      goto LABEL_58;
    }

    v20 = [v8 data];
    [v20 getBytes:&v45 range:{objc_msgSend(v8, "position"), 8}];

    v21 = [v8 position] + 8;
LABEL_56:
    [v8 setPosition:v21];
    goto LABEL_58;
  }

  switch(a3)
  {
    case 5:
      v44 = 0;
      v26 = [v7 position] + 4;
      if (v26 < [v8 position])
      {
        goto LABEL_28;
      }

      v27 = [v8 position] + 4;
      if (v27 > [v8 length])
      {
        goto LABEL_28;
      }

      v39 = [v8 data];
      [v39 getBytes:&v44 range:{objc_msgSend(v8, "position"), 4}];

      v21 = [v8 position] + 4;
      goto LABEL_56;
    case 3:
      if (v7[16])
      {
        goto LABEL_58;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      while (1)
      {
        v41 = 0;
        v31 = [v8 position] + 1;
        if (v31 >= [v8 position] && (v32 = objc_msgSend(v8, "position") + 1, v32 <= objc_msgSend(v8, "length")))
        {
          v33 = [v8 data];
          [v33 getBytes:&v41 range:{objc_msgSend(v8, "position"), 1}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
        }

        else
        {
          [v8 _setError];
        }

        v30 |= (v41 & 0x7F) << v28;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v22 = v29++ > 8;
        if (v22)
        {
LABEL_47:
          if ((a4 + 1) >= 0x41)
          {
            goto LABEL_54;
          }

          _PBReaderSkipValueWithTag(v8);
          v28 = 0;
          v29 = 0;
          v30 = 0;
          if (v8[16])
          {
            goto LABEL_58;
          }
        }
      }

      if ([v8 hasError])
      {
        v34 = 0;
      }

      else
      {
        v34 = v30;
      }

      if ((v34 & 7) == 4 && (v34 >> 3) == a2)
      {
        goto LABEL_58;
      }

      goto LABEL_47;
    case 2:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v43 = 0;
        v13 = [v8 position] + 1;
        if (v13 >= [v8 position] && (v14 = objc_msgSend(v8, "position") + 1, v14 <= objc_msgSend(v8, "length")))
        {
          v15 = [v8 data];
          [v15 getBytes:&v43 range:{objc_msgSend(v8, "position"), 1}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
        }

        else
        {
          [v8 _setError];
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v16 = v11++ >= 9;
        if (v16)
        {
          v17 = 0;
          goto LABEL_52;
        }
      }

      v36 = [v8 hasError];
      v17 = v12;
      if (v36)
      {
        v17 = 0;
      }

LABEL_52:
      v37 = *(v8 + 1);
      v16 = __CFADD__(v37, v17);
      v38 = v37 + v17;
      if (v16 || v38 > *(v8 + 3))
      {
LABEL_54:
        v9 = 1;
        v8[16] = 1;
        break;
      }

      *(v8 + 1) = v38;
LABEL_58:
      v9 = 1;
      break;
  }

LABEL_59:

  return v9;
}

void *PBDataWriterWriteFloatField(uint64_t a1, int a2, float a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 20)
  {
    if (v7 - result[2] <= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a2 != -1)
  {
    v9 = (8 * a2) | 5u;
    v10 = result[1];
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a3;
  *(*(a1 + 8) + 8) += 4;
  return result;
}

void *PBDataWriterWriteInt64Field(uint64_t a1, unint64_t a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    if (v7 - result[2] <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3);
    v10 = result[1];
    if (v9 < 0x80)
    {
      LOBYTE(v11) = 8 * a3;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  v13 = result[1];
  if (a2 < 0x80)
  {
    LOBYTE(v14) = a2;
  }

  else
  {
    do
    {
      *v13++ = a2 | 0x80;
      v14 = a2 >> 7;
      v15 = a2 >> 14;
      a2 >>= 7;
    }

    while (v15);
  }

  *v13 = v14;
  *(*(a1 + 8) + 8) = v13 + 1;
  return result;
}

void *PBDataWriterWriteInt32Field(uint64_t a1, unsigned int a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    v8 = v7 - result[2];
    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    [(PBMutableData *)result _pb_growCapacityBy:v9];
    result = *(a1 + 8);
  }

  v10 = a2;
  if (a3 != -1)
  {
    v11 = (8 * a3);
    v12 = result[1];
    if (v11 < 0x80)
    {
      LOBYTE(v13) = 8 * a3;
    }

    else
    {
      do
      {
        *v12++ = v11 | 0x80;
        v13 = v11 >> 7;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
    }

    *v12 = v13;
    *(*(a1 + 8) + 8) = v12 + 1;
    result = *(a1 + 8);
  }

  v15 = result[1];
  if (a2 < 0x80)
  {
    LOBYTE(v16) = a2;
  }

  else
  {
    do
    {
      *v15++ = v10 | 0x80;
      v16 = v10 >> 7;
      v17 = v10 >> 14;
      v10 >>= 7;
    }

    while (v17);
  }

  *v15 = v16;
  *(*(a1 + 8) + 8) = v15 + 1;
  return result;
}

void PBRepeatedInt32Set(uint64_t a1, void *__src, unint64_t a3)
{
  if (a3)
  {
    v6 = 1;
    while (1)
    {
      v7 = v6;
      if (v6 >= a3)
      {
        break;
      }

      v6 *= 2;
      if ((v7 & 0x8000000000000000) != 0)
      {
        v7 = -1;
        break;
      }
    }

    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= a3 && 4 * v8 >= v8)
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      if (v8 != v9)
      {
        v10 = malloc_type_realloc(v10, 4 * v8, 0x100004052888210uLL);
        if (!v10)
        {
          return;
        }

        *a1 = v10;
        *(a1 + 16) = v8;
      }

      memcpy(v10, __src, 4 * a3);
      *(a1 + 8) = a3;
    }
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      free(v11);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

void PBRepeatedUInt64Set(uint64_t a1, void *__src, unint64_t a3)
{
  if (a3)
  {
    v6 = 1;
    while (1)
    {
      v7 = v6;
      if (v6 >= a3)
      {
        break;
      }

      v6 *= 2;
      if ((v7 & 0x8000000000000000) != 0)
      {
        v7 = -1;
        break;
      }
    }

    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= a3 && 8 * v8 >= v8)
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      if (v8 != v9)
      {
        v10 = malloc_type_realloc(v10, 8 * v8, 0x100004000313F17uLL);
        if (!v10)
        {
          return;
        }

        *a1 = v10;
        *(a1 + 16) = v8;
      }

      memcpy(v10, __src, 8 * a3);
      *(a1 + 8) = a3;
    }
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      free(v11);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

void PBRepeatedInt32Clear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t PBHashBytes(uint64_t a1, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = 0;
    LODWORD(v3) = a2;
  }

  else
  {
    v2 = 0;
    v3 = a2 & 0x7FFFFFFF;
    v4 = (a1 + 3);
    do
    {
      v5 = *(v4 - 3) + 16 * v2;
      v6 = *(v4 - 2) + 16 * (v5 ^ (16 * (v5 >> 28)));
      v7 = *(v4 - 1) + 16 * (v6 ^ (16 * (v6 >> 28)));
      v8 = *v4;
      v4 += 4;
      v9 = v8 + 16 * (v7 ^ (16 * (v7 >> 28)));
      v10 = v3;
      v2 = (v9 ^ ((v9 & 0xF0000000) >> 24)) & ~(v9 & 0xF0000000);
      v3 -= 4;
    }

    while (v10 > 7);
  }

  switch(v3)
  {
    case 1:
      v11 = a2 << 32;
      goto LABEL_13;
    case 3:
      v11 = a2 << 32;
      v12 = *(a1 + (((a2 << 32) - 0x300000000) >> 32)) + 16 * v2;
      v2 = (v12 ^ ((v12 & 0xF0000000) >> 24)) & ~(v12 & 0xF0000000);
      goto LABEL_11;
    case 2:
      v11 = a2 << 32;
LABEL_11:
      v13 = *(a1 + ((v11 - 0x200000000) >> 32)) + 16 * v2;
      v2 = (v13 ^ ((v13 & 0xF0000000) >> 24)) & ~(v13 & 0xF0000000);
LABEL_13:
      v14 = *(a1 + ((v11 - 0x100000000) >> 32)) + 16 * v2;
      return (v14 ^ ((v14 & 0xF0000000) >> 24)) & ~(v14 & 0xF0000000);
  }

  return v2;
}

void PBRepeatedUInt32Clear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t PBUnknownFieldAdd(void *a1, int a2, int a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = 0;
  v10 = a3 & 7 | (8 * a2);
  v11 = v10;
  do
  {
    ++v9;
    v12 = v11 > 0x7F;
    v11 >>= 7;
  }

  while (v12);
  if (!_makeSpace(v7, v9))
  {
    goto LABEL_72;
  }

  v13 = (v7[1] + v7[3]);
  v14 = v13;
  if ((8 * a2) < 0x80)
  {
    LOBYTE(v15) = a3 & 7 | (8 * a2);
  }

  else
  {
    do
    {
      *v14++ = v10 | 0x80;
      v15 = v10 >> 7;
      v16 = v10 >> 14;
      v10 >>= 7;
    }

    while (v16);
  }

  v17 = 0;
  *v14 = v15;
  v7[3] += v14 - v13 + 1;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_74;
      }

      if (_makeSpace(v7, 8))
      {
        v26 = v7[1];
        v27 = v7[3];
        v28 = [v8 position] + 8;
        if (v28 >= [v8 position] && (v29 = objc_msgSend(v8, "position") + 8, v29 <= objc_msgSend(v8, "length")))
        {
          v64 = [v8 data];
          [v64 getBytes:v26 + v27 range:{objc_msgSend(v8, "position"), 8}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 8}];
        }

        else
        {
          [v8 _setError];
        }

        v63 = v7[3] + 8;
        goto LABEL_87;
      }
    }

    else
    {
      v45 = 0;
      while (v45 != 10)
      {
        v70 = 0;
        v46 = [v8 position] + 1;
        if (v46 >= [v8 position] && (v47 = objc_msgSend(v8, "position") + 1, v47 <= objc_msgSend(v8, "length")))
        {
          v48 = [v8 data];
          [v48 getBytes:&v70 range:{objc_msgSend(v8, "position"), 1}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
        }

        else
        {
          [v8 _setError];
        }

        v49 = v70;
        __src[v45++] = v70;
        if ((v49 & 0x80000000) == 0)
        {
          v25 = v45;
          if (!_makeSpace(v7, v45))
          {
            break;
          }

          memcpy((v7[1] + v7[3]), __src, v45);
          goto LABEL_86;
        }
      }
    }

LABEL_72:
    [v8 _setError];
    goto LABEL_73;
  }

  switch(a3)
  {
    case 5:
      if (_makeSpace(v7, 4))
      {
        v30 = v7[1];
        v31 = v7[3];
        v32 = [v8 position] + 4;
        if (v32 >= [v8 position] && (v33 = objc_msgSend(v8, "position") + 4, v33 <= objc_msgSend(v8, "length")))
        {
          v62 = [v8 data];
          [v62 getBytes:v30 + v31 range:{objc_msgSend(v8, "position"), 4}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 4}];
        }

        else
        {
          [v8 _setError];
        }

        v63 = v7[3] + 4;
LABEL_87:
        v7[3] = v63;
LABEL_88:
        v17 = [v8 hasError] ^ 1;
        break;
      }

      goto LABEL_72;
    case 3:
      v34 = v7[4] + 1;
      v7[4] = v34;
      if (v34 > _sMaximumRecursionDepth)
      {
LABEL_73:
        v17 = 0;
        break;
      }

      while (2)
      {
        if ([v8 hasError])
        {
LABEL_75:
          v61 = v7[4];
          if (v61)
          {
            v7[4] = v61 - 1;
          }

          goto LABEL_88;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          __src[0] = 0;
          v38 = [v8 position] + 1;
          if (v38 >= [v8 position] && (v39 = objc_msgSend(v8, "position") + 1, v39 <= objc_msgSend(v8, "length")))
          {
            v40 = [v8 data];
            [v40 getBytes:__src range:{objc_msgSend(v8, "position"), 1}];

            [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
          }

          else
          {
            [v8 _setError];
          }

          v37 |= (__src[0] & 0x7F) << v35;
          if ((__src[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ > 8;
          if (v12)
          {
            v41 = 0;
            v42 = 0;
            goto LABEL_49;
          }
        }

        if ([v8 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v37;
        }

        v42 = v43 & 7;
        v41 = v43 >> 3;
        if (v42 == 4 && v41 == a2)
        {
          goto LABEL_75;
        }

LABEL_49:
        v17 = 0;
        if (PBUnknownFieldAdd(v7, v41, v42, v8))
        {
          continue;
        }

        break;
      }

      break;
    case 2:
      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        __src[0] = 0;
        v21 = [v8 position] + 1;
        if (v21 >= [v8 position] && (v22 = objc_msgSend(v8, "position") + 1, v22 <= objc_msgSend(v8, "length")))
        {
          v23 = [v8 data];
          [v23 getBytes:__src range:{objc_msgSend(v8, "position"), 1}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
        }

        else
        {
          [v8 _setError];
        }

        v20 |= (__src[0] & 0x7F) << v18;
        if ((__src[0] & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ >= 9)
        {
          v25 = 0;
          goto LABEL_63;
        }
      }

      if ([v8 hasError])
      {
        v25 = 0;
      }

      else
      {
        v25 = v20;
      }

LABEL_63:
      v50 = 0;
      v51 = v25;
      do
      {
        ++v50;
        v12 = v51 > 0x7F;
        v51 >>= 7;
      }

      while (v12);
      v52 = [v8 position] + v25;
      if (v52 >= [v8 position])
      {
        v53 = [v8 position] + v25;
        if (v53 <= [v8 length] && _makeSpace(v7, v50 + v25))
        {
          v54 = v7[1] + v7[3];
          if (v25 < 0x80)
          {
            v56 = (v7[1] + v7[3]);
            LOBYTE(v57) = v25;
          }

          else
          {
            v55 = v25;
            v56 = (v7[1] + v7[3]);
            do
            {
              *v56++ = v55 | 0x80;
              v57 = v55 >> 7;
              v58 = v55 >> 14;
              v55 >>= 7;
            }

            while (v58);
          }

          *v56 = v57;
          v65 = &v56[v7[3] - v54 + 1];
          v7[3] = v65;
          v66 = v7[1];
          v67 = [v8 position] + v25;
          if (v67 >= [v8 position] && (v68 = objc_msgSend(v8, "position") + v25, v68 <= objc_msgSend(v8, "length")))
          {
            v69 = [v8 data];
            [v69 getBytes:v66 + v65 range:{objc_msgSend(v8, "position"), v25}];

            [v8 setPosition:{objc_msgSend(v8, "position") + v25}];
          }

          else
          {
            [v8 _setError];
          }

LABEL_86:
          v63 = v7[3] + v25;
          goto LABEL_87;
        }
      }

      goto LABEL_72;
  }

LABEL_74:

  v59 = *MEMORY[0x1E69E9840];
  return v17;
}

BOOL _makeSpace(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *(v3 + 3);
  v6 = __CFADD__(v5, a2);
  v7 = v5 + a2;
  if (v6)
  {
    goto LABEL_3;
  }

  if (v7 <= *(v3 + 2))
  {
    v8 = *(v3 + 1) != 0;
    goto LABEL_15;
  }

  v9 = 1;
  while (1)
  {
    v10 = v9;
    if (v9 >= v7)
    {
      break;
    }

    v9 *= 2;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = -1;
      break;
    }
  }

  v11 = v10 <= 0x10 ? 16 : v10;
  v12 = malloc_type_realloc(*(v3 + 1), v11, 0x6FDAE318uLL);
  if (!v12)
  {
LABEL_3:
    v8 = 0;
  }

  else
  {
    v4[1] = v12;
    v4[2] = v11;
    v8 = 1;
  }

LABEL_15:

  return v8;
}

void *PBDataWriterWriteBOOLField(uint64_t a1, char a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    if (v7 - result[2] <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3);
    v10 = result[1];
    if (v9 < 0x80)
    {
      LOBYTE(v11) = 8 * a3;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  v13 = result[1];
  *v13 = a2;
  *(*(a1 + 8) + 8) = v13 + 1;
  return result;
}

void PBRepeatedDoubleClear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void *PBDataWriterWriteUint64Field(uint64_t a1, unint64_t a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    if (v7 - result[2] <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3);
    v10 = result[1];
    if (v9 < 0x80)
    {
      LOBYTE(v11) = 8 * a3;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  v13 = result[1];
  if (a2 < 0x80)
  {
    LOBYTE(v14) = a2;
  }

  else
  {
    do
    {
      *v13++ = a2 | 0x80;
      v14 = a2 >> 7;
      v15 = a2 >> 14;
      a2 >>= 7;
    }

    while (v15);
  }

  *v13 = v14;
  *(*(a1 + 8) + 8) = v13 + 1;
  return result;
}

uint64_t ___textFormatData_block_invoke(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = result;
    do
    {
      v8 = *a2++;
      v7 = v8;
      if (v8 > 11)
      {
        if (v7 <= 33)
        {
          if (v7 == 12)
          {
            v9 = *(*(v6 + 32) + 8);
            v10 = @"\\f";
          }

          else
          {
            if (v7 != 13)
            {
LABEL_29:
              v11 = *(*(v6 + 32) + 8);
              if ((v7 - 32) < 0x3C || (v7 - 93) <= 0x20)
              {
                result = [v11 appendFormat:@"%c", v7];
              }

              else
              {
                result = [v11 appendFormat:@"\\%03hho", v7];
              }

              goto LABEL_27;
            }

            v9 = *(*(v6 + 32) + 8);
            v10 = @"\\r";
          }
        }

        else
        {
          switch(v7)
          {
            case '""':
              v9 = *(*(v6 + 32) + 8);
              v10 = @"\\"";
              break;
            case '\'':
              v9 = *(*(v6 + 32) + 8);
              v10 = @"\\'";
              break;
            case '\\':
              v9 = *(*(v6 + 32) + 8);
              v10 = @"\\\";
              break;
            default:
              goto LABEL_29;
          }
        }
      }

      else if (v7 <= 7)
      {
        if (v7)
        {
          if (v7 != 7)
          {
            goto LABEL_29;
          }

          v9 = *(*(v6 + 32) + 8);
          v10 = @"\\a";
        }

        else
        {
          v9 = *(*(v6 + 32) + 8);
          v10 = @"\\0";
        }
      }

      else
      {
        switch(v7)
        {
          case 8:
            v9 = *(*(v6 + 32) + 8);
            v10 = @"\\b";
            break;
          case 9:
            v9 = *(*(v6 + 32) + 8);
            v10 = @"\\t";
            break;
          case 0xA:
            v9 = *(*(v6 + 32) + 8);
            v10 = @"\\n";
            break;
          default:
            goto LABEL_29;
        }
      }

      result = [v9 appendString:v10];
LABEL_27:
      --v4;
    }

    while (v4);
  }

  return result;
}

void _textFormatDictionary(void *a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v6)
  {
    if (*a3 >= 1)
    {
      v7 = 0;
      do
      {
        [*(a3 + 8) appendString:@"  "];
        ++v7;
      }

      while (v7 < *a3);
    }

    [*(a3 + 8) appendString:v6];
    [*(a3 + 8) appendString:@" {\n"];
    ++*a3;
  }

  v8 = [v5 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v5 objectForKey:{v15, v20}];
        _textFormat(v16, v15, a3);
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  if (v6)
  {
    v17 = (*a3)--;
    if (v17 >= 2)
    {
      v18 = 0;
      do
      {
        [*(a3 + 8) appendString:{@"  ", v20}];
        ++v18;
      }

      while (v18 < *a3);
    }

    [*(a3 + 8) appendString:{@"}\n", v20}];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void _textFormat(void *a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [v6 description];

    v6 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = v6;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v8);
          }

          _textFormat(*(*(&v21 + 1) + 8 * v13++), v9, a3);
        }

        while (v11 != v13);
        v11 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

LABEL_11:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v6;
    v15 = [v5 dataUsingEncoding:4];
    _textFormatData(v15, v14, a3);

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _textFormatData(v5, v6, a3);
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = v6;
    if (*a3 >= 1)
    {
      v17 = 0;
      do
      {
        [*(a3 + 8) appendString:@"  "];
        ++v17;
      }

      while (v17 < *a3);
    }

    [*(a3 + 8) appendString:v9];
    [*(a3 + 8) appendString:@": "];
    v18 = *(a3 + 8);
    v19 = [v8 description];
    [v18 appendString:v19];

    [*(a3 + 8) appendString:@"\n"];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _textFormatDictionary(v5, v6, a3);
  }

  else
  {
    v20 = objc_opt_class();
    NSLog(&cfstr_UnhandledValue.isa, v20);
  }

LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
}

void _textFormatData(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (*a3 >= 1)
  {
    v7 = 0;
    do
    {
      [*(a3 + 8) appendString:@"  "];
      ++v7;
    }

    while (v7 < *a3);
  }

  [*(a3 + 8) appendString:v6];
  [*(a3 + 8) appendString:@": "];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___textFormatData_block_invoke;
  v8[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
  v8[4] = a3;
  [v5 enumerateByteRangesUsingBlock:v8];
  [*(a3 + 8) appendString:@"\n"];
}

uint64_t PBReaderRecallMark(uint64_t result, void *a2)
{
  *(result + 8) = *a2;
  *(result + 24) = a2[1];
  return result;
}

void *PBRepeatedUInt32Add(void *result, int a2)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = result[1];
    if (v5 + 1 >= v4)
    {
      if (v4 >= 1)
      {
        result = malloc_type_realloc(*result, 8 * v4, 0x100004052888210uLL);
        if (result)
        {
          v3[2] = 2 * v4;
          v7 = v3[1];
          *(result + v7) = a2;
          *v3 = result;
          v3[1] = v7 + 1;
        }
      }
    }

    else
    {
      *(*result + 4 * v5) = a2;
      result[1] = v5 + 1;
    }
  }

  else
  {
    result[2] = 8;
    result = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
    *v3 = result;
    if (result)
    {
      v6 = v3[1];
      *(result + v6) = a2;
      v3[1] = v6 + 1;
    }

    else
    {
      v3[2] = 0;
    }
  }

  return result;
}

id PBRepeatedUInt32NSArray(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:a1[1]];
  if (a1[1])
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*a1 + 4 * v3)];
      [v2 addObject:v4];

      ++v3;
    }

    while (v3 < a1[1]);
  }

  return v2;
}

PB::Writer *PB::Writer::Writer(PB::Writer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  PB::_grow(this, 0x100uLL);
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  PB::_grow(this, 0x100uLL);
  return this;
}

char *PB::_grow(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = *a1;
  v5 = a1[2] - v3;
  if (v5 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1[2] - v3;
  }

  v7 = v6 + v5;
  result = malloc_type_realloc(a1[1], v6 + v5, 0x100004077774924uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  a1[1] = result;
  a1[2] = &result[v7];
  *a1 = &result[v4 - v3];
  return result;
}

void PB::Writer::~Writer(void **this)
{
  free(this[1]);
}

{
  free(this[1]);
}

void PBRepeatedFloatClear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void PBRepeatedUInt32Set(uint64_t a1, void *__src, unint64_t a3)
{
  if (a3)
  {
    v6 = 1;
    while (1)
    {
      v7 = v6;
      if (v6 >= a3)
      {
        break;
      }

      v6 *= 2;
      if ((v7 & 0x8000000000000000) != 0)
      {
        v7 = -1;
        break;
      }
    }

    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= a3 && 4 * v8 >= v8)
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      if (v8 != v9)
      {
        v10 = malloc_type_realloc(v10, 4 * v8, 0x100004052888210uLL);
        if (!v10)
        {
          return;
        }

        *a1 = v10;
        *(a1 + 16) = v8;
      }

      memcpy(v10, __src, 4 * a3);
      *(a1 + 8) = a3;
    }
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      free(v11);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

void PBRepeatedDoubleSet(uint64_t a1, void *__src, unint64_t a3)
{
  if (a3)
  {
    v6 = 1;
    while (1)
    {
      v7 = v6;
      if (v6 >= a3)
      {
        break;
      }

      v6 *= 2;
      if ((v7 & 0x8000000000000000) != 0)
      {
        v7 = -1;
        break;
      }
    }

    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= a3 && 8 * v8 >= v8)
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      if (v8 != v9)
      {
        v10 = malloc_type_realloc(v10, 8 * v8, 0x100004000313F17uLL);
        if (!v10)
        {
          return;
        }

        *a1 = v10;
        *(a1 + 16) = v8;
      }

      memcpy(v10, __src, 8 * a3);
      *(a1 + 8) = a3;
    }
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      free(v11);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

uint64_t PBReaderReadBigEndianFixed16(void *a1)
{
  v1 = a1;
  v8 = 0;
  v2 = [v1 position] + 2;
  if (v2 >= [v1 position] && (v3 = objc_msgSend(v1, "position") + 2, v3 <= objc_msgSend(v1, "length")))
  {
    v5 = [v1 data];
    [v5 getBytes:&v8 range:{objc_msgSend(v1, "position"), 2}];

    [v1 setPosition:{objc_msgSend(v1, "position") + 2}];
    v4 = v8;
  }

  else
  {
    [v1 _setError];
    v4 = 0;
  }

  v6 = __rev16(v4);

  return v6;
}

void PBRepeatedFloatSet(uint64_t a1, void *__src, unint64_t a3)
{
  if (a3)
  {
    v6 = 1;
    while (1)
    {
      v7 = v6;
      if (v6 >= a3)
      {
        break;
      }

      v6 *= 2;
      if ((v7 & 0x8000000000000000) != 0)
      {
        v7 = -1;
        break;
      }
    }

    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= a3 && 4 * v8 >= v8)
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      if (v8 != v9)
      {
        v10 = malloc_type_realloc(v10, 4 * v8, 0x100004052888210uLL);
        if (!v10)
        {
          return;
        }

        *a1 = v10;
        *(a1 + 16) = v8;
      }

      memcpy(v10, __src, 4 * a3);
      *(a1 + 8) = a3;
    }
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      free(v11);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

uint64_t PBReaderReadBigEndianFixed32(void *a1)
{
  v1 = a1;
  v8 = 0;
  v2 = [v1 position] + 4;
  if (v2 >= [v1 position] && (v3 = objc_msgSend(v1, "position") + 4, v3 <= objc_msgSend(v1, "length")))
  {
    v5 = [v1 data];
    [v5 getBytes:&v8 range:{objc_msgSend(v1, "position"), 4}];

    [v1 setPosition:{objc_msgSend(v1, "position") + 4}];
    v4 = v8;
  }

  else
  {
    [v1 _setError];
    v4 = 0;
  }

  v6 = bswap32(v4);

  return v6;
}

void PBRepeatedUInt64Clear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t *PB::Writer::writeSubmessage(PB::Writer *this, const PB::Base *a2, int a3)
{
  PB::Writer::placeMark(this, &v6, a3);
  (*(*a2 + 24))(a2, this);
  return PB::Writer::recallMark(this, &v6);
}

uint64_t *PB::Writer::placeMark(uint64_t *result, void *a2, int a3)
{
  v5 = result;
  if (result[2] < (*result + 10))
  {
    result = PB::_grow(result, 0xAuLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3) | 2u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v8) = (8 * a3) | 2;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  v11 = v5[1];
  v12 = *v5 + 1;
  *v5 = v12;
  *a2 = v12 - v11;
  return result;
}

void *PB::Writer::write(uint64_t *a1, const void **a2, int a3)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (a1[2] < *a1 + v8 + 16)
  {
    PB::_grow(a1, v8 + 16);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3) | 2u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v11) = (8 * a3) | 2;
    }

    else
    {
      do
      {
        v10 = (*a1)++;
        *v10 = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    v13 = (*a1)++;
    *v13 = v11;
  }

  LOBYTE(v14) = v8;
  if (v8 >= 0x80)
  {
    v15 = v8;
    do
    {
      v16 = (*a1)++;
      *v16 = v15 | 0x80;
      v14 = v15 >> 7;
      v17 = v15 >> 14;
      v15 >>= 7;
    }

    while (v17);
  }

  if (v6 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = v7;
  }

  v19 = (*a1)++;
  *v19 = v14;
  result = memcpy(*a1, v18, v8);
  *a1 += v8;
  return result;
}

uint64_t *PB::Writer::recallMark(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = *a2;
  v6 = *result - (*a2 + v4);
  v7 = -1;
  v8 = v6;
  do
  {
    ++v7;
    v9 = v8 > 0x7F;
    v8 >>= 7;
  }

  while (v9);
  if (v7)
  {
    if (result[2] < *result + v7)
    {
      PB::_grow(result, v7);
      v4 = v3[1];
      v5 = *a2;
    }

    result = memmove((v4 + v5 + v7), (v4 + v5), v6);
    v4 = v3[1];
    v5 = *a2;
  }

  v10 = (v4 + v5 - 1);
  if (v6 < 0x80)
  {
    LOBYTE(v11) = v6;
  }

  else
  {
    do
    {
      *v10++ = v6 | 0x80;
      v11 = v6 >> 7;
      v12 = v6 >> 14;
      v6 >>= 7;
    }

    while (v12);
  }

  *v10 = v11;
  *v3 += v7;
  return result;
}

void PBRepeatedInt64Set(uint64_t a1, void *__src, unint64_t a3)
{
  if (a3)
  {
    v6 = 1;
    while (1)
    {
      v7 = v6;
      if (v6 >= a3)
      {
        break;
      }

      v6 *= 2;
      if ((v7 & 0x8000000000000000) != 0)
      {
        v7 = -1;
        break;
      }
    }

    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= a3 && 8 * v8 >= v8)
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      if (v8 != v9)
      {
        v10 = malloc_type_realloc(v10, 8 * v8, 0x100004000313F17uLL);
        if (!v10)
        {
          return;
        }

        *a1 = v10;
        *(a1 + 16) = v8;
      }

      memcpy(v10, __src, 8 * a3);
      *(a1 + 8) = a3;
    }
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      free(v11);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

unint64_t PBReaderReadBigEndianFixed64(void *a1)
{
  v1 = a1;
  v8 = 0;
  v2 = [v1 position] + 8;
  if (v2 >= [v1 position] && (v3 = objc_msgSend(v1, "position") + 8, v3 <= objc_msgSend(v1, "length")))
  {
    v5 = [v1 data];
    [v5 getBytes:&v8 range:{objc_msgSend(v1, "position"), 8}];

    [v1 setPosition:{objc_msgSend(v1, "position") + 8}];
    v4 = v8;
  }

  else
  {
    [v1 _setError];
    v4 = 0;
  }

  v6 = bswap64(v4);

  return v6;
}

uint64_t PBReaderReadVarIntBuf(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (a2 == v5)
    {
      return 0;
    }

    v7 = *(a1 + v5);
    v6 |= (v7 & 0x7F) << v4;
    ++v5;
    if ((v7 & 0x80) == 0)
    {
      break;
    }

    v4 += 7;
    if (v5 == 10)
    {
      result = 0;
      *a4 = 11;
      *a3 = 0;
      return result;
    }
  }

  *a3 = v6;
  *a4 = v5;
  return 1;
}

void *PBDataWriterWriteSfixed64Field(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 24)
  {
    if (v7 - result[2] <= 0x18)
    {
      v8 = 24;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3) | 1u;
    v10 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v11) = (8 * a3) | 1;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a2;
  *(*(a1 + 8) + 8) += 8;
  return result;
}

void *PBDataWriterWriteSfixed32Field(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 20)
  {
    if (v7 - result[2] <= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3) | 5u;
    v10 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v11) = (8 * a3) | 5;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a2;
  *(*(a1 + 8) + 8) += 4;
  return result;
}

void *PBDataWriterWriteFixed64Field(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 24)
  {
    if (v7 - result[2] <= 0x18)
    {
      v8 = 24;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3) | 1u;
    v10 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v11) = (8 * a3) | 1;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a2;
  *(*(a1 + 8) + 8) += 8;
  return result;
}

void *PBDataWriterWriteFixed32Field(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 20)
  {
    if (v7 - result[2] <= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3) | 5u;
    v10 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v11) = (8 * a3) | 5;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a2;
  *(*(a1 + 8) + 8) += 4;
  return result;
}

void *PBDataWriterWriteSint32Field(uint64_t a1, int a2, int a3)
{
  v5 = (2 * a2) ^ (a2 >> 31);
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    if (v7 - result[2] <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7 - result[2];
    }

    [(PBMutableData *)result _pb_growCapacityBy:v8];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v9 = (8 * a3);
    v10 = result[1];
    if (v9 < 0x80)
    {
      LOBYTE(v11) = 8 * a3;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  v13 = result[1];
  if (v5 < 0x80)
  {
    LOBYTE(v14) = v5;
  }

  else
  {
    do
    {
      *v13++ = v5 | 0x80;
      v14 = v5 >> 7;
      v15 = v5 >> 14;
      v5 >>= 7;
    }

    while (v15);
  }

  *v13 = v14;
  *(*(a1 + 8) + 8) = v13 + 1;
  return result;
}

uint64_t PBDataWriterWriteBareVarint(_BYTE *a1, unint64_t a2)
{
  v2 = a1;
  if (a2 < 0x80)
  {
    LOBYTE(v3) = a2;
  }

  else
  {
    do
    {
      *v2++ = a2 | 0x80;
      v3 = a2 >> 7;
      v4 = a2 >> 14;
      a2 >>= 7;
    }

    while (v4);
  }

  *v2 = v3;
  return v2 - a1 + 1;
}

void *PBDataWriterWriteSint64Field(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 2 * a2;
  result = *(a1 + 8);
  v8 = result[3];
  if (v8 < result[1] + 16)
  {
    v9 = v8 - result[2];
    if (v9 <= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = v9;
    }

    [(PBMutableData *)result _pb_growCapacityBy:v10];
    result = *(a1 + 8);
  }

  v11 = v6 ^ (a2 >> 63);
  if (a3 != -1)
  {
    v12 = (8 * a3);
    v13 = result[1];
    if (v12 < 0x80)
    {
      LOBYTE(v14) = 8 * a3;
    }

    else
    {
      do
      {
        *v13++ = v12 | 0x80;
        v14 = v12 >> 7;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
    }

    *v13 = v14;
    *(*(a1 + 8) + 8) = v13 + 1;
    result = *(a1 + 8);
  }

  v16 = result[1];
  if (v11 < 0x80)
  {
    v17 = v6 ^ (a2 >> 63);
  }

  else
  {
    do
    {
      *v16++ = v11 | 0x80;
      v17 = v11 >> 7;
      v18 = v11 >> 14;
      v11 >>= 7;
    }

    while (v18);
  }

  *v16 = v17;
  *(*(a1 + 8) + 8) = v16 + 1;
  return result;
}

void PBDataWriterWriteSubgroup(uint64_t a1, void *a2, int a3)
{
  v22 = a2;
  v5 = *(a1 + 8);
  v6 = v5[3];
  if (v6 < v5[1] + 8)
  {
    v7 = v6 - v5[2];
    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    [(PBMutableData *)v5 _pb_growCapacityBy:v8];
  }

  v9 = 8 * a3;
  if (a3 != -1)
  {
    v10 = (8 * a3) | 3u;
    v11 = *(*(a1 + 8) + 8);
    if (v9 < 0x80)
    {
      LOBYTE(v12) = (8 * a3) | 3;
    }

    else
    {
      do
      {
        *v11++ = v10 | 0x80;
        v12 = v10 >> 7;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
    }

    *v11 = v12;
    *(*(a1 + 8) + 8) = v11 + 1;
  }

  [v22 writeTo:a1];
  v14 = *(a1 + 8);
  v15 = v14[3];
  if (v15 < v14[1] + 8)
  {
    v16 = v15 - v14[2];
    if (v16 <= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v16;
    }

    [(PBMutableData *)v14 _pb_growCapacityBy:v17];
  }

  if (a3 != -1)
  {
    v18 = (8 * a3) | 4u;
    v19 = *(*(a1 + 8) + 8);
    if (v9 < 0x80)
    {
      LOBYTE(v20) = (8 * a3) | 4;
    }

    else
    {
      do
      {
        *v19++ = v18 | 0x80;
        v20 = v18 >> 7;
        v21 = v18 >> 14;
        v18 >>= 7;
      }

      while (v21);
    }

    *v19 = v20;
    *(*(a1 + 8) + 8) = v19 + 1;
  }
}

uint64_t PB::Base::formattedText(PB::Base *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  v10 = 0;
  LOBYTE(__p) = 0;
  (*(*this + 32))(this, v4, 0);
  std::stringbuf::str();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1CCA887B0](&v8);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  v13 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v13;
  MEMORY[0x1CCA88760](a1 + 32);
  *(a1 + 88) = 0;
  v14 = a1 + 88;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 112) = a1 + 88;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v15 = *(a1 + 111);
  if (v15 < 0)
  {
    v15 = *(a1 + 96);
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v14;
  *(a1 + 80) = v14 + v15;
  return a1;
}

void sub_1C941E838(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 24) = v3;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1CCA887B0](v2);
  _Unwind_Resume(a1);
}

void PB::TextFormatter::~TextFormatter(std::locale *this)
{
  if (SHIBYTE(this[37].__locale_) < 0)
  {
    operator delete(this[35].__locale_);
  }

  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  this->__locale_ = *MEMORY[0x1E69E54D8];
  locale = v2[9].__locale_;
  *(this + *(v3 - 24)) = v2[8];
  this[2].__locale_ = locale;
  this[3].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[13].__locale_) < 0)
  {
    operator delete(this[11].__locale_);
  }

  this[3].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 4);
  std::iostream::~basic_iostream();
  MEMORY[0x1CCA887B0](&this[16]);
}

PB::Data *PB::Data::Data(PB::Data *this, const unsigned __int8 *a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  PB::Data::assign(this, a2, &a2[a3]);
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  PB::Data::assign(this, a2, &a2[a3]);
  return this;
}

void PB::Data::assign(void **this, const unsigned __int8 *__src, const unsigned __int8 *a3)
{
  v3 = a3 - __src;
  if (a3 >= __src)
  {
    v6 = *this;
    if (this[1] < v3)
    {
      v6 = malloc_type_realloc(v6, v3, 0x100004077774924uLL);
      if (!v6)
      {
        free(*this);
        *this = 0;
        this[1] = 0;
        return;
      }

      *this = v6;
    }

    this[1] = v3;

    memcpy(v6, __src, v3);
  }
}

PB::Data *PB::Data::Data(PB::Data *this, const PB::Data *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = *(a2 + 1);
  if (v3)
  {
    PB::Data::assign(this, *a2, (*a2 + v3));
  }

  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  v3 = *(a2 + 1);
  if (v3)
  {
    PB::Data::assign(this, *a2, (*a2 + v3));
  }

  return this;
}

void PB::Data::clear(void **this)
{
  free(*this);
  *this = 0;
  this[1] = 0;
}

void *PBRepeatedDoubleAdd(void *result, double a2)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = result[1];
    if (v5 + 1 >= v4)
    {
      if (v4 >= 1)
      {
        result = malloc_type_realloc(*result, 16 * v4, 0x100004000313F17uLL);
        if (result)
        {
          v3[2] = 2 * v4;
          v7 = v3[1];
          *&result[v7] = a2;
          *v3 = result;
          v3[1] = v7 + 1;
        }
      }
    }

    else
    {
      *(*result + 8 * v5) = a2;
      result[1] = v5 + 1;
    }
  }

  else
  {
    result[2] = 8;
    result = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
    *v3 = result;
    if (result)
    {
      v6 = v3[1];
      *&result[v6] = a2;
      v3[1] = v6 + 1;
    }

    else
    {
      v3[2] = 0;
    }
  }

  return result;
}

id PBRepeatedDoubleNSArray(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:a1[1]];
  if (a1[1])
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(*a1 + 8 * v3)];
      [v2 addObject:v4];

      ++v3;
    }

    while (v3 < a1[1]);
  }

  return v2;
}

void *PBRepeatedFloatAdd(void *result, float a2)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = result[1];
    if (v5 + 1 >= v4)
    {
      if (v4 >= 1)
      {
        result = malloc_type_realloc(*result, 8 * v4, 0x100004052888210uLL);
        if (result)
        {
          v3[2] = 2 * v4;
          v7 = v3[1];
          *(result + v7) = a2;
          *v3 = result;
          v3[1] = v7 + 1;
        }
      }
    }

    else
    {
      *(*result + 4 * v5) = a2;
      result[1] = v5 + 1;
    }
  }

  else
  {
    result[2] = 8;
    result = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
    *v3 = result;
    if (result)
    {
      v6 = v3[1];
      *(result + v6) = a2;
      v3[1] = v6 + 1;
    }

    else
    {
      v3[2] = 0;
    }
  }

  return result;
}

id PBRepeatedFloatNSArray(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:a1[1]];
  if (a1[1])
  {
    v4 = 0;
    do
    {
      LODWORD(v3) = *(*a1 + 4 * v4);
      v5 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
      [v2 addObject:v5];

      ++v4;
    }

    while (v4 < a1[1]);
  }

  return v2;
}

void *PBRepeatedInt32Add(void *result, int a2)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = result[1];
    if (v5 + 1 >= v4)
    {
      if (v4 >= 1)
      {
        result = malloc_type_realloc(*result, 8 * v4, 0x100004052888210uLL);
        if (result)
        {
          v3[2] = 2 * v4;
          v7 = v3[1];
          *(result + v7) = a2;
          *v3 = result;
          v3[1] = v7 + 1;
        }
      }
    }

    else
    {
      *(*result + 4 * v5) = a2;
      result[1] = v5 + 1;
    }
  }

  else
  {
    result[2] = 8;
    result = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
    *v3 = result;
    if (result)
    {
      v6 = v3[1];
      *(result + v6) = a2;
      v3[1] = v6 + 1;
    }

    else
    {
      v3[2] = 0;
    }
  }

  return result;
}

id PBRepeatedInt32NSArray(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:a1[1]];
  if (a1[1])
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInt:*(*a1 + 4 * v3)];
      [v2 addObject:v4];

      ++v3;
    }

    while (v3 < a1[1]);
  }

  return v2;
}

void *PBRepeatedInt64Add(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = result[1];
    if (v5 + 1 >= v4)
    {
      if (v4 >= 1)
      {
        result = malloc_type_realloc(*result, 16 * v4, 0x100004000313F17uLL);
        if (result)
        {
          v3[2] = 2 * v4;
          v7 = v3[1];
          result[v7] = a2;
          *v3 = result;
          v3[1] = v7 + 1;
        }
      }
    }

    else
    {
      *(*result + 8 * v5) = a2;
      result[1] = v5 + 1;
    }
  }

  else
  {
    result[2] = 8;
    result = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
    *v3 = result;
    if (result)
    {
      v6 = v3[1];
      result[v6] = a2;
      v3[1] = v6 + 1;
    }

    else
    {
      v3[2] = 0;
    }
  }

  return result;
}

void PBRepeatedInt64Clear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

id PBRepeatedInt64NSArray(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:a1[1]];
  if (a1[1])
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*a1 + 8 * v3)];
      [v2 addObject:v4];

      ++v3;
    }

    while (v3 < a1[1]);
  }

  return v2;
}

void *PBRepeatedUInt64Add(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = result[1];
    if (v5 + 1 >= v4)
    {
      if (v4 >= 1)
      {
        result = malloc_type_realloc(*result, 16 * v4, 0x100004000313F17uLL);
        if (result)
        {
          v3[2] = 2 * v4;
          v7 = v3[1];
          result[v7] = a2;
          *v3 = result;
          v3[1] = v7 + 1;
        }
      }
    }

    else
    {
      *(*result + 8 * v5) = a2;
      result[1] = v5 + 1;
    }
  }

  else
  {
    result[2] = 8;
    result = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
    *v3 = result;
    if (result)
    {
      v6 = v3[1];
      result[v6] = a2;
      v3[1] = v6 + 1;
    }

    else
    {
      v3[2] = 0;
    }
  }

  return result;
}

id PBRepeatedUInt64NSArray(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:a1[1]];
  if (a1[1])
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*a1 + 8 * v3)];
      [v2 addObject:v4];

      ++v3;
    }

    while (v3 < a1[1]);
  }

  return v2;
}

void *PBRepeatedBOOLAdd(void *result, char a2)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = result[1];
    if (v5 + 1 >= v4)
    {
      if (v4 >= 1)
      {
        v7 = 2 * v4;
        result = malloc_type_realloc(*result, 2 * v4, 0x100004077774924uLL);
        if (result)
        {
          v3[2] = v7;
          v8 = v3[1];
          *(result + v8) = a2;
          *v3 = result;
          v3[1] = v8 + 1;
        }
      }
    }

    else
    {
      *(*result + v5) = a2;
      result[1] = v5 + 1;
    }
  }

  else
  {
    result[2] = 8;
    result = malloc_type_malloc(8uLL, 0x100004077774924uLL);
    *v3 = result;
    if (result)
    {
      v6 = v3[1];
      *(result + v6) = a2;
      v3[1] = v6 + 1;
    }

    else
    {
      v3[2] = 0;
    }
  }

  return result;
}

void PBRepeatedBOOLClear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

id PBRepeatedBOOLNSArray(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:a1[1]];
  if (a1[1])
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithBool:*(*a1 + v3)];
      [v2 addObject:v4];

      ++v3;
    }

    while (v3 < a1[1]);
  }

  return v2;
}

void PBRepeatedBOOLSet(uint64_t a1, void *__src, size_t __n)
{
  if (__n)
  {
    v6 = 1;
    while (1)
    {
      v7 = v6;
      if (v6 >= __n)
      {
        break;
      }

      v6 *= 2;
      if ((v7 & 0x8000000000000000) != 0)
      {
        v7 = -1;
        break;
      }
    }

    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= __n)
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      if (v8 != v9)
      {
        v10 = malloc_type_realloc(v10, v8, 0x100004077774924uLL);
        if (!v10)
        {
          return;
        }

        *a1 = v10;
        *(a1 + 16) = v8;
      }

      memcpy(v10, __src, __n);
      *(a1 + 8) = __n;
    }
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      free(v11);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

uint64_t PB::Reader::Reader(uint64_t this, const unsigned __int8 *a2, uint64_t a3)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = a3;
  *(this + 24) = 0;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = a3;
  *(this + 24) = 0;
  return this;
}

uint64_t PB::Reader::placeMark(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2 < 0xFFFFFFFFFFFFFFF6 && v2 + 10 <= *(a1 + 16))
  {
    v9 = 0;
    v10 = 0;
    v5 = 0;
    v11 = (*a1 + v2);
    v12 = v2 + 1;
    while (1)
    {
      v6 = v12;
      *(a1 + 8) = v12;
      v13 = *v11++;
      v5 |= (v13 & 0x7F) << v9;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      ++v12;
      v8 = v10++ > 8;
      if (v8)
      {
LABEL_14:
        v5 = 0;
        break;
      }
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = v2 + 1;
      if (v2 == -1)
      {
        v2 = -1;
LABEL_16:
        v5 = 0;
        *(a1 + 24) = 1;
        v6 = v2;
        goto LABEL_19;
      }

      if (v6 > *(a1 + 16))
      {
        goto LABEL_16;
      }

      v7 = *(*a1 + v2);
      *(a1 + 8) = v6;
      v5 |= (v7 & 0x7F) << v3;
      if ((v7 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      v2 = v6;
      v8 = v4++ > 8;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    if (*(a1 + 24))
    {
      v5 = 0;
    }
  }

LABEL_19:
  if (*(a1 + 24))
  {
    return 0;
  }

  v15 = __CFADD__(v6, v5);
  v16 = v6 + v5;
  if (v15 || (v17 = *(a1 + 16), v16 > v17))
  {
    v14 = 0;
    *(a1 + 24) = 1;
  }

  else
  {
    *a2 = v16;
    a2[1] = v17;
    v14 = 1;
    *(a1 + 16) = v16;
  }

  return v14;
}

_BYTE *PB::Reader::read(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a2 + 8) = *a2;
  v5 = *(a1 + 8);
  if (v5 < 0xFFFFFFFFFFFFFFF6 && v5 + 10 <= *(a1 + 16))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = (*a1 + v5);
    v16 = v5 + 1;
    while (1)
    {
      v9 = v16;
      *(a1 + 8) = v16;
      v17 = *v15++;
      v14 |= (v17 & 0x7F) << v12;
      if ((v17 & 0x80) == 0)
      {
        break;
      }

      v12 += 7;
      ++v16;
      v11 = v13++ > 8;
      if (v11)
      {
LABEL_14:
        v14 = 0;
        break;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v5 + 1;
      if (v5 == -1)
      {
        v5 = -1;
LABEL_16:
        v14 = 0;
        *(a1 + 24) = 1;
        v9 = v5;
        goto LABEL_20;
      }

      if (v9 > *(a1 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(*a1 + v5);
      *(a1 + 8) = v9;
      v8 |= (v10 & 0x7F) << v6;
      if ((v10 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v5 = v9;
      v11 = v7++ > 8;
      if (v11)
      {
        goto LABEL_14;
      }
    }

    if (*(a1 + 24))
    {
      v14 = 0;
    }

    else
    {
      v14 = v8;
    }
  }

LABEL_20:
  if ((*(a1 + 24) & 1) == 0)
  {
    if (__CFADD__(v9, v14) || v9 + v14 > *(a1 + 16))
    {
      *(a1 + 24) = 1;
    }

    else
    {
      v18 = (*a1 + v9);
      if (*(a2 + 16) - result < v14)
      {
        if (result)
        {
          *(a2 + 8) = result;
          operator delete(result);
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      if (v14)
      {
        v19 = v14;
        do
        {
          v20 = *v18++;
          *result++ = v20;
          --v19;
        }

        while (v19);
      }

      *(a2 + 8) = result;
      *(a1 + 8) += v14;
    }
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E833D4C8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void PB::Reader::read(PB::Reader *this, void **a2)
{
  free(*a2);
  *a2 = 0;
  a2[1] = 0;
  v4 = *(this + 1);
  if (v4 < 0xFFFFFFFFFFFFFFF6 && v4 + 10 <= *(this + 2))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (*this + v4);
    v15 = v4 + 1;
    while (1)
    {
      v8 = v15;
      *(this + 1) = v15;
      v16 = *v14++;
      v13 |= (v16 & 0x7F) << v11;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      ++v15;
      v10 = v12++ > 8;
      if (v10)
      {
LABEL_14:
        v13 = 0;
        break;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v4 + 1;
      if (v4 == -1)
      {
        v4 = -1;
LABEL_16:
        v13 = 0;
        *(this + 24) = 1;
        v8 = v4;
        goto LABEL_20;
      }

      if (v8 > *(this + 2))
      {
        goto LABEL_16;
      }

      v9 = *(*this + v4);
      *(this + 1) = v8;
      v7 |= (v9 & 0x7F) << v5;
      if ((v9 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v4 = v8;
      v10 = v6++ > 8;
      if (v10)
      {
        goto LABEL_14;
      }
    }

    if (*(this + 24))
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }
  }

LABEL_20:
  if ((*(this + 24) & 1) == 0)
  {
    if (__CFADD__(v8, v13) || v8 + v13 > *(this + 2))
    {
      *(this + 24) = 1;
    }

    else
    {
      PB::Data::assign(a2, (*this + v8), (*this + v8 + v13));
      *(this + 1) += v13;
    }
  }
}

uint64_t PB::Reader::skip(PB::Reader *this, int a2, int a3, int a4)
{
  v5 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v31 = *(this + 1);
      if (v31 < 0xFFFFFFFFFFFFFFF6 && v31 + 10 <= *(this + 2))
      {
        v40 = 0;
        v41 = (*this + v31);
        v42 = v31 + 1;
        v5 = 1;
        do
        {
          *(this + 1) = v42;
          v43 = *v41++;
          if ((v43 & 0x80000000) == 0)
          {
            break;
          }

          ++v42;
          v14 = v40++ > 8;
        }

        while (!v14);
        return v5;
      }

      v32 = 0;
      v5 = 1;
      while (1)
      {
        v33 = v31 + 1;
        if (v31 == -1 || v33 > *(this + 2))
        {
          break;
        }

        v34 = *(*this + v31);
        *(this + 1) = v33;
        if (v34 < 0)
        {
          v31 = v33;
          v14 = v32++ > 8;
          if (!v14)
          {
            continue;
          }
        }

        return v5;
      }

      goto LABEL_72;
    }

    if (a3 != 1)
    {
      return v5;
    }

    v22 = *(this + 1);
    if (v22 > 0xFFFFFFFFFFFFFFF7)
    {
      goto LABEL_72;
    }

    v23 = v22 + 8;
LABEL_71:
    if (v23 <= *(this + 2))
    {
      *(this + 1) = v23;
      return 1;
    }

LABEL_72:
    v5 = 1;
    *(this + 24) = 1;
    return v5;
  }

  switch(a3)
  {
    case 2:
      v24 = *(this + 1);
      if (v24 < 0xFFFFFFFFFFFFFFF6 && v24 + 10 <= *(this + 2))
      {
        v35 = 0;
        v36 = 0;
        v27 = 0;
        v37 = (*this + v24);
        v38 = v24 + 1;
        while (1)
        {
          v28 = v38;
          *(this + 1) = v38;
          v39 = *v37++;
          v27 |= (v39 & 0x7F) << v35;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          ++v38;
          v14 = v36++ > 8;
          if (v14)
          {
LABEL_60:
            v27 = 0;
            break;
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          v28 = v24 + 1;
          if (v24 == -1)
          {
            v24 = -1;
LABEL_67:
            v27 = 0;
            *(this + 24) = 1;
            v28 = v24;
            goto LABEL_70;
          }

          if (v28 > *(this + 2))
          {
            goto LABEL_67;
          }

          v29 = *(*this + v24);
          *(this + 1) = v28;
          v27 |= (v29 & 0x7F) << v25;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v24 = v28;
          v14 = v26++ > 8;
          if (v14)
          {
            goto LABEL_60;
          }
        }

        if (*(this + 24))
        {
          v27 = 0;
        }
      }

LABEL_70:
      v44 = __CFADD__(v28, v27);
      v23 = v28 + v27;
      if (v44)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    case 5:
      v30 = *(this + 1);
      if (v30 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_72;
      }

      v23 = v30 + 4;
      goto LABEL_71;
    case 3:
      v5 = 1;
      if (*(this + 24) == 1)
      {
        while (1)
        {
          v8 = *(this + 1);
          if (v8 < 0xFFFFFFFFFFFFFFF6 && v8 + 10 <= *(this + 2))
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = (*this + v8);
            v19 = v8 + 1;
            while (1)
            {
              *(this + 1) = v19;
              v20 = *v18++;
              v17 |= (v20 & 0x7F) << v15;
              if ((v20 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              ++v19;
              v14 = v16++ > 8;
              if (v14)
              {
                LODWORD(v11) = 0;
                v13 = 0;
                goto LABEL_16;
              }
            }

            v13 = v17 & 7;
            v11 = v17 >> 3;
            if ((v17 & 7) == 4 && v11 == a2)
            {
              return 1;
            }
          }

          else
          {
            v9 = 0;
            while (1)
            {
              v10 = v8 + 1;
              if (v8 == -1 || v10 > *(this + 2))
              {
                LODWORD(v11) = 0;
                v13 = 0;
                *(this + 24) = 1;
                goto LABEL_16;
              }

              LODWORD(v11) = 0;
              v12 = *(*this + v8);
              *(this + 1) = v10;
              if ((v12 & 0x80000000) == 0)
              {
                break;
              }

              v8 = v10;
              v13 = 0;
              v14 = v9++ > 8;
              if (v14)
              {
                goto LABEL_16;
              }
            }

            v13 = 0;
          }

LABEL_16:
          if (a4 < 64)
          {
            PB::Reader::skip(this, v11, v13, a4 + 1);
            if ((*(this + 24) & 1) == 0)
            {
              return 1;
            }
          }

          else
          {
            *(this + 24) = 1;
          }
        }
      }

      break;
  }

  return v5;
}

uint64_t PB::TextFormatter::dedent(PB::TextFormatter *this)
{
  v2 = *(this + 303);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(this + 36);
    if (v2 > 1)
    {
      goto LABEL_3;
    }
  }

  else if (v2 >= 2)
  {
LABEL_3:
    v3 = std::string::erase((this + 280), v2 - 2, 0xFFFFFFFFFFFFFFFFLL);
    std::string::operator=((this + 280), v3);
    return 1;
  }

  return 0;
}

std::string *PB::TextFormatter::beginObject(std::string *this, const char *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = (this + 280);
    v5 = this[12].__r_.__value_.__s.__data_[15];
    if (v5 >= 0)
    {
      v6 = &this[11].__r_.__value_.__r.__words[2];
    }

    else
    {
      v6 = this[11].__r_.__value_.__r.__words[2];
    }

    if (v5 >= 0)
    {
      data = this[12].__r_.__value_.__s.__data_[15];
    }

    else
    {
      data = this[12].__r_.__value_.__l.__data_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&this->__r_.__value_.__r.__words[2], v6, data);
    v8 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v3 + 16), a2, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v3 + 16), " {\n", 3);

    return std::string::append(v4, "  ");
  }

  return this;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA886C0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1CCA886D0](v20);
  return a1;
}

void sub_1C94229C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA886D0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C9422994);
}

void *PB::TextFormatter::endObject(PB::TextFormatter *this)
{
  result = PB::TextFormatter::dedent(this);
  if (result)
  {
    v3 = *(this + 303);
    if (v3 >= 0)
    {
      v4 = this + 280;
    }

    else
    {
      v4 = *(this + 35);
    }

    if (v3 >= 0)
    {
      v5 = *(this + 303);
    }

    else
    {
      v5 = *(this + 36);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v4, v5);

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, "}\n", 2);
  }

  return result;
}

void *PB::TextFormatter::format(PB::TextFormatter *this, const char *a2, uint64_t a3)
{
  v6 = *(this + 303);
  if (v6 >= 0)
  {
    v7 = this + 280;
  }

  else
  {
    v7 = *(this + 35);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 303);
  }

  else
  {
    v8 = *(this + 36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v7, v8);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, ": ", 2);
  v10 = MEMORY[0x1CCA88720](this + 16, a3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
}

{
  v6 = *(this + 303);
  if (v6 >= 0)
  {
    v7 = this + 280;
  }

  else
  {
    v7 = *(this + 35);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 303);
  }

  else
  {
    v8 = *(this + 36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v7, v8);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, ": ", 2);
  v10 = MEMORY[0x1CCA88740](this + 16, a3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
}

{
  v6 = *(this + 303);
  if (v6 >= 0)
  {
    v7 = this + 280;
  }

  else
  {
    v7 = *(this + 35);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 303);
  }

  else
  {
    v8 = *(this + 36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v7, v8);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, ": ", 2);
  v10 = MEMORY[0x1CCA88710](this + 16, a3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
}

{
  v6 = *(this + 303);
  if (v6 >= 0)
  {
    v7 = this + 280;
  }

  else
  {
    v7 = *(this + 35);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 303);
  }

  else
  {
    v8 = *(this + 36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v7, v8);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, ": ", 2);
  v10 = MEMORY[0x1CCA88730](this + 16, a3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
}

{
  v6 = *(this + 303);
  if (v6 >= 0)
  {
    v7 = this + 280;
  }

  else
  {
    v7 = *(this + 35);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 303);
  }

  else
  {
    v8 = *(this + 36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v7, v8);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, ": ", 2);
  v10 = MEMORY[0x1CCA886E0](this + 16, a3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
}

void *PB::TextFormatter::format(PB::TextFormatter *this, const char *a2, float a3)
{
  v5 = (this + 16);
  v6 = *(this + 303);
  if (v6 >= 0)
  {
    v7 = this + 280;
  }

  else
  {
    v7 = *(this + 35);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 303);
  }

  else
  {
    v8 = *(this + 36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v7, v8);
  v9 = strlen(a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
  *(v5 + *(*(this + 2) - 24) + 16) = 6;
  v11 = std::ostream::operator<<();

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
}

void *PB::TextFormatter::format(PB::TextFormatter *this, const char *a2, double a3)
{
  v6 = (this + 16);
  v7 = *(this + 303);
  if (v7 >= 0)
  {
    v8 = this + 280;
  }

  else
  {
    v8 = *(this + 35);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 303);
  }

  else
  {
    v9 = *(this + 36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v8, v9);
  v10 = strlen(a2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, a2, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
  *(v6 + *(*(this + 2) - 24) + 16) = 15;
  v13 = MEMORY[0x1CCA886F0](v12, a3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
}

void PB::TextFormatter::format(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 303);
  if (v6 >= 0)
  {
    v7 = a1 + 280;
  }

  else
  {
    v7 = *(a1 + 280);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 303);
  }

  else
  {
    v8 = *(a1 + 288);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), v7, v8);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), ": ", 2);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  PB::_formatBytes(__p, v11, v12);
  if ((v16 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  v6 = *(a1 + 303);
  if (v6 >= 0)
  {
    v7 = a1 + 280;
  }

  else
  {
    v7 = *(a1 + 280);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 303);
  }

  else
  {
    v8 = *(a1 + 288);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), v7, v8);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), ": ", 2);
  PB::_formatBytes(__p, *a3, *(a3 + 8) - *a3);
  if ((v13 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v11 = v13;
  }

  else
  {
    v11 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), "\n", 1);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C94230B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PB::_formatBytes(PB *this, const unsigned __int8 *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v16[0] = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v16, 1);
  while (a3)
  {
    v6 = *a2++;
    v5 = v6;
    if (v6 > 11)
    {
      if (v5 <= 33)
      {
        if (v5 == 12)
        {
          v7 = "\\f";
        }

        else
        {
          if (v5 != 13)
          {
LABEL_28:
            if ((v5 - 32) < 0x3C || (v5 - 93) <= 0x20)
            {
              v16[0] = v5;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v16, 1);
            }

            else
            {
              *(&v13[-1].__locale_ + *(v11 - 24)) = *(&v13[-1].__locale_ + *(v11 - 24)) & 0xFFFFFFB5 | 0x40;
              v16[0] = v5;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v16, 1);
              *(&v13[-1].__locale_ + *(v11 - 24)) = *(&v13[-1].__locale_ + *(v11 - 24)) & 0xFFFFFFB5 | 2;
            }

            goto LABEL_26;
          }

          v7 = "\\r";
        }
      }

      else
      {
        switch(v5)
        {
          case '""':
            v7 = "\\"";
            break;
          case '\'':
            v7 = "\\'";
            break;
          case '\\':
            v7 = "\\\";
            break;
          default:
            goto LABEL_28;
        }
      }
    }

    else if (v5 <= 7)
    {
      if (v5)
      {
        v7 = "\\a";
        if (v5 != 7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v7 = "\\0";
      }
    }

    else
    {
      switch(v5)
      {
        case 8:
          v7 = "\\b";
          break;
        case 9:
          v7 = "\\t";
          break;
        case 10:
          v7 = "\\n";
          break;
        default:
          goto LABEL_28;
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v7, 2);
LABEL_26:
    --a3;
  }

  v16[0] = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v16, 1);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v11 = v8;
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x1CCA887B0](&v15);
}

void sub_1C9423444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x1CCA887B0](&a26);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_1C942369C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PB::TextFormatter::format(PB::TextFormatter *this, const char *a2, const unsigned __int8 **a3)
{
  v6 = *(this + 303);
  if (v6 >= 0)
  {
    v7 = this + 280;
  }

  else
  {
    v7 = *(this + 35);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 303);
  }

  else
  {
    v8 = *(this + 36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v7, v8);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, ": ", 2);
  PB::_formatBytes(__p, *a3, a3[1]);
  if ((v13 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v11 = v13;
  }

  else
  {
    v11 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 2, "\n", 1);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C9423794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _dictionaryRepresentation(void *a1, unint64_t a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = [v7 position];
  if (v9 < [v7 length])
  {
    v10 = 0x1E695D000uLL;
    do
    {
      if ([v7 hasError] & 1) != 0 || (objc_msgSend(v7, "hasError"))
      {
        break;
      }

      if (a3 == 6)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        while (1)
        {
          v48 = 0;
          v14 = [v7 position] + 1;
          if (v14 >= [v7 position] && (v15 = objc_msgSend(v7, "position") + 1, v15 <= objc_msgSend(v7, "length")))
          {
            v16 = [v7 data];
            [v16 getBytes:&v48 range:{objc_msgSend(v7, "position"), 1}];

            [v7 setPosition:{objc_msgSend(v7, "position") + 1}];
          }

          else
          {
            [v7 _setError];
          }

          v13 |= (v48 & 0x7F) << v11;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v11 += 7;
          v17 = v12++ >= 9;
          if (v17)
          {
            v18 = 0;
            goto LABEL_18;
          }
        }

        if ([v7 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v13;
        }

LABEL_18:
        a3 = v18 & 7;
        a2 = v18 >> 3;
      }

      v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:a2];
      if (a3 <= 1)
      {
        if (!a3)
        {
          v36 = 0;
          v37 = 0;
          while (1)
          {
            v47 = 0;
            v38 = [v7 position] + 1;
            if (v38 >= [v7 position] && (v39 = objc_msgSend(v7, "position") + 1, v39 <= objc_msgSend(v7, "length")))
            {
              v40 = [v7 data];
              [v40 getBytes:&v47 range:{objc_msgSend(v7, "position"), 1}];

              [v7 setPosition:{objc_msgSend(v7, "position") + 1}];
            }

            else
            {
              [v7 _setError];
            }

            v37 |= (v47 & 0x7F) << v36;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v17 = a3++ >= 9;
            if (v17)
            {
              v41 = 0;
              goto LABEL_66;
            }
          }

          if ([v7 hasError])
          {
            v41 = 0;
          }

          else
          {
            v41 = v37;
          }

LABEL_66:
          v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v41];
LABEL_67:
          v25 = v24;
          goto LABEL_68;
        }

        if (a3 == 1)
        {
          v46 = 0;
          v22 = [v7 position] + 8;
          if (v22 >= [v7 position] && (v23 = objc_msgSend(v7, "position") + 8, v23 <= objc_msgSend(v7, "length")))
          {
            v43 = [v7 data];
            [v43 getBytes:&v46 range:{objc_msgSend(v7, "position"), 8}];

            [v7 setPosition:{objc_msgSend(v7, "position") + 8}];
          }

          else
          {
            [v7 _setError];
          }

          v41 = v46;
          goto LABEL_66;
        }
      }

      else
      {
        switch(a3)
        {
          case 2:
            v24 = PBReaderReadData(v7);
            goto LABEL_67;
          case 3:
            v25 = objc_alloc_init(*(v10 + 3984));
            if (([v7 hasError] & 1) == 0)
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              while (1)
              {
                v49 = 0;
                v29 = [v7 position] + 1;
                if (v29 >= [v7 position] && (v30 = objc_msgSend(v7, "position") + 1, v30 <= objc_msgSend(v7, "length")))
                {
                  v31 = [v7 data];
                  [v31 getBytes:&v49 range:{objc_msgSend(v7, "position"), 1}];

                  [v7 setPosition:{objc_msgSend(v7, "position") + 1}];
                }

                else
                {
                  [v7 _setError];
                }

                v28 |= (v49 & 0x7F) << v26;
                if (v49 < 0)
                {
                  v26 += 7;
                  if (v27++ <= 8)
                  {
                    continue;
                  }

                  v34 = 0;
                  v33 = 0;
                }

                else
                {
                  if ([v7 hasError])
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v28;
                  }

                  v33 = v32 & 7;
                  v34 = v32 >> 3;
                  if (v33 == 4)
                  {
                    if (a2 == v34)
                    {
                      goto LABEL_49;
                    }

                    v33 = 4;
                  }
                }

                _dictionaryRepresentation(v7, v34, v33, v25);
                v26 = 0;
                v27 = 0;
                v28 = 0;
                if ([v7 hasError])
                {
LABEL_49:
                  v10 = 0x1E695D000;
                  break;
                }
              }
            }

LABEL_68:
            if (v25)
            {
              [v8 setObject:v25 forKey:v19];
            }

            break;
          case 5:
            v45 = 0;
            v20 = [v7 position] + 4;
            if (v20 >= [v7 position] && (v21 = objc_msgSend(v7, "position") + 4, v21 <= objc_msgSend(v7, "length")))
            {
              v42 = [v7 data];
              [v42 getBytes:&v45 range:{objc_msgSend(v7, "position"), 4}];

              [v7 setPosition:{objc_msgSend(v7, "position") + 4}];
            }

            else
            {
              [v7 _setError];
            }

            v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:v45];
            goto LABEL_67;
        }
      }

      v44 = [v7 position];
      a3 = 6;
    }

    while (v44 < [v7 length]);
  }
}

uint64_t *PB::Writer::writeVarInt(uint64_t *this, unsigned int a2, int a3)
{
  v5 = this;
  if (this[2] < (*this + 16))
  {
    this = PB::_grow(this, 0x10uLL);
  }

  v6 = a2;
  if (a3 != -1)
  {
    v7 = (8 * a3);
    if (v7 < 0x80)
    {
      LOBYTE(v9) = 8 * a3;
    }

    else
    {
      do
      {
        v8 = (*v5)++;
        *v8 = v7 | 0x80;
        v9 = v7 >> 7;
        v10 = v7 >> 14;
        v7 >>= 7;
      }

      while (v10);
    }

    v11 = (*v5)++;
    *v11 = v9;
  }

  if (a2 < 0x80)
  {
    LOBYTE(v13) = a2;
  }

  else
  {
    do
    {
      v12 = (*v5)++;
      *v12 = v6 | 0x80;
      v13 = v6 >> 7;
      v14 = v6 >> 14;
      v6 >>= 7;
    }

    while (v14);
  }

  v15 = (*v5)++;
  *v15 = v13;
  return this;
}

{
  v5 = this;
  if (this[2] < (*this + 16))
  {
    this = PB::_grow(this, 0x10uLL);
  }

  v6 = a2;
  if (a3 != -1)
  {
    v7 = (8 * a3);
    if (v7 < 0x80)
    {
      LOBYTE(v9) = 8 * a3;
    }

    else
    {
      do
      {
        v8 = (*v5)++;
        *v8 = v7 | 0x80;
        v9 = v7 >> 7;
        v10 = v7 >> 14;
        v7 >>= 7;
      }

      while (v10);
    }

    v11 = (*v5)++;
    *v11 = v9;
  }

  if (a2 < 0x80)
  {
    LOBYTE(v13) = a2;
  }

  else
  {
    do
    {
      v12 = (*v5)++;
      *v12 = v6 | 0x80;
      v13 = v6 >> 7;
      v14 = v6 >> 14;
      v6 >>= 7;
    }

    while (v14);
  }

  v15 = (*v5)++;
  *v15 = v13;
  return this;
}

uint64_t *PB::Writer::writeVarInt(uint64_t *this, unint64_t a2, int a3)
{
  v5 = this;
  if (this[2] < (*this + 16))
  {
    this = PB::_grow(this, 0x10uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3);
    if (v6 < 0x80)
    {
      LOBYTE(v8) = 8 * a3;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  if (a2 < 0x80)
  {
    LOBYTE(v12) = a2;
  }

  else
  {
    do
    {
      v11 = (*v5)++;
      *v11 = a2 | 0x80;
      v12 = a2 >> 7;
      v13 = a2 >> 14;
      a2 >>= 7;
    }

    while (v13);
  }

  v14 = (*v5)++;
  *v14 = v12;
  return this;
}

{
  v5 = this;
  if (this[2] < (*this + 16))
  {
    this = PB::_grow(this, 0x10uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3);
    if (v6 < 0x80)
    {
      LOBYTE(v8) = 8 * a3;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  if (a2 < 0x80)
  {
    LOBYTE(v12) = a2;
  }

  else
  {
    do
    {
      v11 = (*v5)++;
      *v11 = a2 | 0x80;
      v12 = a2 >> 7;
      v13 = a2 >> 14;
      a2 >>= 7;
    }

    while (v13);
  }

  v14 = (*v5)++;
  *v14 = v12;
  return this;
}

uint64_t *PB::Writer::writeSInt(uint64_t *this, int a2, int a3)
{
  v4 = this;
  v5 = (2 * a2) ^ (a2 >> 31);
  if (this[2] < (*this + 16))
  {
    this = PB::_grow(this, 0x10uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3);
    if (v6 < 0x80)
    {
      LOBYTE(v8) = 8 * a3;
    }

    else
    {
      do
      {
        v7 = (*v4)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v4)++;
    *v10 = v8;
  }

  if (v5 < 0x80)
  {
    LOBYTE(v12) = v5;
  }

  else
  {
    do
    {
      v11 = (*v4)++;
      *v11 = v5 | 0x80;
      v12 = v5 >> 7;
      v13 = v5 >> 14;
      v5 >>= 7;
    }

    while (v13);
  }

  v14 = (*v4)++;
  *v14 = v12;
  return this;
}

uint64_t *PB::Writer::writeSInt(uint64_t *this, uint64_t a2, int a3)
{
  v5 = this;
  v6 = 2 * a2;
  if (this[2] < (*this + 16))
  {
    this = PB::_grow(this, 0x10uLL);
  }

  v7 = v6 ^ (a2 >> 63);
  if (a3 != -1)
  {
    v8 = (8 * a3);
    if (v8 < 0x80)
    {
      LOBYTE(v10) = 8 * a3;
    }

    else
    {
      do
      {
        v9 = (*v5)++;
        *v9 = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    v12 = (*v5)++;
    *v12 = v10;
  }

  if (v7 < 0x80)
  {
    v14 = v6 ^ (a2 >> 63);
  }

  else
  {
    do
    {
      v13 = (*v5)++;
      *v13 = v7 | 0x80;
      v14 = v7 >> 7;
      v15 = v7 >> 14;
      v7 >>= 7;
    }

    while (v15);
  }

  v16 = (*v5)++;
  *v16 = v14;
  return this;
}

uint64_t *PB::Writer::writeFixed(uint64_t *this, int a2, int a3)
{
  v5 = this;
  if (this[2] < (*this + 20))
  {
    this = PB::_grow(this, 0x14uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3) | 5u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v8) = (8 * a3) | 5;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  **v5 = a2;
  *v5 += 4;
  return this;
}

{
  v5 = this;
  if (this[2] < (*this + 20))
  {
    this = PB::_grow(this, 0x14uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3) | 5u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v8) = (8 * a3) | 5;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  **v5 = a2;
  *v5 += 4;
  return this;
}

uint64_t *PB::Writer::writeFixed(uint64_t *this, uint64_t a2, int a3)
{
  v5 = this;
  if (this[2] < (*this + 24))
  {
    this = PB::_grow(this, 0x18uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3) | 1u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v8) = (8 * a3) | 1;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  **v5 = a2;
  *v5 += 8;
  return this;
}

{
  v5 = this;
  if (this[2] < (*this + 24))
  {
    this = PB::_grow(this, 0x18uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3) | 1u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v8) = (8 * a3) | 1;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  **v5 = a2;
  *v5 += 8;
  return this;
}

uint64_t *PB::Writer::write(uint64_t *this, char a2, int a3)
{
  v5 = this;
  if (this[2] < (*this + 16))
  {
    this = PB::_grow(this, 0x10uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3);
    if (v6 < 0x80)
    {
      LOBYTE(v8) = 8 * a3;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  v11 = (*v5)++;
  *v11 = a2;
  return this;
}

uint64_t *PB::Writer::write(uint64_t *this, float a2, int a3)
{
  v5 = this;
  if (this[2] < (*this + 20))
  {
    this = PB::_grow(this, 0x14uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3) | 5u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v8) = (8 * a3) | 5;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  **v5 = a2;
  *v5 += 4;
  return this;
}

uint64_t *PB::Writer::write(uint64_t *this, double a2, int a3)
{
  v5 = this;
  if (this[2] < (*this + 24))
  {
    this = PB::_grow(this, 0x18uLL);
  }

  if (a3 != -1)
  {
    v6 = (8 * a3) | 1u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v8) = (8 * a3) | 1;
    }

    else
    {
      do
      {
        v7 = (*v5)++;
        *v7 = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    v10 = (*v5)++;
    *v10 = v8;
  }

  **v5 = a2;
  *v5 += 8;
  return this;
}

void *PB::Writer::write(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 8) - *a2;
  if (a1[2] < *a1 + v6 + 16)
  {
    PB::_grow(a1, v6 + 16);
  }

  if (a3 != -1)
  {
    v7 = (8 * a3) | 2u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v9) = (8 * a3) | 2;
    }

    else
    {
      do
      {
        v8 = (*a1)++;
        *v8 = v7 | 0x80;
        v9 = v7 >> 7;
        v10 = v7 >> 14;
        v7 >>= 7;
      }

      while (v10);
    }

    v11 = (*a1)++;
    *v11 = v9;
  }

  LOBYTE(v12) = v6;
  if (v6 >= 0x80)
  {
    v13 = v6;
    do
    {
      v14 = (*a1)++;
      *v14 = v13 | 0x80;
      v12 = v13 >> 7;
      v15 = v13 >> 14;
      v13 >>= 7;
    }

    while (v15);
  }

  v16 = (*a1)++;
  *v16 = v12;
  result = memcpy(*a1, v5, v6);
  *a1 += v6;
  return result;
}

void *PB::Writer::write(PB::Writer *this, const PB::Data *a2, int a3)
{
  v6 = *a2;
  v5 = *(a2 + 1);
  if (*(this + 2) < *this + v5 + 16)
  {
    PB::_grow(this, v5 + 16);
  }

  if (a3 != -1)
  {
    v7 = (8 * a3) | 2u;
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v9) = (8 * a3) | 2;
    }

    else
    {
      do
      {
        v8 = (*this)++;
        *v8 = v7 | 0x80;
        v9 = v7 >> 7;
        v10 = v7 >> 14;
        v7 >>= 7;
      }

      while (v10);
    }

    v11 = (*this)++;
    *v11 = v9;
  }

  LOBYTE(v12) = v5;
  if (v5 >= 0x80)
  {
    v13 = v5;
    do
    {
      v14 = (*this)++;
      *v14 = v13 | 0x80;
      v12 = v13 >> 7;
      v15 = v13 >> 14;
      v13 >>= 7;
    }

    while (v15);
  }

  v16 = (*this)++;
  *v16 = v12;
  result = memcpy(*this, v6, v5);
  *this += v5;
  return result;
}

char *PB::Writer::writeSubgroup(PB::Writer *this, const PB::Base *a2, int a3)
{
  if (*(this + 2) < (*this + 8))
  {
    PB::_grow(this, 8uLL);
  }

  v6 = 8 * a3;
  if (a3 != -1)
  {
    v7 = (8 * a3) | 3u;
    if (v6 < 0x80)
    {
      LOBYTE(v9) = (8 * a3) | 3;
    }

    else
    {
      do
      {
        v8 = (*this)++;
        *v8 = v7 | 0x80;
        v9 = v7 >> 7;
        v10 = v7 >> 14;
        v7 >>= 7;
      }

      while (v10);
    }

    v11 = (*this)++;
    *v11 = v9;
  }

  result = (*(*a2 + 24))(a2, this);
  if (*(this + 2) < (*this + 8))
  {
    result = PB::_grow(this, 8uLL);
  }

  if (a3 != -1)
  {
    v13 = (8 * a3) | 4u;
    if (v6 < 0x80)
    {
      LOBYTE(v15) = (8 * a3) | 4;
    }

    else
    {
      do
      {
        v14 = (*this)++;
        *v14 = v13 | 0x80;
        v15 = v13 >> 7;
        v16 = v13 >> 14;
        v13 >>= 7;
      }

      while (v16);
    }

    v17 = (*this)++;
    *v17 = v15;
  }

  return result;
}

void sub_1C942611C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63F00]();
}

{
  return MEMORY[0x1EEE63F08]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}