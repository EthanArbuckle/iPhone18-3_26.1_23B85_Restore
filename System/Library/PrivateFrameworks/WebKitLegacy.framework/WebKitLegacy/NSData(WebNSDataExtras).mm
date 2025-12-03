@interface NSData(WebNSDataExtras)
- (BOOL)_web_isCaseInsensitiveEqualToCString:()WebNSDataExtras;
- (__CFString)_webkit_guessedMIMETypeForXML;
- (unint64_t)_webkit_guessedMIMEType;
@end

@implementation NSData(WebNSDataExtras)

- (__CFString)_webkit_guessedMIMETypeForXML
{
  if (self)
  {
    bytes = [self bytes];
    v3 = [self length];
    v4 = 1024;
    if (v3 < 0x400)
    {
      v4 = v3;
    }

    v5 = v4 - 6;
    if (v3 >= v4 - 6)
    {
      if (v4 == 6)
      {
        return 0;
      }

      v6 = 0;
      v7 = MEMORY[0x1E696EBB8];
      v8 = *(MEMORY[0x1E696EBB8] + 60);
      v36 = *(MEMORY[0x1E696EBB8] + 102);
      v37 = *(MEMORY[0x1E696EBB8] + 114);
      v9 = *(MEMORY[0x1E696EBB8] + 63);
      v10 = *(MEMORY[0x1E696EBB8] + 33);
      v11 = *(MEMORY[0x1E696EBB8] + 99);
      v34 = *(MEMORY[0x1E696EBB8] + 104);
      v35 = *(MEMORY[0x1E696EBB8] + 100);
      v32 = *(MEMORY[0x1E696EBB8] + 97);
      v33 = *(MEMORY[0x1E696EBB8] + 115);
      v30 = *(MEMORY[0x1E696EBB8] + 110);
      v31 = *(MEMORY[0x1E696EBB8] + 101);
      v12 = @"application/rss+xml";
      v29 = *(MEMORY[0x1E696EBB8] + 108);
      while (2)
      {
        v13 = v5 >= 0x10 ? 16 : v5;
        v14 = v13;
        v15 = bytes;
        while (*v15 != 60)
        {
          ++v15;
          if (!--v14)
          {
            if (v5 < 0x11)
            {
              return 0;
            }

            v15 = memchr((bytes + v13), 60, v5 - v13);
            if (!v15)
            {
              return 0;
            }

            break;
          }
        }

        v16 = &v15[-bytes];
        if (&v15[-bytes] == -1)
        {
          return 0;
        }

        v17 = v5 - v16;
        if (v5 >= v16)
        {
          if (v6)
          {
            if (v17 >= 8 && *(v7 + *v15) == v8 && *(v7 + v15[1]) == v11 && *(v7 + v15[2]) == v34 && *(v7 + v15[3]) == v32)
            {
              v18 = *(v7 + v15[4]);
              if (v18 == v30 && *(v7 + v15[5]) == v18 && *(v7 + v15[6]) == v31 && *(v7 + v15[7]) == v29)
              {
                return v12;
              }
            }

            goto LABEL_43;
          }

          if (v17 < 4)
          {
            if (v17 < 2)
            {
              return 0;
            }

            v19 = *(v7 + *v15);
            goto LABEL_57;
          }

          v19 = *(v7 + *v15);
          if (v17 == 4)
          {
            if (v19 != v8 || *(v7 + v15[1]) != v37)
            {
              goto LABEL_57;
            }

            if (*(v7 + v15[2]) != v35 || *(v7 + v15[3]) != v36)
            {
              v20 = *(v7 + v15[2]);
              if (v20 == v33 && *(v7 + v15[3]) == v20)
              {
                return v12;
              }

              goto LABEL_57;
            }

LABEL_43:
            v6 = 1;
            if (v5 <= v16)
            {
              break;
            }

            goto LABEL_64;
          }

          if (v19 != v8)
          {
            goto LABEL_57;
          }

          v21 = *(v7 + v15[1]);
          if (v21 == v37)
          {
            if (*(v7 + v15[2]) == v35 && *(v7 + v15[3]) == v36)
            {
              goto LABEL_43;
            }

            v22 = *(v7 + v15[2]);
            if (v22 == v33 && *(v7 + v15[3]) == v22)
            {
              return v12;
            }
          }

          if (v17 >= 6)
          {
            if (v21 == v36)
            {
              v24 = *(v7 + v15[2]);
              if (v24 == v31 && *(v7 + v15[3]) == v24 && *(v7 + v15[4]) == v35)
              {
                return @"application/atom+xml";
              }
            }
          }

          else if (v21 == v36)
          {
            v23 = *(v7 + v15[2]);
            if (v23 == v31 && *(v7 + v15[3]) == v23 && *(v7 + v15[4]) == v35)
            {
              return @"application/atom+xml";
            }
          }

LABEL_57:
          if (v19 == v8)
          {
            v25 = *(v7 + v15[1]);
            if (v25 == v9 || v25 == v10)
            {
              v6 = 0;
              if (v5 <= v16)
              {
                break;
              }

LABEL_64:
              v27 = v16 + 1;
              bytes += v27;
              v5 -= v27;
              if (v5)
              {
                continue;
              }
            }
          }

          return 0;
        }

        break;
      }
    }
  }

  __break(1u);
  return @"application/atom+xml";
}

