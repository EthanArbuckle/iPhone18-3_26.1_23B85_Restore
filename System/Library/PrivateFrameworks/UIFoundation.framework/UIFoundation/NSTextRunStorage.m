@interface NSTextRunStorage
@end

@implementation NSTextRunStorage

uint64_t __33___NSTextRunStorage_contentRange__block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      result = [*(*(a1 + 32) + 16) objectAtIndex:v6 effectiveRange:&v12];
      if (result)
      {
        v7 = result;
        result = [MEMORY[0x1E695DFB0] null];
        if (v7 != result)
        {
          break;
        }
      }

      v6 = v13 + v12;
      if (v13 + v12 >= v5)
      {
        return result;
      }
    }

    v8 = v13;
    if (v13)
    {
      v9 = v12;
      v10 = v13 + v12;
      if (v13 + v12 < v5)
      {
        v12 = v5;
        v13 = 0;
        while (1)
        {
          v11 = [*(*(a1 + 32) + 16) objectAtIndex:v5 - 1 effectiveRange:&v12];
          if (v11)
          {
            if (v11 != [MEMORY[0x1E695DFB0] null])
            {
              break;
            }
          }

          v5 = v12;
          if (v10 >= v12)
          {
            goto LABEL_16;
          }
        }

        v8 = v12 - v9 + v13;
      }

LABEL_16:
      result = [(_NSTextRunStorage *)a2 _createTextRangeFromRange:v9, v8];
      *(*(*(a1 + 40) + 8) + 40) = result;
    }
  }

  return result;
}

uint64_t __28___NSTextRunStorage_isEmpty__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 0;
  *a4 = 1;
  return result;
}

id __33___NSTextRunStorage_contentRange__block_invoke(uint64_t a1, id *a2)
{
  result = *a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __33___NSTextRunStorage_contentRange__block_invoke_2(uint64_t a1, id *a2)
{
  if (*a2)
  {
    v3 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [*(*(*(a1 + 32) + 8) + 40) location], objc_msgSend(*a2, "endLocation"));

    *(*(*(a1 + 32) + 8) + 40) = v3;
  }
}

id __69___NSTextRunStorage_enumerateObjectsFromLocation_options_usingBlock___block_invoke(uint64_t a1, id *a2)
{
  (*(*(a1 + 32) + 16))();

  result = [*a2 endLocation];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __53___NSTextRunStorage_invalidateElementsInRange_delta___block_invoke(uint64_t a1, id *a2)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*(v4 + 56) == 1)
  {
    v6 = [v5 range];
    v8 = [[NSCountableTextRange alloc] initWithRange:*(a1 + 40) + v6, v7];
  }

  else
  {
    v10 = -[_NSTextRunStorage _locationFromLocation:withOffset:](v4, [v5 location], *(a1 + 40));
    v8 = -[NSCountableTextRange initWithLocation:endLocation:]([NSCountableTextRange alloc], "initWithLocation:endLocation:", v10, -[_NSTextRunStorage _locationFromLocation:withOffset:](*(a1 + 32), [*a2 endLocation], *(a1 + 40)));
  }

  v9 = v8;

  *a2 = v9;
}

NSCountableTextLocation *__69___NSTextRunStorage_enumerateObjectsFromLocation_options_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [(_NSTextRunStorage *)a2 _indexFromTextLocation:?];
  v5 = [OUTLINED_FUNCTION_0_4() count];
  v6 = v5;
  v13 = 0;
  if (*(a1 + 64) == 1)
  {
    if (v4 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*(a1 + 32))
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    v4 = v8 - 1;
  }

  v14 = 0;
  v15 = 0;
  if (v4 < v5)
  {
    do
    {
      v9 = [OUTLINED_FUNCTION_0_4() objectAtIndex:v4 effectiveRange:&v14];
      if (v9 && v9 != [MEMORY[0x1E695DFB0] null])
      {
        if (*(a1 + 65))
        {
          v10 = 0;
        }

        else
        {
          v10 = [(_NSTextRunStorage *)a2 _createTextRangeFromRange:v14, v15];
        }

        (*(*(a1 + 48) + 16))();
      }

      if (*(a1 + 64))
      {
        v11 = -1;
      }

      else
      {
        v11 = v15;
      }

      v4 = v14 + v11;
    }

    while ((v13 & 1) == 0 && v4 < v6);
  }

  if (v4 < v6)
  {
    result = [(_NSTextRunStorage *)a2 _createLocationFromOffset:v4];
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

NSUInteger __40___NSTextRunStorage_setObject_forRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_3(a1, a2);
  v5 = v4;
  v6 = [OUTLINED_FUNCTION_0_4() count];
  v12.location = v3;
  v12.length = v5;
  v13.location = 0;
  v13.length = v6;
  v8 = NSIntersectionRange(v12, v13);
  result = v8.location;
  if (v8.length)
  {
    result = [*(*(v2 + 40) + 16) replaceObjectsInRange:v8.location withObject:v8.length length:{*(v2 + 48), v8.length}];
  }

  if (v3 + v5 > v6)
  {
    if (v3 <= v6)
    {
      v5 = v3 + v5 - v6;
    }

    else
    {
      [OUTLINED_FUNCTION_0_4() insertObject:0 range:v6];
      v6 = v3;
    }

    v9 = *(v2 + 48);
    v10 = *(*(v2 + 40) + 16);

    return [v10 insertObject:v9 range:{v6, v5}];
  }

  return result;
}

NSUInteger __53___NSTextRunStorage_invalidateElementsInRange_delta___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_3(a1, a2);
  v5 = v4;
  v6 = [OUTLINED_FUNCTION_0_4() count];
  v7 = *(v2 + 48);
  v14.location = v3;
  v14.length = v5;
  v15.location = 0;
  v15.length = v6;
  v10 = NSIntersectionRange(v14, v15);
  length = v10.length;
  result = v10.location;
  if (v3 + v5 >= v6)
  {
    v11 = v7 & (v7 >> 63);
  }

  else
  {
    v11 = v7;
  }

  if (v10.length)
  {
    result = [OUTLINED_FUNCTION_0_4() deleteObjectsInRange:{v10.location, length}];
  }

  if ((v10.length + v11) >= 1)
  {
    v12 = OUTLINED_FUNCTION_0_4();

    return [v12 insertObject:0 range:v10.location];
  }

  return result;
}

@end