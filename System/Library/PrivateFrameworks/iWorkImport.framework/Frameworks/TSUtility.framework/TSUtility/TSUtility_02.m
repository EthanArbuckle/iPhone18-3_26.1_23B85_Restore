unint64_t sub_27705820C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int *a6)
{
  v6 = a4 | 0x8000000000000000;
  if (a4 < 0)
  {
    v6 = a4 & 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((~a4 & 0x7C00000000000000) != 0)
  {
    a4 = v6;
  }

  return sub_277055134(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_27705822C(unint64_t a1, uint64_t a2, unint64_t *a3, int *a4)
{
  v9 = sub_2770907C8(a1, a2, a4);
  v10 = v8;
  if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
  {
    result = 0;
  }

  else
  {
    result = sub_27705820C(a1, a2, v9, v8, 0, a4);
  }

  *a3 = v9;
  a3[1] = a2 & 0x8000000000000000 | v10;
  return result;
}

BOOL TSUHandleSqlite(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    return a1 == 0;
  }

  if (a7)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a7 arguments:&a9];
  }

  else
  {
    v13 = @"SQLite error";
  }

  if (a1 == 101)
  {
    v14 = "not enough rows returned";
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = sqlite3_errmsg([a4 _sqliteDatabase]);
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_277112F44();
    if (!a2)
    {
      return a1 == 0;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!a2)
  {
    return a1 == 0;
  }

LABEL_11:
  if (*a2)
  {
    return a1 == 0;
  }

  v15 = 0;
  if (a1 > 265)
  {
    if (a1 == 266 || a1 == 522)
    {
      goto LABEL_22;
    }

    if (a1 != 778)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a1 <= 0x19)
  {
    if (((1 << a1) & 0x27A0000) != 0)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUHandleSqlite(int, NSError **, BOOL, TSUDatabase *, SEL, long, NSString *, ...)"}];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v16, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 370, 0, "SQLite misused");
      +[TSUAssertionHandler logBacktraceThrottled];
      v15 = 0;
      goto LABEL_24;
    }

    if (a1 != 13)
    {
      if (a1 != 14)
      {
        goto LABEL_24;
      }

LABEL_22:
      v15 = 1;
      goto LABEL_24;
    }

LABEL_23:
    v15 = 2;
  }

LABEL_24:
  v17 = [MEMORY[0x277CBEB38] dictionary];
  [v17 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", a1), @"TSUDatabaseSqliteErrorCode"}];
  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:@"TSUDatabaseErrorMessage"];
  }

  if (v14)
  {
    [v17 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKeyedSubscript:{"stringWithUTF8String:", v14), @"TSUDatabaseSqliteErrorMessage"}];
  }

  *a2 = [MEMORY[0x277CCA9B8] tsu_errorWithCode:v15 userInfo:v17];
  return a1 == 0;
}

os_log_t sub_2770591E4()
{
  result = TSULogCreateCategory("TSUDefaultCat");
  TSUDefaultCat_log_t = result;
  return result;
}

uint64_t sub_277059210(void *a1, int a2, sqlite3_stmt *a3, int iCol)
{
  if (sqlite3_column_type(a3, iCol) == 5)
  {

    return 0;
  }

  else
  {
    v8 = sqlite3_column_text(a3, iCol);

    return [a1 initWithUTF8String:v8];
  }
}

uint64_t sub_277059290(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, uint64_t *a5)
{
  v9 = [a1 lengthOfBytesUsingEncoding:4];
  if (HIDWORD(v9))
  {
    return 0;
  }

  if (sqlite3_bind_text(a3, a4, [a1 UTF8String], v9, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (TSUDefaultCat_init_token == -1)
    {
      if (!a5)
      {
        return 0;
      }
    }

    else
    {
      sub_277112F6C();
      if (!a5)
      {
        return 0;
      }
    }

    if (!*a5)
    {
      v11 = [MEMORY[0x277CCA9B8] tsu_errorWithCode:0 userInfo:0];
      result = 0;
      *a5 = v11;
      return result;
    }

    return 0;
  }

  return 1;
}

os_log_t sub_277059360()
{
  result = TSULogCreateCategory("TSUDefaultCat");
  TSUDefaultCat_log_t = result;
  return result;
}

const unsigned __int8 *sub_27705938C(int a1, int a2, sqlite3_stmt *a3, uint64_t iCol)
{
  result = sqlite3_column_text(a3, iCol);
  if (result)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) tsu_initWithSqlStatement:a3 columnIndex:iCol];

    return v7;
  }

  return result;
}

void sub_27705948C(void *a1, uint64_t a2, const char *a3, void *a4)
{
  v7 = [a1 methodSignatureForSelector:?];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfArguments] == 3)
    {
      v9 = [v8 getArgumentTypeAtIndex:2];
      while (2)
      {
        switch(*v9)
        {
          case '@':
            goto LABEL_10;
          case 'A':
          case 'D':
          case 'E':
          case 'F':
          case 'G':
          case 'H':
          case 'J':
          case 'K':
          case 'M':
          case 'P':
          case 'T':
          case 'U':
          case 'W':
          case 'X':
          case 'Y':
          case 'Z':
          case '[':
          case '\\':
          case ']':
          case '_':
          case 'a':
          case 'b':
          case 'e':
          case 'g':
          case 'h':
          case 'j':
          case 'k':
          case 'm':
          case 'p':
            goto LABEL_11;
          case 'B':
            [a4 BOOLValue];
            goto LABEL_31;
          case 'C':
            [a4 unsignedCharValue];
            goto LABEL_31;
          case 'I':
            [a4 unsignedIntValue];
            goto LABEL_31;
          case 'L':
            [a4 unsignedLongValue];
            goto LABEL_35;
          case 'N':
          case 'O':
          case 'R':
          case 'V':
          case 'n':
          case 'o':
          case 'r':
            ++v9;
            continue;
          case 'Q':
            [a4 unsignedLongLongValue];
            goto LABEL_35;
          case 'S':
            [a4 unsignedShortValue];
            goto LABEL_31;
          case '^':
            [a4 pointerValue];
            goto LABEL_35;
          case 'c':
            [a4 charValue];
            goto LABEL_31;
          case 'd':
            [a4 doubleValue];
            v10 = a1;
            v11 = a3;

            goto LABEL_16;
          case 'f':
            [a4 floatValue];
            v10 = a1;
            v11 = a3;

            goto LABEL_16;
          case 'i':
            [a4 intValue];
            goto LABEL_31;
          case 'l':
            [a4 longValue];
            goto LABEL_35;
          case 'q':
            [a4 longLongValue];
LABEL_35:
            v10 = a1;
            v11 = a3;
            goto LABEL_36;
          case 's':
            [a4 shortValue];
LABEL_31:
            v10 = a1;
            v11 = a3;

            goto LABEL_16;
          default:
            if (*v9 == 35)
            {
LABEL_10:
              v10 = a1;
              v11 = a3;
LABEL_36:

LABEL_16:
              [v10 v11];
              return;
            }

LABEL_11:
            v12 = [a4 objCType];
            if (v12)
            {
              v13 = v12;
              if (!strcmp(v9, v12))
              {
                v14 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v8];
                [v14 setTarget:a1];
                [v14 setSelector:a3];
                sizep = 0;
                NSGetSizeAndAlignment(v13, &sizep, 0);
                v15 = malloc_type_malloc(sizep, 0x3E329894uLL);
                [a4 getValue:v15];
                [v14 setArgument:v15 atIndex:2];
                [v14 invoke];
                free(v15);
                return;
              }
            }

            v23 = MEMORY[0x277CBEAD8];
            v24 = *MEMORY[0x277CBE660];
            v25 = MEMORY[0x277CCACA8];
            v26 = objc_opt_class();
            v20 = [v25 stringWithFormat:@"*** -[%@ %@] first argument type does not match type of %@.", v26, NSStringFromSelector(a3), a4];
            v21 = v23;
            v22 = v24;
            break;
        }

        break;
      }
    }

    else
    {
      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE660];
      v18 = MEMORY[0x277CCACA8];
      v19 = objc_opt_class();
      v20 = [v18 stringWithFormat:@"*** -[%@ %@] does not take one argument.", v19, NSStringFromSelector(a3)];
      v21 = v16;
      v22 = v17;
    }

    objc_exception_throw([v21 exceptionWithName:v22 reason:v20 userInfo:0]);
  }

  MEMORY[0x2821F9670](a1, sel_doesNotRecognizeSelector_);
}

uint64_t sub_2770598F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    return 1;
  }

  if (a3)
  {
    v4 = a3;
    v5 = a4;
    return [v4 isEqual:v5];
  }

  if (a4)
  {
    v4 = a4;
    v5 = 0;
    return [v4 isEqual:v5];
  }

  return 0;
}

TSUKVOToken *sub_27705992C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [[TSUKVOToken alloc] initWithObserver:a3 target:a1 keyPath:a4 context:a6];
  AssociatedObject = objc_getAssociatedObject(a1, qword_280A5C300);
  if (!AssociatedObject)
  {
    v14 = [MEMORY[0x277CBEB58] setWithObjects:{v11, 0}];
    objc_setAssociatedObject(a1, qword_280A5C300, v14, 1);
LABEL_7:
    [a1 addObserver:a3 forKeyPath:a4 options:a5 context:a6];
    goto LABEL_8;
  }

  v13 = AssociatedObject;
  if (([AssociatedObject containsObject:v11] & 1) == 0)
  {
    [v13 addObject:v11];
    goto LABEL_7;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_277112F80();
  }

LABEL_8:

  return v11;
}

os_log_t sub_277059A48()
{
  result = TSULogCreateCategory("TSUDefaultCat");
  TSUDefaultCat_log_t = result;
  return result;
}

void *sub_277059A74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_class();
  result = TSUDynamicCast(v5, a3);
  if (result)
  {
    v7 = result;
    if ([result target] != a1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSObject(TSUAdditions) tsu_removeObserverForToken:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSObject_TSUAdditions.m"], 211, 0, "Attempted to stop key-value observing on %@ using a token that it was not associated with", a1);
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    AssociatedObject = objc_getAssociatedObject(a1, qword_280A5C300);
    result = [AssociatedObject containsObject:v7];
    if (result)
    {
      [objc_msgSend(v7 "target")];

      return [AssociatedObject removeObject:v7];
    }
  }

  return result;
}

uint64_t sub_27705C118()
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  return MEMORY[0x2821F96F8]();
}

void sub_27705C358()
{
  v0 = SFUMainBundle();
  v7 = [v0 bundleIdentifier];

  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v7)
  {
    v2 = v7;
  }

  else
  {
    v2 = @"com.apple.Unknown";
  }

  v3 = [v1 initWithFormat:@"%@_%d", v2, getpid()];
  v4 = qword_280A63AE0;
  qword_280A63AE0 = v3;

  if (!qword_280A63AE0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:error:]_block_invoke"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectory.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:119 isFatal:0 description:"invalid nil value for '%{public}s'", "secretSubdirectoryNameBase"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

uint64_t sub_27705C4A0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v43 = 0;
  v7 = [a1 attributesOfItemAtPath:v6 error:&v43];
  v8 = v43;
  v9 = [v7 fileType];
  v10 = *MEMORY[0x277CCA1E8];
  if (([v9 isEqualToString:*MEMORY[0x277CCA1E8]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CCA1F0]) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CCA1F8]))
  {
    v35 = a4;
    v11 = [v7 filePosixPermissions];
    v12 = MEMORY[0x277CBEAC0];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11 | 0x80];
    v14 = [v12 dictionaryWithObject:v13 forKey:*MEMORY[0x277CCA180]];
    v42 = v8;
    v15 = [a1 setAttributes:v14 ofItemAtPath:v6 error:&v42];
    v16 = v42;

    if (v15)
    {
      if (![v9 isEqualToString:v10])
      {
        v27 = 1;
LABEL_26:
        v8 = v16;
        goto LABEL_27;
      }

      v34 = v9;
      v17 = objc_autoreleasePoolPush();
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v37 = 0;
      v18 = [a1 contentsOfDirectoryAtPath:v6 error:&v37];
      v19 = v37;
      v20 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v31 = v17;
        v32 = v16;
        v33 = v7;
        v22 = *v39;
        while (2)
        {
          v23 = 0;
          v24 = v19;
          do
          {
            if (*v39 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v25 = [v6 stringByAppendingPathComponent:*(*(&v38 + 1) + 8 * v23)];
            v36 = v24;
            v26 = [a1 tsu_grantUserWritePosixPermissionAtPath:v25 error:&v36];
            v19 = v36;

            if ((v26 & 1) == 0)
            {
              v19 = v19;

              v27 = 0;
              v16 = v19;
              v7 = v33;
              goto LABEL_18;
            }

            ++v23;
            v24 = v19;
          }

          while (v21 != v23);
          v21 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

        v27 = 1;
        v16 = v32;
        v7 = v33;
LABEL_18:
        v17 = v31;
      }

      else
      {
        v27 = 1;
      }

      objc_autoreleasePoolPop(v17);
      v9 = v34;
    }

    else
    {
      v27 = 0;
    }

    if (v35 && (v27 & 1) == 0)
    {
      if (!v16)
      {
        v30 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
        *v35 = v30;

        v27 = 0;
        v8 = 0;
        goto LABEL_27;
      }

      v28 = v16;
      v27 = 0;
      *v35 = v16;
    }

    goto LABEL_26;
  }

  v27 = 1;
LABEL_27:

  return v27;
}

unint64_t sub_27705C7FC(unint64_t result, unint64_t a2, int a3, int a4, _DWORD *a5)
{
  v6 = a2 & 0x8000000000000000;
  if (((a2 >> 61) & 3) == 3)
  {
    if ((a2 & 0x7800000000000000) == 0x7800000000000000)
    {
      if ((a2 & 0x3FFFFFFFFFFFLL) <= qword_280A5B9F8)
      {
        if ((a2 & 0x3FFFFFFFFFFFLL) != qword_280A5B9F8 || qword_280A5B9F0 > result)
        {
          v7 = result;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        result = 0;
      }

      else
      {
        result = v7;
      }
    }

    else
    {
      result = 0;
    }

LABEL_36:
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a5 |= 1u;
    }

    return result;
  }

  v8 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > qword_280A5BA08 || ((a2 & 0x1FFFFFFFFFFFFLL) == qword_280A5BA08 ? (v9 = qword_280A5BA00 > result) : (v9 = 1), !v9))
  {
    result = 0;
    v8 = 0;
  }

  if (!(v8 | result))
  {
    goto LABEL_36;
  }

  v10 = ((a2 >> 49) & 0x3FFF) + a3;
  if (v10 >> 12 <= 2)
  {
    return result;
  }

  v11 = 0x314DC6448D93;
  if (v10 >= 12288)
  {
    if (v8 < 0x314DC6448D93)
    {
      v12 = (v10 << 49) - v6;
      do
      {
        v13 = result;
        *(&v15 + 1) = v8;
        *&v15 = result;
        v14 = v15 >> 61;
        *(&v15 + 1) = v8;
        *&v15 = result;
        v8 = (v15 >> 63) + v14;
        result *= 10;
        if (result < 8 * v13)
        {
          ++v8;
        }

        v16 = v10 - 1;
        v12 -= 0x2000000000000;
        if (v8 >= 0x314DC6448D93)
        {
          break;
        }

        v9 = v10-- > 0x3000;
      }

      while (v9);
      if (v16 >> 12 <= 2)
      {
        return result;
      }
    }

    LODWORD(v10) = 0x7FFFFFFF;
  }

  v19 = result == 0x378D8E6400000000 && v8 == 0x1ED09BEAD87C0;
  if (result == 0x378D8E6400000000 && v8 == 0x1ED09BEAD87C0)
  {
    result = 0x38C15B0A00000000;
  }

  v20 = v10 + v19;
  if (!v19)
  {
    v11 = v8;
  }

  if (v20 < 0x3000)
  {
    return result;
  }

  if (v20 < 0)
  {
    if (v20 <= 0xFFFFFFDD)
    {
      *a5 |= 0x30u;
      if (v6)
      {
        if (a4 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 2)
      {
        return 0;
      }

      return 1;
    }

    v21 = -v20;
    v22 = 3 - a4;
    if ((a4 - 1) >= 2 || v6 == 0)
    {
      v22 = a4;
    }

    v24 = xmmword_280A5A7C0[36 * v22 + v21] + __PAIR128__(v11, result);
    v25 = (&unk_280A5B300 + 16 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = v27 * DWORD1(v24);
    v29 = HIDWORD(v28);
    v30 = HIDWORD(v27) * v24 + v28 + ((v27 * v24) >> 32);
    v31 = (v27 * v24) | (v30 << 32);
    v32 = DWORD2(v24) * HIDWORD(v26);
    v33 = HIDWORD(v24) * v26 + v32 + ((DWORD2(v24) * v26) >> 32);
    v34 = (DWORD2(v24) * v26) | (v33 << 32);
    v35 = v26 * DWORD1(v24);
    v36 = HIDWORD(v26) * v24 + v35 + ((v26 * v24) >> 32);
    v37 = HIDWORD(v35) + HIDWORD(v26) * DWORD1(v24) + HIDWORD(v36);
    v38 = (v26 * v24) | (v36 << 32);
    v39 = HIDWORD(v24) * v27;
    v40 = HIDWORD(v39) + HIDWORD(v24) * HIDWORD(v27);
    v41 = DWORD2(v24) * HIDWORD(v27) + v39 + ((DWORD2(v24) * v27) >> 32);
    v42 = HIDWORD(v41);
    v43 = (DWORD2(v24) * v27) | (v41 << 32);
    v44 = __CFADD__(v31, v34);
    v45 = v31 + v34 + v37;
    v46 = __PAIR128__(v40, v43) + __PAIR128__(v42, (__PAIR128__(v29 + HIDWORD(v27) * DWORD1(v24) + HIDWORD(v24) * HIDWORD(v26) + HIDWORD(v32) + HIDWORD(v30) + HIDWORD(v33), v31 + v34) + __PAIR128__(v44, v37)) >> 64);
    v47 = dword_280A5B540[v21];
    result = ((__PAIR128__(v40, v43) + __PAIR128__(v42, (__PAIR128__(v29 + HIDWORD(v27) * DWORD1(v24) + HIDWORD(v24) * HIDWORD(v26) + HIDWORD(v32) + HIDWORD(v30) + HIDWORD(v33), v31 + v34) + __PAIR128__(v44, v37)) >> 64)) >> 64) >> v47;
    if (v47 < 64)
    {
      result = (*(&v46 + 1) << -v47) | (v46 >> v47);
    }

    if (!a4 && (result & 1) != 0)
    {
      v48 = ((2 * *(&v46 + 1)) << ~(v47 - 64)) | (v46 >> (v47 - 64));
      if (v47 >= 65)
      {
        v49 = v46 << -v47 != 0;
      }

      else
      {
        v48 = v46 << -v47;
        v49 = 0;
      }

      if (!v48 && !v49 && (v45 < v27 || v45 == v27 && v38 < v26))
      {
        --result;
      }
    }

    if ((*a5 & 0x20) != 0)
    {
      v55 = 16;
      goto LABEL_117;
    }

    v50 = 0x80 - v47;
    if (v47 >= 65)
    {
      v51 = (*(&v46 + 1) << (0x80 - v47)) | (v46 >> v47);
    }

    else
    {
      v51 = v46 << -v47;
    }

    if (v47 >= 65)
    {
      v52 = v46 << (0x80 - v47);
    }

    else
    {
      v52 = 0;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        goto LABEL_120;
      }

      if (v22 != 4)
      {
        goto LABEL_126;
      }
    }

    else if (v22)
    {
      if (v22 != 1)
      {
LABEL_126:
        v58 = __CFADD__(__CFADD__(v38, v26), v45);
        v59 = __CFADD__(v38, v26) + v45;
        v60 = v58;
        v61 = __CFADD__(v59, v27);
        v62 = (v61 | v60) & 1;
        v63 = v51 >> -v47;
        v64 = v47 - 64;
        v65 = v51 >> v50;
        if (v47 < 65)
        {
          v65 = 0;
        }

        else
        {
          v64 = v47 - 64;
          v63 = (v52 >> v50) | (v51 << v47);
        }

        v66 = 1 << v64;
        if (v47 < 64)
        {
          v66 = 0;
        }

        v58 = __CFADD__(v63, v62);
        v67 = v63 + v62;
        if (v58)
        {
          v68 = v65 + 1;
        }

        else
        {
          v68 = v65;
        }

        if (v68 > v66)
        {
          return result;
        }

        v69 = v67 >> v47;
        v70 = v47 < 64 && v69 == 0;
        v71 = v70;
        v55 = 48;
        if (v68 == v66 && !v71)
        {
          return result;
        }

LABEL_117:
        *a5 |= v55;
        return result;
      }

LABEL_120:
      if (!(v51 | v52))
      {
        goto LABEL_121;
      }

      goto LABEL_116;
    }

    if (v51 == 0x8000000000000000 && v52 == 0)
    {
LABEL_121:
      v57 = v45 == v27;
      if (v45 < v27)
      {
        return result;
      }

      v55 = 48;
      if (v57 && v38 < v26)
      {
        return result;
      }

      goto LABEL_117;
    }

LABEL_116:
    v55 = 48;
    goto LABEL_117;
  }

  if (v20 > 0x3021)
  {
    goto LABEL_96;
  }

  while (1)
  {
    if (qword_280A5B9F8 > v11)
    {
      if (v20 < 12288)
      {
        return result;
      }

      goto LABEL_53;
    }

    if (qword_280A5B9F8 != v11)
    {
      goto LABEL_95;
    }

    if (qword_280A5B9F0 <= result || v20 < 12288)
    {
      break;
    }

LABEL_53:
    v11 = (result >> 63) + (result >> 61) + 10 * v11;
    if (10 * result < 8 * result)
    {
      ++v11;
    }

    --v20;
    result *= 10;
  }

  v11 = qword_280A5B9F8;
LABEL_95:
  if (v20 >= 12288)
  {
LABEL_96:
    if (result | v11)
    {
      *a5 |= 0x28u;
      if (v6)
      {
        v53 = 2;
      }

      else
      {
        v53 = 1;
      }

      if (v53 == a4)
      {
        v54 = 0x378D8E63FFFFFFFFLL;
      }

      else
      {
        v54 = 0;
      }

      if (a4 == 3)
      {
        return 0x378D8E63FFFFFFFFLL;
      }

      else
      {
        return v54;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_27705D72C(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [@"          " mutableCopy];
  v7 = v5;
  while ([v5 length] < a3)
  {
    [v7 appendString:v7];
    v5 = v7;
  }

  [v7 deleteCharactersInRange:{a3, objc_msgSend(v7, "length") - a3}];
  [a1 insertString:v7 atIndex:0];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v7];
  [a1 replaceOccurrencesOfString:@"\n" withString:v6 options:0 range:{0, objc_msgSend(a1, "length")}];
}

id TSUArrayDescription(void *a1)
{
  v1 = a1;
  v2 = +[TSUDescription descriptionWithObject:format:](TSUDescription, "descriptionWithObject:format:", v1, @" count=%lu", [v1 count]);;
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%lu]", v3];
      v5 = [v1 objectAtIndexedSubscript:v3];
      [v2 addField:v4 format:{@"%@", v5}];

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  [v2 setFieldOptionCommaSeparated];
  v6 = [v2 descriptionString];

  return v6;
}

__CFString *TSUObjectReferenceDescription(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = MEMORY[0x277CCACA8];
    ClassName = object_getClassName(v1);
    if (isKindOfClass)
    {
      [v3 stringWithFormat:@"(%s*)%p; count=%lu", ClassName, v1, objc_msgSend(v1, "count")];
    }

    else
    {
      [v3 stringWithFormat:@"(%s*)%p", ClassName, v1, v7];
    }
    v5 = ;
  }

  else
  {
    v5 = @"<nil>";
  }

  return v5;
}

BOOL TSUCGAffineTransformIsValid(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 24) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    return fabs(*(a1 + 40)) != INFINITY;
  }

  return 0;
}