- (unint64_t)_webkit_guessedMIMEType
{
  _webkit_guessedMIMETypeForXML = [self _webkit_guessedMIMETypeForXML];
  result = [(__CFString *)_webkit_guessedMIMETypeForXML length];
  if (result)
  {
    return _webkit_guessedMIMETypeForXML;
  }

  if (!self)
  {
    goto LABEL_132;
  }

  bytes = [self bytes];
  result = [self length];
  v5 = result;
  v6 = result >= 0x400 ? 1024 : result;
  v7 = v6 - 6;
  if (result < v6 - 6)
  {
    goto LABEL_132;
  }

  v8 = MEMORY[0x1E696EBB8];
  if (v6 != 6)
  {
    v9 = *(MEMORY[0x1E696EBB8] + 60);
    v59 = *(MEMORY[0x1E696EBB8] + 104);
    v61 = *(MEMORY[0x1E696EBB8] + 116);
    v49 = *(MEMORY[0x1E696EBB8] + 108);
    v50 = *(MEMORY[0x1E696EBB8] + 109);
    v10 = *(MEMORY[0x1E696EBB8] + 97);
    v55 = *(MEMORY[0x1E696EBB8] + 115);
    v57 = *(MEMORY[0x1E696EBB8] + 32);
    v47 = *(MEMORY[0x1E696EBB8] + 62);
    v48 = *(MEMORY[0x1E696EBB8] + 114);
    v51 = *(MEMORY[0x1E696EBB8] + 99);
    v53 = *(MEMORY[0x1E696EBB8] + 105);
    _webkit_guessedMIMETypeForXML = @"text/html";
    v11 = bytes;
    v45 = *(MEMORY[0x1E696EBB8] + 101);
    v46 = *(MEMORY[0x1E696EBB8] + 112);
    while (1)
    {
      if (v7 >= 0x10)
      {
        v12 = 16;
      }

      else
      {
        v12 = v7;
      }

      v13 = v12;
      result = v11;
      while (*result != 60)
      {
        ++result;
        if (!--v13)
        {
          if (v7 < 0x11)
          {
            goto LABEL_53;
          }

          result = memchr((v11 + v12), 60, v7 - v12);
          if (!result)
          {
            goto LABEL_53;
          }

          break;
        }
      }

      v14 = result - v11;
      if (result - v11 == -1)
      {
        goto LABEL_53;
      }

      v15 = v7 - v14;
      if (v7 < v14)
      {
        goto LABEL_132;
      }

      if (v15 >= 6)
      {
        break;
      }

      if (v15 >= 3)
      {
        v16 = v8[*result];
        if (v15 != 3)
        {
          goto LABEL_34;
        }

        if (v16 == v9 && v8[*(result + 1)] == v10 && v8[*(result + 2)] == v57)
        {
          return _webkit_guessedMIMETypeForXML;
        }
      }

LABEL_51:
      if (v7 <= v14)
      {
        goto LABEL_132;
      }

      v18 = v14 + 1;
      v11 += v18;
      v7 -= v18;
      if (!v7)
      {
        goto LABEL_53;
      }
    }

    v16 = v8[*result];
    if (v16 == v9 && v8[*(result + 1)] == v59 && v8[*(result + 2)] == v61 && v8[*(result + 3)] == v50 && v8[*(result + 4)] == v49 && v8[*(result + 5)] == v47)
    {
      return _webkit_guessedMIMETypeForXML;
    }

LABEL_34:
    if (v16 == v9 && v8[*(result + 1)] == v10 && v8[*(result + 2)] == v57)
    {
      return _webkit_guessedMIMETypeForXML;
    }

    if (v15 >= 7 && v16 == v9)
    {
      v17 = v8[*(result + 1)];
      if (v17 == v55 && v8[*(result + 2)] == v51 && v8[*(result + 3)] == v48 && v8[*(result + 4)] == v53 && v8[*(result + 5)] == v46 && v8[*(result + 6)] == v61)
      {
        return _webkit_guessedMIMETypeForXML;
      }

      if (v17 == v61 && v8[*(result + 2)] == v53 && v8[*(result + 3)] == v17 && v8[*(result + 4)] == v49 && v8[*(result + 5)] == v45 && v8[*(result + 6)] == v47)
      {
        return _webkit_guessedMIMETypeForXML;
      }
    }

    goto LABEL_51;
  }

LABEL_53:
  v19 = v6 - 8;
  if (v5 >= v6 - 8)
  {
    if (v6 != 8)
    {
      v20 = v8[116];
      v60 = v8[120];
      v62 = v8[101];
      v56 = v8[104];
      v58 = v8[47];
      _webkit_guessedMIMETypeForXML = @"text/html";
      v21 = bytes;
      v52 = v8[108];
      v54 = v8[109];
      do
      {
        v22 = v19 >= 0x10 ? 16 : v19;
        v23 = v22;
        v24 = v21;
        do
        {
          if (*v24 == 116)
          {
            goto LABEL_64;
          }

          ++v24;
          --v23;
        }

        while (v23);
        if (v19 >= 0x11)
        {
          v24 = memchr((v21 + v22), 116, v19 - v22);
          if (v24)
          {
LABEL_64:
            v25 = &v24[-v21];
            goto LABEL_66;
          }
        }

        v25 = -1;
LABEL_66:
        v26 = v22 <= 1 ? 1 : v22;
        v27 = v26;
        result = v21;
        do
        {
          if (*result == 84)
          {
            goto LABEL_74;
          }

          ++result;
          --v27;
        }

        while (v27);
        if (v19 >= 0x11)
        {
          result = memchr((v21 + v26), 84, v19 - v26);
          if (result)
          {
LABEL_74:
            v28 = result - v21;
            if (((result - v21) & v25) == 0xFFFFFFFFFFFFFFFFLL)
            {
              break;
            }

            goto LABEL_77;
          }
        }

        v28 = -1;
        if (v25 == -1)
        {
          break;
        }

LABEL_77:
        if (v28 >= v25)
        {
          v28 = v25;
        }

        if (v19 < v28)
        {
          goto LABEL_132;
        }

        if (v19 - v28 >= 9)
        {
          v29 = (v21 + v28);
          v30 = v8[*(v21 + v28)];
          if (v30 == v20 && v8[v29[1]] == v62 && v8[v29[2]] == v60 && v8[v29[3]] == v30 && v8[v29[4]] == v58 && v8[v29[5]] == v56 && v8[v29[6]] == v30 && v8[v29[7]] == v54 && v8[v29[8]] == v52)
          {
            return _webkit_guessedMIMETypeForXML;
          }
        }

        v31 = v28 + 1;
        v32 = v19 >= v31;
        v19 -= v31;
        if (!v32)
        {
          goto LABEL_132;
        }

        v21 += v31;
      }

      while (v19);
    }

    if (v5 >= 0xB)
    {
      if (*bytes == 0x43563A4E49474542 && *(bytes + 3) == 0x44524143563A4E49)
      {
        return @"text/vcard";
      }

      if (v5 >= 0xF && *bytes == 0x43563A4E49474542 && *(bytes + 7) == 0x5241444E454C4143)
      {
        return @"text/calendar";
      }
    }

    else if (!v5)
    {
      return @"text/plain";
    }

    v35 = 0;
    v36 = 0;
    do
    {
      if ((*(bytes + v35) - 32) >= 0x5Fu)
      {
        v37 = *(bytes + v35);
        v38 = (1 << v37) & 0x2600;
        if (v37 > 0xD || v38 == 0)
        {
          v36 = 1;
        }

        if (v37 > 0xD || v38 == 0)
        {
          break;
        }
      }

      ++v35;
    }

    while (v5 != v35);
    if (v36)
    {
      if (v5 < 4)
      {
        return 0;
      }

      v41 = bswap32(*bytes);
      v42 = bswap32(0xE0FFD8FF);
      v32 = v41 >= v42;
      v43 = v41 > v42;
      v44 = !v32;
      if (v43 == v44)
      {
        return @"image/jpeg";
      }

      else
      {
        return 0;
      }
    }

    return @"text/plain";
  }

LABEL_132:
  __break(1u);
  return result;
}

- (BOOL)_web_isCaseInsensitiveEqualToCString:()WebNSDataExtras
{
  if (self)
  {
    bytes = [self bytes];
    v6 = [self length];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v6)
    {
      return 0;
    }

    goto LABEL_7;
  }

  bytes = 0;
  v6 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 != strlen(a3))
  {
    return 0;
  }

LABEL_7:
  if (!v6)
  {
    return 1;
  }

  if ((*bytes | 0x20) != *a3)
  {
    return 0;
  }

  v7 = 0;
  while (v6 - 1 != v7)
  {
    v8 = a3[v7 + 1];
    v9 = bytes[++v7] | 0x20;
    if (v9 != v8)
    {
      return v7 >= v6;
    }
  }

  return 1;
}

@end