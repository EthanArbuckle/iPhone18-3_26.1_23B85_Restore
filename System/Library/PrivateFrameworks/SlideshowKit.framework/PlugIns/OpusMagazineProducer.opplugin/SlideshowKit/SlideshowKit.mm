int64_t sub_ED0(id a1, id a2, id a3)
{
  [a2 doubleValue];
  v6 = v5;
  [a3 doubleValue];
  if (v6 > v7)
  {
    return 1;
  }

  [a2 doubleValue];
  v10 = v9;
  [a3 doubleValue];
  if (v10 >= v11)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

int64_t sub_1C58(id a1, id a2, id a3)
{
  [objc_msgSend(a2 objectAtIndexedSubscript:{1), "doubleValue"}];
  v5 = v4;
  [objc_msgSend(a3 objectAtIndexedSubscript:{1), "doubleValue"}];
  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_5B3C(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_5BA4(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_5C0C(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

id sub_753C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *(*(a1 + 40) + 8 * [a3 integerValue]));
  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

id sub_8640(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(*(a1 + 32) "presentation")];
  if (result)
  {
    v6 = result;
    [result offset];
    if (v7 != 0.0 || (result = [v6 offset], v8 != 0.0))
    {
      v9 = *(a1 + 40);

      return [v9 setObject:v6 forKey:a2];
    }
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}