uint64_t sub_27705E980()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSUNotifyCGAssertionAvoided()"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSafeCGWrappers.m"];
  [TSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:98 isFatal:0 description:"A CG call was elided because of an invalid parameter."];

  return +[TSUAssertionHandler logFullBacktrace];
}

CGPathRef CGPathCreateCopyByStrokingPathSafe(const CGPath *a1, const CGAffineTransform *a2, CGLineCap a3, CGLineJoin a4, CGFloat a5, CGFloat a6)
{
  if (TSUCGAffineTransformIsValid(a2))
  {

    return CGPathCreateCopyByStrokingPath(a1, a2, a5, a3, a4, a6);
  }

  else
  {
    sub_27705E980();
    return 0;
  }
}

CGMutablePathRef CGPathCreateCopyByTransformingPathSafe(const CGPath *a1, const CGAffineTransform *a2)
{
  if (TSUCGAffineTransformIsValid(a2))
  {

    return CGPathCreateMutableCopyByTransformingPath(a1, a2);
  }

  else
  {
    sub_27705E980();
    return 0;
  }
}

CGMutablePathRef CGPathCreateMutableCopyByTransformingPathSafe(const CGPath *a1, const CGAffineTransform *a2)
{
  if (TSUCGAffineTransformIsValid(a2))
  {

    return CGPathCreateMutableCopyByTransformingPath(a1, a2);
  }

  else
  {
    sub_27705E980();
    return 0;
  }
}

CGPathRef CGPathCreateWithRectSafe(const CGAffineTransform *a1, double a2, double a3, double a4, double a5)
{
  if (TSUCGAffineTransformIsValid(a1))
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    v13 = a5;

    return CGPathCreateWithRect(*&v10, a1);
  }

  else
  {
    sub_27705E980();
    return 0;
  }
}

CGPathRef CGPathCreateWithEllipseInRectSafe(const CGAffineTransform *a1, double a2, double a3, double a4, double a5)
{
  if (TSUCGAffineTransformIsValid(a1))
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    v13 = a5;

    return CGPathCreateWithEllipseInRect(*&v10, a1);
  }

  else
  {
    sub_27705E980();
    return 0;
  }
}

void CGPathMoveToPointSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v9 = fabs(a3) != INFINITY;
  v11 = fabs(a4) == INFINITY || !v9;
  if (v11 || !IsValid)
  {

    sub_27705E980();
  }

  else
  {

    CGPathMoveToPoint(a1, a2, a3, a4);
  }
}

void CGPathAddLineToPointSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v9 = fabs(a3) != INFINITY;
  v11 = fabs(a4) == INFINITY || !v9;
  if (v11 || !IsValid)
  {

    sub_27705E980();
  }

  else
  {

    CGPathAddLineToPoint(a1, a2, a3, a4);
  }
}

void CGPathAddQuadCurveToPointSafe(CGPath *a1, const CGAffineTransform *a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v13 = fabs(a5) != INFINITY;
  v15 = fabs(a6) == INFINITY || !v13;
  if (v15 || !IsValid)
  {

    sub_27705E980();
  }

  else
  {

    CGPathAddQuadCurveToPoint(a1, a2, a3, a4, a5, a6);
  }
}

void CGPathAddCurveToPointSafe(CGPath *a1, const CGAffineTransform *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v17 = fabs(a7) != INFINITY;
  v19 = fabs(a8) == INFINITY || !v17;
  if (v19 || !IsValid)
  {

    sub_27705E980();
  }

  else
  {

    CGPathAddCurveToPoint(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void CGPathAddArcSafe(CGPath *a1, const CGAffineTransform *a2, BOOL a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v17 = fabs(a4) != INFINITY;
  v19 = fabs(a5) == INFINITY || !v17;
  if (v19 || !IsValid)
  {

    sub_27705E980();
  }

  else
  {

    CGPathAddArc(a1, a2, a4, a5, a6, a7, a8, a3);
  }
}

void CGPathAddRelativeArcSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v15 = fabs(a3) != INFINITY;
  v17 = fabs(a4) == INFINITY || !v15;
  if (v17 || !IsValid)
  {

    sub_27705E980();
  }

  else
  {

    CGPathAddRelativeArc(a1, a2, a3, a4, a5, a6, a7);
  }
}

void CGPathAddArcToPointSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4, double a5, double a6, CGFloat a7)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v15 = fabs(a3) != INFINITY;
  v16 = fabs(a4) != INFINITY;
  v17 = fabs(a5) != INFINITY;
  v23 = fabs(a6) == INFINITY || !v17 || !v16 || !v15;
  if (v23 || !IsValid)
  {

    sub_27705E980();
  }

  else
  {

    CGPathAddArcToPoint(a1, a2, a3, a4, a5, a6, a7);
  }
}

void CGPathAddRectSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4, double a5, double a6)
{
  if (TSUCGAffineTransformIsValid(a2))
  {
    v12 = a3;
    v13 = a4;
    v14 = a5;
    v15 = a6;

    CGPathAddRect(a1, a2, *&v12);
  }

  else
  {

    sub_27705E980();
  }
}

void CGPathAddRectsSafe(CGPath *a1, const CGAffineTransform *a2, const CGRect *a3, size_t a4)
{
  if (TSUCGAffineTransformIsValid(a2))
  {

    CGPathAddRects(a1, a2, a3, a4);
  }

  else
  {

    sub_27705E980();
  }
}

void CGPathAddEllipseInRectSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4, double a5, double a6)
{
  if (TSUCGAffineTransformIsValid(a2))
  {
    v12 = a3;
    v13 = a4;
    v14 = a5;
    v15 = a6;

    CGPathAddEllipseInRect(a1, a2, *&v12);
  }

  else
  {

    sub_27705E980();
  }
}

void CGPathAddRoundedRectSafe(CGPath *a1, const CGAffineTransform *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v17 = a7 < 0.0 || !IsValid;
  if (v17 || ((v25.origin.x = a3, v25.origin.y = a4, v25.size.width = a5, v25.size.height = a6, Width = CGRectGetWidth(v25), a8 >= 0.0) ? (v19 = a7 + a7 > Width) : (v19 = 1), v19 || (v26.origin.x = a3, v26.origin.y = a4, v26.size.width = a5, v26.size.height = a6, a8 + a8 > CGRectGetHeight(v26))))
  {

    sub_27705E980();
  }

  else
  {
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;

    CGPathAddRoundedRect(a1, a2, *&v20, a7, a8);
  }
}

void CGContextAddPathSafe(CGContext *a1, const CGPath *a2)
{
  memset(&v4, 0, sizeof(v4));
  CGContextGetCTM(&v4, a1);
  if (TSUCGAffineTransformIsValid(&v4))
  {
    CGContextAddPath(a1, a2);
  }

  else
  {
    sub_27705E980();
  }
}

void CGPathAddPathSafe(CGPath *a1, const CGAffineTransform *a2, const CGPath *a3)
{
  if (TSUCGAffineTransformIsValid(a2))
  {

    CGPathAddPath(a1, a2, a3);
  }

  else
  {

    sub_27705E980();
  }
}

BOOL CGPathContainsPointSafe(const CGPath *a1, const CGAffineTransform *a2, BOOL a3, double a4, double a5)
{
  if (TSUCGAffineTransformIsValid(a2))
  {
    v10 = a4;
    v11 = a5;

    return CGPathContainsPoint(a1, a2, *&v10, a3);
  }

  else
  {
    sub_27705E980();
    return 0;
  }
}

void CGContextClipToRectSafe(CGContextRef c, CGRect rect)
{
  if ((*&rect.origin.x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&rect.origin.y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&rect.size.width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&rect.size.height & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_27705E980();
  }

  else
  {
    CGContextClipToRect(c, rect);
  }
}

SFUReadChannelNSInputStreamAdaptor *sub_27705F95C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v6 = [[TSUReadChannelInputStreamAdapter alloc] initWithReadChannel:v5 length:a4];

  v7 = [[SFUReadChannelNSInputStreamAdaptor alloc] initWithSFUInputStream:v6];

  return v7;
}

uint64_t TSUDeviceRGBColorSpace()
{
  if (qword_2815AEAD8 != -1)
  {
    sub_277112FD0();
  }

  return qword_2815AEAD0;
}

CGColorSpaceRef sub_27705FA18()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_2815AEAD0 = result;
  return result;
}

uint64_t TSUDeviceCMYKColorSpace()
{
  if (qword_2815AEAE8 != -1)
  {
    sub_277112FE4();
  }

  return qword_2815AEAE0;
}

CGColorSpaceRef sub_27705FA70()
{
  result = CGColorSpaceCreateDeviceCMYK();
  qword_2815AEAE0 = result;
  return result;
}

uint64_t TSUDeviceGrayColorSpace()
{
  if (qword_2815AEAF8 != -1)
  {
    sub_277112FF8();
  }

  return qword_2815AEAF0;
}

CGColorSpaceRef sub_27705FAC8()
{
  result = CGColorSpaceCreateDeviceGray();
  qword_2815AEAF0 = result;
  return result;
}

CGColorSpaceRef sub_27705FAE8()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF458]);
  qword_280A63AF8 = result;
  return result;
}

CGColorSpaceRef sub_27705FB14()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF438]);
  qword_280A63B08 = result;
  return result;
}

CGColorSpaceRef sub_27705FB40()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF440]);
  qword_280A63B18 = result;
  return result;
}

uint64_t TSUSRGBColorSpace()
{
  if (qword_280A63B30 != -1)
  {
    sub_27711300C();
  }

  return qword_280A63B28;
}

CGColorSpaceRef sub_27705FBA4()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  qword_280A63B28 = result;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    qword_280A63B28 = result;
  }

  return result;
}

uint64_t TSUExtendedSRGBColorSpace()
{
  if (qword_280A63B40 != -1)
  {
    sub_277113020();
  }

  return qword_280A63B38;
}

void sub_27705FC1C()
{
  if (!qword_280A63B38)
  {
    qword_280A63B38 = CGColorSpaceCreateDeviceRGB();
  }
}

uint64_t TSUP3ColorSpace()
{
  if (qword_280A63B50 != -1)
  {
    sub_277113034();
  }

  return qword_280A63B48;
}

CGColorSpaceRef sub_27705FC84()
{
  v0 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  result = MEMORY[0x277CA5310]([MEMORY[0x277CBEA90] dataWithContentsOfFile:v0]);
  qword_280A63B48 = result;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    qword_280A63B48 = result;
  }

  return result;
}

uint64_t TSUExtendedP3ColorSpace()
{
  if (qword_280A63B60 != -1)
  {
    sub_277113048();
  }

  return qword_280A63B58;
}

void sub_27705FD20()
{
  if (!qword_280A63B58)
  {
    qword_280A63B58 = CGColorSpaceCreateDeviceRGB();
  }
}

uint64_t TSUPQColorSpace()
{
  if (qword_280A63B70 != -1)
  {
    sub_27711305C();
  }

  return qword_280A63B68;
}

CGColorSpaceRef sub_27705FD88()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF480]);
  qword_280A63B68 = result;
  return result;
}

uint64_t TSUHLGColorSpace()
{
  if (qword_280A63B80 != -1)
  {
    sub_277113070();
  }

  return qword_280A63B78;
}

CGColorSpaceRef sub_27705FDEC()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF478]);
  qword_280A63B78 = result;
  return result;
}

BOOL TSUColorSpaceIsExtendedRGB(uint64_t a1)
{
  if (qword_280A63B40 != -1)
  {
    sub_277113020();
  }

  if (qword_280A63B38 == a1)
  {
    return 1;
  }

  if (qword_280A63B60 != -1)
  {
    sub_277113048();
  }

  return qword_280A63B58 == a1;
}

CGImageRef TSUCGImageCreateCopyByApplyingGenericColorSpaceIfNeeded(CGImageRef image, const __CFDictionary *a2)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  if (sub_27705FFCC(a2))
  {
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CD2E40]);
  if (!Value)
  {
    goto LABEL_18;
  }

  v5 = Value;
  if (CFStringCompare(Value, *MEMORY[0x277CD2E58], 0) == kCFCompareEqualTo)
  {
    if (qword_280A63B00 != -1)
    {
      sub_2771130AC();
    }

    v6 = &qword_280A63AF8;
LABEL_16:
    if (*v6)
    {
      result = CGImageCreateCopyWithColorSpace(image, *v6);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_18;
  }

  if (CFStringCompare(v5, *MEMORY[0x277CD2E48], 0) == kCFCompareEqualTo)
  {
    if (qword_280A63B10 != -1)
    {
      sub_277113098();
    }

    v6 = &qword_280A63B08;
    goto LABEL_16;
  }

  if (CFStringCompare(v5, *MEMORY[0x277CD2E50], 0) == kCFCompareEqualTo)
  {
    if (qword_280A63B20 != -1)
    {
      sub_277113084();
    }

    v6 = &qword_280A63B18;
    goto LABEL_16;
  }

LABEL_18:

  return CGImageRetain(image);
}

const __CFDictionary *sub_27705FFCC(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x277CD3460]);
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFStringGetTypeID())
      {
        return (CFStringGetLength(v1) > 0);
      }

      else
      {
        v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUCGImagePropertiesIncludeColorSpace(CFDictionaryRef)"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColorUtils.m"], 258, 0, "Color profile name should be a string (got %lu).", CFGetTypeID(v1));
        +[TSUAssertionHandler logBacktraceThrottled];
        return 0;
      }
    }
  }

  return result;
}

CGColorRef TSUCGColorCreateDeviceRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  if (qword_2815AEAD8 != -1)
  {
    sub_277112FD0();
  }

  return CGColorCreate(qword_2815AEAD0, components);
}

CGColorRef TSUCGColorCreateDeviceGray(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  if (qword_2815AEAF8 != -1)
  {
    sub_277112FF8();
  }

  return CGColorCreate(qword_2815AEAF0, components);
}

CGColorRef TSUCGColorCreateRandomRGB()
{
  v0 = TSURandom();
  v1 = TSURandom();
  v2 = TSURandom();

  return TSUCGColorCreateDeviceRGB(v0, v1, v2, 1.0);
}

CGPatternRef sub_2770601F0(CGImageRef image, __int128 *a2)
{
  if (!image)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGPatternRef TSUCGPatternCreateWithImageAndTransform(CGImageRef, const CGAffineTransform *)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColorUtils.m"], 296, 0, "can't create an image pattern without an image");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  CGImageRetain(image);
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (a2)
  {
    v9 = a2[1];
    v14 = *a2;
    v15 = v9;
    v10 = a2[2];
  }

  else
  {
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    v14 = *MEMORY[0x277CBF2C0];
    v15 = v11;
    v10 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v16 = v10;
  v17.size.height = Height;
  v17.size.width = Width;
  *&v13.a = v14;
  *&v13.c = v15;
  *&v13.tx = v10;
  v17.origin.x = v5;
  v17.origin.y = v6;
  return CGPatternCreate(image, v17, &v13, Width, v17.size.height, kCGPatternTilingConstantSpacing, 1, &stru_288629EB0);
}

void sub_277060328(CGImage *a1, CGContext *a2)
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = v4;
  v9 = v5;
  v10 = Width;

  CGContextDrawImage(a2, *&v8, a1);
}

CGColorRef sub_2770603A0(CGImage *a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2770601F0(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6[0] = 1.0;
  v4 = CGColorCreateWithPattern(Pattern, v2, v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

CGColorRef TSUCreateCGColorFromHSBInColorSpace(CGColorSpace *a1, double a2, double a3, double a4, double a5)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[1] = a5;
  TSUHSBToRGB(&components, &v8, v9, a2, a3, a4);
  if (!a1)
  {
    if (qword_2815AEAD8 != -1)
    {
      sub_277112FD0();
    }

    a1 = qword_2815AEAD0;
  }

  return CGColorCreate(a1, &components);
}

double *TSUHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

uint64_t TSUHSBFromCGColorRef(CGColorRef color, double *a2, double *a3, double *a4, CGFloat *a5)
{
  *a5 = 0.0;
  *a4 = 0.0;
  *a3 = 0.0;
  *a2 = 0.0;
  if (!color)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUHSBFromCGColorRef(CGColorRef, CGFloat *, CGFloat *, CGFloat *, CGFloat *)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColorUtils.m"], 348, 0, "NULL color");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  ColorSpace = CGColorGetColorSpace(color);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB || CGColorGetNumberOfComponents(color) != 4)
  {
    return 0;
  }

  *a5 = CGColorGetAlpha(color);
  Components = CGColorGetComponents(color);
  TSURGBToHSB(a2, a3, a4, *Components, Components[1], Components[2]);
  return 1;
}

double TSURGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

double TSUCMYKToRGB(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  *a1 = 1.0 - fmin(a7 + a4 * (1.0 - a7), 1.0);
  *a2 = 1.0 - fmin(a7 + a5 * (1.0 - a7), 1.0);
  result = 1.0 - fmin(a7 + a6 * (1.0 - a7), 1.0);
  *a3 = result;
  return result;
}

CGFloat sub_277060828(CGColor *a1)
{
  if (a1)
  {
    ColorSpace = CGColorGetColorSpace(a1);
    Model = CGColorSpaceGetModel(ColorSpace);
    switch(Model)
    {
      case kCGColorSpaceModelMonochrome:
        return *CGColorGetComponents(a1);
      case kCGColorSpaceModelCMYK:
        Components = CGColorGetComponents(a1);
        v8 = Components[3];
        v5 = 1.0 - fmin(v8 + Components[2] * (1.0 - v8), 1.0) + 1.0 - fmin(v8 + *Components * (1.0 - v8), 1.0) + 1.0 - fmin(v8 + Components[1] * (1.0 - v8), 1.0);
        return v5 / 3.0;
      case kCGColorSpaceModelRGB:
        v4 = CGColorGetComponents(a1);
        v5 = *v4 + v4[1] + v4[2];
        return v5 / 3.0;
    }

    NSLog(@"WARNING: Testing lightness of unsupported color model");
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGFloat TSUColorAverageLightness(CGColorRef)"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColorUtils.m"], 566, 0, "Trying to get lightness of a nil color");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return 0.0;
}

CGContext *TSUCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (qword_2815AEAD8 != -1)
  {
    sub_277112FD0();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, qword_2815AEAD0, 0x2002u);
  if (!v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGContextRef TSUCreateRGBABitmapContext(CGSize, CGFloat, BOOL)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColorUtils.m"], 583, 0, "CGBitmapContextCreate returns nil CGContextRef for width %ld, height %ld", (a2 * a4), (a3 * a4));
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  CGAffineTransformMakeScale(&transform, a4, a4);
  CGContextConcatCTM(v8, &transform);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(&transform, 1.0, -1.0);
    CGContextConcatCTM(v8, &transform);
  }

  return v8;
}

CGColorSpaceRef TSUColorSpaceIsHDR(CGColorSpaceRef result)
{
  if (result)
  {
    return CGColorSpaceUsesITUR_2100TF(result);
  }

  return result;
}

uint64_t TSUColorSpaceSupportsHDR(CGColorSpace *a1)
{
  if (a1)
  {
    v2 = CGColorSpaceUsesITUR_2100TF(a1);
    v3 = v2 | CGColorSpaceUsesExtendedRange(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

double TSUClamp(double a1, double a2, double a3)
{
  v4 = a2 <= 0.0;
  v5 = a3 < 0.0 && a3 < a2;
  if (v5 && v4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (v5 && v4)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  if (v7 > v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSUClamp(CGFloat, CGFloat, CGFloat)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMath.m"], 59, 0, "max > min!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (v7 <= a1)
  {
    v7 = a1;
    if (v6 < a1)
    {
      return v6;
    }
  }

  return v7;
}

uint64_t sub_277060C78(uint64_t result, int a2, uint64_t a3, unint64_t *a4, int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v9 = a2 - 1;
  v10 = qword_280A5D210[v9] + a3;
  v11 = HIDWORD(v10);
  v12 = qword_280A5F2D0[v9];
  v13 = HIDWORD(v12);
  v14 = HIDWORD(v10) * v12;
  v15 = v10 * v12;
  v16 = (LODWORD(qword_280A5D210[v9]) + a3) * v13 + v14 + HIDWORD(v15);
  v17 = HIDWORD(v14) + v11 * v13 + HIDWORD(v16);
  v18 = v15 | (v16 << 32);
  v19 = v17 >> dword_280A5F358[v9];
  v20 = v17 & qword_280A5F428[v9];
  v21 = qword_280A5F3A0[v9];
  if (v20 <= v21 && (v20 == v21 ? (v22 = v18 == 0) : (v22 = 1), v23 = a9, v22) || (v23 = a8, v20 != v21) || (v23 = a8, v18 > qword_280A5F4B0[v9]))
  {
    *v23 = 1;
  }

  if (!v20 && v18 <= qword_280A5F4B0[v9])
  {
    if ((v19 & 1) == 0)
    {
      a7 = a6;
    }

    *a7 = 1;
    v19 &= ~1uLL;
    *a8 = 0;
    *a9 = 0;
  }

  if (v19 == qword_280A5D8C0[result - a2])
  {
    v19 = qword_280A5D8C0[result - a2 - 1];
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  *a5 = v25;
  *a4 = v19;
  return result;
}

uint64_t sub_277060DB0(uint64_t result, int a2, unint64_t a3, unint64_t a4, uint64_t *a5, int *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10)
{
  v10 = a2 - 1;
  if (a2 > 19)
  {
    v13 = (*&qword_280A5D2B0[2 * (a2 - 20)] + __PAIR128__(a4, a3)) >> 64;
    v12 = qword_280A5D2B0[2 * (a2 - 20)] + a3;
    v10 = v10;
  }

  else
  {
    v11 = qword_280A5D210[v10];
    v12 = v11 + a3;
    if (__CFADD__(v11, a3))
    {
      v13 = a4 + 1;
    }

    else
    {
      v13 = a4;
    }
  }

  v14 = HIDWORD(v12);
  v15 = (&unk_280A5F540 + 16 * v10);
  v17 = *v15;
  v16 = v15[1];
  v18 = HIDWORD(v16);
  v19 = v16 * HIDWORD(v12);
  v20 = HIDWORD(v19) + HIDWORD(v16) * HIDWORD(v12);
  v21 = HIDWORD(v16) * v12 + v19 + ((v16 * v12) >> 32);
  v22 = HIDWORD(v21);
  v23 = (v16 * v12) | (v21 << 32);
  v24 = HIDWORD(v17);
  v25 = v17 * HIDWORD(v12);
  v26 = v17 * v12;
  v27 = HIDWORD(v17) * v12 + v25 + HIDWORD(v26);
  v28 = v26 | (v27 << 32);
  v29 = __PAIR128__(v20, v23) + __PAIR128__(v22, HIDWORD(v25) + HIDWORD(v17) * v14 + HIDWORD(v27));
  v30 = HIDWORD(v13);
  LODWORD(v23) = v13;
  v31 = v16 * HIDWORD(v13);
  v32 = v16 * v13;
  v33 = v18 * v13;
  v34 = HIDWORD(v31) + v18 * HIDWORD(v13);
  v35 = v33 + v31 + HIDWORD(v32);
  v36 = HIDWORD(v35);
  v37 = v32 | (v35 << 32);
  v38 = v17 * HIDWORD(v13);
  v39 = v17 * v13;
  v40 = HIDWORD(v17) * v23 + v38 + HIDWORD(v39);
  v41 = v39 | (v40 << 32);
  v42 = __PAIR128__(v34, v37) + __PAIR128__(v36, HIDWORD(v38) + v24 * v30 + HIDWORD(v40));
  v43 = v29 + v41;
  v44 = __CFADD__(__CFADD__(v29, v41), v42);
  v45 = __CFADD__(v29, v41) + v42;
  v46 = v44;
  v47 = *(&v29 + 1) + v45;
  if (__CFADD__(*(&v29 + 1), v45))
  {
    v48 = 1;
  }

  else
  {
    v48 = v46;
  }

  v49 = *(&v42 + 1) + v48;
  v50 = dword_280A5F790[v10];
  if (a2 > 19)
  {
    v51 = v49 >> v50;
    v57 = qword_280A5F950[v10] & v49;
    v58 = qword_280A5F828[v10];
    if (v57 <= v58)
    {
      if (v57 != v58 || (!v47 ? (v63 = v43 == 0) : (v63 = 0), v63 ? (v64 = v28 == 0) : (v64 = 0), v64))
      {
        v52 = 0;
        goto LABEL_39;
      }
    }

    v59 = v57 == v58 && v47 == 0;
    if (!v59 || (v60 = &xmmword_280A5FA80[v10], v61 = v60[1], v43 > v61))
    {
      v52 = 0;
      goto LABEL_25;
    }

    if (v43 != v61)
    {
      v65 = 0;
      v52 = 0;
      goto LABEL_42;
    }

    v52 = 0;
    v65 = 0;
    v71 = *v60;
    v62 = a9;
LABEL_69:
    if (v28 <= v71)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v51 = (v49 << -v50) | (v47 >> v50);
  v52 = v49 >> v50;
  v47 &= qword_280A5F950[v10];
  v53 = qword_280A5F828[v10];
  if (v47 <= v53 && (v47 != v53 || !(v43 | v28)))
  {
    v57 = 0;
LABEL_39:
    v62 = a10;
    goto LABEL_40;
  }

  if (v47 == v53)
  {
    v54 = &xmmword_280A5FA80[v10];
    v55 = v54[1];
    v56 = v43 == v55;
    if (v43 <= v55)
    {
      v57 = 0;
      if (!v56)
      {
        goto LABEL_41;
      }

      v71 = *v54;
      v62 = a9;
      v65 = v47;
      goto LABEL_69;
    }
  }

  v57 = 0;
LABEL_25:
  v62 = a9;
LABEL_40:
  *v62 = 1;
LABEL_41:
  v65 = v47;
LABEL_42:
  if (!(v57 | v65) && __PAIR128__(v43, v28) <= xmmword_280A5FA80[v10])
  {
    if ((v51 & 1) == 0)
    {
      a8 = a7;
    }

    *a8 = 1;
    v51 &= ~1uLL;
    *a9 = 0;
    *a10 = 0;
  }

  v67 = result - a2;
  if (result - a2 > 19)
  {
    if (v67 == 20)
    {
      if (v52 == qword_280A5D968 && v51 == qword_280A5D960[0])
      {
        v52 = 0;
        v51 = qword_280A5D958;
        goto LABEL_60;
      }
    }

    else
    {
      v68 = &qword_280A5D960[2 * (v67 - 20)];
      if (v52 == v68[1] && v51 == *v68)
      {
        v69 = &qword_280A5D960[2 * (v67 - 21)];
        v51 = *v69;
        v52 = v69[1];
        goto LABEL_60;
      }
    }

LABEL_61:
    v70 = 0;
    goto LABEL_62;
  }

  if (v52 || v51 != qword_280A5D8C0[v67])
  {
    goto LABEL_61;
  }

  v52 = 0;
  v51 = qword_280A5D8C0[v67 - 1];
LABEL_60:
  v70 = 1;
LABEL_62:
  *a6 = v70;
  *a5 = v51;
  a5[1] = v52;
  return result;
}

uint64_t sub_277061154(uint64_t result, int a2, unint64_t *a3, uint64_t *a4, int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v10 = a2 - 1;
  if (a2 <= 19)
  {
    v11 = qword_280A5D210[v10];
    v12 = a3[1];
    v13 = __CFADD__(v11, *a3);
    v14 = v11 + *a3;
    *a3 = v14;
    if (!v13)
    {
      goto LABEL_27;
    }

    v13 = __CFADD__(v12++, 1);
    a3[1] = v12;
    if (!v13)
    {
      goto LABEL_27;
    }

    v12 = 0;
LABEL_20:
    v21 = a3[2] + 1;
LABEL_26:
    a3[2] = v21;
    goto LABEL_27;
  }

  v15 = *a3;
  if (a2 > 0x26)
  {
    v18 = &qword_280A5D3E0[4 * (a2 - 39)];
    v19 = a3[1];
    v13 = __CFADD__(*v18, v15);
    v14 = *v18 + v15;
    *a3 = v14;
    if (v13 && (v13 = __CFADD__(v19, 1), ++v19, a3[1] = v19, v13))
    {
      ++a3[2];
      v12 = v18[1];
      a3[1] = v12;
    }

    else
    {
      v22 = v18[1];
      v13 = __CFADD__(v22, v19);
      v12 = v22 + v19;
      a3[1] = v12;
      if (v13)
      {
        v23 = a3[2] + 1;
        a3[2] = v23;
LABEL_25:
        v21 = v18[2] + v23;
        goto LABEL_26;
      }
    }

    v23 = a3[2];
    goto LABEL_25;
  }

  v16 = &qword_280A5D2B0[2 * (a2 - 20)];
  v17 = a3[1];
  v13 = __CFADD__(*v16, v15);
  v14 = *v16 + v15;
  *a3 = v14;
  if (v13)
  {
    v13 = __CFADD__(v17++, 1);
    a3[1] = v17;
    if (v13)
    {
      ++a3[2];
      v12 = v16[1];
      a3[1] = v12;
      goto LABEL_27;
    }
  }

  v20 = v16[1];
  v13 = __CFADD__(v20, v17);
  v12 = v20 + v17;
  a3[1] = v12;
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_27:
  v24 = v10;
  v25 = (&unk_280A5FCD0 + 32 * v10);
  v26 = HIDWORD(v14);
  v27 = v14;
  v28 = *v25;
  v29 = v25[1];
  v30 = HIDWORD(*v25);
  v31 = *v25;
  v32 = v31 * HIDWORD(v14);
  v33 = v30 * v14 + v32 + ((v31 * v14) >> 32);
  v34 = HIDWORD(v32) + v30 * HIDWORD(v14) + HIDWORD(v33);
  v35 = (v31 * v14) | (v33 << 32);
  v36 = HIDWORD(v29);
  v37 = v29 * HIDWORD(v14);
  v38 = HIDWORD(v37) + HIDWORD(v29) * HIDWORD(v14);
  v39 = HIDWORD(v29) * v14 + v37 + ((v29 * v14) >> 32);
  v40 = v38 + HIDWORD(v39);
  v41 = (v29 * v14) | (v39 << 32);
  v42 = v25[2];
  v43 = v42 * HIDWORD(v14);
  v44 = v42 * v14;
  v45 = HIDWORD(v43) + HIDWORD(v42) * v26;
  v46 = HIDWORD(v42) * v27 + v43 + HIDWORD(v44);
  v47 = v45 + HIDWORD(v46);
  v48 = v44 | (v46 << 32);
  v49 = v34 + v41;
  v13 = __CFADD__(__CFADD__(v34, v41), v48);
  v50 = __CFADD__(v34, v41) + v48;
  v51 = v13;
  v52 = v40 + v50;
  if (__CFADD__(v40, v50))
  {
    v53 = 1;
  }

  else
  {
    v53 = v51;
  }

  v54 = v47 + v53;
  v55 = HIDWORD(v12);
  v56 = v12;
  v57 = HIDWORD(v12) * v31;
  v58 = HIDWORD(v57) + HIDWORD(v12) * v30;
  v59 = v12 * v30 + v57 + ((v12 * v28) >> 32);
  v60 = v58 + HIDWORD(v59);
  v61 = (v12 * v28) | (v59 << 32);
  v62 = HIDWORD(v12) * v29;
  v63 = v12 * HIDWORD(v29) + v62 + ((v12 * v29) >> 32);
  v64 = HIDWORD(v62) + HIDWORD(v12) * HIDWORD(v29) + HIDWORD(v63);
  v65 = (v12 * v29) | (v63 << 32);
  v66 = HIDWORD(v12) * v42;
  v67 = v12 * v42;
  v68 = HIDWORD(v66) + v55 * HIDWORD(v42);
  v69 = v56 * HIDWORD(v42) + v66 + HIDWORD(v67);
  v70 = v68 + HIDWORD(v69);
  v71 = v67 | (v69 << 32);
  v72 = v60 + v65;
  v13 = __CFADD__(__CFADD__(v60, v65), v71);
  v73 = __CFADD__(v60, v65) + v71;
  v74 = v13;
  v13 = __CFADD__(v64, v73);
  v75 = v64 + v73;
  if (v13)
  {
    v76 = 1;
  }

  else
  {
    v76 = v74;
  }

  v77 = v70 + v76;
  v78 = a3[2];
  v79 = HIDWORD(v78);
  v80 = v78;
  v81 = HIDWORD(v78) * v31;
  v82 = v78 * v28;
  v83 = v78 * v30 + v81 + HIDWORD(v82);
  v84 = HIDWORD(v81) + HIDWORD(v78) * v30 + HIDWORD(v83);
  v85 = v82 | (v83 << 32);
  v86 = HIDWORD(v78) * v29;
  v87 = v78 * v29;
  v88 = v78 * v36;
  v89 = HIDWORD(v86) + HIDWORD(v78) * v36;
  v90 = v88 + v86 + HIDWORD(v87);
  v91 = v89 + HIDWORD(v90);
  v92 = v87 | (v90 << 32);
  v93 = HIDWORD(v78) * v42;
  v94 = v78 * v42;
  v95 = HIDWORD(v93) + v79 * HIDWORD(v42);
  v96 = v80 * HIDWORD(v42) + v93 + HIDWORD(v94);
  v97 = v95 + HIDWORD(v96);
  v98 = v94 | (v96 << 32);
  v13 = __CFADD__(v84, v92);
  v99 = v84 + v92;
  v101 = v13;
  v13 = __CFADD__(v13, v98);
  v100 = v101 + v98;
  LODWORD(v102) = v13;
  v13 = __CFADD__(v91, v100);
  v103 = v91 + v100;
  if (v13)
  {
    v102 = 1;
  }

  else
  {
    v102 = v102;
  }

  v104 = v97 + v102;
  v105 = v61 + v49;
  v106 = __CFADD__(v61, v49) + v72;
  LODWORD(v107) = __CFADD__(__CFADD__(v61, v49), v72);
  v13 = __CFADD__(v106, v52);
  v108 = v106 + v52;
  if (v13)
  {
    v107 = 1;
  }

  else
  {
    v107 = v107;
  }

  v13 = __CFADD__(v75, v107);
  v109 = v75 + v107;
  v110 = v13;
  v13 = __CFADD__(v54, v109);
  v111 = v54 + v109;
  if (v13)
  {
    v112 = 1;
  }

  else
  {
    v112 = v110;
  }

  v113 = v77 + v112;
  v13 = __CFADD__(v108, v85);
  v114 = v108 + v85;
  v116 = v13;
  v13 = __CFADD__(v13, v99);
  v115 = v116 + v99;
  v117 = v13;
  v13 = __CFADD__(v111, v115);
  v118 = v111 + v115;
  if (v13)
  {
    v119 = 1;
  }

  else
  {
    v119 = v117;
  }

  v13 = __CFADD__(v103, v119);
  v120 = v103 + v119;
  v121 = v13;
  v122 = v113 + v120;
  if (__CFADD__(v113, v120))
  {
    v123 = 1;
  }

  else
  {
    v123 = v121;
  }

  v124 = dword_280A603D0[v10];
  v125 = v104 + v123;
  if (a2 >= 20)
  {
    v127 = v125 >> v124;
    if (a2 < 0x27)
    {
      v128 = (v125 << -v124) | (v122 >> v124);
      v122 &= qword_280A60670[v24];
      v134 = qword_280A604B0[v24];
      if (v122 <= v134 && (v122 != v134 || !v118 && !v114 && !v105 && !v35))
      {
        v132 = 0;
        v126 = 0;
        goto LABEL_98;
      }

      v132 = 0;
      if (v122 != v134 || v118)
      {
        v133 = a8;
        v126 = 0;
        goto LABEL_109;
      }

      v135 = (&unk_280A60830 + 32 * v24);
      v136 = v135[2];
      if (v114 > v136)
      {
        goto LABEL_80;
      }

      if (v114 != v136)
      {
        goto LABEL_162;
      }

      v154 = v135[1];
      if (v105 > v154)
      {
LABEL_80:
        v132 = 0;
        v126 = 0;
        goto LABEL_74;
      }

      if (v105 != v154)
      {
LABEL_162:
        v140 = 0;
        v132 = 0;
        v126 = 0;
        goto LABEL_110;
      }

      v132 = 0;
      v126 = 0;
      v140 = 0;
      v150 = *v135;
      v133 = a8;
      v141 = v122;
LABEL_159:
      if (v35 <= v150)
      {
        goto LABEL_111;
      }

      goto LABEL_109;
    }

    v132 = qword_280A60670[v24] & v125;
    v137 = qword_280A604B0[v24];
    if (v132 <= v137 && (v132 != v137 || !v122 && !v118 && !v114 && !v105 && !v35))
    {
      v126 = 0;
      v133 = a9;
      goto LABEL_106;
    }

    v126 = 0;
    if (v132 != v137 || v122 || v118)
    {
      v133 = a8;
      v128 = v127;
      v127 = 0;
      goto LABEL_109;
    }

    v138 = (&unk_280A60830 + 32 * v24);
    v139 = v138[2];
    if (v114 > v139)
    {
LABEL_91:
      v126 = 0;
      v133 = a8;
LABEL_106:
      v128 = v127;
      v127 = 0;
      goto LABEL_109;
    }

    if (v114 == v139)
    {
      v153 = v138[1];
      if (v105 > v153)
      {
        goto LABEL_91;
      }

      if (v105 == v153)
      {
        v126 = 0;
        v140 = 0;
        v141 = 0;
        v150 = *v138;
        v133 = a8;
        v128 = v127;
        v127 = 0;
        goto LABEL_159;
      }
    }

    v140 = 0;
    v141 = 0;
    v126 = 0;
    v128 = v127;
    v127 = 0;
    goto LABEL_111;
  }

  v126 = v125 >> v124;
  v127 = (v125 << -v124) | (v122 >> v124);
  v128 = (v122 << -v124) | (v118 >> v124);
  v118 &= qword_280A60670[v24];
  v129 = qword_280A604B0[v24];
  if (v118 <= v129 && (v118 != v129 || !v114 && !v105 && !v35))
  {
    v122 = 0;
    v132 = 0;
LABEL_98:
    v133 = a9;
    goto LABEL_109;
  }

  if (v118 != v129)
  {
    goto LABEL_73;
  }

  v130 = (&unk_280A60830 + 32 * v24);
  v131 = v130[2];
  if (v114 > v131)
  {
    goto LABEL_73;
  }

  if (v114 != v131)
  {
    goto LABEL_150;
  }

  v149 = v130[1];
  if (v105 <= v149)
  {
    if (v105 == v149)
    {
      v122 = 0;
      v132 = 0;
      v141 = 0;
      v150 = *v130;
      v133 = a8;
      v140 = v118;
      goto LABEL_159;
    }

LABEL_150:
    v141 = 0;
    v132 = 0;
    v140 = v118;
    goto LABEL_111;
  }

LABEL_73:
  v122 = 0;
  v132 = 0;
LABEL_74:
  v133 = a8;
LABEL_109:
  *v133 = 1;
  v140 = v118;
LABEL_110:
  v141 = v122;
LABEL_111:
  if (!v132 && !v141 && !v140)
  {
    v142 = &unk_280A60830 + 32 * v24;
    v143 = *(v142 + 2);
    if (v114 < v143 || v114 == v143 && __PAIR128__(v105, v35) <= *v142)
    {
      v144 = a7;
      if ((v128 & 1) == 0)
      {
        v144 = a6;
      }

      *v144 = 1;
      v128 &= ~1uLL;
      *a8 = 0;
      *a9 = 0;
    }
  }

  v145 = result - a2;
  if (result - a2 > 19)
  {
    if (v145 == 20)
    {
      if (!v126 && v127 == qword_280A5D968 && v128 == qword_280A5D960[0])
      {
        v126 = 0;
        v127 = 0;
        v128 = qword_280A5D958;
        goto LABEL_124;
      }
    }

    else if (v145 > 0x26)
    {
      if (v145 == 39)
      {
        if (v126 == qword_280A5DAA0 && v127 == qword_280A5DA98 && v128 == qword_280A5DA90[0])
        {
          v126 = 0;
          v128 = qword_280A5DA80;
          v127 = qword_280A5DA88;
          goto LABEL_124;
        }
      }

      else
      {
        v151 = &qword_280A5DA90[4 * v145 - 156];
        if (v126 == v151[2] && v127 == v151[1] && v128 == *v151)
        {
          v152 = &qword_280A5DA90[4 * v145 - 160];
          v128 = *v152;
          v127 = v152[1];
          v126 = v152[2];
          goto LABEL_124;
        }
      }
    }

    else if (!v126)
    {
      v147 = &qword_280A5D960[2 * v145 - 40];
      if (v127 == v147[1] && v128 == *v147)
      {
        v126 = 0;
        v148 = &qword_280A5D960[2 * v145 - 42];
        v128 = *v148;
        v127 = v148[1];
        goto LABEL_124;
      }
    }

LABEL_148:
    v146 = 0;
    goto LABEL_149;
  }

  if (v126 | v127 || v128 != qword_280A5D8C0[v145])
  {
    goto LABEL_148;
  }

  v126 = 0;
  v127 = 0;
  v128 = qword_280A5D8C0[v145 - 1];
LABEL_124:
  v146 = 1;
LABEL_149:
  *a5 = v146;
  a4[1] = v127;
  a4[2] = v126;
  *a4 = v128;
  return result;
}

uint64_t sub_277061970(int a1, uint64_t a2, unint64_t *a3, uint64_t *a4, int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v9 = a2 - 1;
  if (a2 <= 19)
  {
    v10 = qword_280A5D210[v9];
    v11 = a3[1];
    v23 = __CFADD__(v10, *a3);
    v12 = v10 + *a3;
    *a3 = v12;
    if (!v23)
    {
      goto LABEL_56;
    }

    v23 = __CFADD__(v11, 1);
    a3[1] = ++v11;
    if (!v23)
    {
      goto LABEL_56;
    }

    v13 = a3[2];
    a3[2] = v13 + 1;
    v11 = 0;
    if (v13 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_48;
  }

  if (a2 > 0x26)
  {
    v17 = *a3;
    if (a2 <= 0x3A)
    {
      v18 = &qword_280A5D3E0[4 * (a2 - 39)];
      v19 = a3[1];
      v23 = __CFADD__(*v18, v17);
      v12 = *v18 + v17;
      *a3 = v12;
      if (v23 && (v23 = __CFADD__(v19, 1), ++v19, a3[1] = v19, v23))
      {
        v20 = a3[2];
        a3[2] = v20 + 1;
        if (v20 == -1)
        {
          ++a3[3];
        }

        v11 = v18[1];
        a3[1] = v11;
      }

      else
      {
        v28 = v18[1];
        v11 = v28 + v19;
        a3[1] = v28 + v19;
        if (__CFADD__(v28, v19))
        {
          v29 = a3[2];
          v23 = __CFADD__(v29, 1);
          v30 = v29 + 1;
          a3[2] = v30;
          if (v23)
          {
            ++a3[3];
            a3[2] = v18[2];
            goto LABEL_56;
          }

          goto LABEL_45;
        }
      }

      v30 = a3[2];
LABEL_45:
      v34 = v18[2];
      v23 = __CFADD__(v34, v30);
      v24 = v34 + v30;
      goto LABEL_46;
    }

    v25 = (&unk_280A5D660 + 32 * (a2 - 59));
    v26 = a3[1];
    v23 = __CFADD__(*v25, v17);
    v12 = *v25 + v17;
    *a3 = v12;
    if (v23 && (v23 = __CFADD__(v26, 1), ++v26, a3[1] = v26, v23))
    {
      v27 = a3[2];
      a3[2] = v27 + 1;
      if (v27 == -1)
      {
        ++a3[3];
      }

      v11 = v25[1];
      a3[1] = v11;
    }

    else
    {
      v31 = v25[1];
      v11 = v31 + v26;
      a3[1] = v31 + v26;
      if (__CFADD__(v31, v26))
      {
        v32 = a3[2];
        v23 = __CFADD__(v32, 1);
        v33 = v32 + 1;
        a3[2] = v33;
        if (v23)
        {
          ++a3[3];
          a3[2] = v25[2];
          goto LABEL_53;
        }

LABEL_50:
        v36 = v25[2];
        a3[2] = v36 + v33;
        if (__CFADD__(v36, v33))
        {
          v37 = a3[3] + 1;
          a3[3] = v37;
LABEL_54:
          v35 = v25[3] + v37;
          goto LABEL_55;
        }

LABEL_53:
        v37 = a3[3];
        goto LABEL_54;
      }
    }

    v33 = a3[2];
    goto LABEL_50;
  }

  v14 = &qword_280A5D2B0[2 * (a2 - 20)];
  v15 = a3[1];
  v23 = __CFADD__(*v14, *a3);
  v12 = *v14 + *a3;
  *a3 = v12;
  if (v23)
  {
    v23 = __CFADD__(v15++, 1);
    a3[1] = v15;
    if (v23)
    {
      v16 = a3[2];
      a3[2] = v16 + 1;
      if (v16 == -1)
      {
        ++a3[3];
      }

      v11 = v14[1];
      a3[1] = v11;
      goto LABEL_56;
    }
  }

  v21 = v14[1];
  v11 = v21 + v15;
  a3[1] = v21 + v15;
  if (!__CFADD__(v21, v15))
  {
    goto LABEL_56;
  }

  v22 = a3[2];
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
LABEL_46:
  a3[2] = v24;
  if (v23)
  {
LABEL_48:
    v35 = a3[3] + 1;
LABEL_55:
    a3[3] = v35;
  }

LABEL_56:
  v272 = v9;
  v273 = a2 - 1;
  v38 = (&unk_280A60F30 + 32 * v9);
  v39 = HIDWORD(v12);
  v40 = *v38;
  v41 = v38[1];
  v42 = HIDWORD(*v38);
  v43 = *v38;
  v44 = v43 * HIDWORD(v12);
  v45 = v43 * v12;
  v271 = v42 * v12 + v44 + HIDWORD(v45);
  v46 = HIDWORD(v44) + v42 * HIDWORD(v12) + HIDWORD(v271);
  v47 = HIDWORD(v41);
  v48 = v41 * HIDWORD(v12);
  v49 = v41 * v12;
  v50 = HIDWORD(v41) * v12 + v48 + HIDWORD(v49);
  v51 = HIDWORD(v48) + HIDWORD(v41) * HIDWORD(v12) + HIDWORD(v50);
  v52 = v38[2];
  v53 = v38[3];
  v54 = HIDWORD(v52);
  v55 = v52 * HIDWORD(v12);
  v56 = v52 * v12;
  v57 = HIDWORD(v52) * v12 + v55 + HIDWORD(v56);
  v58 = HIDWORD(v55) + HIDWORD(v52) * HIDWORD(v12) + HIDWORD(v57);
  v59 = v53 * HIDWORD(v12);
  v60 = HIDWORD(v53) * v12 + v59;
  v61 = v53 * v12;
  v62 = v60 + HIDWORD(v61);
  v63 = HIDWORD(v59) + HIDWORD(v53) * v39 + HIDWORD(v62);
  v64 = v49 | (v50 << 32);
  v65 = v56 | (v57 << 32);
  v66 = v61 | (v62 << 32);
  v267 = v46 + v64;
  v67 = __CFADD__(v46, v64) + v65;
  v68 = __CFADD__(__CFADD__(v46, v64), v65);
  v268 = v51 + v67;
  v69 = __CFADD__(v51, v67) || v68;
  v23 = __CFADD__(v66, v69);
  v70 = v66 + v69;
  v71 = v23;
  v269 = v58 + v70;
  if (__CFADD__(v58, v70))
  {
    v72 = 1;
  }

  else
  {
    v72 = v71;
  }

  v270 = v63 + v72;
  v73 = HIDWORD(v11);
  v74 = v11;
  v75 = HIDWORD(v11) * v43;
  v76 = HIDWORD(v75) + HIDWORD(v11) * v42;
  v77 = v11 * v42 + v75 + ((v11 * v40) >> 32);
  v78 = v76 + HIDWORD(v77);
  v79 = (v11 * v40) | (v77 << 32);
  v80 = HIDWORD(v11) * v41;
  v81 = HIDWORD(v80) + HIDWORD(v11) * HIDWORD(v41);
  v82 = v11 * HIDWORD(v41) + v80 + ((v11 * v41) >> 32);
  v83 = v81 + HIDWORD(v82);
  v84 = (v11 * v41) | (v82 << 32);
  v85 = HIDWORD(v11) * v52;
  v86 = HIDWORD(v85) + HIDWORD(v11) * HIDWORD(v52);
  v87 = v11 * HIDWORD(v52) + v85 + ((v11 * v52) >> 32);
  v88 = v86 + HIDWORD(v87);
  v89 = (v11 * v52) | (v87 << 32);
  v90 = HIDWORD(v11) * v53;
  v91 = v11 * v53;
  v92 = v74 * HIDWORD(v53) + v90 + HIDWORD(v91);
  v93 = HIDWORD(v90) + v73 * HIDWORD(v53) + HIDWORD(v92);
  v94 = v91 | (v92 << 32);
  v95 = v78 + v84;
  v96 = __CFADD__(v78, v84) + v89;
  v97 = __CFADD__(__CFADD__(v78, v84), v89);
  v98 = v83 + v96;
  v99 = __CFADD__(v83, v96) || v97;
  v23 = __CFADD__(v94, v99);
  v100 = v94 + v99;
  v101 = v23;
  v23 = __CFADD__(v88, v100);
  v102 = v88 + v100;
  if (v23)
  {
    v103 = 1;
  }

  else
  {
    v103 = v101;
  }

  v266 = v93 + v103;
  v104 = a3[2];
  v105 = a3[3];
  v106 = HIDWORD(v104) * v41;
  v107 = v104 * HIDWORD(v41) + v106 + ((v104 * v41) >> 32);
  v108 = HIDWORD(v106) + HIDWORD(v104) * HIDWORD(v41) + HIDWORD(v107);
  v109 = (v104 * v41) | (v107 << 32);
  v110 = HIDWORD(v104) * v52;
  v111 = v104 * HIDWORD(v52) + v110 + ((v104 * v52) >> 32);
  v112 = HIDWORD(v110) + HIDWORD(v104) * HIDWORD(v52) + HIDWORD(v111);
  v113 = (v104 * v52) | (v111 << 32);
  v114 = HIDWORD(v104) * v43;
  v115 = v104 * v42 + v114;
  v116 = HIDWORD(v114) + HIDWORD(v104) * v42;
  v117 = HIDWORD(v104) * v53;
  v118 = HIDWORD(v117) + HIDWORD(v104) * HIDWORD(v53);
  v119 = v104 * HIDWORD(v53) + v117 + ((v104 * v53) >> 32);
  v120 = v118 + HIDWORD(v119);
  v121 = (v104 * v53) | (v119 << 32);
  v122 = v104 * v40;
  v123 = v115 + HIDWORD(v122);
  v124 = v116 + HIDWORD(v123);
  v23 = __CFADD__(v124, v109);
  v125 = v124 + v109;
  v127 = v23;
  v23 = __CFADD__(v23, v113);
  v126 = v127 + v113;
  v128 = v23;
  v129 = v108 + v126;
  if (__CFADD__(v108, v126))
  {
    v130 = 1;
  }

  else
  {
    v130 = v128;
  }

  v23 = __CFADD__(v121, v130);
  v131 = v121 + v130;
  v132 = v23;
  v133 = v112 + v131;
  if (__CFADD__(v112, v131))
  {
    v134 = 1;
  }

  else
  {
    v134 = v132;
  }

  v135 = v120 + v134;
  v136 = HIDWORD(v105);
  v137 = HIDWORD(v105) * v43;
  v138 = HIDWORD(v137) + HIDWORD(v105) * v42;
  v139 = v105;
  v140 = v105 * v42 + v137;
  v141 = HIDWORD(v105) * v41;
  v142 = HIDWORD(v141) + HIDWORD(v105) * HIDWORD(v41);
  v143 = v105 * v41;
  v144 = v105 * v47 + v141 + HIDWORD(v143);
  v145 = v142 + HIDWORD(v144);
  v146 = v143 | (v144 << 32);
  v147 = HIDWORD(v105) * v52;
  v148 = HIDWORD(v147) + HIDWORD(v105) * HIDWORD(v52);
  v149 = v105 * v52;
  v150 = v105 * v54 + v147 + HIDWORD(v149);
  v151 = v148 + HIDWORD(v150);
  v152 = v149 | (v150 << 32);
  v153 = v105 * v40;
  v154 = HIDWORD(v105) * v53;
  v155 = v105 * v53;
  v156 = HIDWORD(v154) + v136 * HIDWORD(v53);
  v157 = v139 * HIDWORD(v53) + v154;
  v158 = v140 + HIDWORD(v153);
  v159 = v138 + HIDWORD(v158);
  v160 = __PAIR128__(v152, v159) + v146;
  v161 = __CFADD__(__CFADD__(v159, v146), v152);
  v162 = v145 + *(&v160 + 1);
  v163 = v157 + HIDWORD(v155);
  v164 = v155 | (v163 << 32);
  v165 = __CFADD__(v145, *(&v160 + 1)) || v161;
  v23 = __CFADD__(v164, v165);
  v166 = v164 + v165;
  v167 = v23;
  v23 = __CFADD__(v151, v166);
  v168 = v151 + v166;
  v169 = v156 + HIDWORD(v163);
  if (v23)
  {
    v170 = 1;
  }

  else
  {
    v170 = v167;
  }

  v171 = v169 + v170;
  v172 = v79 + v267;
  v173 = v45 | (v271 << 32);
  v174 = __CFADD__(v79, v267) + v95;
  v175 = v122 | (v123 << 32);
  LODWORD(v176) = __CFADD__(__CFADD__(v79, v267), v95);
  v23 = __CFADD__(v174, v268);
  v177 = v174 + v268;
  if (v23)
  {
    v176 = 1;
  }

  else
  {
    v176 = v176;
  }

  v23 = __CFADD__(v98, v176);
  v178 = v98 + v176;
  v179 = v153 | (v158 << 32);
  v180 = v23;
  v181 = v178 + v269;
  if (__CFADD__(v178, v269))
  {
    v182 = 1;
  }

  else
  {
    v182 = v180;
  }

  v23 = __CFADD__(v102, v182);
  v183 = v102 + v182;
  v184 = v23;
  v185 = v270 + v183;
  if (__CFADD__(v270, v183))
  {
    v186 = 1;
  }

  else
  {
    v186 = v184;
  }

  v187 = v266 + v186;
  v188 = v177 + v175;
  v23 = __CFADD__(__CFADD__(v177, v175), v125);
  v189 = __CFADD__(v177, v175) + v125;
  LODWORD(v190) = v23;
  v23 = __CFADD__(v181, v189);
  v191 = v181 + v189;
  if (v23)
  {
    v190 = 1;
  }

  else
  {
    v190 = v190;
  }

  v23 = __CFADD__(v129, v190);
  v192 = v129 + v190;
  LODWORD(v193) = v23;
  v23 = __CFADD__(v192, v185);
  v194 = v192 + v185;
  if (v23)
  {
    v193 = 1;
  }

  else
  {
    v193 = v193;
  }

  v23 = __CFADD__(v133, v193);
  v195 = v133 + v193;
  LODWORD(v196) = v23;
  v23 = __CFADD__(v187, v195);
  v197 = v187 + v195;
  if (v23)
  {
    v196 = 1;
  }

  else
  {
    v196 = v196;
  }

  v198 = v135 + v196;
  v199 = v191 + v179;
  v23 = __CFADD__(__CFADD__(v191, v179), v160);
  v200 = __CFADD__(v191, v179) + v160;
  v201 = v23;
  v202 = v194 + v200;
  if (__CFADD__(v194, v200))
  {
    v203 = 1;
  }

  else
  {
    v203 = v201;
  }

  v23 = __CFADD__(v162, v203);
  v204 = v162 + v203;
  v205 = v23;
  v206 = v204 + v197;
  if (__CFADD__(v204, v197))
  {
    v207 = 1;
  }

  else
  {
    v207 = v205;
  }

  v23 = __CFADD__(v168, v207);
  v208 = v168 + v207;
  v209 = v23;
  v210 = v198 + v208;
  if (__CFADD__(v198, v208))
  {
    v211 = 1;
  }

  else
  {
    v211 = v209;
  }

  v212 = v171 + v211;
  v213 = dword_280A61890[v273];
  result = a2;
  if (a2 >= 20)
  {
    v219 = v272;
    if (a2 < 0x27)
    {
      v216 = v212 >> v213;
      v217 = (v212 << -v213) | (v210 >> v213);
      v218 = (v210 << -v213) | (v206 >> v213);
      v206 &= qword_280A61C18[v272];
      v225 = qword_280A619C0[v272];
      if (v206 <= v225 && (v206 != v225 || !v202 && !v199 && !v188 && !v172 && !v173))
      {
        v210 = 0;
        v224 = 0;
LABEL_238:
        v215 = 0;
        goto LABEL_239;
      }

      v210 = 0;
      if (v206 != v225 || v202)
      {
        v231 = a8;
        v224 = 0;
        v215 = 0;
LABEL_240:
        *v231 = 1;
        v262 = v202;
        v235 = v206;
LABEL_241:
        v261 = v210;
        goto LABEL_242;
      }

      v226 = (&unk_280A61E70 + 32 * v272);
      v227 = v226[3];
      if (v199 > v227)
      {
        goto LABEL_170;
      }

      if (v199 == v227)
      {
        v238 = v226[2];
        if (v188 > v238)
        {
          goto LABEL_170;
        }

        if (v188 != v238)
        {
          goto LABEL_302;
        }

        v239 = v226[1];
        if (v172 > v239)
        {
LABEL_170:
          v210 = 0;
          v224 = 0;
LABEL_211:
          v215 = 0;
          goto LABEL_212;
        }

        if (v172 == v239)
        {
          v210 = 0;
          v224 = 0;
          v215 = 0;
          v262 = 0;
          v261 = 0;
          v237 = *v226;
          v231 = a8;
          v235 = v206;
          goto LABEL_220;
        }
      }

LABEL_302:
      v262 = 0;
      v261 = 0;
      v224 = 0;
      v215 = 0;
      v235 = v206;
      goto LABEL_242;
    }

    if (a2 <= 0x39)
    {
      v217 = v212 >> v213;
      v218 = (v212 << -v213) | (v210 >> v213);
      v210 &= qword_280A61C18[v272];
LABEL_188:
      v228 = qword_280A619C0[v272];
      if (v210 <= v228 && (v210 != v228 || !v206 && !v202 && !v199 && !v188 && !v172 && !v173))
      {
        v224 = 0;
LABEL_237:
        v216 = 0;
        goto LABEL_238;
      }

      v224 = 0;
      if (v210 != v228 || v206 || v202)
      {
        v231 = a8;
        v216 = 0;
        v215 = 0;
        goto LABEL_240;
      }

      v229 = (&unk_280A61E70 + 32 * v272);
      v230 = v229[3];
      if (v199 > v230)
      {
        goto LABEL_193;
      }

      if (v199 == v230)
      {
        v257 = v229[2];
        if (v188 > v257)
        {
          goto LABEL_193;
        }

        if (v188 != v257)
        {
          goto LABEL_305;
        }

        v258 = v229[1];
        if (v172 > v258)
        {
LABEL_193:
          v224 = 0;
LABEL_210:
          v216 = 0;
          goto LABEL_211;
        }

        if (v172 == v258)
        {
          v224 = 0;
          v216 = 0;
          v215 = 0;
          v262 = 0;
          v235 = 0;
          v237 = *v229;
          v231 = a8;
          v261 = v210;
          goto LABEL_220;
        }
      }

LABEL_305:
      v262 = 0;
      v235 = 0;
      v224 = 0;
      v216 = 0;
      v215 = 0;
      goto LABEL_241;
    }

    if (v273 == 57)
    {
      v217 = 0;
      v218 = v171 + v211;
      goto LABEL_188;
    }

    v218 = v212 >> v213;
    v224 = qword_280A61C18[v272] & v212;
    v232 = qword_280A619C0[v272];
    if (v224 <= v232 && (v224 != v232 || !v210 && !v206 && !v202 && !v199 && !v188 && !v172 && !v173))
    {
      v217 = 0;
      goto LABEL_237;
    }

    v217 = 0;
    if (v224 != v232 || v210 || v206 || v202)
    {
      v231 = a8;
      v216 = 0;
      v215 = 0;
      goto LABEL_240;
    }

    v233 = (&unk_280A61E70 + 32 * v272);
    v234 = v233[3];
    if (v199 > v234)
    {
LABEL_209:
      v217 = 0;
      goto LABEL_210;
    }

    if (v199 == v234)
    {
      v259 = v233[2];
      if (v188 > v259)
      {
        goto LABEL_209;
      }

      if (v188 == v259)
      {
        v260 = v233[1];
        if (v172 > v260)
        {
          goto LABEL_209;
        }

        if (v172 == v260)
        {
          v217 = 0;
          v216 = 0;
          v215 = 0;
          v262 = 0;
          v235 = 0;
          v261 = 0;
          v237 = *v233;
          v231 = a8;
LABEL_220:
          if (v173 <= v237)
          {
            goto LABEL_242;
          }

          goto LABEL_240;
        }
      }
    }

    v262 = 0;
    v235 = 0;
    v261 = 0;
    v217 = 0;
    v216 = 0;
    v215 = 0;
    goto LABEL_242;
  }

  v215 = v212 >> v213;
  v216 = (v212 << -v213) | (v210 >> v213);
  v217 = (v210 << -v213) | (v206 >> v213);
  v218 = (v206 << -v213) | (v202 >> v213);
  v219 = v272;
  v202 &= qword_280A61C18[v272];
  v220 = qword_280A619C0[v272];
  if (v202 <= v220 && (v202 != v220 || !v199 && !v188 && !v172 && !v173))
  {
    v206 = 0;
    v210 = 0;
    v224 = 0;
LABEL_239:
    v231 = a9;
    goto LABEL_240;
  }

  if (v202 != v220)
  {
    goto LABEL_164;
  }

  v221 = (&unk_280A61E70 + 32 * v272);
  v222 = v221[2];
  if (v199 > v222)
  {
    goto LABEL_164;
  }

  v223 = v221[3];
  if (v199 == v223 && v188 > v222)
  {
    goto LABEL_164;
  }

  v235 = 0;
  if (v199 != v223 || v188 != v222)
  {
    v262 = v202;
    v261 = 0;
    v224 = 0;
    goto LABEL_242;
  }

  v236 = v221[1];
  if (v172 > v236)
  {
LABEL_164:
    v206 = 0;
    v210 = 0;
    v224 = 0;
LABEL_212:
    v231 = a8;
    goto LABEL_240;
  }

  if (v172 == v236)
  {
    v206 = 0;
    v210 = 0;
    v224 = 0;
    v235 = 0;
    v261 = 0;
    v237 = *v221;
    v231 = a8;
    v262 = v202;
    goto LABEL_220;
  }

  v235 = 0;
  v261 = 0;
  v224 = 0;
  v262 = v202;
LABEL_242:
  if (v224 || v261 || v235 || v262)
  {
    v243 = a5;
    v244 = a1;
  }

  else
  {
    v240 = &unk_280A61E70 + 32 * v219;
    v241 = *(v240 + 3);
    v23 = v199 >= v241;
    v242 = v199 == v241;
    v243 = a5;
    v244 = a1;
    if (!v23 || v242 && ((v251 = *(v240 + 2), v188 < v251) || v188 == v251 && __PAIR128__(v172, v173) <= *v240))
    {
      v245 = a7;
      if ((v218 & 1) == 0)
      {
        v245 = a6;
      }

      *v245 = 1;
      v218 &= ~1uLL;
      *a8 = 0;
      *a9 = 0;
    }
  }

  v246 = v244 - a2;
  if (v244 - a2 <= 19)
  {
    v247 = 0;
    if (v215 || v216 || v217)
    {
      goto LABEL_294;
    }

    if (v218 == qword_280A5D8C0[v246])
    {
      v215 = 0;
      v216 = 0;
      v217 = 0;
      v218 = qword_280A5D8C0[v246 - 1];
LABEL_257:
      v247 = 1;
LABEL_294:
      v248 = a4;
      goto LABEL_295;
    }

    goto LABEL_293;
  }

  if (v246 != 20)
  {
    if (v246 <= 0x26)
    {
      if (!(v215 | v216))
      {
        v249 = &qword_280A5D960[2 * v246 - 40];
        if (v217 == v249[1] && v218 == *v249)
        {
          v215 = 0;
          v216 = 0;
          v250 = &qword_280A5D960[2 * v246 - 42];
          v218 = *v250;
          v217 = v250[1];
          goto LABEL_257;
        }
      }

LABEL_293:
      v247 = 0;
      goto LABEL_294;
    }

    v252 = v246 - 39;
    if (v246 != 39)
    {
      if (v246 > 0x39)
      {
        v255 = &qword_280A5DA90[4 * v252];
        if (v215 == v255[3] && v216 == v255[2] && v217 == v255[1] && v218 == *v255)
        {
          v256 = &qword_280A5DA90[4 * v246 - 160];
          v218 = *v256;
          v217 = v256[1];
          v216 = v256[2];
          v215 = v256[3];
          goto LABEL_257;
        }
      }

      else if (!v215)
      {
        v253 = &qword_280A5DA90[4 * v252];
        if (v216 == v253[2] && v217 == v253[1] && v218 == *v253)
        {
          v215 = 0;
          v254 = &qword_280A5DA90[4 * v246 - 160];
          v218 = *v254;
          v217 = v254[1];
          v216 = v254[2];
          goto LABEL_257;
        }
      }

      goto LABEL_293;
    }

    if (v215 || v216 != qword_280A5DAA0 || v217 != qword_280A5DA98)
    {
      goto LABEL_293;
    }

    v248 = a4;
    if (v218 == qword_280A5DA90[0])
    {
      v215 = 0;
      v216 = 0;
      v218 = qword_280A5DA80;
      v217 = qword_280A5DA88;
      goto LABEL_263;
    }

LABEL_287:
    v247 = 0;
    goto LABEL_295;
  }

  if (v215 | v216 || v217 != qword_280A5D968)
  {
    goto LABEL_293;
  }

  v248 = a4;
  if (v218 != qword_280A5D960[0])
  {
    goto LABEL_287;
  }

  v215 = 0;
  v216 = 0;
  v217 = 0;
  v218 = qword_280A5D958;
LABEL_263:
  v247 = 1;
LABEL_295:
  *v243 = v247;
  v248[2] = v216;
  v248[3] = v215;
  *v248 = v218;
  v248[1] = v217;
  return result;
}

uint64_t TSUCellRect::columns(TSUCellRect *this)
{
  v2 = *this;
  if ((*this & 0xFFFF00000000) == 0x7FFF00000000 && *this != 0x7FFFFFFFLL)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSRange TSUCellRect::columns() const"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:20 isFatal:0 description:"Shouldn't ask for columns() from a column-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    v2 = *this;
  }

  return WORD2(v2);
}

uint64_t TSUCellRect::rows(TSUCellRect *this)
{
  v2 = *this;
  result = *this;
  v4 = v2 & 0xFFFF00000000;
  if (result == 0x7FFFFFFF && v4 != 0x7FFF00000000)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSRange TSUCellRect::rows() const"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:25 isFatal:0 description:"Shouldn't ask for rows() from a row-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    return *this;
  }

  return result;
}

uint64_t TSUCellRect::firstColumn(TSUCellRect *this)
{
  v1 = *this;
  v2 = *this & 0xFFFF00000000;
  v3 = *this;
  if (v2 == 0x7FFF00000000 && v3 != 0x7FFFFFFF)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUColumnIndex TSUCellRect::firstColumn() const"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:30 isFatal:0 description:"Shouldn't ask for firstColumn() from a column-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    v1 = *this;
    v2 = *this & 0xFFFF00000000;
    v3 = *this;
  }

  v8 = HIDWORD(v1);
  if (v3 != 0x7FFFFFFF && v2 == 0x7FFF00000000)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t TSUCellRect::firstRow(TSUCellRect *this)
{
  v1 = *this;
  v2 = *this & 0xFFFF00000000;
  if (*this == 0x7FFFFFFF && v2 != 0x7FFF00000000)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSUCellRect::firstRow() const"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:35 isFatal:0 description:"Shouldn't ask for firstRow() from a row-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    v1 = *this;
    v2 = *this & 0xFFFF00000000;
  }

  if (v2 != 0x7FFF00000000 && v1 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t TSUCellRect::lastColumn(TSUCellRect *this)
{
  v2 = *this;
  if ((*this & 0xFFFF00000000) == 0x7FFF00000000 && *this != 0x7FFFFFFFLL)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUColumnIndex TSUCellRect::lastColumn() const"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:40 isFatal:0 description:"Shouldn't ask for lastColumn() from a column-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    v2 = *this;
  }

  v6 = *(this + 1);
  if (v6)
  {
    v7 = WORD2(v2) == 0x7FFF;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0x7FFF;
  }

  else
  {
    return (v6 + WORD2(v2) - 1);
  }
}

uint64_t TSUCellRect::lastRow(TSUCellRect *this)
{
  v2 = *this;
  if (*this == 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSUCellRect::lastRow() const"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:45 isFatal:0 description:"Shouldn't ask for lastRow() from a row-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    v2 = *this;
  }

  v6 = HIDWORD(*(this + 1));
  if (v6)
  {
    v7 = v2 == 0x7FFFFFFF;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (v2 + v6 - 1);
  }
}

uint64_t TSUCellRect::maxColumn(TSUCellRect *this)
{
  v2 = *this;
  if ((*this & 0xFFFF00000000) == 0x7FFF00000000 && *this != 0x7FFFFFFFLL)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUColumnIndex TSUCellRect::maxColumn() const"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:50 isFatal:0 description:"Shouldn't ask for maxColumn() from a column-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    v2 = *this;
  }

  v6 = HIDWORD(v2);
  v7 = WORD2(v2);
  if (v6 != 0x7FFF)
  {
    return (v6 + *(this + 4));
  }

  return v7;
}

uint64_t TSUCellRect::maxRow(TSUCellRect *this)
{
  v2 = *this;
  if (*this == 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSUCellRect::maxRow() const"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:55 isFatal:0 description:"Shouldn't ask for maxRow() from a row-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    v2 = *this;
  }

  if (v2 == 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (*(this + 3) + v2);
  }
}

uint64_t TSUCellRect::numRows(TSUCellRect *this)
{
  if (*this == 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUColumnOrRowIndex TSUCellRect::numRows() const"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:60 isFatal:0 description:"Shouldn't ask for numRows() from a row-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return *(this + 3);
}

uint64_t TSUCellRect::numColumns(TSUCellRect *this)
{
  if ((*this & 0xFFFF00000000) == 0x7FFF00000000 && *this != 0x7FFFFFFFLL)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUColumnOrRowIndex TSUCellRect::numColumns() const"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:65 isFatal:0 description:"Shouldn't ask for numColumns() from a column-spanning reference: %{public}@", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return *(this + 2);
}

BOOL TSUCellRect::isValid(TSUCellRect *this)
{
  if (*this == 0x7FFFFFFF || (*this & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (HIDWORD(v3))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

uint64_t TSUCellRect::isSingleCell(TSUCellRect *this)
{
  if (*(this + 3) == 1 && *(this + 2) == 1)
  {
    return ((*this & 0xFFFF00000000) != 0x7FFF00000000) ^ (*this == 0x7FFFFFFF);
  }

  else
  {
    return 0;
  }
}

BOOL TSUCellRect::isSpanning(TSUCellRect *this)
{
  v1 = *this;
  v2 = *this & 0xFFFF00000000;
  v4 = v2 == 0x7FFF00000000 && v1 != 0x7FFFFFFF;
  return v1 == 0x7FFFFFFF && v2 != 0x7FFF00000000 || v4;
}

uint64_t TSUCellRect::bottomRight(TSUCellRect *this)
{
  v2 = *this & 0xFFFF00000000;
  v3 = *this;
  if (v2 == 0x7FFF00000000 && v3 != 0x7FFFFFFF)
  {
    return TSUCellRect::lastRow(this) | 0x7FFF00000000;
  }

  Column = TSUCellRect::lastColumn(this);
  if (v3 != 0x7FFFFFFF || v2 == 0x7FFF00000000)
  {
    Row = TSUCellRect::lastRow(this);
  }

  else
  {
    Row = 0x7FFFFFFFLL;
  }

  return Row | (Column << 32);
}

uint64_t TSUCellRect::contains(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a1;
  v5 = *a1 & 0xFFFF00000000;
  v7 = v4 == 0x7FFFFFFF && v5 != 0x7FFF00000000;
  if (HIDWORD(v2))
  {
    v8 = v2 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (v7)
    {
LABEL_15:
      if (WORD2(v3) > WORD2(a2))
      {
        return v5 == 0x7FFF00000000 && v4 != 0x7FFFFFFF;
      }

      v9 = WORD2(v3) == 0x7FFF || v2 == 0;
      v10 = v9 ? 0x7FFF : v2 + WORD2(v3) - 1;
      if (v10 < WORD2(a2))
      {
        return v5 == 0x7FFF00000000 && v4 != 0x7FFFFFFF;
      }

      return 1;
    }

    v14 = v3 == 0x7FFFFFFF && v5 != 0x7FFF00000000;
    if (v3 <= a2 || v14)
    {
      v15 = v3 + HIDWORD(v2) - 1;
      if (v3 == 0x7FFFFFFF)
      {
        v15 = 0x7FFFFFFF;
      }

      if (v15 >= a2)
      {
        if (v4 != 0x7FFFFFFF && v5 == 0x7FFF00000000)
        {
          return 1;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v4 = 0x7FFFFFFFLL;
  return v5 == 0x7FFF00000000 && v4 != 0x7FFFFFFF;
}

BOOL TSUCellRect::contains(TSUCellRect *this, const TSUCellRect *a2)
{
  v3 = sub_277063414(this, a2);
  if ((v3 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || v3 != *a2)
  {
    return 0;
  }

  return ((*a2 ^ v3) & 0x101FFFF00000000) == 0 && v4 == *(a2 + 1);
}

uint64_t sub_277063414(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = 0x7FFF00000000;
  v4 = 0x7FFFFFFFLL;
  if (*a1 != 0x7FFFFFFF && (*a1 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v6 = a1[1];
    v4 = 0x7FFFFFFFLL;
    if (HIDWORD(v6))
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v3 = 0x7FFF00000000;
    }

    else
    {
      v9 = *a2;
      v3 = 0x7FFF00000000;
      if (*a2 != 0x7FFFFFFF && (v9 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v10 = a2[1];
        v4 = 0x7FFFFFFFLL;
        if (HIDWORD(v10))
        {
          if (v10)
          {
            v11 = HIDWORD(v2);
            v12 = HIDWORD(v9);
            v13 = WORD2(v2);
            if (WORD2(v2) <= WORD2(v9))
            {
              v14 = WORD2(v9);
            }

            else
            {
              v14 = WORD2(v2);
            }

            v15 = v2 + HIDWORD(v6) - 1;
            v16 = v9 + HIDWORD(v10) - 1;
            if (v9 == 0x7FFFFFFF)
            {
              v16 = 0x7FFFFFFF;
              LODWORD(v9) = 0;
            }

            if (v2 == 0x7FFFFFFF)
            {
              v17 = 0;
            }

            else
            {
              v17 = *a1;
            }

            if (v2 == 0x7FFFFFFF)
            {
              v15 = 0x7FFFFFFF;
            }

            if (v17 <= v9)
            {
              v18 = v9;
            }

            else
            {
              v18 = v17;
            }

            v19 = v6 + v11 - 1;
            if (v13 == 0x7FFF || v6 == 0)
            {
              v19 = 0x7FFF;
            }

            if (WORD2(v9) == 0x7FFF || v10 == 0)
            {
              LOWORD(v10) = 0x7FFF;
            }

            else
            {
              LOWORD(v10) = v10 + v12 - 1;
            }

            if (v19 >= v10)
            {
              LODWORD(v10) = v10;
            }

            else
            {
              LODWORD(v10) = v19;
            }

            if (v15 >= v16)
            {
              v22 = v16;
            }

            else
            {
              v22 = v15;
            }

            v4 = 0;
            v3 = 0;
            if (v18 <= v22 && v14 <= v10)
            {
              v3 = v14 << 32;
              v4 = v18;
            }
          }
        }
      }
    }
  }

  return v3 | v4;
}

BOOL TSUCellRect::contains(TSUCellRect *this, unsigned int a2)
{
  v3 = *this;
  v2 = *(this + 1);
  v4 = *this;
  v5 = HIDWORD(v2);
  if (HIDWORD(v2))
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v3 & 0xFFFF00000000;
  }

  else
  {
    v7 = v3 & 0xFFFF00000000;
    if (v4 == 0x7FFFFFFF && v7 != 0x7FFF00000000)
    {
      return 1;
    }

    v11 = v3 != 0x7FFFFFFF || v7 == 0x7FFF00000000;
    v12 = !v11;
    if (v3 <= a2 || v12)
    {
      v13 = v3 + v5 - 1;
      v14 = v3 == 0x7FFFFFFF ? 0x7FFFFFFF : v13;
      if (v14 >= a2)
      {
        return 1;
      }
    }
  }

  return v4 == 0x7FFFFFFF && v7 != 0x7FFF00000000;
}

{
  v2 = *this;
  v3 = *(this + 1);
  if (HIDWORD(v3))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = v2 & 0xFFFF00000000;
    v6 = v2;
  }

  else
  {
    v6 = v2;
    v5 = v2 & 0xFFFF00000000;
    if (v2 != 0x7FFFFFFFLL && v5 == 0x7FFF00000000)
    {
      return 1;
    }

    if (a2 >= WORD2(v2))
    {
      v10 = WORD2(v2) == 0x7FFF || v3 == 0;
      v11 = v10 ? 0x7FFF : v3 + WORD2(v2) - 1;
      if (a2 <= v11)
      {
        return 1;
      }
    }
  }

  return v5 == 0x7FFF00000000 && v6 != 0x7FFFFFFF;
}

_DWORD *TSUCellRect::setSpansAllRows(_DWORD *this)
{
  *this = 0x7FFFFFFF;
  this[3] = 1;
  return this;
}

uint64_t TSUCellRect::setSpansAllColumns(uint64_t this)
{
  *(this + 4) = 0x7FFF;
  *(this + 8) = 1;
  return this;
}

void *TSUCellRect::insetBottom(void *this, int a2, uint64_t a3)
{
  if (*this != 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v4 = this;
    v5 = this[1];
    v6 = v5;
    v7 = HIDWORD(v5);
    if (v7 && v6 != 0)
    {
      v9 = *(a3 + 4);
      if (v7 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = v7;
      }

      this = TSUCellRect::maxRow(this);
      v11 = this - v9;
      if (v10 > this - v9)
      {
        v11 = v10;
      }

      *(v4 + 3) -= v11;
    }
  }

  return this;
}

uint64_t *TSUCellRect::insetTop(uint64_t *this, int a2)
{
  v2 = *this;
  if (*this != 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v4 = this[1];
    v5 = v4;
    v6 = HIDWORD(v4);
    if (v6 && v5 != 0)
    {
      if (v6 >= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = v6;
      }

      if (v8 <= -v2)
      {
        v8 = -v2;
      }

      *this = v8 + v2;
      *(this + 3) = v6 - v8;
    }
  }

  return this;
}

void *TSUCellRect::insetRight(void *this, int a2, int *a3)
{
  if (*this != 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v4 = this;
    v5 = this[1];
    if (HIDWORD(v5) && v5 != 0)
    {
      v7 = *a3;
      if (v5 >= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = this[1];
      }

      this = TSUCellRect::maxColumn(this);
      v9 = this - v7;
      if (v8 > this - v7)
      {
        v9 = v8;
      }

      v10 = *(v4 + 2);
      if (v9 >= v10)
      {
        v9 = *(v4 + 2);
      }

      *(v4 + 2) = v10 - v9;
    }
  }

  return this;
}

unint64_t *TSUCellRect::insetLeft(unint64_t *this, int a2)
{
  v2 = *this;
  if (*this != 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v4 = this[1];
    if (HIDWORD(v4) && v4 != 0)
    {
      v6 = HIDWORD(v2);
      if (v4 >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = this[1];
      }

      if ((v7 + WORD2(v2) < 0) ^ __OFADD__(v7, WORD2(v2)) | (v7 + WORD2(v2) == 0))
      {
        v8 = -WORD2(v2);
      }

      else
      {
        v8 = v7;
      }

      *(this + 2) = v6 + v8;
      *(this + 2) = v4 - v8;
    }
  }

  return this;
}

TSUCellRect *TSUCellRect::inset(TSUCellRect *this, int a2, int a3, int *a4)
{
  if (*this != 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v5 = this;
    v6 = *(this + 1);
    if (HIDWORD(v6) && v6 != 0)
    {
      v10 = a4[1];
      v11 = v6 / 2;
      if (v11 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = v11;
      }

      if ((v12 + WORD2(*this) < 0) ^ __OFADD__(v12, WORD2(*this)) | (v12 + WORD2(*this) == 0))
      {
        v13 = -WORD2(*this);
      }

      else
      {
        v13 = v12;
      }

      v9 = *a4;
      v14 = TSUCellRect::maxColumn(this) - v9;
      if (v12 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      if (*(v5 + 12) / 2 < a3)
      {
        a3 = *(v5 + 12) / 2;
      }

      if (a3 <= -*v5)
      {
        v16 = -*v5;
      }

      else
      {
        v16 = a3;
      }

      this = TSUCellRect::maxRow(v5);
      v17 = this - v10;
      if (a3 > this - v10)
      {
        v17 = a3;
      }

      *(v5 + 4) += v13;
      v18 = *(v5 + 12);
      v19 = *(v5 + 8) - (v15 + v13);
      *v5 += v16;
      *(v5 + 8) = v19;
      *(v5 + 12) = v18 - (v17 + v16);
    }
  }

  return this;
}

TSUCellRect *TSUCellRect::rectsBySplittingIntoPieces@<X0>(TSUCellRect *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*this != 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v6 = this;
    v7 = *(this + 1);
    if (HIDWORD(v7) && v7 != 0)
    {
      v11 = TSUCellRect::numRows(this);
      if (a2 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = a2;
      }

      v13 = v11 / v12;
      if (a3 > v13)
      {
        v13 = a3;
      }

      if (v13 <= 1)
      {
        v13 = 1;
      }

      range1 = v13;
      for (i = TSUCellRect::firstRow(v6); ; i += range1)
      {
        this = TSUCellRect::maxRow(v6);
        if (i >= this)
        {
          break;
        }

        v15 = TSUCellRect::columns(v6);
        v17 = v16;
        v39.location = TSUCellRect::rows(v6);
        v39.length = v18;
        v38.location = i;
        v38.length = range1;
        v19 = NSIntersectionRange(v38, v39);
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)"}];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.h"];
          [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:168 isFatal:0 description:"Invalid column range"];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        if (v19.location == 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)"}];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.h"];
          [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:169 isFatal:0 description:"Invalid row range"];

          +[TSUAssertionHandler logBacktraceThrottled];
          v24 = 0;
          v25 = 0x7FFF7FFFFFFFLL;
        }

        else
        {
          v24 = 0;
          if (v15 == 0x7FFFFFFFFFFFFFFFLL || !v17)
          {
            v25 = 0x7FFF7FFFFFFFLL;
          }

          else
          {
            v25 = 0x7FFF7FFFFFFFLL;
            if (v19.length)
            {
              v25 = LODWORD(v19.location) | (v15 << 32);
              v24 = v17 | (LODWORD(v19.length) << 32);
            }
          }
        }

        v27 = *(a4 + 8);
        v26 = *(a4 + 16);
        if (v27 >= v26)
        {
          v29 = (v27 - *a4) >> 4;
          v30 = v29 + 1;
          if ((v29 + 1) >> 60)
          {
            sub_2770289D0();
          }

          v31 = v26 - *a4;
          if (v31 >> 3 > v30)
          {
            v30 = v31 >> 3;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFF0)
          {
            v32 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            sub_277065DA4(a4, v32);
          }

          v33 = (16 * v29);
          *v33 = v25;
          v33[1] = v24;
          v28 = 16 * v29 + 16;
          v34 = *(a4 + 8) - *a4;
          v35 = v33 - v34;
          memcpy(v33 - v34, *a4, v34);
          v36 = *a4;
          *a4 = v35;
          *(a4 + 8) = v28;
          *(a4 + 16) = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v27 = v25;
          v27[1] = v24;
          v28 = (v27 + 2);
        }

        *(a4 + 8) = v28;
      }
    }
  }

  return this;
}

void sub_277063CCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TSUCellRect::enumerateRowsUsingBlock(TSUCellRect *a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  Row = TSUCellRect::firstRow(a1);
  v5 = TSUCellRect::maxRow(a1);
  if (Row < v5)
  {
    do
    {
      v3[2](v3, Row, &v6);
      Row = (Row + 1);
    }

    while (Row < v5 && (v6 & 1) == 0);
  }
}

void TSUCellRect::enumerateColumnsUsingBlock(TSUCellRect *a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  Column = TSUCellRect::firstColumn(a1);
  v5 = TSUCellRect::maxColumn(a1);
  if (Column < v5)
  {
    do
    {
      v3[2](v3, Column++, &v6);
    }

    while (v5 > Column && (v6 & 1) == 0);
  }
}

void TSUCellRect::enumerateCoordinatesUsingBlock(TSUCellRect *a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  Row = TSUCellRect::firstRow(a1);
  v5 = TSUCellRect::maxRow(a1);
  if (Row < v5)
  {
    v6 = Row;
    v7 = v5;
    do
    {
      Column = TSUCellRect::firstColumn(a1);
      v9 = TSUCellRect::maxColumn(a1);
      v10 = v16;
      if (Column < v9 && (v16 & 1) == 0)
      {
        v11 = Column;
        v12 = v9;
        v13 = v6 + (v11 << 32);
        v14 = v11 + 1;
        do
        {
          v15 = v13;
          v3[2](v3, &v15, &v16);
          v10 = v16;
          if (v14 >= v12)
          {
            break;
          }

          v13 += 0x100000000;
          ++v14;
        }

        while ((v16 & 1) == 0);
      }

      ++v6;
    }

    while (v6 < v7 && (v10 & 1) == 0);
  }
}

uint64_t TSUCellRect::intersects(TSUCellRect *this, const TSUCellRect *a2)
{
  v2 = *this;
  v3 = 0x7FFF00000000;
  v4 = 0x7FFFFFFFLL;
  v5 = *this == 0x7FFFFFFF || (*this & 0xFFFF00000000) == 0x7FFF00000000;
  if (v5 || ((v6 = *(this + 1), v4 = 0x7FFFFFFFLL, HIDWORD(v6)) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v13 = *a2;
    if (*a2 != 0x7FFFFFFF && (v13 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v8 = 0;
      v14 = *(a2 + 1);
      v4 = 0x7FFFFFFFLL;
      if (HIDWORD(v14))
      {
        if (v14)
        {
          v8 = 0;
          v15 = HIDWORD(v2);
          v16 = HIDWORD(v13);
          v17 = WORD2(v2);
          if (WORD2(v2) <= WORD2(v13))
          {
            v18 = WORD2(v13);
          }

          else
          {
            v18 = WORD2(v2);
          }

          v19 = v2 + HIDWORD(v6) - 1;
          v20 = v13 + HIDWORD(v14) - 1;
          if (v13 == 0x7FFFFFFF)
          {
            v20 = 0x7FFFFFFF;
            LODWORD(v13) = 0;
          }

          if (v2 == 0x7FFFFFFF)
          {
            v21 = 0;
          }

          else
          {
            v21 = v2;
          }

          if (v2 == 0x7FFFFFFF)
          {
            v19 = 0x7FFFFFFF;
          }

          if (v21 <= v13)
          {
            v22 = v13;
          }

          else
          {
            v22 = v21;
          }

          v23 = v6 + v15 - 1;
          if (v17 == 0x7FFF || v6 == 0)
          {
            v23 = 0x7FFF;
          }

          LOWORD(v25) = v14 + v16 - 1;
          if (WORD2(v13) == 0x7FFF || v14 == 0)
          {
            LOWORD(v25) = 0x7FFF;
          }

          if (v23 >= v25)
          {
            v25 = v25;
          }

          else
          {
            v25 = v23;
          }

          if (v19 >= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = v19;
          }

          v4 = 0;
          v3 = 0;
          if (v22 <= v27 && v18 <= v25)
          {
            v3 = v18 << 32;
            v8 = ((v25 - v18 + 1) | ((v27 - v22) << 32)) + 0x100000000;
            v4 = v22;
          }
        }
      }
    }
  }

  v9 = v3 | v4;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v9 == 0x7FFF7FFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t TSUCellRect::intersectsAll(uint64_t a1, const TSUCellRect **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = sub_2770641C4;
  v11 = &unk_27A701D48;
  v12 = a1;
  v4 = v9;
  if (v2 == v3)
  {
    v6 = 1;
  }

  else
  {
    do
    {
      v5 = v10(v4, v2);
      v6 = v5;
      v2 = (v2 + 16);
      if (v2 == v3)
      {
        v7 = 0;
      }

      else
      {
        v7 = v5;
      }
    }

    while ((v7 & 1) != 0);
  }

  return v6;
}

uint64_t TSUCellRect::intersectsAny(uint64_t a1, const TSUCellRect **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = sub_2770642A0;
  v11 = &unk_27A701D48;
  v12 = a1;
  v4 = v9;
  if (v2 == v3)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = v10(v4, v2);
      v6 = v5;
      v2 = (v2 + 16);
      if (v2 == v3)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5;
      }
    }

    while ((v7 & 1) == 0);
  }

  return v6;
}

uint64_t TSUCellRect::intersectsRowIndexes(TSUCellRect *this, NSIndexSet *a2)
{
  v3 = a2;
  if (*this != 0x7FFFFFFF || (*this & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v5 = TSUCellRect::rows(this);
    v7 = [(NSIndexSet *)v3 intersectsIndexesInRange:v5, v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t TSUCellRect::intersectsColumnIndexes(TSUCellRect *this, NSIndexSet *a2)
{
  v3 = a2;
  if ((*this & 0xFFFF00000000) != 0x7FFF00000000 || *this == 0x7FFFFFFFLL)
  {
    v5 = TSUCellRect::columns(this);
    v7 = [(NSIndexSet *)v3 intersectsIndexesInRange:v5, v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t TSUCellRect::limitCoord(TSUCellRect *this, const TSUCellCoord *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (*this != 0x7FFFFFFF && (*this & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v7 = *(this + 1);
    if (HIDWORD(v7) && v7 != 0)
    {
      v9 = 0x7FFFFFFF;
      if (v2 != 0x7FFFFFFF)
      {
        Row = TSUCellRect::firstRow(this);
        if (Row > v2)
        {
          v2 = Row;
        }

        v11 = TSUCellRect::lastRow(this);
        if (v11 >= v2)
        {
          v9 = v2;
        }

        else
        {
          v9 = v11;
        }
      }

      if (v3 == 0x7FFF)
      {
        v2 = v9;
        v3 = 0x7FFFLL;
      }

      else
      {
        Column = TSUCellRect::firstColumn(this);
        if (Column > v3)
        {
          LODWORD(v3) = Column;
        }

        v13 = TSUCellRect::lastColumn(this);
        if (v13 >= v3)
        {
          v3 = v3;
        }

        else
        {
          v3 = v13;
        }

        v2 = v9;
      }
    }
  }

  return (v4 << 48) | (v3 << 32) | v2;
}

uint64_t TSUCellRect::offsetBy(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *result;
  if (*result != 0x7FFFFFFF && (*result & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v9 = result;
    v10 = *result;
    v11 = 999 - a2;
    if (999 - a2 >= WORD2(v4))
    {
      *(result + 4) = WORD2(v4) + a2;
      if ((WORD2(v4) + a2) >= 0x3E8u)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUCellRect::offsetBy(int, int, const TSUColumnRowSize &)"}];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
        [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:301 isFatal:0 description:"Exceeded kTSUColumnIndexMax, by adding offset of: %d", a2];

        result = +[TSUAssertionHandler logBacktraceThrottled];
        LODWORD(v10) = *v9;
      }
    }

    if (999999 - a3 < v10)
    {
      goto LABEL_12;
    }

    v14 = v10 + a3;
    *v9 = v14;
    if (v14 >= 0xF4240)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUCellRect::offsetBy(int, int, const TSUColumnRowSize &)"}];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
      [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:308 isFatal:0 description:"Exceeded kTSURowIndexMax, by adding offset of: %d", a3];

      result = +[TSUAssertionHandler logBacktraceThrottled];
    }

    if (v11 >= WORD2(v4))
    {
      v17 = *a4;
      if (*a4)
      {
        v18 = a4[1];
        if (v18)
        {
          v19 = *(v9 + 4);
          if (v17 + ~*(v9 + 8) < v19)
          {
            *(v9 + 8) = v17 - v19;
          }

          if (v18 + ~*(v9 + 12) < *v9)
          {
            *(v9 + 12) = v18 - *v9;
          }

          if (*v9 == 0x7FFFFFFF || (*v9 & 0xFFFF00000000) == 0x7FFF00000000 || (v20 = *(v9 + 8), !HIDWORD(v20)) || !v20)
          {
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUCellRect::offsetBy(int, int, const TSUColumnRowSize &)"}];
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowRect.mm"];
            [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:327 isFatal:0 description:"offsetBy() made an invalid rect: %@", 0];

            return +[TSUAssertionHandler logBacktraceThrottled];
          }
        }
      }
    }

    else
    {
LABEL_12:
      *v9 = 0x7FFF7FFFFFFFLL;
    }
  }

  return result;
}

uint64_t TSUCellRect::largestWithoutRectsAndContainsCoord(TSUCellRect *a1, TSUCellRect **a2)
{
  v2 = 0x7FFF00000000;
  v3 = 0x7FFFFFFFLL;
  if (*a1 == 0x7FFFFFFF || (*a1 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v5 = 0;
  }

  else
  {
    v7 = *(a1 + 1);
    if (HIDWORD(v7))
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v5 = 0;
      v2 = 0x7FFF00000000;
      v3 = 0x7FFFFFFFLL;
    }

    else
    {
      sub_277065DEC(v16, *a2, a2[1]);
      if (v17)
      {
        do
        {
          v9 = v16[0];
          v15 = *(v16[0] + 28);
          sub_277027F48(v16, v16[0]);
          operator delete(v9);
          v10 = TSUCellRect::intersects(a1, &v15);
          if (v17)
          {
            v11 = v10 == 0;
          }

          else
          {
            v11 = 0;
          }
        }

        while (v11);
        if (v10)
        {
          operator new();
        }
      }

      v12 = *a1;
      v13 = WORD2(*a1);
      sub_277027A90(v16, v16[1]);
      v5 = HIWORD(v12) << 48;
      v2 = v13 << 32;
      v3 = v12;
    }
  }

  return v2 | v3 | v5;
}

uint64_t sub_277065648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16[0] = a2;
  v16[1] = a3;
  v15[0] = a4;
  v15[1] = a5;
  v14[0] = a6;
  v14[1] = a7;
  v13[0] = a9;
  v13[1] = a10;
  if (a11 == 0x7FFFFFFF || (a11 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    sub_277065BDC(a1, v16);
    sub_277065BDC(a1, v15);
    sub_277065BDC(a1, v14);
    return sub_277065BDC(a1, v13);
  }

  if (TSUCellRect::contains(v16, a11))
  {
    sub_277065BDC(a1, v16);
  }

  if (TSUCellRect::contains(v15, a11))
  {
    sub_277065BDC(a1, v15);
  }

  if (TSUCellRect::contains(v14, a11))
  {
    sub_277065BDC(a1, v14);
  }

  result = TSUCellRect::contains(v13, a11);
  if (result)
  {
    return sub_277065BDC(a1, v13);
  }

  return result;
}

unint64_t TSUCellRect::nonSpanningCellRectWithTableRange(TSUCellRect *this, const TSUCellRect *a2)
{
  v2 = a2;
  v3 = *this;
  v4 = *this;
  v5 = *this & 0xFFFF00000000;
  if (v4 == 0x7FFFFFFF && v5 != 0x7FFF00000000)
  {
    v8 = this;
LABEL_12:
    Column = TSUCellRect::firstColumn(v8);
    v3 = TSUCellRect::firstRow(v2) | (Column << 32);
    TSUCellRect::numColumns(v8);
    TSUCellRect::numRows(v2);
    return v3;
  }

  if (v5 == 0x7FFF00000000 && v4 != 0x7FFFFFFF)
  {
    v8 = a2;
    v2 = this;
    goto LABEL_12;
  }

  return v3;
}

unint64_t TSUCellRect::operator|=(unint64_t *a1, unint64_t *a2)
{
  result = sub_27706582C(a1, a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_27706582C(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  if (*a1 == 0x7FFFFFFF || (*a1 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v3) == 0 || v3 == 0)
  {
    v10 = HIDWORD(v6);
    v11 = v6 & 0xFFFF000000000000;
    LODWORD(v4) = v6;
  }

  else if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v5) == 0 || v5 == 0)
  {
    v10 = HIDWORD(v4);
    v11 = v4 & 0xFFFF000000000000;
  }

  else
  {
    if (v4 != 0x7FFFFFFF && v4 > v6)
    {
      goto LABEL_49;
    }

    v16 = v4 == 0x7FFFFFFF ? 0x7FFFFFFF : v4 + HIDWORD(v3) - 1;
    if (v16 < v6 || WORD2(v4) > WORD2(v6))
    {
      goto LABEL_49;
    }

    v17 = v3 + WORD2(v4) - 1;
    if (WORD2(v4) == 0x7FFF || v3 == 0)
    {
      v17 = 0x7FFF;
    }

    if (v17 < WORD2(v6))
    {
      goto LABEL_49;
    }

    v19 = WORD2(v6) == 0x7FFF || v5 == 0;
    v20 = v19 ? 0x7FFF : v5 + WORD2(v6) - 1;
    if (v17 < v20)
    {
      goto LABEL_49;
    }

    v21 = v6 + HIDWORD(v5) - 1;
    if (v6 == 0x7FFFFFFF)
    {
      v21 = 0x7FFFFFFF;
    }

    if (v16 >= v21)
    {
      v11 = v4 & 0xFFFF000000000000;
      v10 = HIDWORD(v4);
    }

    else
    {
LABEL_49:
      v22 = v6 + HIDWORD(v5) - 1;
      if (v4 < v6 && v6 != 0x7FFFFFFF)
      {
        goto LABEL_71;
      }

      if (v6 == 0x7FFFFFFF)
      {
        v22 = 0x7FFFFFFF;
      }

      if (v22 < v4 || WORD2(v6) > WORD2(v4))
      {
        goto LABEL_71;
      }

      v23 = v5 + WORD2(v6) - 1;
      if (WORD2(v6) == 0x7FFF || v5 == 0)
      {
        v23 = 0x7FFF;
      }

      if (v23 < WORD2(v4))
      {
        goto LABEL_71;
      }

      v25 = WORD2(v4) == 0x7FFF || v3 == 0;
      v26 = v25 ? 0x7FFF : v3 + WORD2(v4) - 1;
      if (v23 < v26)
      {
        goto LABEL_71;
      }

      v27 = v4 + HIDWORD(v3) - 1;
      if (v4 == 0x7FFFFFFF)
      {
        v27 = 0x7FFFFFFF;
      }

      if (v22 >= v27)
      {
        v11 = v6 & 0xFFFF000000000000;
        LODWORD(v4) = v6;
        v10 = HIDWORD(v6);
      }

      else
      {
LABEL_71:
        v11 = 0;
        if (WORD2(v4) >= WORD2(v6))
        {
          LOWORD(v10) = WORD2(v6);
        }

        else
        {
          LOWORD(v10) = WORD2(v4);
        }

        if (v6 == 0x7FFFFFFF)
        {
          LODWORD(v6) = 0;
        }

        if (v4 == 0x7FFFFFFF)
        {
          LODWORD(v4) = 0;
        }

        if (v4 < v6)
        {
          LODWORD(v6) = v4;
        }

        LODWORD(v4) = v6;
      }
    }
  }

  return v11 | v4 | (v10 << 32);
}

uint64_t TSUCellRect::operator&=(unint64_t *a1, unint64_t *a2)
{
  result = sub_277063414(a1, a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__CFString *TSUCellRect::asString(TSUCellRect *this)
{
  v2 = *this;
  if ((v2 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || ((v3 = *(this + 1), HIDWORD(v3)) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v5 = @"#REF!:#REF!";
  }

  else
  {
    v6 = (v2 + HIDWORD(v3) - 1);
    v7 = (v2 + (v3 << 32) + 0xFFFF00000000) & 0xFFFF00000000;
    if ((v2 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v8 = 0x7FFF00000000;
    }

    else
    {
      v8 = v7;
    }

    if (v2 == 0x7FFFFFFF)
    {
      v9 = 0x7FFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = NSStringFromTSUCellCoord(v2);
    v12 = NSStringFromTSUCellCoord(v8 | v9);
    v5 = [v10 stringWithFormat:@"%@:%@", v11, v12];
  }

  return v5;
}

uint64_t sub_277065BDC(uint64_t a1, TSUCellRect *this)
{
  v2 = *sub_277065C70(a1, &v4, this);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_277065C70(uint64_t a1, void *a2, TSUCellRect *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = a1;
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_277065D0C(v7, this, (v4 + 28)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (!sub_277065D0C(v7, (v8 + 28), this))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_10:
  *a2 = v8;
  return v5;
}

uint64_t sub_277065D0C(int a1, TSUCellRect *this, TSUCellRect *a3)
{
  v3 = *(this + 2) * *(this + 3) - *(a3 + 2) * *(a3 + 3);
  if (!v3)
  {
    Row = TSUCellRect::firstRow(this);
    v7 = TSUCellRect::firstRow(a3);
    v3 = Row - v7;
    if (Row == v7)
    {
      Column = TSUCellRect::firstColumn(this);
      v9 = TSUCellRect::firstColumn(a3);
      v3 = Column - v9;
      if (Column == v9)
      {
        v10 = TSUCellRect::numRows(this);
        v3 = v10 - TSUCellRect::numRows(a3);
      }
    }
  }

  return v3 >> 31;
}

void sub_277065DA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_277028AC0();
}

void *sub_277065DEC(void *a1, TSUCellRect *this, TSUCellRect *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (this != a3)
  {
    v6 = this;
    do
    {
      sub_277065E70(a1, v4, v6);
      v6 = (v6 + 16);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_277065E70(void *a1, void *a2, TSUCellRect *this)
{
  v3 = *sub_277065F08(a1, a2, &v6, &v5, this);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_277065F08(void *a1, void *a2, void *a3, uint64_t *a4, TSUCellRect *this)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_277065D0C(a1, this, (a2 + 28)))
  {
    if (!sub_277065D0C(a1, (a2 + 28), this))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_277065D0C(a1, this, (v15 + 28)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_277065D0C(a1, (v12 + 28), this))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_277065C70(a1, a3, this);
}

void sub_27706615C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_2770679A4(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_277066254(unint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = (v2 - *a2) >> 4;
    v2 = *a2;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7[2] + *v7 <= a1)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  return (v2 - *a2) >> 4;
}

void sub_2770669C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2770679A4(a14);
  }

  _Unwind_Resume(a1);
}

void **sub_277066A04(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_2770289D0();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_277067B90(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_277067BD8(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_2770671A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_2770679A4(a20);
  }

  _Unwind_Resume(a1);
}

void *sub_277067208(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = ((v6 - *a1) >> 4) + 1;
    if (v15 >> 60)
    {
      sub_2770289D0();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    v18 = v17 >> 3;
    if (v17 >> 3 <= v15)
    {
      v18 = ((v6 - *a1) >> 4) + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v20 = v16 >> 4;
    v32 = a1;
    if (v19)
    {
      sub_277067B90(a1, v19);
    }

    *&v30 = 0;
    *(&v30 + 1) = 16 * v20;
    v31 = (16 * v20);
    sub_277067CC4(&v30, a3);
    v22 = *(&v30 + 1);
    memcpy(v31, v4, a1[1] - v4);
    v23 = *a1;
    v24 = *(&v30 + 1);
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = (v24 - (v4 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    *&v30 = v27;
    *(&v30 + 1) = v27;
    sub_277067BD8(&v30);
    return v22;
  }

  else if (a2 == v6)
  {
    v21 = a3[1];
    *v6 = *a3;
    v6[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 2;
  }

  else
  {
    sub_277067C60(a1, a2, v6, (a2 + 2));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 2;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = v10[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v4[1];
    *v4 = v12;
    v4[1] = v11;
    if (v13)
    {
      sub_2770679A4(v13);
    }
  }

  return v4;
}

void sub_2770673A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_277067BD8(va);
  _Unwind_Resume(a1);
}

void sub_2770678A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_2770679A4(a18);
  }

  if (a15)
  {
    sub_2770679A4(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2770678D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_277067E58(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_2770679A4(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void sub_2770679A4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_277067A78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x277CA5D00](v1, 0x1000C401E2E008BLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_277067AA4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CA5D00);
}

uint64_t sub_277067ADC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x277CA5D00);
  }

  return result;
}

uint64_t sub_277067AFC(uint64_t a1, uint64_t a2)
{
  if (sub_277067B3C(a2, &unk_288629F28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_277067B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_277067B90(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_277028AC0();
}

void **sub_277067BD8(void **a1)
{
  sub_277067C0C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_277067C0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_2770679A4(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *sub_277067C60(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_277067DF4(&v11, a2, v7, v6);
}

__int128 *sub_277067CC4(__int128 *result, void *a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    v5 = *(result + 1);
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 3;
      }

      v9 = *(result + 4);
      v11[4] = *(v3 + 4);
      sub_277067B90(v9, v8);
    }

    v6 = (((v5 - *result) >> 4) + 1 + ((((v5 - *result) >> 4) + 1) >> 63)) >> 1;
    result = sub_277067E58(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    *(v3 + 1) -= 16 * v6;
    *(v3 + 2) = v7;
  }

  *v4 = *a2;
  v10 = a2[1];
  *(v4 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 16;
  return result;
}

void *sub_277067DF4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_2770679A4(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *sub_277067E58(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_2770679A4(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_277067EC4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_27706615C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t TSULineCapToCGLineCap(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t CGLineCapToTSULineCap(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t TSULineJoinToCGLineJoin(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t CGLineJoinToTSULineJoinStyle(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

void sub_277067F78(CGContextRef c, double a2)
{
  v2 = a2;
  if (a2 <= 0.0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SFRSetLineWidth(CGContextRef, CGFloat)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 222, 0, "lineWidth (%f) should be greater than zero.", *&v2);
    +[TSUAssertionHandler logFullBacktrace];
    CGContextGetCTM(&v5, c);
    CGAffineTransformInvert(&v6, &v5);
    v2 = v6.a + v6.c;
  }

  CGContextSetLineWidth(c, v2);
}

void *sub_2770682E0(void *a1, const char *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return [a1 lineToPoint:{**(a2 + 1), *(*(a2 + 1) + 8)}];
      }
    }

    else
    {
      return [a1 moveToPoint:{**(a2 + 1), *(*(a2 + 1) + 8)}];
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return [a1 curveToPoint:*(*(a2 + 1) + 16) controlPoint:{*(*(a2 + 1) + 24), **(a2 + 1), *(*(a2 + 1) + 8)}];
      case 3:
        v3 = *(a2 + 1);
        return [a1 curveToPoint:v3[4] controlPoint1:v3[5] controlPoint2:{*v3, v3[1], v3[2], v3[3]}];
      case 4:
        return [a1 closePath];
    }
  }

  return a1;
}

void sub_27706CB2C(uint64_t a1, int *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = (a1 + v5);
  if (*(a1 + v5) == 32)
  {
    v7 = v5 + 1;
    do
    {
      *a2 = v7;
      v8 = *++v6;
      ++v7;
    }

    while (v8 == 32);
  }

  v9 = 0;
  strtod(v6, &v9);
  if (v6 == v9)
  {
    *a3 = 1;
  }

  else
  {
    *a2 += v9 - v6;
  }
}

void sub_27706D1E4(uint64_t a1, float *a2)
{
  v4 = 0;
  v36[25] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = 0.0;
  v8 = v6;
  v9 = *a1;
  do
  {
    v10 = *(a1 + v4 + 16);
    v11 = *(a1 + v4 + 24);
    v7 = TSUDistance(v9, v8, v10, v11) + v7;
    v4 += 16;
    v8 = v11;
    v9 = v10;
  }

  while (v4 != 48);
  v12 = TSUDistance(v5, v6, *(a1 + 48), *(a1 + 56));
  if ((v7 - v12) <= 0.1)
  {
    *a2 = *a2 + v7;
  }

  else
  {
    v13 = *(a1 + 16);
    v35[0] = *a1;
    v35[1] = v13;
    v14 = *(a1 + 48);
    v35[2] = *(a1 + 32);
    v35[3] = v14;
    v15 = v36;
    v16 = 3;
    v17 = 1;
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      v23 = v35[4 * v17 - 4];
      v24 = v16;
      v25 = v15;
      do
      {
        v26 = v25[-3];
        *v25++ = vmlaq_f64(vmulq_f64(v26, _Q0), _Q0, v23);
        v23 = v26;
        --v24;
      }

      while (v24);
      ++v17;
      --v16;
      v15 += 4;
    }

    while (v17 != 4);
    v27 = 0;
    v28 = v35;
    do
    {
      v29 = *v28;
      v28 += 4;
      *&v34[v27] = v29;
      v27 += 16;
    }

    while (v27 != 64);
    v30 = v33;
    v31 = 3;
    v32 = 12;
    do
    {
      *v30++ = v35[v32];
      --v31;
      v32 -= 3;
    }

    while (v31 != -1);
    sub_27706D1E4(v34, a2);
    sub_27706D1E4(v33, a2);
  }
}

uint64_t sub_27706D3A0()
{
  v3 = *(v1 + 3240);

  return [v3 stringWithUTF8String:v0];
}

uint64_t sub_27706D3BC()
{
  v2 = MEMORY[0x277CCACA8];

  return [v2 stringWithUTF8String:v0];
}

uint64_t sub_27706D3D8()
{
  v3 = *(v1 + 3240);

  return [v3 stringWithUTF8String:v0];
}

uint64_t sub_27706D3F4()
{
  v2 = MEMORY[0x277CCACA8];

  return [v2 stringWithUTF8String:v0];
}

uint64_t sub_27706D830(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = *(a1 + 48);
  v14 = *(v13 + 8);
  if (*(v14 + 24) == 1)
  {
    if (v11)
    {
      *(v14 + 24) = 0;
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_27706D954;
      v18[3] = &unk_27A701D98;
      v20 = v13;
      v15 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = a3;
      [v15 writeData:v10 handler:v18];
    }
  }

  v16 = *(*(*(a1 + 48) + 8) + 24);

  return v16;
}

uint64_t sub_27706D954(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) == 1)
  {
    if (v7)
    {
      *(v8 + 24) = 0;
      v7 = (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (a2)
      {
        v9 = *(a1 + 48);
      }

      else
      {
        v9 = 0;
      }

      v7 = (*(*(a1 + 32) + 16))(*(a1 + 32), v9 & 1, a3, 0);
    }
  }

  return MEMORY[0x2821F97C8](v7);
}

void *sub_27706DBDC(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();
  result = TSUDynamicCast(v4, [objc_msgSend(a2 "userInfo")]);
  if (result)
  {
    v6 = *(a1 + 32);
    [result doubleValue];
    v7 = *(v6 + 16);

    return v7(v6);
  }

  return result;
}

os_log_t sub_27706DD74()
{
  result = TSULogCreateCategory("TSUDefaultCat");
  TSUDefaultCat_log_t = result;
  return result;
}

void sub_27706EC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_27706EE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  if (a2)
  {

    v31 = objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      v32 = v31;
      *(a27 + 24) = 0;
      v33 = MEMORY[0x277CCA9B8];
      v34 = [v32 userInfo];
      *v27 = [v33 errorWithDomain:@"iWork.tsu.validateXml" code:-1 userInfo:v34];
    }

    else
    {
      *(a27 + 24) = 0;
      v35 = MEMORY[0x277CCA9B8];
      *(v28 - 104) = *MEMORY[0x277CCA470];
      *(v28 - 96) = @"unknown error";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 - 96 forKeys:v28 - 104 count:1];
      *v27 = [v35 errorWithDomain:@"iWork.tsu.validateXml" code:-1 userInfo:v32];
    }

    objc_end_catch();
    JUMPOUT(0x27706EE00);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27706EFFC(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 56) validateXml:a2 dtd:*(a1 + 32) validateXmlHandler:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_27706F6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (v20)
  {
    objc_end_catch();
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_27706F864(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 64) examineXmlDocPtr:a2 nodeHandler:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    result = [*(a1 + 64) reloadXmlData:*(a1 + 32) docPtr:a2];
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

void sub_27706FB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSULRUCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_27706FE84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 object];
  [v2 addObject:?];
}

void sub_277070144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_277070198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770701B0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  v7 = [v6 p_counterValue];
  if (v7 < *(*(*(a1 + 32) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 32) + 8) + 24) = v7;
  }
}

uint64_t TSUPreferredLocale()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  if ([objc_msgSend(v0 "localeIdentifier")])
  {
    v0 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{objc_msgSend(objc_msgSend(v0, "localeIdentifier"), "stringByReplacingOccurrencesOfString:withString:options:range:", @"ars", @"ar", 0, 0, 3)}];
  }

  v1 = +[TSULocale localeIdentifierWithLanguageVariantAndRegionSubtagRemoved:](TSULocale, "localeIdentifierWithLanguageVariantAndRegionSubtagRemoved:", [v0 localeIdentifier]);
  v2 = MEMORY[0x277CBEAF8];

  return [v2 localeWithLocaleIdentifier:v1];
}

uint64_t TSUHasBiDiLanguage(uint64_t a1)
{
  if (qword_280A63BB8 != -1)
  {
    sub_277113A78();
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  os_unfair_lock_lock(&dword_280A63BB0);
  v2 = [qword_280A63BA8 objectForKeyedSubscript:a1];
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:a1] == 2;
    v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [qword_280A63BA8 setObject:v4 forKeyedSubscript:a1];
  }

  os_unfair_lock_unlock(&dword_280A63BB0);
  return v3;
}

uint64_t sub_27707047C()
{
  result = objc_opt_new();
  qword_280A63BA8 = result;
  dword_280A63BB0 = 0;
  __dmb(0xBu);
  return result;
}

void *sub_2770704B0(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:a1];
  result = [v1 objectForKey:*MEMORY[0x277CBE6B0]];
  if (result)
  {
    return ([result characterIsMember:97] ^ 1);
  }

  return result;
}

uint64_t sub_2770704F4(__CFString *a1, void *a2)
{
  v3 = a1;
  if ([(__CFString *)a1 isEqualToString:@"es-419"])
  {
    v3 = @"es";
  }

  if (a2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_277070654;
    v8[3] = &unk_27A701F40;
    v8[4] = v3;
    if ([a2 indexOfObjectPassingTest:v8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_277070660;
      v7[3] = &unk_27A701F40;
      v7[4] = v3;
      v4 = [a2 indexOfObjectPassingTest:v7];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [a2 addObject:v3];
      }

      else
      {
        [a2 replaceObjectAtIndex:v4 withObject:v3];
      }
    }

    return a2;
  }

  else
  {
    v5 = MEMORY[0x277CBEB18];

    return [v5 arrayWithObject:v3];
  }
}

void *sub_27707066C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ((*(a1 + 16))(a1, v8))
      {
        v5 = sub_2770704F4(v8, v5);
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v5;
}

void *TSUAnyInputLanguageIsNonRoman()
{
  result = sub_27707066C(&unk_288629FA0);
  if (result)
  {
    return ([result count] != 0);
  }

  return result;
}

uint64_t TSUUILayoutIsRTL()
{
  if (qword_280A63BC0 != -1)
  {
    sub_277113A8C();
  }

  return 0;
}

uint64_t TSUUILayoutIsLTR()
{
  if (qword_280A63BC0 != -1)
  {
    sub_277113A8C();
  }

  return 1;
}

uint64_t TSUFormulasAreRTL()
{
  if (qword_280A63BC8 != -1)
  {
    sub_277113AA0();
  }

  return 0;
}

void sub_27707088C()
{
  if (qword_280A63BC0 != -1)
  {
    sub_277113A8C();
  }
}

unint64_t sub_2770708B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5)
{
  v5 = a3;
  v6 = a4 & 0x7800000000000000;
  if (((a4 >> 61) & 3) == 3)
  {
    if (v6 == 0x7800000000000000)
    {
      v7 = 0xFE00000000000000;
      if ((a4 & 0x3FFFFFFFFFFFLL) <= qword_280A5B9F8)
      {
        if ((a4 & 0x3FFFFFFFFFFFLL) != qword_280A5B9F8 || qword_280A5B9F0 > a3)
        {
          v7 = 0xFE003FFFFFFFFFFFLL;
          v8 = a3;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      LODWORD(v11) = 0;
      v12 = 0;
      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v5 = 0;
      }

      else
      {
        v5 = v8;
      }

      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v7 = 0xF800000000000000;
      }

      v9 = v7 & a4;
    }

    else
    {
      v5 = 0;
      v9 = 0;
      v12 = 0;
      v11 = (a4 >> 47) & 0x3FFF;
    }
  }

  else
  {
    v9 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFLL) > qword_280A5BA08 || ((a4 & 0x1FFFFFFFFFFFFLL) == qword_280A5BA08 ? (v10 = qword_280A5BA00 > a3) : (v10 = 1), !v10))
    {
      v5 = 0;
      v9 = 0;
    }

    v11 = (a4 >> 49) & 0x3FFF;
    v12 = v9 | v5;
  }

  v70 = 0uLL;
  v15 = a2 & 0x7800000000000000;
  if (((a2 >> 61) & 3) == 3)
  {
    if (v15 == 0x7800000000000000)
    {
      *&v70 = a1;
      if ((a2 & 0x3FFFFFFFFFFFLL) > qword_280A5B9F8 || ((a2 & 0x3FFFFFFFFFFFLL) == qword_280A5B9F8 ? (v16 = qword_280A5B9F0 > a1) : (v16 = 1), !v16))
      {
        *&v70 = 0;
      }

      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        *&v70 = 0;
      }
    }

    else
    {
      v70 = 0uLL;
    }

LABEL_63:
    if ((~a4 & 0x7E00000000000000) == 0)
    {
      *a5 |= 1u;
    }

    if ((~a2 & 0x7C00000000000000) == 0)
    {
      if ((~a2 & 0x7E00000000000000) == 0)
      {
        *a5 |= 1u;
      }

      return v70;
    }

    v31 = a4 & 0x7C00000000000000;
    if (v15 == 0x7800000000000000 && v31 != 0x7C00000000000000 || !(v9 | v5))
    {
      goto LABEL_81;
    }

    if (v31 == 0x7800000000000000 || v12)
    {
      return 0;
    }

LABEL_76:
    if (v31 == 0x7C00000000000000)
    {
      if ((~a4 & 0x7E00000000000000) == 0)
      {
        *a5 |= 1u;
      }

      return v5;
    }

    v5 = a1;
    if (v6 == 0x7800000000000000)
    {
      return v5;
    }

LABEL_81:
    v5 = 0;
    *a5 |= 1u;
    return v5;
  }

  v17 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > qword_280A5BA08 || ((a2 & 0x1FFFFFFFFFFFFLL) == qword_280A5BA08 ? (v18 = qword_280A5BA00 > a1) : (v18 = 1), v19 = a1, !v18))
  {
    v19 = 0;
    v17 = 0;
  }

  *&v70 = v19;
  *(&v70 + 1) = v17;
  v20 = (a2 >> 49) & 0x3FFF;
  if (!(v17 | v19))
  {
    goto LABEL_63;
  }

  if (!v12)
  {
    v31 = a4 & 0x7C00000000000000;
    goto LABEL_76;
  }

  v69[0] = 0;
  v69[1] = 0;
  v21 = v20 - v11;
  if (v20 <= v11)
  {
    if (v21 < -34)
    {
      return a1;
    }

    v33 = (&unk_280A5B7E0 + 16 * (v11 - v20));
    v34 = *v33;
    v35 = v33[1];
    v36 = HIDWORD(v35);
    v37 = v35 * HIDWORD(v5);
    v38 = HIDWORD(v37) + HIDWORD(v35) * HIDWORD(v5);
    v39 = HIDWORD(v35) * v5 + v37 + ((v35 * v5) >> 32);
    v40 = HIDWORD(v39);
    v41 = (v35 * v5) | (v39 << 32);
    v42 = HIDWORD(*v33);
    v43 = *v33 * HIDWORD(v5);
    v44 = *v33 * v5;
    v45 = HIDWORD(v43) + HIDWORD(*v33) * HIDWORD(v5);
    v46 = HIDWORD(*v33) * v5 + v43 + HIDWORD(v44);
    v47 = __PAIR128__(v38, v41) + __PAIR128__(v40, v45 + HIDWORD(v46));
    v48 = v35 * HIDWORD(v9);
    v49 = v35 * v9;
    v50 = v36 * v9;
    v51 = HIDWORD(v48) + v36 * HIDWORD(v9);
    v52 = v50 + v48 + HIDWORD(v49);
    v53 = HIDWORD(v52);
    v54 = v49 | (v52 << 32);
    v55 = v34 * HIDWORD(v9);
    v56 = v34 * v9;
    v57 = HIDWORD(v34) * v9 + v55 + HIDWORD(v56);
    v58 = v56 | (v57 << 32);
    v59 = __PAIR128__(v51, v54) + __PAIR128__(v53, HIDWORD(v55) + v42 * HIDWORD(v9) + HIDWORD(v57));
    v60 = v41 + v45 + HIDWORD(v46) + v58;
    v61 = __CFADD__(__CFADD__(v47, v58), v54 + HIDWORD(v55) + v42 * HIDWORD(v9) + HIDWORD(v57));
    v62 = __CFADD__(v47, v58) + v54 + HIDWORD(v55) + v42 * HIDWORD(v9) + HIDWORD(v57);
    v63 = v61;
    v64 = *(&v47 + 1) + v62;
    v65 = __CFADD__(*(&v47 + 1), v62) || v63;
    if (v64)
    {
      return a1;
    }

    if (*(&v59 + 1) != v65 << 63 >> 63 || v60 > v17)
    {
      return a1;
    }

    else
    {
      v67 = v44 | (v46 << 32);
      if (v60 != v17 || (v5 = a1, v67 <= v70))
      {
        v68[0] = 0;
        v68[1] = 0;
        sub_277070DE8(v69, v68, v70, *(&v70 + 1), v67, v60);
        return v68[0];
      }
    }
  }

  else
  {
    if (v9)
    {
      v22 = 38;
    }

    else
    {
      v22 = 34;
    }

    do
    {
      if (v21 < 1)
      {
        break;
      }

      v23 = (COERCE_UNSIGNED_INT(v70 + (v17 * 1.8447e19)) >> 23) - 127;
      v24 = v22 - dword_280A5B5D0[v23];
      v25 = (&unk_280A5BB30 + 16 * v23);
      v26 = v25[1];
      if ((v17 - v26) > 0 || v17 == v26 && v70 >= *v25)
      {
        --v24;
      }

      if (v21 >= v24)
      {
        v21 -= v24;
      }

      else
      {
        v24 = v21;
        v21 = 0;
      }

      v27 = (&unk_280A5B7E0 + 16 * v24);
      v28 = *v27;
      v29 = *v27 * DWORD1(v70);
      v30 = HIDWORD(v28) * v70 + v29 + ((v28 * v70) >> 32);
      sub_277070DE8(v69, &v70, (*v27 * v70) | (v30 << 32), v28 * v17 + v27[1] * v70 + HIDWORD(v28) * DWORD1(v70) + HIDWORD(v29) + HIDWORD(v30), v5, v9);
      v17 = *(&v70 + 1);
    }

    while (v70 != 0);
    return v70;
  }

  return v5;
}

unint64_t *sub_277070DE8(unint64_t *result, unint64_t *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (!(a4 | a6))
  {
    *result = a3 / a5;
    result[1] = 0;
    *a2 = 0;
    a2[1] = 0;
    v20 = a3 - *result * a5;
    goto LABEL_39;
  }

  v6 = a5 + a6 * 1.84467441e19;
  v7 = (a3 + a4 * 1.84467441e19) / v6;
  if (!a6 && !(a5 >> 28) && a5 << 36 <= a4)
  {
    v8 = (v7 * 8.67361738e-19) - 4;
    v9 = HIDWORD(v8) * a5;
    v10 = v8 * a5;
    v11 = HIDWORD(v9);
    v12 = HIDWORD(v10) + v9;
    *(&v13 + 1) = (HIDWORD(v12) + v11);
    *&v13 = v10 & 0xFFFFFFF0 | (v12 << 32);
    v14 = a4 - (v13 >> 4);
    v36 = a3 >= v10 << 60;
    a3 -= v10 << 60;
    v15 = !v36;
    a4 = v14 - v15;
    v16 = a3 + (v14 - v15) * 1.84467441e19;
    v17 = v8 >> 4;
    v7 = v16 / v6;
    v18 = v8 << 60;
    v19 = a5 >> 13;
LABEL_12:
    if (a4 > v19 || a4 == v19 && a3 > a5 << 51)
    {
      v22 = v7 * 1.77635684e-15;
      v23 = v22 - 1;
      v24 = HIDWORD(v23) * a5;
      v25 = v23 * a5;
      v26 = (v22 - 1) * HIDWORD(a5) + v24 + HIDWORD(v25);
      *(&v27 + 1) = (v23 * a6 + HIDWORD(v23) * HIDWORD(a5) + HIDWORD(v24) + HIDWORD(v26));
      *&v27 = v25 & 0xFFFF8000 | (v26 << 32);
      v28 = a4 - (v27 >> 15);
      v36 = a3 >= v25 << 49;
      a3 -= v25 << 49;
      v29 = !v36;
      a4 = v28 - v29;
      v36 = __CFADD__(v18, v23 << 49);
      v18 += v23 << 49;
      v17 += v36 + (v23 >> 15);
      v7 = (a3 + (v28 - v29) * 1.84467441e19) / v6;
    }

    goto LABEL_20;
  }

  v18 = 0;
  if (!(a6 >> 13))
  {
    *(&v21 + 1) = a6;
    *&v21 = a5;
    v19 = v21 >> 13;
    v17 = 0;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_20:
  v30 = v7;
  v31 = v7 >> 32;
  v32 = v31 * a5;
  v33 = v7 * HIDWORD(a5) + v32 + ((v7 * a5) >> 32);
  v34 = (__PAIR128__(a4, a3) - __PAIR128__(v7 * a6 + v31 * HIDWORD(a5) + HIDWORD(v32) + HIDWORD(v33), (v7 * a5) | (v33 << 32))) >> 64;
  v20 = a3 - ((v7 * a5) | (v33 << 32));
  if (v34 < 0)
  {
    v38 = v30 - 1;
    v34 = (__PAIR128__(v34, v20) + __PAIR128__(a6, a5)) >> 64;
    v20 += a5;
    v30 -= 2;
    v39 = __PAIR128__(v34, v20) + __PAIR128__(a6, a5);
    v40 = v34 >= 0;
    if (v34 < 0)
    {
      v34 = (__PAIR128__(v34, v20) + __PAIR128__(a6, a5)) >> 64;
    }

    else
    {
      v30 = v38;
    }

    if (!v40)
    {
      v20 = v39;
    }
  }

  else
  {
    v35 = v34 - a6;
    if (v34 > a6 || (v34 == a6 ? (v36 = v20 >= a5) : (v36 = 0), v36))
    {
      ++v30;
      v36 = v20 >= a5;
      v20 -= a5;
      v37 = !v36;
      v34 = v35 - v37;
    }
  }

  v36 = __CFADD__(v30, v18);
  v41 = v30 + v18;
  if (v36)
  {
    ++v17;
  }

  *result = v41;
  result[1] = v17;
  a2[1] = v34;
LABEL_39:
  *a2 = v20;
  return result;
}

uint64_t sub_277071034(void *a1, int a2, uint64_t a3, size_t count)
{
  v12 = *MEMORY[0x277D85DE8];
  if (count < 0x11)
  {
    if (!count)
    {
      return [a1 initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 8 * v8)];
      ++v8;
    }

    while (count != v8);
    v9 = [a1 initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [a1 initWithObjects:0 count:count];
}

id sub_27707118C(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [[a1 alloc] tsu_initWithCGFloats:a3 count:a4];

  return v4;
}

uint64_t sub_2770711D0(void *a1, int a2, uint64_t a3, size_t count)
{
  v12 = *MEMORY[0x277D85DE8];
  if (count < 0x11)
  {
    if (!count)
    {
      return [a1 initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 4 * v8)];
      ++v8;
    }

    while (count != v8);
    v9 = [a1 initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [a1 initWithObjects:0 count:count];
}

id sub_277071328(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [[a1 alloc] tsu_initWithInts:a3 count:a4];

  return v4;
}

uint64_t sub_27707136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    return MEMORY[0x2821F9670](a3, sel_tsu_arrayByAddingNonContainedObjectsFromArray_);
  }

  else
  {
    return a4;
  }
}

uint64_t sub_277071384(void *a1, int a2, uint64_t a3, size_t count)
{
  v12 = *MEMORY[0x277D85DE8];
  if (count < 0x11)
  {
    if (!count)
    {
      return [a1 initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [MEMORY[0x277CCABB0] numberWithInteger:*(a3 + 8 * v8)];
      ++v8;
    }

    while (count != v8);
    v9 = [a1 initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [a1 initWithObjects:0 count:count];
}

id sub_2770714DC(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [[a1 alloc] tsu_initWithUIntegers:a3 count:a4];

  return v4;
}

uint64_t sub_277071520(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 count] <= a3)
  {
    return 0;
  }

  return [a1 objectAtIndex:a3];
}

uint64_t sub_277071578(void *a1)
{
  v2 = [a1 indexOfObject:?];
  if (!v2 || v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [a1 objectAtIndex:v2 - 1];
}

uint64_t sub_2770715D4(void *a1)
{
  v2 = [a1 count];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v7 = [a1 objectAtIndex:v4];
    v8 = v7;
    if (!v5 || [v7 compare:v5] == -1)
    {
      v5 = v8;
      v6 = v4;
    }

    ++v4;
  }

  while (v3 != v4);
  return v6;
}

void *sub_277071664(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB58] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [a1 indexOfObject:*(*(&v12 + 1) + 8 * v9)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

void *sub_277071784(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

void *sub_2770718A4(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

void *sub_2770719C4(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 indexOfObject:v10] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

void *sub_277071AF4(void *a1, uint64_t a2, void *a3)
{
  v5 = [a3 count];
  if (!v5)
  {
    return a1;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = a1;
  do
  {
    v10 = [a3 objectAtIndex:v7];
    v11 = [v9 indexOfObjectIdenticalTo:v10];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v11; i != 0x7FFFFFFFFFFFFFFFLL; i = [v9 indexOfObjectIdenticalTo:v10])
      {
        if (!v8)
        {
          v8 = [MEMORY[0x277CBEB18] arrayWithArray:a1];
          v9 = v8;
        }

        [v8 removeObjectAtIndex:i];
      }
    }

    ++v7;
  }

  while (v7 != v6);
  return v9;
}

void *sub_277071BD8(void *a1, uint64_t a2, void *a3)
{
  if (a3 && (v5 = [a3 count]) != 0)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [a3 objectAtIndex:v8];
      if (([a1 containsObject:v9] & 1) == 0)
      {
        if (!v7)
        {
          v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count") + v6}];
          [v7 addObjectsFromArray:a1];
        }

        [v7 addObject:v9];
      }

      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return a1;
  }
}

void *sub_277071CA4(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t sub_277071DB4(void *a1)
{
  if (![a1 count])
  {
    sub_277113AB4(0, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithArray:a1];
  [v9 removeObjectAtIndex:0];
  v10 = objc_opt_class();

  return [v10 arrayWithArray:v9];
}

void *sub_277071E18(void *a1, uint64_t a2, void *a3)
{
  if (![a3 count])
  {
    return a1;
  }

  v5 = [a1 mutableCopy];
  [v5 removeObjectsAtIndexes:a3];
  v6 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  return v6;
}

void sub_277071E80(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 copy];
  [v4 enumerateObjectsUsingBlock:a3];
}

uint64_t sub_277071ECC(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(a1);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ((*(a3 + 16))(a3, v9))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_4;
      }

      return v9;
    }
  }
}

uint64_t sub_277071FE0(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a1);
        }

        if ((*(a3 + 16))(a3, *(*(&v9 + 1) + 8 * i)))
        {
          return 1;
        }
      }

      v6 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      result = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2770720F4(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t sub_2770721EC(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *v11;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v11 != v7)
    {
      objc_enumerationMutation(a1);
    }

    result = (*(a3 + 16))(a3, *(*(&v10 + 1) + 8 * v8));
    if (!result)
    {
      return result;
    }

    if (v6 == ++v8)
    {
      v6 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 1;
    }
  }
}

uint64_t sub_2770722EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2770723D0;
    v10[3] = &unk_27A701F88;
    v10[4] = a3;
    v5 = [a1 indexesOfObjectsPassingTest:v10];
    if (!v5)
    {
      return [MEMORY[0x277CBEA60] array];
    }

    v6 = v5;
    if (![v5 count])
    {
      return [MEMORY[0x277CBEA60] array];
    }

    if ([v6 containsIndexesInRange:{0, objc_msgSend(v4, "count")}])
    {
      return v4;
    }

    return [v4 objectsAtIndexes:v6];
  }

  v9 = MEMORY[0x277CBEA60];

  return [v9 array];
}

uint64_t sub_2770723E0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_277072488;
  v7[3] = &unk_27A701FB0;
  v7[4] = v5;
  v7[5] = a3;
  [a1 enumerateObjectsUsingBlock:v7];
  return v5;
}

uint64_t sub_277072488(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);

    return [v4 addObject:v3];
  }

  return result;
}

id sub_2770724E0(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = (*(a3 + 16))(a3, v8);
        if (v9)
        {
          [v13 addObject:v9];
        }

        else
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSArray(TSUAdditions) tsu_arrayByMappingObjectsUsingBlock:]"];
          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSArrayAdditions.m"], 376, 0, "Block returned a nil object for %@.", v8);
          +[TSUAssertionHandler logBacktraceThrottled];
        }
      }

      v5 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return [v13 copy];
}

void *sub_277072680(void *a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3052000000;
  v5[3] = sub_277072778;
  v5[4] = sub_277072788;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_277072794;
  v4[3] = &unk_27A701FD8;
  v4[4] = v5;
  v5[5] = v4;
  sub_277072794(v4, a1, v2);
  _Block_object_dispose(v5, 8);
  return v2;
}

void sub_277072760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_277072794(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
        }

        else
        {
          [a3 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2770728E8(void *a1)
{
  if ([a1 count] >= 2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSArray(TSUAdditions) tsu_onlyObject]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSArrayAdditions.m"], 406, 0, "As this method returns the only object in the array, it only makes sense if the array has at most one object.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return [a1 firstObject];
}

id sub_277072994(void *a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = [a1 count];
  if (v3)
  {
    v4 = v3;
    v5 = 2;
    for (i = v3; i; --i)
    {
      [v2 appendFormat:@"%@", objc_msgSend(objc_msgSend(a1, "objectAtIndexedSubscript:", v5 - 2), "description")];
      if (i < 3)
      {
        if (v4 >= 3 && i == 2)
        {
          v7 = SFUMainBundle();
          v8 = @"TSU_LIST_SEPARATOR_FINAL";
          v9 = @", and ";
        }

        else
        {
          if (v4 != 2 || v5 != 2)
          {
            goto LABEL_12;
          }

          v7 = SFUMainBundle();
          v8 = @"TSU_LIST_SEPARATOR_TWO_ITEMS";
          v9 = @" and ";
        }
      }

      else
      {
        v7 = SFUMainBundle();
        v8 = @"TSU_LIST_SEPARATOR";
        v9 = @", ";
      }

      [v2 appendFormat:@"%@", objc_msgSend(v7, "localizedStringForKey:value:table:", v8, v9, @"TSUtility"];
LABEL_12:
      ++v5;
    }
  }

  v10 = [v2 copy];

  return v10;
}

uint64_t sub_277072AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return MEMORY[0x277CBEBF8];
  }

  v4[0] = a3;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
}

uint64_t sub_277072EA4()
{
  v0 = TSULogCreateCategory("TSUDocumentLifecycleCat");
  v1 = TSUDocumentLifecycleCat_log_t;
  TSUDocumentLifecycleCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_277072EE8()
{
  v0 = TSULogCreateCategory("TSUDocumentLifecycleCat");
  v1 = TSUDocumentLifecycleCat_log_t;
  TSUDocumentLifecycleCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_277072F2C()
{
  v0 = TSULogCreateCategory("TSUDocumentLifecycleCat");
  v1 = TSUDocumentLifecycleCat_log_t;
  TSUDocumentLifecycleCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_277072F70()
{
  v0 = TSULogCreateCategory("TSUDocumentLifecycleCat");
  v1 = TSUDocumentLifecycleCat_log_t;
  TSUDocumentLifecycleCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_277072FB4()
{
  v0 = TSULogCreateCategory("TSUDocumentLifecycleCat");
  v1 = TSUDocumentLifecycleCat_log_t;
  TSUDocumentLifecycleCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770732A4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_277073604()
{
  v0 = TSULogCreateCategory("TSUDocumentLifecycleCat");
  v1 = TSUDocumentLifecycleCat_log_t;
  TSUDocumentLifecycleCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_277073C78(uint64_t *a1, TSUNumberOrDateLexer *this, uint64_t a3, int64_t a4, uint64_t a5, TSUNumberOrDateLexer *a6)
{
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v11 = v6 & 0x140000003;
  if ((v6 & 0x140000003uLL) > 0x40000000)
  {
    if (v11 == 0x100000000)
    {
      if ((a3 & 0x100000000) == 0)
      {
        goto LABEL_54;
      }

      v14 = 0x100000000;
      goto LABEL_37;
    }

    if (v11 == 1073741827)
    {
LABEL_17:
      if ((a3 & 0x80000000) != 0 && (*(a5 + 8) & 4) != 0)
      {
        goto LABEL_38;
      }

      if (a3)
      {
        v14 = *a1 & 0x40000001;
      }

      else
      {
        if ((a3 & 2) == 0)
        {
          goto LABEL_54;
        }

        v14 = 2;
      }

      goto LABEL_37;
    }

    if (v11 != 1073741825)
    {
      goto LABEL_54;
    }

    v12 = a1[1];
    if (v12 <= 0x7FFFFFFF)
    {
      v13 = a1[2];
      if (v13 <= 0x7FFFFFFF && (this & 0xFFFFFFDF) == 0x58 && v13 == v12 && !*(a1 + 6) && *(a5 + 32) - *(a5 + 24) <= 0x20uLL)
      {
        v14 = 4;
        goto LABEL_37;
      }
    }

LABEL_22:
    if ((a3 & 0x80000000) != 0 && (*(a5 + 8) & 4) != 0)
    {
      *a1 = 1;
      *(a1 + 6) = 0;
      goto LABEL_38;
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_54;
    }

    v17 = *a1 & 0x40000001;
    *a1 = v17;
    v18 = *(a1 + 6);
    v19 = TSUNumberOrDateLexer::numberValueForChar(this) + 10 * v18;
    *(a1 + 6) = v19;
    if (v19 > 0x63)
    {
      goto LABEL_38;
    }

    *a1 = v17 | 0x20000000;
    if (v19 - 1 > 0xB)
    {
      goto LABEL_38;
    }

    v14 = v17 | 0x30000000;
LABEL_37:
    *a1 = v14;
    goto LABEL_38;
  }

  if (v11 == 1)
  {
    goto LABEL_22;
  }

  if (v11 != 2)
  {
    if (v11 != 3)
    {
LABEL_54:
      result = 0;
      if ((*(a5 + 8) & 4) == 0 && *(a5 + 16) <= 0xAu)
      {
        if ((*a1 & 2) == 0)
        {
          return 0;
        }

        result = TSUNumberOrDateLexer::classificationForIdentifierAtToken(a6, a1, a5);
        if (result)
        {
          v24 = result;
          result = 0;
LABEL_61:
          *a1 = v24;
          return result;
        }
      }

      return result;
    }

    goto LABEL_17;
  }

  if (a3)
  {
    goto LABEL_54;
  }

  if ((a3 & 0x100000000) != 0)
  {
    if (!TSUNumberOrDateLexer::matchesIdentifierStartingAt(a6, *a5, a1[1], a4))
    {
      goto LABEL_54;
    }

    *a1 &= ~0x800uLL;
    if (a6->_loadInDateTimeSymbols)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUToken::extendWith(unichar, TSUTokenClassification, NSUInteger, const TSULexedResult &, const TSUNumberOrDateLexer &)"}];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
      [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:99 isFatal:0 description:"Need to clear out date classifications here as well"];
      goto LABEL_53;
    }
  }

  else
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_54;
    }

    *a1 = v6 & 0xFFFFFFFFFFFFF7FFLL;
    if (a6->_loadInDateTimeSymbols)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUToken::extendWith(unichar, TSUTokenClassification, NSUInteger, const TSULexedResult &, const TSUNumberOrDateLexer &)"}];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberOrDateLexer.mm"];
      [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:107 isFatal:0 description:"Need to clear out date classifications here as well"];
LABEL_53:

      +[TSUAssertionHandler logBacktraceThrottled];
    }
  }

LABEL_38:
  v25 = *(a1 + 1);
  a1[2] = a4;
  result = 1;
  if ((*(a5 + 8) & 4) == 0 && *(a5 + 16) <= 0xAu && (*a1 & 2) != 0)
  {
    v21 = TSUNumberOrDateLexer::classificationForIdentifierAtToken(a6, a1, a5);
    if (v21)
    {
      LOWORD(v22) = v21;
      *a1 = v21;
    }

    else
    {
      v22 = *a1;
    }

    result = 1;
    if ((v22 & 2) != 0 && (v22 & 0xFFF9) != 0)
    {
      result = TSUNumberOrDateLexer::matchesIdentifierStartingAt(a6, *a5, a1[1], a4);
      if (result)
      {
        v23 = 264271875;
      }

      else
      {
        *(a1 + 1) = v25;
        v23 = -3;
      }

      v24 = *a1 & v23;
      goto LABEL_61;
    }
  }

  return result;
}

uint64_t TSUNumberOrDateLexer::numberValueForChar(TSUNumberOrDateLexer *this)
{
  v1 = this;
  result = (this - 48);
  if (result > 9)
  {
    if (v1 <= 0xDFF)
    {
      if (v1 > 0xAFF)
      {
        result = v1 - 2918;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 3046;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 3174;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 3302;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 3430;
        if (result <= 9)
        {
          return result;
        }

        v3 = v1 - 3558;
      }

      else
      {
        result = v1 - 1632;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 1776;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 1984;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 2406;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 2534;
        if (result <= 9)
        {
          return result;
        }

        result = v1 - 2662;
        if (result <= 9)
        {
          return result;
        }

        v3 = v1 - 2790;
      }

LABEL_41:
      v6 = v3 >= 0xA;
      goto LABEL_42;
    }

    if ((v1 + 240) > 9u)
    {
      if (v1 >> 13 <= 4)
      {
        if (v1 >> 9 > 0xC)
        {
          result = v1 - 6784;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 6800;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 6992;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 7088;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 7232;
          if (result <= 9)
          {
            return result;
          }

          v5 = -7248;
        }

        else
        {
          result = v1 - 3664;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 3792;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 3872;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 4160;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 4240;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 6112;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 6160;
          if (result <= 9)
          {
            return result;
          }

          result = v1 - 6470;
          if (result <= 9)
          {
            return result;
          }

          v5 = -6608;
        }

        v3 = v1 + v5;
        goto LABEL_41;
      }

      if ((v1 + 23008) > 9u)
      {
        if ((v1 + 22320) > 9u)
        {
          if ((v1 + 22272) > 9u)
          {
            if ((v1 + 22064) > 9u)
            {
              if ((v1 + 22032) > 9u)
              {
                if ((v1 + 21936) > 9u)
                {
                  v7 = (v1 + 21520);
                  v3 = v1 - 44016;
                  v6 = v7 >= 0xA;
LABEL_42:
                  if (v6)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  else
                  {
                    return v3;
                  }
                }

                v4 = -43600;
              }

              else
              {
                v4 = -43504;
              }
            }

            else
            {
              v4 = -43472;
            }
          }

          else
          {
            v4 = -43264;
          }
        }

        else
        {
          v4 = -43216;
        }
      }

      else
      {
        v4 = -42528;
      }
    }

    else
    {
      v4 = -65296;
    }

    return v1 + v4;
  }

  return result;
}

uint64_t TSUNumberOrDateLexer::matchesIdentifierStartingAt(TSUNumberOrDateLexer *this, NSString *a2, unint64_t a3, int64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ([(NSString *)v7 length]> a3 && (v8 = TSUNumberOrDateLexer::halfWidthForFullWidth([(NSString *)v7 characterAtIndex:a3]), v27 = v8, TSUIndexSet::containsIndex(&this->_identStartChars, v8)))
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v7;
    v9 = [(NSString *)v7 length];
    memset(v28, 0, sizeof(v28));
    v10 = sub_277078F40(&this->_identifiersForStartChar.__table_.__bucket_list_.__ptr_, &v27);
    if (!v10 || (v11 = v10[3], v12 = v10[4], v11 == v12))
    {
LABEL_22:
      v22 = 0;
    }

    else
    {
      v13 = v9 - a3;
      while (1)
      {
        v14 = *v11;
        v15 = [*v11 length];
        v16 = v15;
        v17 = a4 > a3 && a4 - a3 + 1 > v15;
        v18 = v17;
        if (v15 <= v13 && !v18)
        {
          if (v15 <= 9 && (v19 = *(v28 + v15)) != 0)
          {
            v20 = 0;
          }

          else
          {
            v19 = [(NSString *)v26 substringWithRange:a3, v15];
            if ([v19 length] <= 9)
            {
              objc_storeStrong(v28 + v16, v19);
            }

            v20 = v19;
          }

          v21 = [v19 isEqualToString:v14];

          if (v21)
          {
            break;
          }
        }

        if (++v11 == v12)
        {
          goto LABEL_22;
        }
      }

      v22 = 1;
    }

    for (i = 72; i != -8; i -= 8)
    {
    }

    v7 = v26;
    objc_autoreleasePoolPop(v25);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void sub_2770744C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13)
{
  for (i = 72; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t *TSUNumberOrDateLexer::classificationForIdentifierAtToken(uint64_t a1, void *a2, id *a3)
{
  v9 = sub_277074878(a3, a2);
  if (v9)
  {
    v4 = sub_277078BF4((a1 + 168), &v9);
    if (v4)
    {
      v5 = v4[3];
    }

    else
    {
      v8 = [v9 uppercaseString];
      v6 = sub_277078BF4((a1 + 168), &v8);
      if (v6)
      {
        v5 = v6[3];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2770745E4(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(a1 + 56) = vnegq_f64(v4);
  *(a1 + 72) = 0;
  if ([v3 length] >= 0x226)
  {
    v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v3 stringByTrimmingCharactersInSet:v5];

    v3 = v6;
  }

  if ([v3 length] && objc_msgSend(v3, "length") <= 0x226)
  {
    objc_storeStrong(a1, v3);
  }

  else
  {
    v8 = xmmword_277133C10;
    v9 = 0x80000000;
    v10 = 0;
    sub_277074738(a1 + 24, &v8);
    *(a1 + 8) = 0x100000;
  }

  return a1;
}

void sub_2770746F8(_Unwind_Exception *a1)
{
  v5 = v4;

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_277074738(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_2770289D0();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2770782B8(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t sub_277074810(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_27707485C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32) - v2;
  v4 = v2 + 32 * a2;
  if (a2 >= v3 >> 5)
  {
    return a1 + 48;
  }

  else
  {
    return v4;
  }
}

id sub_277074878(id *a1, void *a2)
{
  if (*a2 && ((v4 = a2[1], v5 = a2[2], v3 = (a2 + 1), v4 <= 0x7FFFFFFF) ? (v6 = v5 <= 0x7FFFFFFF) : (v6 = 0), v6))
  {
    v10 = TSUIndexRange::asNSRange(v3);
    v7 = [*a1 substringWithRange:{v10, v11}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2770748F8(id *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 <= 0x7FFFFFFF && v5 <= 0x7FFFFFFF;
  if (!v6 || v5 != v4)
  {
    return 0;
  }

  v9 = [*a1 characterAtIndex:v2];

  return TSUNumberOrDateLexer::halfWidthForFullWidth(v9);
}

uint64_t TSUNumberOrDateLexer::halfWidthForFullWidth(TSUNumberOrDateLexer *this)
{
  if ((this + 256) > 0xE6u)
  {
    if (this <= 8219)
    {
      if (this == 1642)
      {
        v7 = 37;
      }

      else
      {
        v7 = this;
      }

      if ((this - 8216) >= 4)
      {
        return v7;
      }

      else
      {
        return 39;
      }
    }

    else if (this >= 12288)
    {
      if (this == 65106 || this == 12290)
      {
        return 46;
      }

      else if (this == 12288)
      {
        return 32;
      }

      else
      {
        return this;
      }
    }

    else if ((this - 8220) >= 4)
    {
      return this;
    }

    else
    {
      return 34;
    }
  }

  else
  {
    if (this == 230)
    {
      v1 = 8361;
    }

    else
    {
      v1 = this;
    }

    if (this == 229)
    {
      v2 = 165;
    }

    else
    {
      v2 = v1;
    }

    if (this == 225)
    {
      v3 = 163;
    }

    else
    {
      v3 = this;
    }

    if (this == 97)
    {
      v4 = 46;
    }

    else
    {
      v4 = v3;
    }

    if (this <= 0xE4u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }

    if ((this + 255) <= 0x5Du)
    {
      return (this + 288);
    }

    else
    {
      return v5;
    }
  }
}