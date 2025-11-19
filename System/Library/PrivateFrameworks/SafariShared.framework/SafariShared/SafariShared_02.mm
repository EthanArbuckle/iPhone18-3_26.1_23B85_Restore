uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(long long,NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, void **a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long,NSString * {__strong}>(a2, *a4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long,NSString * {__strong}>(sqlite3_stmt *a1, void *a2)
{
  v3 = a2;
  v4 = sqlite3_column_int64(a1, 0);
  v5 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a1, 1);
  v3[2](v3, v4, v5);

  return 1;
}

__CFString *SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = sqlite3_column_text(a1, a2);
    v7 = sqlite3_column_bytes(a1, a2);
    v4 = CFStringCreateWithBytes(v5, v6, v7, 0x8000100u, 0);
  }

  return v4;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,double,long &>(void *a1, void *a2, void *a3, double *a4, double *a5, void *a6)
{
  v11 = a1;
  v12 = a3;
  v20 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,double,long &>(v13, a4, a5, a6);
    v16 = [v13 execute];
    [v13 invalidate];
    if ((v16 - 100) >= 2 && v16 != 0)
    {
      [v11 reportErrorWithCode:v16 statement:objc_msgSend(v13 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v18 = v14;
      *a2 = v15;
    }

    v16 = [v15 code];
  }

  return v16;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,double,long &>(void *a1, double *a2, double *a3, void *a4)
{
  v7 = a1;
  [v7 bindDouble:1 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double,long &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double,long &>(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:2 atParameterIndex:*a2];
  [v5 bindInt64:*a3 atParameterIndex:3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,double,long long const&>(void *a1, void *a2, void *a3, double *a4, double *a5, void *a6)
{
  v11 = a1;
  v12 = a3;
  v20 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,double,long long const&>(v13, a4, a5, a6);
    v16 = [v13 execute];
    [v13 invalidate];
    if ((v16 - 100) >= 2 && v16 != 0)
    {
      [v11 reportErrorWithCode:v16 statement:objc_msgSend(v13 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v18 = v14;
      *a2 = v15;
    }

    v16 = [v15 code];
  }

  return v16;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,double,long long const&>(void *a1, double *a2, double *a3, void *a4)
{
  v7 = a1;
  [v7 bindDouble:1 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double,long long const&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double,long long const&>(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:2 atParameterIndex:*a2];
  [v5 bindInt64:*a3 atParameterIndex:3];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 1, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 1);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = **(a4 + 8);
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 2, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 2);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long>(a2, *(a4 + 16)) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong}&,double const&,double const&,long const&>(void *a1, void *a2, double *a3, double *a4, void *a5)
{
  v9 = a1;
  [v9 bindData:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double const&,double const&,long const&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double const&,double const&,long const&>(void *a1, double *a2, double *a3, void *a4)
{
  v7 = a1;
  [v7 bindDouble:2 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,double const&,long const&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,double const&,long const&>(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:3 atParameterIndex:*a2];
  [v5 bindInt64:*a3 atParameterIndex:4];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSData * {__strong},NSData * {__strong},std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id *a4)
{
  v7 = a1;
  v8 = *a4;
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_blob64(a2, 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 1);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSData * {__strong},NSData * {__strong},std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSData * {__strong},NSData * {__strong},std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a4 + 8);
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_blob64(a2, 2, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 2);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSData * {__strong},NSData * {__strong},std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSData * {__strong},NSData * {__strong},std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**(a4 + 16) = sqlite3_column_int64(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,3,std::tuple<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, sqlite3_int64 **a4)
{
  v7 = a1;
  if (sqlite3_bind_int64(a2, 1, **a4))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<1,3,std::tuple<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,3,std::tuple<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = **(a4 + 8);
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 2, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 2);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<2,3,std::tuple<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<2,3,std::tuple<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = **(a4 + 16);
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 3, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 3);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<3,3,std::tuple<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<3,3,std::tuple<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long>(a2, **(a4 + 24)) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double &>(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindDouble:1 atParameterIndex:*a4];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double const&>(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindDouble:1 atParameterIndex:*a4];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

uint64_t std::unordered_set<long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::pair<long long,int>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(long long,long long,long long,long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, void **a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long,long long,long long,long long>(a2, *a4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long,long long,long long,long long>(sqlite3_stmt *a1, void *a2)
{
  v3 = a2;
  v4 = sqlite3_column_int64(a1, 0);
  v5 = sqlite3_column_int64(a1, 1);
  v6 = sqlite3_column_int64(a1, 2);
  v7 = sqlite3_column_int64(a1, 3);
  v3[2](v3, v4, v5, v6, v7);

  return 1;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<double &,void({block_pointer} {__strong})(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, double **a4)
{
  v7 = a1;
  if (sqlite3_bind_double(a2, 1, **a4))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<double &,void({block_pointer} {__strong})(long long)>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<double &,void({block_pointer} {__strong})(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long>(a2, *(a4 + 8)) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, void **a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,NSString * {__strong}>(a2, *a4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t SafariShared::_WBSStatementCallBlockWithAllColumns<void,NSString * {__strong}>(sqlite3_stmt *a1, void *a2)
{
  v3 = a2;
  v4 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a1, 0);
  v3[2](v3, v4);

  return 1;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,3,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 1, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 1);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<1,3,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,3,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = **(a4 + 8);
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 2, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 2);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<2,3,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<2,3,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (sqlite3_bind_int(a2, 3, *(a4 + 16)))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<3,3,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<3,3,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,NSString * {__strong}>(a2, *(a4 + 24)) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},void({block_pointer} {__strong})(NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 1, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 1);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},void({block_pointer} {__strong})(NSString *)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},void({block_pointer} {__strong})(NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = **(a4 + 8);
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 2, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 2);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},void({block_pointer} {__strong})(NSString *)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},void({block_pointer} {__strong})(NSString *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,NSString * {__strong}>(a2, *(a4 + 16)) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSDate * const {__strong}&,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 1, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 1);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSDate * const {__strong}&,std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSDate * const {__strong}&,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**(a4 + 8) = sqlite3_column_int64(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,double &>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindDouble:2 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,long long const&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,long long const&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,long long const&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},double,NSString * {__strong},NSData * {__strong}&>(void *a1, void *a2, double *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double,NSString * {__strong},NSData * {__strong}&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double,NSString * {__strong},NSData * {__strong}&>(void *a1, double *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindDouble:2 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},NSData * {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},NSData * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:3];
  [v5 bindData:*a3 atParameterIndex:4];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSString * {__strong},double,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id *a4)
{
  v7 = a1;
  v8 = *a4;
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_text(a2, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 1);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSString * {__strong},double,std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSString * {__strong},double,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (sqlite3_bind_double(a2, 2, *(a4 + 8)))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSString * {__strong},double,std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSString * {__strong},double,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**(a4 + 16) = sqlite3_column_int64(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double,long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, void **a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    SafariShared::WBSSQLiteEnumerationBlock<void,NSString * {__strong},double,NSString * {__strong},int,int,NSString * {__strong},double,NSString * {__strong},double,long long>::_callBlockWithAllColumns<0,1,2,3,4,5,6,7,8,9>(&v11, a2, *a4);
  }

  if (v8 == 101)
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

void SafariShared::WBSSQLiteEnumerationBlock<void,NSString * {__strong},double,NSString * {__strong},int,int,NSString * {__strong},double,NSString * {__strong},double,long long>::_callBlockWithAllColumns<0,1,2,3,4,5,6,7,8,9>(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v14 = a3;
  v4 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a2, 0);
  v5 = sqlite3_column_double(a2, 1);
  v6 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a2, 2);
  v7 = sqlite3_column_int(a2, 3);
  v8 = sqlite3_column_int(a2, 4);
  v9 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a2, 5);
  v10 = sqlite3_column_double(a2, 6);
  v11 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a2, 7);
  v12 = sqlite3_column_double(a2, 8);
  v13 = sqlite3_column_int64(a2, 9);
  v14[2](v14, v4, v6, v7, v8, v9, v11, v13, v5, v10, v12);
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,3,std::tuple<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, sqlite3_int64 **a4)
{
  v7 = a1;
  if (sqlite3_bind_int64(a2, 1, **a4))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<1,3,std::tuple<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,3,std::tuple<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (sqlite3_bind_int(a2, 2, *(a4 + 8)))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<2,3,std::tuple<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<2,3,std::tuple<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (sqlite3_bind_double(a2, 3, **(a4 + 16)))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<3,3,std::tuple<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<3,3,std::tuple<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    SafariShared::WBSSQLiteEnumerationBlock<void,NSString * {__strong},double,NSString * {__strong},int,int,NSString * {__strong},double,NSString * {__strong},double>::_callBlockWithAllColumns<0,1,2,3,4,5,6,7,8>(&v11, a2, *(a4 + 24));
  }

  if (v8 == 101)
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

void SafariShared::WBSSQLiteEnumerationBlock<void,NSString * {__strong},double,NSString * {__strong},int,int,NSString * {__strong},double,NSString * {__strong},double>::_callBlockWithAllColumns<0,1,2,3,4,5,6,7,8>(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v13 = a3;
  v4 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a2, 0);
  v5 = sqlite3_column_double(a2, 1);
  v6 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a2, 2);
  v7 = sqlite3_column_int(a2, 3);
  v8 = sqlite3_column_int(a2, 4);
  v9 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a2, 5);
  v10 = sqlite3_column_double(a2, 6);
  v11 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a2, 7);
  v12 = sqlite3_column_double(a2, 8);
  v13[2](v13, v4, v6, v7, v8, v9, v11, v5, v10, v12);
}

void OUTLINED_FUNCTION_8_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x1Cu);
}

void OUTLINED_FUNCTION_13(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

SafariShared::HistoryObjectStreamWriter *SafariShared::HistoryObjectStreamWriter::HistoryObjectStreamWriter(SafariShared::HistoryObjectStreamWriter *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = a2;
  fcntl(a2, 73, 1);
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = a2;
  fcntl(a2, 73, 1);
  return this;
}

void SafariShared::HistoryObjectStreamWriter::~HistoryObjectStreamWriter(void **this)
{
  free(*this);
}

{
  free(*this);
}

void *SafariShared::HistoryObjectStreamWriter::ensureCapacity(void *this, size_t a2)
{
  if (this[1] < a2)
  {
    v3 = this;
    free(*this);
    this = malloc_type_malloc(a2, 0x100004077774924uLL);
    *v3 = this;
    v3[1] = a2;
  }

  return this;
}

id SafariShared::HistoryObjectStreamWriter::createPipeHandles(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (pipe(v10) == -1)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AC00]);
    *a1 = [v4 initWithFileDescriptor:v10[0] closeOnDealloc:1];
    v5 = objc_alloc(MEMORY[0x1E696AC00]);
    v6 = [v5 initWithFileDescriptor:v10[1] closeOnDealloc:1];
    v7 = v6;
    v8 = 0;
    *a2 = v6;
  }

  return v8;
}

BOOL SafariShared::HistoryObjectStreamWriter::write(SafariShared::HistoryObjectStreamWriter *this, const _HistoryStreamedItem *a2)
{
  v4 = a2->var8 + 88;
  var6 = a2->var6;
  var7 = a2->var7;
  if (!var7)
  {
    v4 = 88;
  }

  var10 = a2->var10;
  if (!a2->var9)
  {
    var10 = 0;
  }

  v8 = var10 + v4;
  if (a2->var9)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (var6)
  {
    v10 = strlen(var6) + 1;
    v11 = v8;
    v8 += v10;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v8 > 0x10000)
  {
    v13 = 88;
  }

  else
  {
    v13 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  SafariShared::HistoryObjectStreamWriter::ensureCapacity(this, v13);
  if (var7)
  {
    v14 = 88;
  }

  else
  {
    v14 = 0;
  }

  v15 = *this;
  v16 = *&a2->var2;
  *v15 = *&a2->var0.var0;
  v17 = a2->var10;
  v18 = *&a2->var8;
  v19 = *&a2->var4;
  *(v15 + 48) = *&a2->var6;
  *(v15 + 64) = v18;
  *(v15 + 16) = v16;
  *(v15 + 32) = v19;
  *(v15 + 4) = v12;
  *(v15 + 48) = v11;
  *(v15 + 56) = v14;
  *(v15 + 72) = v9;
  *(v15 + 80) = v17;
  if (v8 <= 0x10000)
  {
    if (v11)
    {
      memcpy((*this + v11), a2->var6, v10);
    }

    if (var7)
    {
      memcpy((*this + 88), a2->var7, a2->var8);
    }

    if (v9)
    {
      memcpy((*this + v9), a2->var9, a2->var10);
    }

    return WBSWriteExactAmountOfBytesToFileDescriptor() > 0;
  }

  if (WBSWriteExactAmountOfBytesToFileDescriptor() < 0 || WBSWriteExactAmountOfBytesToFileDescriptor() < 0 || WBSWriteExactAmountOfBytesToFileDescriptor() < 0 || WBSWriteExactAmountOfBytesToFileDescriptor() < 0)
  {
    return 0;
  }

  if (v12 != v8)
  {
    return WBSWriteExactAmountOfBytesToFileDescriptor() > 0;
  }

  return 1;
}

BOOL SafariShared::HistoryObjectStreamWriter::write(SafariShared::HistoryObjectStreamWriter *this, const _HistoryStreamedVisit *a2)
{
  var13 = a2->var13;
  if (var13)
  {
    v5 = strlen(a2->var13);
    v6 = v5 + 1;
    v7 = (v5 & 0xFFFFFFFFFFFFFFF8) + 96;
    v8 = 88;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 88;
  }

  SafariShared::HistoryObjectStreamWriter::ensureCapacity(this, v7);
  v9 = *this;
  *v9 = *&a2->var0.var0;
  v10 = *&a2->var2;
  v11 = *&a2->var4;
  v12 = *&a2->var11;
  *(v9 + 48) = *&a2->var9;
  *(v9 + 64) = v12;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 4) = v7;
  *(v9 + 80) = v8;
  if (var13)
  {
    memcpy((*this + v8), a2->var13, v6);
  }

  return WBSWriteExactAmountOfBytesToFileDescriptor() > 0;
}

BOOL SafariShared::HistoryObjectStreamWriter::write(uint64_t *a1, __int128 *a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = strlen(*(a2 + 4));
    v6 = v5 + 1;
    v7 = v5 + 57;
    v8 = 56;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 56;
  }

  v9 = *(a2 + 5);
  if (v9)
  {
    v10 = strlen(v9) + 1;
    v11 = v7;
    v7 += v10;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  SafariShared::HistoryObjectStreamWriter::ensureCapacity(a1, v12);
  v13 = *a1;
  v14 = *(a2 + 6);
  v15 = a2[2];
  v16 = *a2;
  *(v13 + 16) = a2[1];
  *(v13 + 32) = v15;
  *(v13 + 40) = v11;
  *(v13 + 48) = v14;
  *v13 = v16;
  *(v13 + 4) = v12;
  *(v13 + 32) = v8;
  if (v4)
  {
    memcpy((*a1 + v8), *(a2 + 4), v6);
  }

  if (v11)
  {
    memcpy((*a1 + v11), *(a2 + 5), v10);
  }

  return WBSWriteExactAmountOfBytesToFileDescriptor() > 0;
}

BOOL SafariShared::HistoryObjectStreamWriter::write(uint64_t *a1, _OWORD *a2)
{
  SafariShared::HistoryObjectStreamWriter::ensureCapacity(a1, 0x20uLL);
  v4 = *a1;
  v5 = a2[1];
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 4) = 32;
  return WBSWriteExactAmountOfBytesToFileDescriptor() > 0;
}

void SafariShared::ReadStreamedObjects(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = malloc_type_malloc(0xD8uLL, 0x100004077774924uLL);
  if (v13)
  {
    v14 = 216;
    while (1)
    {
      if (WBSReadExactAmountOfBytesFromFileDescriptor() < 1)
      {
        goto LABEL_35;
      }

      if (v14 < *&buf[4])
      {
        free(v13);
        v13 = malloc_type_malloc(*&buf[4], 0x100004077774924uLL);
        v14 = *&buf[4];
      }

      *v13 = *buf;
      if (WBSReadExactAmountOfBytesFromFileDescriptor() < 1)
      {
LABEL_35:
        free(v13);
        goto LABEL_39;
      }

      v15 = *v13;
      if (*v13 > 6)
      {
        if (v15 != 7)
        {
          if (v15 != 8)
          {
            goto LABEL_29;
          }

          v18 = v11;
          if (!v11)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        if (!v10)
        {
          goto LABEL_29;
        }

        v21 = v13[4];
        if (v21)
        {
          v13[4] = v13 + v21;
        }

        v16 = v13 + 5;
        v17 = v13[5];
        if (!v17)
        {
          v18 = v10;
          goto LABEL_28;
        }

        v18 = v10;
      }

      else if (v15 == 1)
      {
        v19 = v13[6];
        if (v19)
        {
          v13[6] = v13 + v19;
        }

        v20 = v13[7];
        if (v20)
        {
          v13[7] = v13 + v20;
        }

        v16 = v13 + 9;
        v17 = v13[9];
        if (!v17)
        {
          v18 = v24;
          goto LABEL_28;
        }

        v18 = v24;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_29;
        }

        v16 = v13 + 10;
        v17 = v13[10];
        if (!v17)
        {
          v18 = v25;
          goto LABEL_28;
        }

        v18 = v25;
      }

      *v16 = v13 + v17;
LABEL_28:
      v18[2](v18, v13);
LABEL_29:
      if (v12 && v12[2](v12))
      {
        goto LABEL_35;
      }
    }
  }

  v22 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = __error();
    SafariShared::ReadStreamedObjects(v23, buf, v22);
  }

LABEL_39:
}

BOOL SafariShared::HistoryObjectStreamWriter::write(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = strlen(*(a2 + 8));
    v6 = v5 + 1;
    v7 = (v5 & 0xFFFFFFFFFFFFFFF8) + 32;
    v8 = 24;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 24;
  }

  SafariShared::HistoryObjectStreamWriter::ensureCapacity(a1, v7);
  v9 = *a1;
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 4) = v7;
  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  if (v4)
  {
    memcpy((*a1 + v8), *(a2 + 8), v6);
  }

  return WBSWriteExactAmountOfBytesToFileDescriptor() > 0;
}

void SafariShared::ReadStreamedDomainExpansions(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = malloc_type_malloc(0x58uLL, 0x100004077774924uLL);
  if (v3)
  {
    v4 = 88;
    while (WBSReadExactAmountOfBytesFromFileDescriptor() >= 1)
    {
      v5 = v3[1];
      if (v4 < v5)
      {
        v3 = malloc_type_realloc(v3, v3[1], 0x100004077774924uLL);
        v4 = v5;
      }

      if (WBSReadExactAmountOfBytesFromFileDescriptor() < 1)
      {
        break;
      }

      if (*v3 == 3)
      {
        v6 = *(v3 + 1);
        if (v6)
        {
          *(v3 + 1) = v3 + v6;
        }

        v2[2](v2, v3);
      }
    }

    free(v3);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = __error();
      SafariShared::ReadStreamedObjects(v8, v9, v7);
    }
  }
}

BOOL SafariShared::HistoryObjectStreamWriter::write(SafariShared::HistoryObjectStreamWriter *this, const _HistoryStreamedMatchEntry *a2)
{
  var1 = a2->var1;
  if (var1)
  {
    v5 = strlen(a2->var1);
    v6 = v5 + 1;
    v7 = v5 + 41;
    v8 = 40;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 40;
  }

  var2 = a2->var2;
  if (var2)
  {
    v10 = strlen(var2) + 1;
    v11 = v7;
    v7 += v10;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  SafariShared::HistoryObjectStreamWriter::ensureCapacity(this, v12);
  v13 = *this;
  var4 = a2->var4;
  v15 = *&a2->var2;
  *v13 = *&a2->var0.var0;
  *(v13 + 16) = v15;
  *(v13 + 32) = var4;
  *(v13 + 4) = v12;
  *(v13 + 8) = v8;
  *(v13 + 16) = v11;
  if (var1)
  {
    memcpy((*this + v8), a2->var1, v6);
  }

  if (v11)
  {
    memcpy((*this + v11), a2->var2, v10);
  }

  return WBSWriteExactAmountOfBytesToFileDescriptor() > 0;
}

BOOL SafariShared::HistoryObjectStreamWriter::write(SafariShared::HistoryObjectStreamWriter *this, const _HistoryStreamedMatchData *a2)
{
  var2 = a2->var2;
  var3 = a2->var3;
  if (var2)
  {
    v6 = (var3 + 63) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v6 = 56;
  }

  if (var2)
  {
    v7 = 56;
  }

  else
  {
    v7 = 0;
  }

  SafariShared::HistoryObjectStreamWriter::ensureCapacity(this, v6);
  v8 = *this;
  v9 = *&a2->var6;
  v11 = *&a2->var2;
  v10 = *&a2->var4;
  *v8 = *&a2->var0.var0;
  *(v8 + 16) = v11;
  *(v8 + 32) = v10;
  *(v8 + 48) = v9;
  *(v8 + 4) = v6;
  *(v8 + 16) = v7;
  if (var2)
  {
    memcpy((*this + 56), a2->var2, var3);
  }

  return WBSWriteExactAmountOfBytesToFileDescriptor() > 0;
}

void SafariShared::ReadStreamedMatches(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  while (WBSReadExactAmountOfBytesFromFileDescriptor() >= 1)
  {
    v6 = operator new(HIDWORD(__sz));
    *v6 = __sz;
    v7 = v6 + 1;
    if (WBSReadExactAmountOfBytesFromFileDescriptor() <= 0)
    {
      operator delete(v6);
      break;
    }

    v8 = *v6;
    if (*v6 <= 8u)
    {
      if (((1 << v8) & 0x18E) != 0)
      {
        operator delete(v6);
      }

      else if (v8 == 5)
      {
        v11 = v6[2];
        if (v11)
        {
          v6[2] = v6 + v11;
        }

        if (*v7)
        {
          v6[1] = v6 + *v7;
        }

        v13 = v6;
        (v5)[2](v5, &v13);
        v12 = v13;
        v13 = 0;
        if (v12)
        {
          MEMORY[0x1BFB13480](v12, 0x1050C40224969E2);
        }
      }

      else if (v8 == 6)
      {
        v9 = v6[2];
        if (v9)
        {
          v6[2] = v6 + v9;
        }

        v13 = v6;
        (v4)[2](v4, &v13);
        v10 = v13;
        v13 = 0;
        if (v10)
        {
          MEMORY[0x1BFB13480](v10, 0x10C0C40CCADEA1DLL);
        }
      }
    }
  }
}

void sub_1BB7DBB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1BFB13480]();
  }

  _Unwind_Resume(a1);
}

void sub_1BB7DC974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose((v36 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1BB7DCE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v31 + 48);

  _Unwind_Resume(a1);
}

void sub_1BB7DDA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, id location, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v72 + 80));
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose(&a32, 8);
  objc_destroyWeak(&location);

  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x240], 8);

  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);

  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose((v75 - 240), 8);

  _Unwind_Resume(a1);
}

void sub_1BB7DDF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1BB7DDEECLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BB7DE6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1BFB13CE0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1BB7DEC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v15 + 48);

  _Unwind_Resume(a1);
}

void sub_1BB7DF194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_1BB7E0A48(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB13480](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_1BB7E0B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<SafariShared::SuddenTerminationDisabler>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_1BB7E1120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22)
{
  v24 = v22;

  _Unwind_Resume(a1);
}

void sub_1BB7E1688(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 72));

  _Unwind_Resume(a1);
}

void sub_1BB7E1784(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB13480](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_1BB7E3BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::~__hash_table(v30 + 48);
  _Unwind_Resume(a1);
}

void sub_1BB7E5230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BB7E5C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a35);

  _Unwind_Resume(a1);
}

void sub_1BB7E64B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,VisitRedirectInformation>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,VisitRedirectInformation>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,VisitRedirectInformation>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,VisitRedirectInformation>>>::__emplace_unique_key_args<long long,std::pair<long long,VisitRedirectInformation>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void OUTLINED_FUNCTION_5_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

void *SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

SafariShared::URLCompletionEntryKey *SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(SafariShared::URLCompletionEntryKey *this, NSString *a2)
{
  v3 = a2;
  *this = v3;
  *(this + 1) = CFHash(v3);

  return this;
}

CFTypeRef *SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(CFTypeRef *this, const UInt8 *a2, CFIndex a3)
{
  *this = 0;
  if (a2)
  {
    v4 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], a2, a3, 0x8000100u, 0);
    v5 = *this;
    *this = v4;

    v6 = CFHash(*this);
  }

  else
  {
    v6 = 0;
  }

  this[1] = v6;
  return this;
}

double SafariShared::URLCompletionEntry::URLCompletionEntry(SafariShared::URLCompletionEntry *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

SafariShared::URLCompletionEntry *SafariShared::URLCompletionEntry::URLCompletionEntry(SafariShared::URLCompletionEntry *this, NSString *a2, NSString *a3, double a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(this, v9);
  *(this + 2) = 0;
  v12 = v10;
  *(this + 3) = v12;
  *(this + 4) = 0;
  *(this + 5) = a4;
  *(this + 6) = a5;
  if (v9)
  {
    if (WTF::isUserVisibleURL(v9, v11))
    {
      v13 = v9;
      v14 = *(this + 2);
      *(this + 2) = v13;
    }

    else
    {
      v14 = [(NSString *)v9 safari_userVisibleURL];
      v15 = [v14 safari_stringByFoldingWideCharactersAndNormalizing];
      v16 = *(this + 2);
      *(this + 2) = v15;
    }
  }

  return this;
}

CFTypeRef *SafariShared::URLCompletionEntry::URLCompletionEntry(CFTypeRef *this, const UInt8 *a2, CFIndex a3, const UInt8 *a4, CFIndex a5, double a6, const void *a7)
{
  v12 = SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(this, a2, a3);
  v12[2] = 0;
  v14 = (v12 + 2);
  v12[3] = 0;
  v12[4] = 0;
  *(v12 + 5) = a6;
  v12[6] = a7;
  v15 = *v12;
  if (v15)
  {
    isUserVisibleURL = WTF::isUserVisibleURL(v15, v13);
    v17 = *this;
    if (isUserVisibleURL)
    {
      v18 = v17;
      v19 = *v14;
      *v14 = v18;
    }

    else
    {
      v19 = [v17 safari_userVisibleURL];
      v20 = [v19 safari_stringByFoldingWideCharactersAndNormalizing];
      v21 = *v14;
      *v14 = v20;
    }
  }

  if (a4)
  {
    v22 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], a4, a5, 0x8000100u, 0);
    v23 = this[3];
    this[3] = v22;
  }

  return this;
}

uint64_t SafariShared::URLCompletionEntry::setHasAutocompleteTriggers(uint64_t this, int a2)
{
  v2 = 0x1000000000000000;
  if (!a2)
  {
    v2 = 0;
  }

  *(this + 48) = *(this + 48) & 0xEFFFFFFFFFFFFFFFLL | v2;
  return this;
}

void SafariShared::URLCompletionEntry::update(SafariShared::URLCompletionEntry *this, NSString *a2, double a3, int a4, int a5, int a6)
{
  v17 = a2;
  v11 = [(NSString *)v17 copy];
  v12 = *(this + 3);
  *(this + 3) = v11;

  *(this + 5) = a3;
  v13 = 0x8000000000000000;
  if (!a4)
  {
    v13 = 0;
  }

  v14 = 0x800000000000000;
  if (!a5)
  {
    v14 = 0;
  }

  v15 = v13 | v14;
  v16 = 0x400000000000000;
  if (!a6)
  {
    v16 = 0;
  }

  *(this + 6) = *(this + 6) & 0x73FFFFFFFFFFFFFFLL | v15 | v16;
}

void SafariShared::URLCompletionEntry::markAsDeleted(SafariShared::URLCompletionEntry *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *this = &stru_1F3A5E418;
}

void *SafariShared::URLCompletionEntryExtras::URLCompletionEntryExtras(void *this, int *a2, int *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  this[3] = a5;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  this[3] = a5;
  return this;
}

char *SafariShared::URLCompletionEntryExtras::create(SafariShared::URLCompletionEntryExtras *this, const int *a2, const void *a3, const int *a4, const void *a5, const unsigned __int8 *a6)
{
  if ((a2 & 3) != 0)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3A5E418, a4, a5, a6];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariShared/SafariShared/SafariShared/History/Service/WBSHistoryServiceURLCompletion.mm"];
    v18 = [v17 lastPathComponent];
    v19 = [v15 length];
    if (v19)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v15];
    }

    else
    {
      v20 = &stru_1F3A5E418;
    }

    v25 = [v16 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "dailyVisitCountsLength % sizeof(WBSVisitCountScore) == 0", "create", v18, 474, v20];
    if (v19)
    {
    }

LABEL_15:

    v26 = [MEMORY[0x1E696AF00] callStackSymbols];
    NSLog(&stru_1F3A6CA98.isa, v25, v26);

    abort();
  }

  if ((a4 & 3) != 0)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3A5E418];
    v22 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariShared/SafariShared/SafariShared/History/Service/WBSHistoryServiceURLCompletion.mm"];
    v18 = [v17 lastPathComponent];
    v23 = [v21 length];
    if (v23)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v21];
    }

    else
    {
      v24 = &stru_1F3A5E418;
    }

    v25 = [v22 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "weeklyVisitCountsLength % sizeof(WBSVisitCountScore) == 0", "create", v18, 475, v24];
    if (v23)
    {
    }

    goto LABEL_15;
  }

  v12 = operator new(a4 + a2 + a6 + 32);
  v13 = a2 + (v12 + 32) + a4;
  *v12 = v12 + 32;
  *(v12 + 1) = a2 + (v12 + 32);
  *(v12 + 2) = v13;
  *(v12 + 3) = &a6[v13];
  memcpy(v12 + 32, this, a2);
  memcpy(a2 + (v12 + 32), a3, a4);
  memcpy(*(v12 + 2), a5, a6);
  return v12;
}

void SafariShared::URLCompletionEntryMap::insert(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v6 = *a2;
  v22[0] = v6;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v20, v6);
  ShouldValidate = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::lookup<(WTF::ShouldValidateKey)1>(a1, v20);

  if (ShouldValidate && *(ShouldValidate + 40) > *(a2 + 40))
  {
    goto LABEL_10;
  }

  WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, a2, v20);
  if ((v21 & 1) == 0)
  {
    v8 = v20[0];
    v9 = *a2;
    *a2 = 0;
    v10 = *v8;
    *v8 = v9;

    *(v8 + 1) = *(a2 + 8);
    v11 = *(a2 + 16);
    *(a2 + 16) = 0;
    v12 = *(v8 + 2);
    *(v8 + 2) = v11;

    v13 = *(a2 + 24);
    *(a2 + 24) = 0;
    v14 = *(v8 + 3);
    *(v8 + 3) = v13;

    v15 = *(a2 + 32);
    *(a2 + 32) = 0;
    v16 = *(v8 + 4);
    *(v8 + 4) = v15;

    *(v8 + 40) = *(a2 + 40);
  }

  if (!*a3)
  {
LABEL_9:
    v6 = v22[0];
LABEL_10:

    return;
  }

  v22[2] = v22;
  v17 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(a1 + 1, v22);
  if (v17)
  {
    v18 = *a3;
    *a3 = 0;
    v19 = v17[3];
    v17[3] = v18;
    if (v19)
    {
      MEMORY[0x1BFB13480](v19, 0x10C402CAF9ECALL);
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::lookup<(WTF::ShouldValidateKey)1>(uint64_t *a1, uint64_t a2)
{
  WTF::checkHashTableKey<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(a2);
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v6 = v5 & *(a2 + 8);
  v7 = v4 + 56 * v6;
  v8 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v9 = 1;
  while (v8 == &stru_1F3A5E418 || *(v7 + 8) != *(a2 + 8) || !CFEqual(v8, *a2))
  {
    v6 = (v6 + v9) & v5;
    v7 = v4 + 56 * v6;
    v8 = *v7;
    ++v9;
    if (!*v7)
    {
      return 0;
    }
  }

  return v7;
}

void WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  WTF::checkHashTableKey<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(a2);
  v6 = *a1;
  if (!*a1)
  {
    WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::expand(a1, 0);
    v6 = *a1;
  }

  v7 = *(v6 - 8);
  v8 = v7 & *(a2 + 8);
  v9 = (v6 + 56 * v8);
  v10 = *v9;
  if (*v9)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      if (v10 == &stru_1F3A5E418)
      {
        v11 = v9;
      }

      else if (v9[1] == *(a2 + 8) && CFEqual(v10, *a2))
      {
        v20 = *a1;
        if (*a1)
        {
          v21 = *(v20 - 4);
        }

        else
        {
          v21 = 0;
        }

        v19 = 0;
        v18 = v20 + 56 * v21;
        goto LABEL_23;
      }

      v8 = (v8 + v12) & v7;
      v9 = (v6 + 56 * v8);
      v10 = *v9;
      ++v12;
    }

    while (*v9);
    if (v11)
    {
      v11[6] = 0;
      *(v11 + 1) = 0u;
      *(v11 + 2) = 0u;
      *v11 = 0u;
      --*(*a1 - 16);
      v9 = v11;
    }
  }

  WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>::translate<SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKey,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>,SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits>> WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(SafariShared::URLCompletionEntry&&)::{lambda(void)#1}>(v9, a2, &v22);
  v13 = *a1;
  if (*a1)
  {
    v14 = *(v13 - 12) + 1;
  }

  else
  {
    v14 = 1;
  }

  *(v13 - 12) = v14;
  v15 = (*(v13 - 16) + v14);
  v16 = *(v13 - 4);
  if (v16 > 0x400)
  {
    if (v16 > 2 * v15)
    {
      goto LABEL_21;
    }
  }

  else if (3 * v16 > 4 * v15)
  {
    goto LABEL_21;
  }

  v9 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::expand(a1, v9);
  v13 = *a1;
  if (!*a1)
  {
    v17 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v17 = *(v13 - 4);
LABEL_22:
  v18 = v13 + 56 * v17;
  v19 = 1;
LABEL_23:
  *a3 = v9;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
}

id SafariShared::URLCompletionEntryMap::insert(SafariShared::URLCompletionEntryMap *this, SafariShared::URLCompletionEntryBuilder *a2, char a3)
{
  v5 = SafariShared::URLCompletionEntryBuilder::buildEntryInMap(a2, this, a3);
  v9 = v5;
  SafariShared::URLCompletionEntryBuilder::buildExtras(a2, &v8);
  if (v8)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,std::unique_ptr<SafariShared::URLCompletionEntryExtras>>(this + 1, &v9);
    v6 = v8;
    v5 = v9;
    v8 = 0;
    v9 = 0;
    if (v6)
    {
      MEMORY[0x1BFB13480](v6, 0x10C402CAF9ECALL);
    }
  }

  else
  {
    v9 = 0;
  }

  return v5;
}

void sub_1BB7E8074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a9)
  {
    MEMORY[0x1BFB13480](a9, 0x10C402CAF9ECALL);
  }

  _Unwind_Resume(a1);
}

__CFString *SafariShared::URLCompletionEntryBuilder::buildEntryInMap(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = MEMORY[0x1E695E480];
  if (*a1)
  {
    v7 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], *a1, *(a1 + 8), 0x8000100u, 0);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v28, &v7->isa);
  v8 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(a2, v28);

  v9 = *a2;
  if (*a2)
  {
    v9 += 56 * *(v9 - 4);
  }

  if (v9 == v8 || *(v8 + 40) <= *(a1 + 96))
  {
LABEL_9:
    v10 = *(a1 + 80);
    if (v10)
    {
      v11 = CFStringCreateWithBytes(*v6, v10, *(a1 + 88), 0x8000100u, 0);
      if (a3)
      {
LABEL_11:
        v12 = *(a1 + 96);
        v13 = SafariShared::URLCompletionEntryBuilder::buildCachedInfo(a1);
        SafariShared::URLCompletionEntry::URLCompletionEntry(v28, &v7->isa, &v11->isa, v12, v13);
        WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a2, v28, v26);
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
      if (a3)
      {
        goto LABEL_11;
      }
    }

    v14 = *(a1 + 96);
    v15 = SafariShared::URLCompletionEntryBuilder::buildCachedInfo(a1);
    SafariShared::URLCompletionEntry::URLCompletionEntry(v28, &v7->isa, &v11->isa, v14, v15);
    WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a2, v28, v26);
    if ((v27 & 1) == 0)
    {
      v16 = v26[0];
      v17 = v28[0];
      v28[0] = 0;
      v18 = *v26[0];
      *v26[0] = v17;

      *(v16 + 8) = v28[1];
      v19 = v29;
      v29 = 0;
      v20 = *(v16 + 16);
      *(v16 + 16) = v19;

      v21 = v30;
      v30 = 0;
      v22 = *(v16 + 24);
      *(v16 + 24) = v21;

      v23 = v31;
      v31 = 0;
      v24 = *(v16 + 32);
      *(v16 + 32) = v23;

      *(v16 + 40) = v32;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v7;
}

void sub_1BB7E82C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  SafariShared::URLCompletionEntry::~URLCompletionEntry(va);

  _Unwind_Resume(a1);
}

char *SafariShared::URLCompletionEntryBuilder::buildExtras@<X0>(SafariShared::URLCompletionEntryBuilder *this@<X0>, char **a2@<X8>)
{
  if ((SafariShared::URLCompletionEntryBuilder::buildCachedInfo(this) & 0x7000000000000000) != 0)
  {
    result = SafariShared::URLCompletionEntryExtras::create(*(this + 3), *(this + 4), *(this + 5), *(this + 6), *(this + 7), *(this + 8));
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void SafariShared::URLCompletionEntryMap::updateAutocompleteTriggers(SafariShared::URLCompletionEntryMap *this, NSString *a2, NSData *a3)
{
  v19 = a2;
  v5 = a3;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v18, v19);
  ShouldValidate = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::lookup<(WTF::ShouldValidateKey)1>(this, v18);

  if (ShouldValidate)
  {
    *(ShouldValidate + 48) = *(ShouldValidate + 48) & 0xEFFFFFFFFFFFFFFFLL | ((v5 != 0) << 60);
  }

  v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::find<NSString * {__strong}>(this + 1, &v19);
  if (!v7)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    v15 = [(NSData *)v5 bytes];
    v16 = [(NSData *)v5 length];
    v17 = operator new(v16 + 32);
    *v17 = v17 + 4;
    v17[1] = v17 + 4;
    v17[2] = v17 + 4;
    v17[3] = v17 + v16 + 32;
    memcpy(v17 + 4, v15, v16);
    v18[0] = v17;
    std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,std::unique_ptr<SafariShared::URLCompletionEntryExtras>>(this + 1, &v19);
    v14 = v18[0];
    v18[0] = 0;
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v8 = v7[3];
  v10 = *v8;
  v9 = *(v8 + 8);
  if (!v5 && v9 == v10 && *(v8 + 16) == v10)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::erase(this + 1, v7);
    goto LABEL_14;
  }

  v11 = SafariShared::URLCompletionEntryExtras::create(v10, (v9 - v10), v9, (*(v8 + 16) - v9), [(NSData *)v5 bytes], [(NSData *)v5 length]);
  v18[0] = &v19;
  v12 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(this + 1, &v19);
  if (v12)
  {
    v13 = v12[3];
    v12[3] = v11;
    if (!v13)
    {
LABEL_14:

      return;
    }

    v14 = v13;
LABEL_12:
    MEMORY[0x1BFB13480](v14, 0x10C402CAF9ECALL);
    goto LABEL_14;
  }

  __break(1u);
}

BOOL SafariShared::URLCompletionEntryMap::queryVisitCounts(uint64_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v17 = v9;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v16, v9);
  ShouldValidate = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::lookup<(WTF::ShouldValidateKey)1>(a1, v16);

  if (ShouldValidate)
  {
    LODWORD(v16[0]) = *(ShouldValidate + 48);
    *a3 = SLODWORD(v16[0]);
    v11 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::find<NSString * {__strong}>(a1 + 1, &v17);
    if (v11)
    {
      *a4 = [MEMORY[0x1E695DEF0] dataWithBytes:*v11[3] length:v11[3][1] - *v11[3]];
      if (v11[3][2] == v11[3][1])
      {
        v12 = 0;
      }

      else
      {
        v12 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      }
    }

    else
    {
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v16 length:4];
      v14 = v13;
      v12 = 0;
      *a4 = v13;
    }

    *a5 = v12;
    v9 = v17;
  }

  return ShouldValidate != 0;
}

void SafariShared::URLCompletionEntryMap::updateVisitCounts(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v67[0] = a3;
  v7 = a4;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v8 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::find<NSString * {__strong}>((a1 + 8), v67);
  if (!v8)
  {
    LODWORD(v56[0]) = *(a2 + 48);
    v14 = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v65, 1uLL, v56);
    v15 = 0;
    v16 = 0;
    *(v65 + HIDWORD(v66)) = *v14;
    ++HIDWORD(v66);
    goto LABEL_26;
  }

  v9 = v8[3];
  v10 = *v9;
  if (!*v9)
  {
LABEL_37:
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3A5E418];
    v37 = MEMORY[0x1E696AEC0];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariShared/SafariShared/SafariShared/History/Service/WBSHistoryServiceURLCompletion.mm"];
    v39 = [v38 lastPathComponent];
    v40 = [v36 length];
    if (v40)
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v36];
    }

    else
    {
      v41 = &stru_1F3A5E418;
    }

    v52 = [v37 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "extras->dailyVisitCounts()", "updateVisitCounts", v39, 595, v41];
    if (v40)
    {
    }

    v53 = [MEMORY[0x1E696AF00] callStackSymbols];
    NSLog(&stru_1F3A6CA98.isa, v52, v53);
LABEL_55:

    abort();
  }

  v11 = v9[1];
  if (!v11)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3A5E418];
    v43 = MEMORY[0x1E696AEC0];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariShared/SafariShared/SafariShared/History/Service/WBSHistoryServiceURLCompletion.mm"];
    v45 = [v44 lastPathComponent];
    v46 = [v42 length];
    if (v46)
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v42];
    }

    else
    {
      v47 = &stru_1F3A5E418;
    }

    v54 = [v43 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "extras->weeklyVisitCounts()", "updateVisitCounts", v45, 596, v47];
    if (v46)
    {
    }

    goto LABEL_54;
  }

  if (!v9[2])
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3A5E418];
    v49 = MEMORY[0x1E696AEC0];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariShared/SafariShared/SafariShared/History/Service/WBSHistoryServiceURLCompletion.mm"];
    v45 = [v44 lastPathComponent];
    v50 = [v48 length];
    if (v50)
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v48];
    }

    else
    {
      v51 = &stru_1F3A5E418;
    }

    v54 = [v49 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "extras->autocompleteTriggers()", "updateVisitCounts", v45, 597, v51];
    if (v50)
    {
    }

LABEL_54:

    v53 = [MEMORY[0x1E696AF00] callStackSymbols];
    NSLog(&stru_1F3A6CA98.isa, v54, v53);
    goto LABEL_55;
  }

  v12 = v11 - v10;
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    if ((v12 >> 2) >> 30)
    {
      __break(0xC471u);
      goto LABEL_58;
    }

    v13 = WTF::fastMalloc(v12);
    LODWORD(v66) = v12 >> 2;
    v65 = v13;
    v10 = *v9;
    v11 = v9[1];
  }

  if (v11 != v10)
  {
    v17 = 0;
    v18 = 0;
    v19 = HIDWORD(v66);
    do
    {
      if (v19 == v66)
      {
        v20 = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v65, v19 + 1, v10 + v17);
        v13 = v65;
        *(v65 + HIDWORD(v66)) = *v20;
        v21 = HIDWORD(v66);
        v10 = *v9;
        v11 = v9[1];
      }

      else
      {
        *(v13 + 4 * v19) = *(v10 + v17);
        v21 = HIDWORD(v66);
      }

      v19 = v21 + 1;
      HIDWORD(v66) = v19;
      ++v18;
      v17 += 4;
    }

    while (v18 < (v11 - v10) >> 2);
  }

  v16 = v9[2];
  if (v16 == v11)
  {
    goto LABEL_19;
  }

  v22 = v16 - v11;
  if ((v22 >> 2) >> 30)
  {
    __break(0xC471u);
LABEL_58:
    JUMPOUT(0x1BB7E8D48);
  }

  LODWORD(v64) = v22 >> 2;
  v63 = WTF::fastMalloc(v22);
  v11 = v9[1];
  v16 = v9[2];
LABEL_19:
  if (v16 != v11)
  {
    v23 = 0;
    v24 = 0;
    v25 = HIDWORD(v64);
    do
    {
      if (v25 == v64)
      {
        v26 = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v63, v25 + 1, v11 + v23);
        *(v63 + 4 * HIDWORD(v64)) = *v26;
        v27 = HIDWORD(v64);
        v11 = v9[1];
        v16 = v9[2];
      }

      else
      {
        *(v63 + 4 * v25) = *(v11 + v23);
        v27 = HIDWORD(v64);
      }

      v25 = v27 + 1;
      HIDWORD(v64) = v25;
      ++v24;
      v23 += 4;
    }

    while (v24 < (v16 - v11) >> 2);
  }

  v15 = v9[3] - v16;
LABEL_26:
  (v7)[2](v7, &v65, &v63);
  v28 = *(a2 + 48);
  v56[0] = 0;
  v56[1] = 0;
  v56[2] = v28;
  v56[3] = v65;
  v56[4] = 4 * HIDWORD(v66);
  v56[5] = v63;
  v56[6] = 4 * HIDWORD(v64);
  v56[7] = v16;
  v56[8] = v15;
  v57 = 0;
  v58 = (v28 & 0x800000000000000) != 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v62 = (v28 & 0x400000000000000) != 0;
  SafariShared::URLCompletionEntryBuilder::buildExtras(v56, &v55);
  v29 = v55;
  if (!v55)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__erase_unique<NSString * {__strong}>((a1 + 8), v67);
    goto LABEL_31;
  }

  v67[2] = v67;
  v30 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 8), v67);
  if (!v30)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = v30[3];
  v30[3] = v29;
  if (v31)
  {
    MEMORY[0x1BFB13480](v31, 0x10C402CAF9ECALL);
  }

LABEL_31:
  v32 = *(a2 + 48);
  *(a2 + 48) = v32 & 0x8FFFFFFFFFFFFFFFLL | (((SafariShared::URLCompletionEntryBuilder::buildCachedInfo(v56) >> 60) & 7) << 60);
  v34 = v63;
  if (v63)
  {
    v63 = 0;
    LODWORD(v64) = 0;
    WTF::fastFree(v34, v33);
  }

  v35 = v65;
  if (v65)
  {
    v65 = 0;
    LODWORD(v66) = 0;
    WTF::fastFree(v35, v33);
  }
}

void sub_1BB7E8D54(_Unwind_Exception *a1)
{
  v8 = *(v5 - 136);
  if (v8)
  {
    *(v5 - 136) = 0;
    *(v5 - 128) = 0;
    WTF::fastFree(v8, v7);
  }

  v9 = *(v5 - 120);
  if (v9)
  {
    *(v5 - 120) = 0;
    *(v5 - 112) = 0;
    WTF::fastFree(v9, v7);
  }

  _Unwind_Resume(a1);
}

__n128 SafariShared::URLCompletionEntryBuilder::URLCompletionEntryBuilder(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t SafariShared::URLCompletionEntryBuilder::buildCachedInfo(SafariShared::URLCompletionEntryBuilder *this)
{
  v1 = *(this + 4);
  if (*(this + 4) >= 4uLL && **(this + 3) != v1)
  {
    v1 |= 0x4000000000000000uLL;
  }

  if (*(this + 6))
  {
    v1 |= 0x2000000000000000uLL;
  }

  if (*(this + 8))
  {
    v1 |= 0x1000000000000000uLL;
  }

  if (*(this + 72))
  {
    v1 |= 0x8000000000000000;
  }

  if (*(this + 73))
  {
    v1 |= 0x800000000000000uLL;
  }

  if (*(this + 104))
  {
    return v1 | 0x400000000000000;
  }

  else
  {
    return v1;
  }
}

void SafariShared::URLCompletionEntryMap::recordVisit(uint64_t *a1, void *a2, void *a3, int a4, uint64_t a5, int a6, int a7, int a8, double a9)
{
  LODWORD(v10) = a7;
  v17 = a2;
  v18 = a3;
  v45 = v10;
  v19 = a5 == 0;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v36, v17);
  ShouldValidate = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::lookup<(WTF::ShouldValidateKey)1>(a1, v36);

  if (ShouldValidate)
  {
    v21 = *(ShouldValidate + 40);
    if (a6)
    {
      v22 = *(ShouldValidate + 48) + v10;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = ___ZN12SafariShared21URLCompletionEntryMap11recordVisitEP8NSStringS2_db21WBSHistoryVisitOriginbib_block_invoke;
      v33[3] = &__block_descriptor_64_e13_v24__0_v8_v16l;
      v33[4] = ShouldValidate;
      v34 = v22;
      v35 = v10;
      *&v33[5] = v21;
      *&v33[6] = a9;
      SafariShared::URLCompletionEntryMap::updateVisitCounts(a1, ShouldValidate, v17, v33);
    }

    if (v21 < a9)
    {
      SafariShared::URLCompletionEntry::update(ShouldValidate, v18, a9, a4, a5 == 0, a8);
    }
  }

  else
  {
    v23 = [(NSString *)v17 UTF8String];
    v31 = a4;
    v32 = a8;
    v24 = [(NSString *)v18 UTF8String];
    v25 = strlen(v23);
    v26 = a6 == 0;
    if (a6)
    {
      v10 = v10;
    }

    else
    {
      v10 = 0;
    }

    if (a6)
    {
      v27 = &v45;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = 4;
    }

    if (v24)
    {
      v29 = strlen(v24);
    }

    else
    {
      v29 = 0;
    }

    v36[0] = v23;
    v36[1] = v25;
    v36[2] = v10;
    v36[3] = v27;
    v36[4] = v28;
    v37 = 0u;
    v38 = 0u;
    v39 = v31;
    v40 = v19;
    v41 = v24;
    v42 = v29;
    v43 = a9;
    v44 = v32;
    v30 = SafariShared::URLCompletionEntryMap::insert(a1, v36, 0);
  }
}

uint64_t ___ZN12SafariShared21URLCompletionEntryMap11recordVisitEP8NSStringS2_db21WBSHistoryVisitOriginbib_block_invoke(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(a1 + 60);
  *(*(a1 + 32) + 48) = *(a1 + 56) | (*(*(a1 + 32) + 52) << 32);
  return WBSHistoryAddVisitToScore(v3, a2, a3, *(a1 + 40), *(a1 + 48));
}

void SafariShared::URLCompletionEntryMap::updateItemTitle(SafariShared::URLCompletionEntryMap *this, NSString *a2, double a3, NSString *a4, NSString *a5)
{
  v8 = a4;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v11, a2);
  ShouldValidate = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::lookup<(WTF::ShouldValidateKey)1>(this, v11);

  if (ShouldValidate)
  {
    v10 = *(ShouldValidate + 40);
    if (v10 == a3)
    {
      SafariShared::URLCompletionEntry::update(ShouldValidate, v8, v10, *(ShouldValidate + 48) >> 63, (*(ShouldValidate + 48) & 0x800000000000000) != 0, (*(ShouldValidate + 48) & 0x400000000000000) != 0);
    }
  }
}

void SafariShared::URLCompletionEntryMap::updateItemScore(SafariShared::URLCompletionEntryMap *this, NSString *a2, double a3, int a4, int a5, BOOL *a6)
{
  v11 = a2;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v16, v11);
  ShouldValidate = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::lookup<(WTF::ShouldValidateKey)1>(this, v16);

  if (ShouldValidate)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZN12SafariShared21URLCompletionEntryMap15updateItemScoreEP8NSStringdiiPb_block_invoke;
    v13[3] = &__block_descriptor_64_e13_v24__0_v8_v16l;
    v13[4] = ShouldValidate;
    v14 = a5;
    v15 = a4;
    *&v13[5] = a3;
    v13[6] = a6;
    SafariShared::URLCompletionEntryMap::updateVisitCounts(this, ShouldValidate, v11, v13);
  }

  else if (a6)
  {
    *a6 = 0;
  }
}

uint64_t ___ZN12SafariShared21URLCompletionEntryMap15updateItemScoreEP8NSStringdiiPb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  *(v5 + 48) = (v6 + *(v5 + 48) - v7) & ~((v6 + *(v5 + 48) - v7) >> 31);
  return WBSHistoryUpdateScoreOfVisit(v7, v6, a2, *(v5 + 40), *(a1 + 40), a3, *(a1 + 48));
}

void SafariShared::URLCompletionEntryMap::remove(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v14 = *(*(&v10 + 1) + 8 * i);
        SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v9, v14);
        v7 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(a1, v9);
        v8 = *a1;
        if (*a1)
        {
          v8 += 56 * *(v8 - 4);
        }

        if (v8 != v7)
        {
          WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::remove(a1, v7);
        }

        std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__erase_unique<NSString * {__strong}>(a1 + 1, &v14);
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }
}

NSString *SafariShared::URLCompletionEntryMap::nextItemInRedirectChainOfItem(SafariShared::URLCompletionEntryMap *this, NSString *a2)
{
  v3 = a2;
  if (*this)
  {
    v4 = *this + 56 * *(*this - 4);
  }

  else
  {
    v4 = 0;
  }

  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v13, v3);
  v5 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(this, v13);

  if (v4 == v5 || (v6 = *(v5 + 32)) == 0)
  {
    v10 = 0;
  }

  else
  {
    v7 = v6;
    SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v13, v6);
    v8 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(this, v13);

    v9 = v4 == v8;
    if (v4 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    if (v9)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  return v10;
}

void SafariShared::URLCompletionEntryMap::setNextItemInRedirectChainOfItem(SafariShared::URLCompletionEntryMap *this, NSString *a2, NSString *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v8, v5);
    ShouldValidate = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::lookup<(WTF::ShouldValidateKey)1>(this, v8);

    if (ShouldValidate)
    {
      objc_storeStrong((ShouldValidate + 32), a3);
    }
  }
}

void *WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::begin(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 - 3))
  {
    return WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::makeConstIterator(a1, v1);
  }

  return &v1[7 * *(v1 - 1)];
}

void *___ZNK12SafariShared21URLCompletionEntryMap21enumerateConcurrentlyEPU28objcproto17OS_dispatch_group8NSObjectPU28objcproto17OS_dispatch_queueS1_iU13block_pointerFvRKNS_18URLCompletionEntryEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::begin(v2);
  v4 = result;
  v6 = v5;
  if (*v2)
  {
    v7 = *v2 + 56 * *(*v2 - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      result = (*(*(a1 + 32) + 16))();
      do
      {
        v4 += 7;
        if (v4 == v6)
        {
          break;
        }
      }

      while (!*v4 || *v4 == &stru_1F3A5E418);
    }

    while (v4 != v7);
  }

  return result;
}

uint64_t *SafariShared::URLCompletionEntryMap::visitedMoreThanOnceStatistics(SafariShared::URLCompletionEntryMap *this, NSString *a2)
{
  v6 = a2;
  v3 = std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(this + 1, &v6);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t **SafariShared::URLCompletionEntryMap::addURLCompletionMatchEntryToArray(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v23 = v9;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v22, v9);
  v10 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(a1, v22);

  if (*a1)
  {
    v11 = *a1 + 56 * *(*a1 - 4);
  }

  else
  {
    v11 = 0;
  }

  if (v11 == v10)
  {
    goto LABEL_13;
  }

  v12 = [v8 count];
  v13 = *(v10 + 40);
  v14 = *(v10 + 48);
  if (!v12)
  {
    [WBSHistoryVisit weightedVisitCountFromScore:*(v10 + 48)];
    [v7 setVisitCount:vcvtps_s32_f32(v15)];
    [v7 setLastVisitedTimeInterval:v13];
    v14 = *(v10 + 48);
  }

  if ((v14 & 0x7000000000000000) == 0)
  {
LABEL_12:
    v17 = WBSTopSitesScore();
    v18 = [WBSHistoryServiceURLCompletionMatchEntry alloc];
    v19 = *v10;
    *&v20 = v17;
    v21 = [(WBSHistoryServiceURLCompletionMatchEntry *)v18 initWithURLString:v19 title:*(v10 + 24) topSitesScore:*(v10 + 48) visitCountScore:v20];
    [v8 addObject:v21];

    v9 = v23;
LABEL_13:

    return (v11 != v10);
  }

  result = std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(a1 + 1, &v23);
  if (result)
  {
    if (!v12 && result[3][3] != result[3][2])
    {
      [v7 setAutocompleteTriggers:? length:?];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

double SafariShared::URLCompletionEntryMap::lastVisitTime(SafariShared::URLCompletionEntryMap *this, NSString *a2)
{
  v3 = a2;
  SafariShared::URLCompletionEntryKey::URLCompletionEntryKey(v8, v3);
  v4 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(this, v8);

  v5 = *this;
  if (*this)
  {
    v5 += 56 * *(v5 - 4);
  }

  if (v5 == v4)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *(v4 + 40);
  }

  return v6;
}

uint64_t SafariShared::URLCompletionEntryMap::uniqueLocalCanonicalURLVisitCount(SafariShared::URLCompletionEntryMap *this)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 1065353216;
  v2 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::begin(this);
  v3 = v2;
  v5 = v4;
  if (*this)
  {
    v6 = *this + 56 * *(*this - 4);
  }

  else
  {
    v6 = 0;
  }

  if (v6 == v2)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v7 = v3[4];
      if (v7)
      {
      }

      else if ((*(v3 + 55) & 8) != 0)
      {
        v8 = *v3;
        v12 = [v8 safari_canonicalURLStringForFrequentlyVisitedSites];

        if (v12)
        {
          std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::__emplace_unique_key_args<NSString * {__strong},NSString * const {__strong}&>(&v13, &v12);
        }
      }

      do
      {
        v3 += 7;
        if (v3 == v5)
        {
          break;
        }
      }

      while (!*v3 || *v3 == &stru_1F3A5E418);
    }

    while (v3 != v6);
    v10 = *(&v14 + 1);
  }

  std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::~__hash_table(&v13);
  return v10;
}

void sub_1BB7E9C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void SafariShared::URLCompletionEntryBuilder::validateVisitedCountsIfNeeded(SafariShared::URLCompletionEntryBuilder *this)
{
  if ((WBSValidateVisitCountScores(*(this + 3), *(this + 4) >> 2, 300) & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      SafariShared::URLCompletionEntryBuilder::validateVisitedCountsIfNeeded(v2);
    }
  }

  if ((WBSValidateVisitCountScores(*(this + 5), *(this + 6) >> 2, 2100) & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      SafariShared::URLCompletionEntryBuilder::validateVisitedCountsIfNeeded(v3);
    }
  }
}

void sub_1BB7EAA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54)
{
  _Block_object_dispose(&a26, 8);
  std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::~__hash_table(&a32);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a37);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a43);

  _Unwind_Resume(a1);
}

id std::for_each[abi:sn200100]<std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<long long,long long>,void *> *>>,void({block_pointer} {__strong})(std::pair<long long,long long> const&)>(uint64_t *a1, uint64_t *a2, void *a3)
{
  result = a3;
  v6 = result;
  if (a1 == a2)
  {
LABEL_4:

    return v6;
  }

  else
  {
    while (a1)
    {
      v7 = *(a1 + 1);
      result = (v6)[2](v6, &v7);
      a1 = *a1;
      if (a1 == a2)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

id **std::unique_ptr<SafariShared::URLCompletionEntry>::~unique_ptr[abi:sn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1BFB13480](v2, 0x1080C405A21ED23);
  }

  return a1;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__45(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    JUMPOUT(0x1BFB13480);
  }

  return result;
}

void sub_1BB7EBA00(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v2;
  return std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__hash_table(a1 + 56, (a2 + 56));
}

void __Block_byref_object_dispose__48(uint64_t a1)
{
  std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::~__hash_table(a1 + 56);
  v2 = *(a1 + 48);
}

void sub_1BB7EC714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v36 - 176), 8);
  std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::__destroy_vector::operator()[abi:sn200100](&a33);

  _Unwind_Resume(a1);
}

id *std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::insert(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 < v8)
  {
    if (a2 == v7)
    {
      if (v6)
      {
        *v7 = *a3;
        *(a1 + 8) = v7 + 8;
        return v4;
      }
    }

    else
    {
      std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::__move_range(a1, a2, *(a1 + 8), (a2 + 8));
      v9 = *(a1 + 8);
      if (v9 >= v4)
      {
        v10 = v9 <= a3 || v4 > a3;
        v11 = 1;
        if (v10)
        {
          v11 = 0;
        }

        objc_storeStrong(v4, a3[v11]);
        return v4;
      }
    }

    __break(1u);
LABEL_24:
    std::__throw_bad_array_new_length[abi:sn200100]();
  }

  v12 = ((v7 - v6) >> 3) + 1;
  if (v12 >> 61)
  {
    goto LABEL_24;
  }

  v13 = a2 - v6;
  v14 = v8 - v6;
  v15 = v14 >> 2;
  if (v14 >> 2 <= v12)
  {
    v15 = v12;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v16 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 >> 3;
  v19[4] = a1;
  if (v16)
  {
    std::allocator<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::allocate_at_least[abi:sn200100](a1, v16);
  }

  v19[0] = 0;
  v19[1] = (8 * v17);
  v19[2] = (8 * v17);
  v19[3] = 0;
  std::__split_buffer<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::emplace_back<WBSHistoryServiceURLCompletionMatchEntry * const {__strong}&>(v19, a3);
  v4 = std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::__swap_out_circular_buffer(a1, v19, v4);
  std::__split_buffer<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::~__split_buffer(v19);
  return v4;
}

void sub_1BB7ECFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

BOOL WBSHistoryServiceURLCompletionMatchEntrySorter(WBSHistoryServiceURLCompletionMatchEntry *a1, WBSHistoryServiceURLCompletionMatchEntry *a2)
{
  v3 = a1;
  v4 = a2;
  [(WBSHistoryServiceURLCompletionMatchEntry *)v3 topSitesScore];
  v6 = v5;
  [(WBSHistoryServiceURLCompletionMatchEntry *)v4 topSitesScore];
  v8 = v6 > v7;

  return v8;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:sn200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:sn200100]((a1 + 3), 24);
  return a1;
}

void sub_1BB7ED3F8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1BFB13440](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:sn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1BFB13400](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:sn200100](a1);
  return a1;
}

void sub_1BB7ED4B4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:sn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) == 0)
  {
    return;
  }

  *(a1 + 88) = v4 + v5;
  if ((v3 & 0x80000000) != 0)
  {
    v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 22;
  }

  std::string::resize(v2, v7, 0);
  v8 = *(a1 + 87);
  if (v8 < 0)
  {
    v8 = *(a1 + 72);
    if (v8 < 0)
    {
LABEL_19:
      __break(1u);
      return;
    }
  }

  *(a1 + 40) = v4;
  *(a1 + 48) = v4;
  *(a1 + 56) = v4 + v8;
  if ((*(a1 + 96) & 3) != 0)
  {
    if (v5 >> 31)
    {
      v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
      v4 = (v4 + v10 + 0x7FFFFFFF);
      v5 = v5 - v10 - 0x7FFFFFFF;
      *(a1 + 48) = v4;
    }

    if (v5)
    {
      *(a1 + 48) = v4 + v5;
    }
  }
}

void *std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1BFB13390](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:sn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1BFB133A0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:sn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:sn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1BB7ED924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 96);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 48);
    if (v4 < v5)
    {
      *(a1 + 88) = v5;
      v4 = v5;
    }

    result = *(a1 + 40);
    if ((v4 - result) < 0)
    {
LABEL_9:
      __break(1u);
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return 0;
    }

    result = *(a1 + 16);
    if (*(a1 + 32) - result < 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void ___ZL34threadCountToEnumerateConcurrentlyv_block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 activeProcessorCount];
  if (v0 >= 4)
  {
    v1 = 4;
  }

  else
  {
    v1 = v0;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  threadCountToEnumerateConcurrently(void)::threadCount = v1;
}

uint64_t **___ZN12SafariShared32URLCompletionRedundancyPreventer22shouldProcessURLStringEP8NSString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>((v2 + 8), (a1 + 48));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {

    return std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::__emplace_unique_key_args<NSString * {__strong},NSString * const {__strong}&>((v2 + 8), (a1 + 48));
  }

  return result;
}

uint64_t **std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (CFEqual(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = *v6;
    *v6++ = 0;
    *v7 = v8;
    v7 += 8;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = (v4 - 8);
    v10 = a2 - 8;
    do
    {
      v11 = *&v5[v10];
      *&v5[v10] = 0;
      v12 = *v9;
      *v9-- = v11;

      v5 -= 8;
    }

    while (v5);
  }
}

void std::__split_buffer<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::emplace_back<WBSHistoryServiceURLCompletionMatchEntry * const {__strong}&>(void ***a1, id *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 2;
      }

      v12 = a1[4];
      v13 = a1[4];
      std::allocator<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::allocate_at_least[abi:sn200100](v12, v11);
    }

    v8 = ((v7 >> 3) + 1) / -2;
    v5 = &v6[-(((v7 >> 3) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6++ = 0;
        v10 = *v5;
        *v5++ = v9;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[v8];
    a1[2] = v5;
  }

  if (v5)
  {
    *v5 = *a2;
    ++a1[2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>,WBSHistoryServiceURLCompletionMatchEntry * {__strong}*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>,WBSHistoryServiceURLCompletionMatchEntry * {__strong}*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void std::allocator<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:sn200100]();
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>,WBSHistoryServiceURLCompletionMatchEntry * {__strong}*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v7 = *v6;
      *v6++ = 0;
      *a4++ = v7;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v8 = *v5++;
    }
  }
}

uint64_t std::__split_buffer<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *v2;
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void *>>>::destroy[abi:sn200100]<std::pair<NSString * const {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void,0>(a1, (v2 + 2));
      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void *>>>::destroy[abi:sn200100]<std::pair<NSString * const {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void,0>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    if (v3)
    {
      MEMORY[0x1BFB13480](v3, 0x10C402CAF9ECALL);
    }

    v4 = *a2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::deallocateTable(id *a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != &stru_1F3A5E418)
      {
      }

      v4 += 7;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

__CFString **WTF::checkHashTableKey<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(__CFString **result)
{
  if (!*result)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3A5E418];
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/AppleInternal/Library/BuildRoots/4~CAsjugCwDyQhds-0XOAedh6pqLB2b5-XQHorkq4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/HashTable.h"];
    v4 = [v3 lastPathComponent];
    v5 = [v1 length];
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v1];
    }

    else
    {
      v6 = &stru_1F3A5E418;
    }

    v11 = [v2 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "!isHashTraitsEmptyValue<KeyTraits>(key)", "checkHashTableKey", v4, 371, v6];
    if (v5)
    {
    }

LABEL_15:

    v12 = [MEMORY[0x1E696AF00] callStackSymbols];
    NSLog(&stru_1F3A6CA98.isa, v11, v12);

    abort();
  }

  if (*result == &stru_1F3A5E418)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3A5E418];
    v8 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/AppleInternal/Library/BuildRoots/4~CAsjugCwDyQhds-0XOAedh6pqLB2b5-XQHorkq4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/HashTable.h"];
    v4 = [v3 lastPathComponent];
    v9 = [v7 length];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v7];
    }

    else
    {
      v10 = &stru_1F3A5E418;
    }

    v11 = [v8 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "!KeyTraits::isDeletedValue(key)", "checkHashTableKey", v4, 372, v10];
    if (v9)
    {
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 256;
  }

  return WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::rehash(a1, v5, a2);
}

__n128 WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>::translate<SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKey,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>,SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits>> WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(SafariShared::URLCompletionEntry&&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = *a3;
  v5 = **a3;
  v6 = (*a3)[1];
  *v4 = 0;
  v7 = v4[2];
  v8 = v4[3];
  v4[2] = 0;
  v4[3] = 0;
  v9 = v4[4];
  v4[4] = 0;
  v15 = *(v4 + 5);
  v10 = *a1;
  *a1 = v5;

  v11 = *(a1 + 16);
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  v12 = *(a1 + 24);
  *(a1 + 24) = v8;

  v13 = *(a1 + 32);
  *(a1 + 32) = v9;

  result = v15;
  *(a1 + 40) = v15;
  return result;
}

uint64_t WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((56 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v6 + 56 * v11;
      if (*v13 != &stru_1F3A5E418)
      {
        if (*v13)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = v15 & *(v13 + 8);
          v17 = 1;
          do
          {
            v18 = v14 + 56 * v16;
            v16 = (v16 + v17++) & v15;
          }

          while (*v18);

          v19 = *v13;
          v20 = *(v13 + 8);
          *v13 = 0;
          *v18 = v19;
          *(v18 + 8) = v20;
          v21 = *(v13 + 16);
          *(v13 + 16) = 0;
          *(v13 + 24) = 0;
          *(v18 + 16) = v21;
          v22 = *(v13 + 32);
          *(v13 + 32) = 0;
          *(v18 + 32) = v22;
          *(v18 + 40) = *(v13 + 40);

          if (v13 == a3)
          {
            v12 = v18;
          }
        }

        else
        {
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!CFEqual(v11[2], *a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1BB7EE928(_Unwind_Exception *a1)
{
  std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void *>>>::destroy[abi:sn200100]<std::pair<NSString * const {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void,0>(v1, v3);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,std::unique_ptr<SafariShared::URLCompletionEntryExtras>>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!CFEqual(v11[2], *a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1BB7EEB98(_Unwind_Exception *a1)
{
  std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void *>>>::destroy[abi:sn200100]<std::pair<NSString * const {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void,0>(v1, v3);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::find<NSString * {__strong}>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (CFEqual(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::erase(void *result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::remove(result, a2, __p);
    v3 = __p[0];
    __p[0] = 0;
    if (v3)
    {
      if (v5 == 1)
      {
        std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void *>>>::destroy[abi:sn200100]<std::pair<NSString * const {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,void,0>(__p[1], v3 + 16);
      }

      operator delete(v3);
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::__erase_unique<NSString * {__strong}>(void *a1, CFTypeRef *a2)
{
  result = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::find<NSString * {__strong}>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  WTF::checkHashTableKey<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::IdentityHashTranslator<SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryHash>,(WTF::ShouldValidateKey)1,SafariShared::URLCompletionEntryKey>(a2);
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v6 = v5 & *(a2 + 8);
  v7 = v4 + 56 * v6;
  v8 = *v7;
  if (!*v7)
  {
    return v4 + 56 * *(v4 - 4);
  }

  v9 = 1;
  while (v8 == &stru_1F3A5E418 || *(v7 + 8) != *(a2 + 8) || !CFEqual(v8, *a2))
  {
    v6 = (v6 + v9) & v5;
    v7 = v4 + 56 * v6;
    v8 = *v7;
    ++v9;
    if (!*v7)
    {
      v4 = *a1;
      if (!*a1)
      {
        return 0;
      }

      return v4 + 56 * *(v4 - 4);
    }
  }

  return v7;
}

void WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = &stru_1F3A5E418;
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 0x101)
  {

    WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }
}

void *WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 + 56 * v4);
  if (v5 != a2)
  {
    while (!*a2 || *a2 == &stru_1F3A5E418)
    {
      a2 += 7;
      if (a2 == v5)
      {
        return (v3 + 56 * v4);
      }
    }
  }

  return a2;
}

uint64_t std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::__emplace_unique_key_args<NSString * {__strong},NSString * const {__strong}&>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!CFEqual(v11[2], *a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1BB7EF270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<NSString * {__strong},void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<NSString * {__strong},void *>>>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<NSString * {__strong},void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<NSString * {__strong},void *>>>>::~unique_ptr[abi:sn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,long long &,NSString * {__strong}&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1BB7EF530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>>>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__equal_range_multi<long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && v4[2] == *a2);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__emplace_multi<NSString * const {__strong}&,NSString * {__strong}&>()
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__construct_node<NSString * const {__strong}&,NSString * {__strong}&>();
}

{
  OUTLINED_FUNCTION_3_4();
  if (v1)
  {
  }

  operator delete(v0);
}

void sub_1BB7EF660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__emplace_multi<NSString * const {__strong}&,NSString * {__strong}&>();
  }

  _Unwind_Resume(exception_object);
}

void sub_1BB7EF718(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,void *>>>::operator()[abi:sn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = CFHash(*(a2 + 16));
  *(a2 + 8) = v5;
  inserted = std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__node_insert_multi_prepare(a1, v5, v4);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, CFTypeRef *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && CFEqual(v17[2], *a3) != 0;
        v22 = v21 != (v18 & 1);
        if (v18 & v22)
        {
          break;
        }

        v18 |= v22;
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:sn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,void *>>>::operator()[abi:sn200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) != 1)
  {
LABEL_4:
    if (!a2)
    {
      return;
    }

    goto LABEL_5;
  }

  std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,void *>>>::destroy[abi:sn200100]<std::pair<NSString * const {__strong},NSString * {__strong}>,void,0>(*a1, a2 + 2);
  if (!a2)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_5:

  operator delete(a2);
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,void *>>>::destroy[abi:sn200100]<std::pair<NSString * const {__strong},NSString * {__strong}>,void,0>(uint64_t a1, void **a2)
{
  if (a2)
  {

    v3 = *a2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BB7EFC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__emplace_multi<NSString * const {__strong}&,NSString * {__strong}&>();
  }

  _Unwind_Resume(exception_object);
}

void sub_1BB7EFD4C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,void *>>>::operator()[abi:sn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__equal_range_multi<NSString * {__strong}>(void *a1, CFTypeRef *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::unique_ptr<SafariShared::URLCompletionEntryExtras>>>>::find<NSString * {__strong}>(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      v5 = *v5;
    }

    while (v5 && CFEqual(v5[2], *a2));
  }

  return v4;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *v2;
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,void *>>>::destroy[abi:sn200100]<std::pair<NSString * const {__strong},NSString * {__strong}>,void,0>(a1, v2 + 2);
      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }
}

void WBSSetParsecGlobalFeedbackDispatcherEnabledBlock()
{
  v0 = MEMORY[0x1BFB13CE0]();
  v1 = globalFeedbackDispatcherEnabledBlock;
  globalFeedbackDispatcherEnabledBlock = v0;
}

id WBSSharedParsecGlobalFeedbackDispatcher()
{
  if (globalFeedbackDispatcherEnabledBlock && !(*(globalFeedbackDispatcherEnabledBlock + 16))())
  {
    v0 = 0;
  }

  else
  {
    if (WBSSharedParsecGlobalFeedbackDispatcher::onceToken != -1)
    {
      WBSSharedParsecGlobalFeedbackDispatcher_cold_1();
    }

    v0 = [WBSSharedParsecGlobalFeedbackDispatcher::feedbackParsecDSession feedbackDispatcher];
  }

  return v0;
}

void __WBSSharedParsecGlobalFeedbackDispatcher_block_invoke()
{
  v0 = [WBSParsecDSession alloc];
  v3 = +[WBSParsecDSession sharedPARSession];
  v1 = [WBSParsecDSession initWithParsecdSession:v0 skipAutoFillDataUpdates:"initWithParsecdSession:skipAutoFillDataUpdates:"];
  v2 = WBSSharedParsecGlobalFeedbackDispatcher::feedbackParsecDSession;
  WBSSharedParsecGlobalFeedbackDispatcher::feedbackParsecDSession = v1;
}

void sub_1BB7F03D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1BB7F1850(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id currentSessionStartDate()
{
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [v0 safari_startOfDay];

  return v1;
}

void sub_1BB7F35D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

BOOL shouldDisplayItem(WBSHistoryItem *a1)
{
  v1 = a1;
  v2 = [(WBSHistoryItem *)v1 lastVisit];
  v3 = [v2 hasAttributes:16];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WBSHistoryItem *)v1 lastVisitRedirectDestinationItem];
    v4 = v5 == 0;
  }

  return v4;
}

double *std::__equal_range[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,double *,double *,double,std::__identity>(double *result, double *a2, double *a3)
{
  if (a2 == result)
  {
    return a2;
  }

  v3 = a2 - result;
  v4 = *a3;
  while (1)
  {
    v5 = v3 >> 1;
    v6 = &result[v3 >> 1];
    if (*v6 >= v4)
    {
      break;
    }

    result = v6 + 1;
    v5 = v3 + ~v5;
LABEL_7:
    v3 = v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v4 < *v6)
  {
    a2 = &result[v3 >> 1];
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    do
    {
      v7 = v5 >> 1;
      v8 = &result[v5 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (v10 < v4)
      {
        result = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  v11 = v6 + 1;
  if (a2 != v11)
  {
    v12 = a2 - v11;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[v12 >> 1];
      v16 = *v14;
      v15 = v14 + 1;
      v12 += ~(v12 >> 1);
      if (v4 < v16)
      {
        v12 = v13;
      }

      else
      {
        v11 = v15;
      }
    }

    while (v12);
  }

  return result;
}

unint64_t WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

id WBSHistorySHA512(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v5 = [v4 UTF8String];
    CC_SHA512_Init(&c);
    v6 = v3;
    CC_SHA512_Update(&c, [v3 bytes], objc_msgSend(v3, "length"));
    v7 = strlen(v5);
    CC_SHA512_Update(&c, v5, v7);
    CC_SHA512_Final(md, &c);
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:64];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void WBSSQLiteSHA512(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (sqlite3_value_type(*a3) == 5)
  {

    sqlite3_result_null(a1);
  }

  else
  {
    v5 = sqlite3_value_text(*a3);
    CC_SHA512_Init(&c);
    v6 = sqlite3_value_blob(a3[1]);
    v7 = sqlite3_value_bytes(a3[1]);
    CC_SHA512_Update(&c, v6, v7);
    v8 = strlen(v5);
    CC_SHA512_Update(&c, v5, v8);
    CC_SHA512_Final(md, &c);
    sqlite3_result_blob(a1, md, 64, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void WBSSQLiteExtractDomainExpansion(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (sqlite3_value_type(*a3) != 5)
  {
    v5 = sqlite3_value_text(*a3);
    if (v5)
    {
      v6 = v5;
      v7 = objc_autoreleasePoolPush();
      v8 = MEMORY[0x1E695DFF8];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      v10 = [v8 URLWithString:v9];
      v11 = [v10 host];

      if ([v11 length] && objc_msgSend(v11, "rangeOfString:options:", @".com", 13) != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v11 rangeOfString:@"www." options:9] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [v11 substringWithRange:{0, objc_msgSend(v11, "length") - 4}];
          sqlite3_result_text(a1, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          if (![v11 caseInsensitiveCompare:@"www.com"])
          {
            sqlite3_result_text(a1, "www", 3, 0);
            goto LABEL_15;
          }

          v12 = [v11 substringWithRange:{4, objc_msgSend(v11, "length") - 8}];
          sqlite3_result_text(a1, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      else
      {
        sqlite3_result_null(a1);
      }

LABEL_15:

      objc_autoreleasePoolPop(v7);
      return;
    }
  }

  sqlite3_result_null(a1);
}

void WBSSQLiteExtractHostname(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (sqlite3_value_type(*a3) == 5 || (v5 = sqlite3_value_text(*a3)) == 0)
  {

    sqlite3_result_null(a1);
  }

  else
  {
    v6 = v5;
    v7 = sqlite3_value_bytes(*a3);
    v8 = objc_autoreleasePoolPush();
    v9 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], v6, v7, 0x8000100u, 0);
    v10 = [(__CFURL *)v9 safari_userVisibleHostWithoutWWWSubdomain];
    v11 = v10;
    if (v10)
    {
      sqlite3_result_text(a1, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_result_null(a1);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void WBSSQLiteExtractHighLevelDomain(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (sqlite3_value_type(*a3) == 5 || (v5 = sqlite3_value_text(*a3)) == 0)
  {

    sqlite3_result_null(a1);
  }

  else
  {
    v6 = v5;
    v7 = sqlite3_value_bytes(*a3);
    v8 = objc_autoreleasePoolPush();
    v9 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], v6, v7, 0x8000100u, 0);
    v10 = [(__CFURL *)v9 host];
    v11 = [v10 safari_highLevelDomainFromHost];

    if (v11)
    {
      sqlite3_result_text(a1, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_result_null(a1);
    }

    objc_autoreleasePoolPop(v8);
  }
}

BOOL SafariShared::LatestVisitInformationMap::find(SafariShared::LatestVisitInformationMap *this, unint64_t a2, uint64_t *a3)
{
  v6 = a2;
  v4 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(this, &v6);
  if (v4)
  {
    *a3 = v4[3];
  }

  return v4 != 0;
}

uint64_t SafariShared::LatestVisitInformationMap::update(SafariShared::LatestVisitInformationMap *this, unint64_t a2, int64_t a3, double a4, int a5)
{
  v16 = a2;
  v9 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(this, &v16);
  if (v9)
  {
    v10 = v9[4];
    if (v10 < a4 || v10 == a4 && ((v11 = *(v9 + 10), v11 > a5) || v11 == a5 && *(v9 + 3) < a3))
    {
      *(v9 + 3) = a3;
      v9[4] = a4;
      v12 = 1;
      *(v9 + 10) = a5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14[0] = v16;
    v14[1] = a3;
    *&v14[2] = a4;
    v15 = a5;
    std::__hash_table<std::__hash_value_type<long long,SafariShared::LatestVisitInformation>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,SafariShared::LatestVisitInformation>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,SafariShared::LatestVisitInformation>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,SafariShared::LatestVisitInformation>>>::__emplace_unique_key_args<long long,std::pair<long long,SafariShared::LatestVisitInformation>>(this, v14);
    return 1;
  }

  return v12;
}

void *SafariShared::LatestVisitInformationMap::lastVisitsForItems(void *result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = result;
    do
    {
      v8 = v3[2];
      result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v5, &v8);
      if (result)
      {
        v6 = result;
        result = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,long long const&,long long const&>(a3, &v8);
        if ((v7 & 1) == 0)
        {
          if (!result)
          {
            __break(1u);
            return result;
          }

          result[3] = v6[3];
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *SafariShared::LatestVisitInformationMap::removeItems(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(v3, &v4);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

double SafariShared::LatestVisitInformationMap::lastVisitTime(SafariShared::LatestVisitInformationMap *this, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(this, &v4);
  if (v2)
  {
    return v2[4];
  }

  else
  {
    return 0.0;
  }
}

void *SafariShared::LatestVisitInformationMap::lastVisitID(SafariShared::LatestVisitInformationMap *this, unint64_t a2)
{
  v3 = a2;
  result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(this, &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t WBSSQLiteComputeLatestVisitStep(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = sqlite3_user_data(a1);
  v5 = sqlite3_value_int64(*a3);
  v6 = sqlite3_value_int64(a3[1]);
  v7 = sqlite3_value_double(a3[2]);
  v8 = sqlite3_value_int(a3[3]);

  return SafariShared::LatestVisitInformationMap::update(v4, v5, v6, v7, v8);
}

void WBSSQLiteComputeLatestVisitFinal(sqlite3_context *a1)
{
  v2 = *(sqlite3_user_data(a1) + 3);

  sqlite3_result_int64(a1, v2);
}

void WBSSQLiteLatestVisitFor(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v7 = sqlite3_value_int64(*a3);
  v6 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v5, &v7);
  if (v6)
  {
    sqlite3_result_int64(a1, v6[3]);
  }

  else
  {
    sqlite3_result_null(a1);
  }
}

void WBSSQLiteVisitScore(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_value_int(*a3);
  v6 = sqlite3_value_int(a3[1]);
  v7 = WBHistoryVisitWeightForAttributesAndOrigin(v5, v6);
  v8 = WBSHistoryVisitScoreForWeightedVisitCount(v7);

  sqlite3_result_int64(a1, v8);
}

_BYTE *WBSSQLiteDailyVisitCountsStep(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  result = sqliteScoreAggregationContext(a1, *a3, a3[1], 13);
  if (result)
  {
    v5 = result;
    result = sqlite3_value_int(a3[2]);
    v6 = *(v5 + 1) - vcvtpd_u64_f64(result / 86400.0);
    if (v6 < *(v5 + 3))
    {
      result = sqlite3_value_int(a3[3]);
      *&v5[4 * v6 + 32] += result;
    }
  }

  return result;
}

_BYTE *sqliteScoreAggregationContext(sqlite3_context *a1, sqlite3_value *a2, sqlite3_value *a3, int a4)
{
  v7 = sqlite3_aggregate_context(a1, 4 * a4 + 32);
  v8 = v7;
  if (v7)
  {
    if ((*v7 & 1) == 0)
    {
      v9 = sqlite3_value_double(a2);
      v10 = vcvtpd_u64_f64(sqlite3_value_double(a3) / 86400.0);
      v11 = v10 - vcvtpd_u64_f64(v9 / 86400.0);
      if (v11 >= 0x2F)
      {
        v11 = 47;
      }

      *(v8 + 1) = v10;
      *(v8 + 2) = v11;
      if (v11 > 0xD)
      {
        v11 -= 7 * vcvtpd_u64_f64((v11 - 14) / 7uLL);
      }

      *(v8 + 3) = v11 + 1;
      *v8 = 1;
    }
  }

  else
  {
    sqlite3_result_error_nomem(a1);
  }

  return v8;
}

void WBSSQLiteDailyVisitCountsFinal(sqlite3_context *a1)
{
  v2 = sqliteScoreAggregationContext(a1, 0, 0, 13);
  if (v2)
  {
    v3 = 4 * *(v2 + 6);

    sqlite3_result_blob(a1, v2 + 32, v3, 0xFFFFFFFFFFFFFFFFLL);
  }
}

_BYTE *WBSSQLiteWeeklyVisitCountsStep(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  result = sqliteScoreAggregationContext(a1, *a3, a3[1], 5);
  if (result)
  {
    v5 = result;
    result = sqlite3_value_int(a3[2]);
    v6 = *(v5 + 1) - vcvtpd_u64_f64(result / 86400.0);
    v7 = *(v5 + 3);
    v8 = v6 >= v7;
    v9 = v6 - v7;
    if (v8)
    {
      v10 = v9 / 7;
      if (v9 / 7 < 5)
      {
        result = sqlite3_value_int(a3[3]);
        *&v5[4 * v10 + 32] += result;
      }
    }
  }

  return result;
}

void WBSSQLiteWeeklyVisitCountsFinal(sqlite3_context *a1)
{
  v2 = sqliteScoreAggregationContext(a1, 0, 0, 5);
  if (v2)
  {
    v3 = v2[2] - v2[3] + 1;
    if (v3 >= 7)
    {

      sqlite3_result_blob(a1, v2 + 4, 4 * (v3 / 7), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {

      sqlite3_result_null(a1);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<long long,SafariShared::LatestVisitInformation>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,SafariShared::LatestVisitInformation>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,SafariShared::LatestVisitInformation>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,SafariShared::LatestVisitInformation>>>::__emplace_unique_key_args<long long,std::pair<long long,SafariShared::LatestVisitInformation>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,long long const&,long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sqliteVisitCountScore(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (sqlite3_value_type(*a3) == 5)
  {

    sqlite3_result_null(a1);
  }

  else
  {
    *&v5 = sqlite3_value_int64(*a3);
    v6 = [WBSHistoryVisit scoreForWeightedVisitCount:v5];

    sqlite3_result_int64(a1, v6);
  }
}

void sqliteVisitBlobScore(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (sqlite3_value_type(*a3) == 5)
  {

    sqlite3_result_null(a1);
  }

  else
  {
    v5 = sqlite3_value_blob(*a3);
    v6 = sqlite3_value_bytes(*a3);
    v7 = MEMORY[0x1EEE9AC00]();
    v11 = v15 - v9;
    if (v7 >= 4)
    {
      if (v8 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8;
      }

      v13 = (v15 - v9);
      do
      {
        v14 = *v5++;
        *&v10 = v14;
        *v13++ = [WBSHistoryVisit scoreForWeightedVisitCount:v10];
        --v12;
      }

      while (v12);
    }

    sqlite3_result_blob(a1, v11, v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t indexExists(WBSSQLiteDatabase *a1, NSString *a2)
{
  v8 = a2;
  v7 = 0;
  v6 = &v7;
  v3 = SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong}&,std::tuple<int &>>(a1, 0, @"SELECT COUNT(*) FROM sqlite_master WHERE type = 'index' AND name = ?", &v8, &v6);
  if (v7 == 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BB7FA0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<long long &,std::tuple<long long &>>(void *a1, uint64_t a2, void *a3, sqlite3_int64 *a4, sqlite3_int64 **a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:a2];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 handle];
    v14 = *a5;
    v17[0] = a4;
    v17[1] = v14;
    v15 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<long long &,std::tuple<long long &>>>(v9, v13, a2, v17);
    [v12 invalidate];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong}&,std::tuple<int &>>(void *a1, uint64_t a2, void *a3, id *a4, id **a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:a2];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 handle];
    v14 = *a5;
    v17[0] = a4;
    v17[1] = v14;
    v15 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * {__strong}&,std::tuple<int &>>>(v9, v13, a2, v17);
    [v12 invalidate];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * {__strong}&,std::tuple<int &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_text(a2, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 1);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * {__strong}&,std::tuple<int &>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * {__strong}&,std::tuple<int &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**(a4 + 8) = sqlite3_column_int(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong}&,long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong}&,long>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong}&,long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,NSString * const {__strong}&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,NSString * const {__strong}&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,NSString * const {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,long long &>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,long long &>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,long long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,int &,int,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(void *a1, void *a2, void *a3, void *a4, unsigned int *a5, unsigned int *a6, void *a7, void *a8, void *a9)
{
  v16 = a1;
  v17 = a3;
  v25 = 0;
  v18 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v16 query:v17 error:&v25];
  v19 = v25;
  v20 = v19;
  if (v18)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,int &,int,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(v18, a4, a5, a6, a7, a8, a9);
    v21 = [v18 execute];
    [v18 invalidate];
    if ((v21 - 100) >= 2 && v21 != 0)
    {
      [v16 reportErrorWithCode:v21 statement:objc_msgSend(v18 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v23 = v19;
      *a2 = v20;
    }

    v21 = [v20 code];
  }

  return v21;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,int &,int,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(void *a1, void *a2, unsigned int *a3, unsigned int *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,int &,int,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,int &,int,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(void *a1, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindInt:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,int,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,int,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(void *a1, unsigned int *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindData:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSData * {__strong}&,NSData * {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSData * {__strong}&,NSData * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:5];
  [v5 bindData:*a3 atParameterIndex:6];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,double &,NSString * {__strong}&,unsigned long &,BOOL &,BOOL &,BOOL &>(void *a1, void *a2, void *a3, void *a4, double *a5, void *a6, void *a7, unsigned __int8 *a8, unsigned __int8 *a9, unsigned __int8 *a10)
{
  v17 = a1;
  v18 = a3;
  v26 = 0;
  v19 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v17 query:v18 error:&v26];
  v20 = v26;
  v21 = v20;
  if (v19)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,double &,NSString * {__strong}&,unsigned long &,BOOL &,BOOL &,BOOL &>(v19, a4, a5, a6, a7, a8, a9, a10);
    v22 = [v19 execute];
    [v19 invalidate];
    if ((v22 - 100) >= 2 && v22 != 0)
    {
      [v17 reportErrorWithCode:v22 statement:objc_msgSend(v19 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v24 = v20;
      *a2 = v21;
    }

    v22 = [v21 code];
  }

  return v22;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,double &,NSString * {__strong}&,unsigned long &,BOOL &,BOOL &,BOOL &>(void *a1, void *a2, double *a3, void *a4, void *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v15 = a1;
  [v15 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double &,NSString * {__strong}&,unsigned long &,BOOL &,BOOL &,BOOL &>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double &,NSString * {__strong}&,unsigned long &,BOOL &,BOOL &,BOOL &>(void *a1, double *a2, void *a3, void *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  v13 = a1;
  [v13 bindDouble:2 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong}&,unsigned long &,BOOL &,BOOL &,BOOL &>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong}&,unsigned long &,BOOL &,BOOL &,BOOL &>(void *a1, void *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,unsigned long &,BOOL &,BOOL &,BOOL &>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,unsigned long &,BOOL &,BOOL &,BOOL &>(void *a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,BOOL &,BOOL &,BOOL &>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,BOOL &,BOOL &,BOOL &>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v7 = a1;
  [v7 bindInt:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,BOOL &,BOOL &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,BOOL &,BOOL &>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = a1;
  [v5 bindInt:*a2 atParameterIndex:6];
  [v5 bindInt:*a3 atParameterIndex:7];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<unsigned long const&,long long &>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long const&,long long &>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long const&,long long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<long long &,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, sqlite3_int64 **a4)
{
  v7 = a1;
  if (sqlite3_bind_int64(a2, 1, **a4))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<long long &,std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<long long &,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**(a4 + 8) = sqlite3_column_int64(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,long long &>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,long long &>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2114;
  *(a2 + 10) = result;
  *(a2 + 18) = 1024;
  *(a2 + 20) = a3;
  return result;
}

WBSSetInt64 *WBSSetOfIdentifiersFromTags(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v2)
  {
    v3 = *v9;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v8 + 1) + 8 * i) databaseID];
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v12, &v7);
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v14 count:16];
    }

    while (v2);
  }

  v5 = [[WBSSetInt64 alloc] initWithMovableSet:v12];
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v12);

  return v5;
}

void sub_1BB7FCF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSString * const {__strong}&,std::tuple<long long &>>(void *a1, uint64_t a2, void *a3, id *a4, id **a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:a2];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 handle];
    v14 = *a5;
    v17[0] = a4;
    v17[1] = v14;
    v15 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * const {__strong}&,std::tuple<long long &>>>(v9, v13, a2, v17);
    [v12 invalidate];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&,unsigned long const&,long long const&,double>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, double *a8)
{
  v15 = a1;
  v16 = a3;
  v24 = 0;
  v17 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v15 query:v16 error:&v24];
  v18 = v24;
  v19 = v18;
  if (v17)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&,unsigned long const&,long long const&,double>(v17, a4, a5, a6, a7, a8);
    v20 = [v17 execute];
    [v17 invalidate];
    if ((v20 - 100) >= 2 && v20 != 0)
    {
      [v15 reportErrorWithCode:v20 statement:objc_msgSend(v17 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v22 = v18;
      *a2 = v19;
    }

    v20 = [v19 code];
  }

  return v20;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&,unsigned long const&,long long const&,double>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,unsigned long const&,long long const&,double>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,unsigned long const&,long long const&,double>(void *a1, void *a2, void *a3, void *a4, double *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,unsigned long const&,long long const&,double>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,unsigned long const&,long long const&,double>(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,long long const&,double>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,long long const&,double>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:4];
  [v5 bindDouble:5 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * const {__strong}&,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_text(a2, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 1);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * const {__strong}&,std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * const {__strong}&,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**(a4 + 8) = sqlite3_column_int64(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,long long const&,double &>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6)
{
  v11 = a1;
  v12 = a3;
  v20 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,long long const&,double &>(v13, a4, a5, a6);
    v16 = [v13 execute];
    [v13 invalidate];
    if ((v16 - 100) >= 2 && v16 != 0)
    {
      [v11 reportErrorWithCode:v16 statement:objc_msgSend(v13 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v18 = v14;
      *a2 = v15;
    }

    v16 = [v15 code];
  }

  return v16;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,long long const&,double &>(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,long long const&,double &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,long long const&,double &>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:2];
  [v5 bindDouble:3 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double &,long long const&>(void *a1, void *a2, void *a3, double *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,double &,long long const&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double &,long long const&>(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:1 atParameterIndex:*a2];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,long long const&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,long long const&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,long long const&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double const&,double const&>(void *a1, void *a2, void *a3, double *a4, double *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,double const&,double const&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void sub_1BB7FEF74(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

atomic_uint *WTF::ThreadSafeRefCounted<SafariShared::HistoryURLCompletionItem,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    return WTF::ThreadSafeRefCounted<SafariShared::HistoryURLCompletionItem,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

void std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem,WTF::RawPtrTraits<SafariShared::HistoryURLCompletionItem>,WTF::DefaultRefDerefTraits<SafariShared::HistoryURLCompletionItem>>>::__destroy_vector::operator()[abi:sn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *--v4;
        *v4 = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCounted<SafariShared::HistoryURLCompletionItem,(WTF::DestructionThread)0>::deref();
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1BB800C94(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1BB80102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28)
{
  _Block_object_dispose((v34 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1BB8016B0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1BB801B28(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

double WBHistoryVisitWeightForAttributesAndOrigin(char a1, uint64_t a2)
{
  result = 0.0;
  if ((a1 & 3) == 0)
  {
    result = 0.25;
    if ((a1 & 4) == 0)
    {
      result = 1.0;
    }

    if ((a1 & 8) != 0)
    {
      result = result * 0.6;
    }

    if (a2 == 1)
    {
      return result * 0.2;
    }
  }

  return result;
}

uint64_t WBSValidateVisitCountScores(uint64_t a1, uint64_t a2, int a3)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = a1 + 4 * a2;
    if ((*(v5 - 4) / 100.0) > a3)
    {
      result = 0;
      *(v5 - 4) = 0;
    }
  }

  return result;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double &,double &,NSString * {__strong}&>(void *a1, double *a2, double *a3, void *a4)
{
  v7 = a1;
  [v7 bindDouble:1 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double &,NSString * {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double &,NSString * {__strong}&>(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:2 atParameterIndex:*a2];
  [v5 bindString:*a3 atParameterIndex:3];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double &,double &,NSData * {__strong}&,NSData * {__strong}&>(void *a1, double *a2, double *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindDouble:1 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double &,NSData * {__strong}&,NSData * {__strong}&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double &,NSData * {__strong}&,NSData * {__strong}&>(void *a1, double *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindDouble:2 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSData * {__strong}&,NSData * {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSData * {__strong}&,NSData * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:3];
  [v5 bindData:*a3 atParameterIndex:4];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double &,double &>(void *a1, double *a2, double *a3)
{
  v5 = a1;
  [v5 bindDouble:1 atParameterIndex:*a2];
  [v5 bindDouble:2 atParameterIndex:*a3];
}

void sub_1BB802FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a27);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a33);

  _Unwind_Resume(a1);
}

void sub_1BB803D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WBSIgnoredSiriSuggestedSitesController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BB803E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1BB803F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BB8041A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BB8042FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BB804538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB804698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&>(v9, a3, a4);
  v10 = [v9 fetch];

  return v10;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, double *a8, void *a9, unsigned int *a10, double *a11, void *a12)
{
  v19 = a1;
  v20 = a3;
  v28 = 0;
  v21 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v19 query:v20 error:&v28];
  v22 = v28;
  v23 = v22;
  if (v21)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(v21, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    v24 = [v21 execute];
    [v21 invalidate];
    if ((v24 - 100) >= 2 && v24 != 0)
    {
      [v19 reportErrorWithCode:v24 statement:objc_msgSend(v21 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v26 = v22;
      *a2 = v23;
    }

    v24 = [v23 code];
  }

  return v24;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6, void *a7, unsigned int *a8, double *a9, void *a10)
{
  v17 = a1;
  [v17 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(v17, a3, a4, a5, a6, a7, a8, a9, a10);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4, double *a5, void *a6, unsigned int *a7, double *a8, void *a9)
{
  v16 = a1;
  [v16 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(v16, a3, a4, a5, a6, a7, a8, a9);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(void *a1, void *a2, void *a3, double *a4, void *a5, unsigned int *a6, double *a7, void *a8)
{
  v15 = a1;
  [v15 bindString:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(void *a1, void *a2, double *a3, void *a4, unsigned int *a5, double *a6, void *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(void *a1, double *a2, void *a3, unsigned int *a4, double *a5, void *a6)
{
  v11 = a1;
  [v11 bindDouble:5 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,NSString * {__strong}&,int,double &,NSString * {__strong}&>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,NSString * {__strong}&,int,double &,NSString * {__strong}&>(void *a1, void *a2, unsigned int *a3, double *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:6];
  SafariShared::_WBSSQLiteStatementBindAllParameters<7,int,double &,NSString * {__strong}&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<7,int,double &,NSString * {__strong}&>(void *a1, unsigned int *a2, double *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt:*a2 atParameterIndex:7];
  SafariShared::_WBSSQLiteStatementBindAllParameters<8,double &,NSString * {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<8,double &,NSString * {__strong}&>(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:8 atParameterIndex:*a2];
  [v5 bindString:*a3 atParameterIndex:9];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, double *a8, unsigned int *a9, double *a10)
{
  v17 = a1;
  v18 = a3;
  v26 = 0;
  v19 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v17 query:v18 error:&v26];
  v20 = v26;
  v21 = v20;
  if (v19)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(v19, a4, a5, a6, a7, a8, a9, a10);
    v22 = [v19 execute];
    [v19 invalidate];
    if ((v22 - 100) >= 2 && v22 != 0)
    {
      [v17 reportErrorWithCode:v22 statement:objc_msgSend(v19 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v24 = v20;
      *a2 = v21;
    }

    v22 = [v21 code];
  }

  return v22;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6, unsigned int *a7, double *a8)
{
  v15 = a1;
  [v15 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(void *a1, void *a2, void *a3, void *a4, double *a5, unsigned int *a6, double *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(void *a1, void *a2, void *a3, double *a4, unsigned int *a5, double *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong}&,double &,int,double &>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong}&,double &,int,double &>(void *a1, void *a2, double *a3, unsigned int *a4, double *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,double &,int,double &>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,double &,int,double &>(void *a1, double *a2, unsigned int *a3, double *a4)
{
  v7 = a1;
  [v7 bindDouble:5 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,int,double &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,int,double &>(void *a1, unsigned int *a2, double *a3)
{
  v5 = a1;
  [v5 bindInt:*a2 atParameterIndex:6];
  [v5 bindDouble:7 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3, double *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a3;
  v22 = 0;
  v15 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v13 query:v14 error:&v22];
  v16 = v22;
  v17 = v16;
  if (v15)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&>(v15, a4, a5, a6, a7);
    v18 = [v15 execute];
    [v15 invalidate];
    if ((v18 - 100) >= 2 && v18 != 0)
    {
      [v13 reportErrorWithCode:v18 statement:objc_msgSend(v15 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v20 = v16;
      *a2 = v17;
    }

    v18 = [v17 code];
  }

  return v18;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&>(void *a1, double *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindDouble:1 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong}&,NSString * {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:3];
  [v5 bindString:*a3 atParameterIndex:4];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double>(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindDouble:1 atParameterIndex:*a4];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

void appendToQueryItems(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x1E696AF60];
    v6 = a1;
    v7 = [v5 queryItemWithName:a2 value:a3];
    [v6 addObject:v7];
  }
}

void SafariShared::JSController::~JSController(WTF **this)
{
  *this = &unk_1F3A5CE70;
  SafariShared::JSController::setContext(this, 0);
  v3 = this[1];
  if (v3)
  {
    this[1] = 0;
    *(this + 4) = 0;
    WTF::fastFree(v3, v2);
  }
}

void sub_1BB8087E8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

void SafariShared::JSController::setContext(SafariShared::JSController *this, JSGlobalContextRef ctx)
{
  v2 = *(this + 5);
  if (v2 != ctx)
  {
    if (v2)
    {
      v5 = *(this + 4);
      if (v5)
      {
        JSObjectSetPrivate(v5, 0);
        *(this + 4) = 0;
      }

      SafariShared::JSController::unprotectObjects(this);
      *(this + 3) = 0;
      JSGlobalContextRelease(*(this + 5));
    }

    *(this + 5) = ctx;
    if (ctx)
    {
      JSGlobalContextRetain(ctx);
      v6 = *(this + 5);
      v7 = (*(*this + 16))(this);
      v9 = SafariShared::JSUtilities::globalJSObjectByName(v6, v7, v8);
      *(this + 3) = v9;
      if (v9)
      {
        SafariShared::JSController::protectObject(this, v9);
      }

      v10 = *(this + 5);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%sController", (*(*this + 16))(this)];
      v12 = [v11 UTF8String];
      *(this + 4) = SafariShared::JSUtilities::globalJSObjectByName(v10, v12, v13);

      v14 = *(this + 4);
      if (v14)
      {

        SafariShared::JSController::protectObject(this, v14);
      }
    }
  }
}

void SafariShared::JSController::addScriptObjectToGlobalObject(SafariShared::JSController *this, const OpaqueJSContext *a2)
{
  v4 = (*(*this + 40))(this);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%sController", (*(*this + 16))(this)];
  v5 = [v7 UTF8String];
  SafariShared::JSUtilities::registerJSObjectInGlobalSpace(a2, v4, v5, this, v6);
}

JSClassRef SafariShared::JSController::createJSClass(SafariShared::JSController *this)
{
  v2 = (*(*this + 32))(this);
  v3 = (*(*this + 24))(this);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%sController", (*(*this + 16))(this)];
  memset(&definition.staticFunctions, 0, 96);
  *&definition.version = 0;
  definition.parentClass = 0;
  definition.className = [v4 UTF8String];
  definition.staticValues = v3;
  definition.staticFunctions = v2;
  v5 = JSClassCreate(&definition);

  return v5;
}

void SafariShared::JSController::scriptObjectReady(SafariShared::JSController *this, JSContextRef ctx)
{
  GlobalContext = JSContextGetGlobalContext(ctx);

  SafariShared::JSController::setContext(this, GlobalContext);
}

void SafariShared::JSController::protectObject(SafariShared::JSController *this, OpaqueJSValue *a2)
{
  value = a2;
  v3 = *(this + 5);
  if (v3 == *(this + 4))
  {
    v4 = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 8, v3 + 1, &value);
    v3 = *(this + 5);
    *(*(this + 1) + 8 * v3) = *v4;
    a2 = value;
  }

  else
  {
    *(*(this + 1) + 8 * v3) = a2;
  }

  *(this + 5) = v3 + 1;
  JSValueProtect(*(this + 5), a2);
}

unsigned int *SafariShared::JSController::unprotectObjects(SafariShared::JSController *this)
{
  if (*(this + 5))
  {
    v2 = 0;
    do
    {
      JSValueUnprotect(*(this + 5), *(*(this + 1) + 8 * v2++));
    }

    while (v2 < *(this + 5));
  }

  return WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 2, 0);
}

unint64_t WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 8 * v5);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unsigned int *WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v2 = result;
    if (result[3] > a2)
    {
      result[3] = a2;
    }

    result = *result;
    if (a2)
    {
      v2[2] = a2;
      result = WTF::fastRealloc(result, (8 * a2));
      *v2 = result;
    }

    else if (result)
    {
      *v2 = 0;
      v2[2] = 0;

      return WTF::fastFree(result, 0);
    }
  }

  return result;
}

void sub_1BB809A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WBSJSCallbackHandler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id callWithArguments<1ul>(JSObjectRef object, JSContextRef *a2, const OpaqueJSValue *a3)
{
  v8 = 0;
  arguments = a3;
  v4 = JSObjectCallAsFunction(*a2, object, 0, 1uLL, &arguments, &v8);
  v6 = SafariShared::JSUtilities::translateJSValueToNS(*a2, v4, v5);

  return v6;
}

uint64_t SafariShared::JSUtilities::translateNSToJSValueForJSCallbackHandler(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, objc_object *a3)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    if ([(OpaqueJSContext *)v4 conformsToProtocol:&unk_1F3AE7598])
    {
      Undefined = [(OpaqueJSContext *)v4 translateToJSValueWithJSContext:this];
    }

    else
    {
      v9 = v4;
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_19;
        }
      }

      Undefined = SafariShared::JSUtilities::translateNSToJSValue(this, v9, v10);
    }

LABEL_19:
    v7 = Undefined;
    goto LABEL_20;
  }

  v7 = [(OpaqueJSContext *)v6 JSValueRef];

LABEL_20:
  return v7;
}

void sub_1BB809F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSGlobalContextRef ctx)
{
  if (ctx)
  {
    JSGlobalContextRelease(ctx);
  }

  _Unwind_Resume(exception_object);
}

id callWithArguments<0ul>(JSObjectRef object, JSContextRef *a2)
{
  exception = 0;
  v3 = JSObjectCallAsFunction(*a2, object, 0, 0, 0, &exception);
  v5 = SafariShared::JSUtilities::translateJSValueToNS(*a2, v3, v4);

  return v5;
}

id callWithArguments<2ul>(JSObjectRef object, JSContextRef *a2, const OpaqueJSValue *a3, const OpaqueJSValue *a4)
{
  arguments[0] = a3;
  arguments[1] = a4;
  exception = 0;
  v5 = JSObjectCallAsFunction(*a2, object, 0, 2uLL, arguments, &exception);
  v7 = SafariShared::JSUtilities::translateJSValueToNS(*a2, v5, v6);

  return v7;
}

id callWithArguments<3ul>(JSObjectRef object, JSContextRef *a2, JSValueRef *arguments)
{
  exception = 0;
  v4 = JSObjectCallAsFunction(*a2, object, 0, 3uLL, arguments, &exception);
  v6 = SafariShared::JSUtilities::translateJSValueToNS(*a2, v4, v5);

  return v6;
}

OpaqueJSValue *SafariShared::JSUtilities::functionObjectByName(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, OpaqueJSValue *string, const char *a4)
{
  exception = 0;
  v6 = JSStringCreateWithUTF8CString(string);
  Property = JSObjectGetProperty(this, a2, v6, &exception);
  if (v6)
  {
    JSStringRelease(v6);
  }

  if (!Property || !JSValueIsObject(this, Property))
  {
    return 0;
  }

  result = JSValueToObject(this, Property, &exception);
  if (result)
  {
    v9 = result;
    if (JSObjectIsFunction(this, result))
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1BB80A4F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

JSStringRef SafariShared::JSUtilities::jsString@<X0>(SafariShared::JSUtilities *this@<X0>, JSStringRef *a2@<X8>)
{
  result = JSStringCreateWithUTF8CString(this);
  *a2 = result;
  return result;
}

JSValueRef SafariShared::JSUtilities::callJSMethodWithArguments(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, const char *a4, const OpaqueJSValue *const *a5)
{
  v9 = SafariShared::JSUtilities::functionObjectByName(this, a2, a3, a4);
  if (v9)
  {
    exception = 0;
    return JSObjectCallAsFunction(this, v9, a2, a5, a4, &exception);
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSObjectRef SafariShared::JSUtilities::globalJSObjectByName(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, const char *a3)
{
  GlobalObject = JSContextGetGlobalObject(this);
  exception = 0;
  v6 = JSStringCreateWithUTF8CString(a2);
  Property = JSObjectGetProperty(this, GlobalObject, v6, &exception);
  if (v6)
  {
    JSStringRelease(v6);
  }

  if (JSValueIsUndefined(this, Property))
  {
    return 0;
  }

  else
  {
    return JSValueToObject(this, Property, &exception);
  }
}

void sub_1BB80A86C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void SafariShared::JSUtilities::logExceptionInChannel(void *a1, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = JSValueToObject(a2, a3, 0);
  if (v6)
  {
    v7 = SafariShared::JSUtilities::toNSString(a2, v6, 0);
    v8 = JSStringCreateWithUTF8CString("line");
    Property = JSObjectGetProperty(a2, v6, v8, 0);
    if (v8)
    {
      JSStringRelease(v8);
    }

    if (Property)
    {
      v10 = JSValueToNumber(a2, Property, 0);
    }

    else
    {
      v10 = -1;
    }

    v11 = JSStringCreateWithUTF8CString("sourceURL");
    v12 = JSObjectGetProperty(a2, v6, v11, 0);
    if (v11)
    {
      JSStringRelease(v11);
    }

    if (v12)
    {
      v13 = SafariShared::JSUtilities::toNSString(a2, v12, 0);
    }

    else
    {
      v13 = 0;
    }

    v14 = JSStringCreateWithUTF8CString("stack");
    v15 = JSObjectGetProperty(a2, v6, v14, 0);
    if (v14)
    {
      JSStringRelease(v14);
    }

    if (v15)
    {
      v16 = SafariShared::JSUtilities::toNSString(a2, v15, 0);
    }

    else
    {
      v16 = 0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = 138413058;
      v18 = v7;
      v19 = 2112;
      v20 = v13;
      v21 = 1024;
      v22 = v10;
      v23 = 2112;
      v24 = v16;
      _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "JavaScript Exception: %@\n(%@:%d)\n%@", &v17, 0x26u);
    }
  }
}

__CFString *SafariShared::JSUtilities::toNSString(JSContextRef ctx, JSValueRef value, uint64_t a3)
{
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    if (JSValueIsUndefined(ctx, value))
    {
LABEL_5:
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (JSValueIsNull(ctx, value))
  {
    goto LABEL_5;
  }

LABEL_6:
  v6 = JSValueToStringCopy(ctx, value, 0);
  v5 = JSStringCopyCFString(0, v6);
  if (v6)
  {
    JSStringRelease(v6);
  }

LABEL_8:

  return v5;
}

void sub_1BB80ABB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void SafariShared::JSUtilities::registerJSObjectInGlobalSpace(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, OpaqueJSClass *a3, char *a4, void *a5)
{
  GlobalObject = JSContextGetGlobalObject(this);
  v10 = JSObjectMake(this, a2, a4);
  exception = 0;
  v11 = JSStringCreateWithUTF8CString(a3);
  JSObjectSetProperty(this, GlobalObject, v11, v10, 0, &exception);
  if (v11)
  {
    JSStringRelease(v11);
  }
}

void sub_1BB80AC6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef SafariShared::JSUtilities::toJSValue(const OpaqueJSContext *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 || a3)
  {
    if (!v5)
    {
      v5 = &stru_1F3A5E418;
    }

    v8 = JSStringCreateWithCFString(v5);
    String = JSValueMakeString(a1, v8);
    if (v8)
    {
      JSStringRelease(v8);
    }
  }

  else
  {
    String = JSValueMakeNull(a1);
  }

  return String;
}

{
  v5 = [a2 absoluteURL];
  v6 = [v5 safari_originalDataAsString];
  v7 = SafariShared::JSUtilities::toJSValue(a1, v6, a3);

  return v7;
}

void sub_1BB80AD0C(_Unwind_Exception *a1)
{
  if (v2)
  {
    JSStringRelease(v2);
  }

  _Unwind_Resume(a1);
}

JSStringRef SafariShared::JSUtilities::jsString@<X0>(const __CFString *this@<X0>, JSStringRef *a2@<X8>)
{
  if (!this)
  {
    this = &stru_1F3A5E418;
  }

  result = JSStringCreateWithCFString(this);
  *a2 = result;
  return result;
}

JSObjectRef SafariShared::JSUtilities::toJSError(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, NSString *a3)
{
  v4 = a2;
  arguments = SafariShared::JSUtilities::toJSValue(this, v4, 1);
  Error = JSObjectMakeError(this, 1uLL, &arguments, 0);

  return Error;
}

unint64_t SafariShared::JSUtilities::arrayLength(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, JSValueRef *a3, const OpaqueJSValue **a4)
{
  *a3 = 0;
  v7 = JSStringCreateWithUTF8CString("length");
  Property = JSObjectGetProperty(this, a2, v7, a3);
  if (v7)
  {
    JSStringRelease(v7);
  }

  if (*a3)
  {
    return 0;
  }

  else
  {
    return JSValueToNumber(this, Property, a3);
  }
}

void sub_1BB80AEF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

JSStringRef SafariShared::JSUtilities::nsString(JSStringRef string, OpaqueJSString *a2)
{
  if (string)
  {
    string = JSStringCopyCFString(0, string);
    v2 = vars8;
  }

  return string;
}

id SafariShared::JSUtilities::translateJSValueToNS(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x1E696EB58];
    v6 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(this)];
    v7 = [v5 valueWithJSValueRef:a2 inContext:v6];

    if (!JSValueIsObject(this, a2) || (v8 = JSValueToObject(this, a2, 0), !JSObjectIsFunction(this, v8)) && ([v7 safari_isThenable] & 1) == 0)
    {
      v9 = [v7 toObject];

      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

WBSJSCallbackHandler *SafariShared::JSUtilities::toJSCallbackHandler(const OpaqueJSContext *a1, const OpaqueJSValue *a2, void *a3)
{
  v5 = a3;
  if (a2 && (v6 = JSValueToObject(a1, a2, 0)) != 0 && JSObjectIsFunction(a1, v6))
  {
    v7 = [[WBSJSCallbackHandler alloc] initWithCallbackFunction:v6 errorReporter:v5 context:a1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

WBSJSCallbackHandler *SafariShared::JSUtilities::toJSErrorCallbackHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WBSJSCallbackHandler alloc] initWithErrorReporter:v3 context:a1];

  return v4;
}

WBSJSCallbackHandler *SafariShared::JSUtilities::toJSPromiseCallbackHandler(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4)
{
  if (a2)
  {
    v5 = [[WBSJSCallbackHandler alloc] initWithPromiseResolveFunction:a2 rejectFunction:a3 context:this];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

JSValueRef SafariShared::JSUtilities::deserializeJSObject(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, NSString *a3)
{
  v4 = a2;
  if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = JSStringCreateWithCFString(v4);
  Null = JSValueMakeFromJSONString(this, v5);
  if (v5)
  {
    JSStringRelease(v5);
  }

  if (!Null)
  {
LABEL_6:
    Null = JSValueMakeNull(this);
  }

  return Null;
}

void sub_1BB80B268(_Unwind_Exception *a1)
{
  if (v2)
  {
    JSStringRelease(v2);
  }

  _Unwind_Resume(a1);
}

id SafariShared::JSUtilities::serializeJSObject(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, JSValueRef *exception, const OpaqueJSValue **a4)
{
  if (a2)
  {
    JSONString = JSValueCreateJSONString(this, a2, 0, exception);
    v6 = SafariShared::JSUtilities::nsString(JSONString, v5);
    if (JSONString)
    {
      JSStringRelease(JSONString);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1BB80B2F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

id SafariShared::JSUtilities::nsArrayWithJSValue(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3, objc_class *a4)
{
  v5 = JSValueToObject(this, a2, 0);
  if (v5)
  {
    v7 = v5;
    v16 = 0;
    v8 = SafariShared::JSUtilities::arrayLength(this, v5, &v16, v6);
    v9 = 0;
    if (!v16)
    {
      v10 = v8;
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          PropertyAtIndex = JSObjectGetPropertyAtIndex(this, v7, i, 0);
          v14 = SafariShared::JSUtilities::translateJSValueToNS(this, PropertyAtIndex, v13);
          if (objc_opt_isKindOfClass())
          {
            [v9 addObject:v14];
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id SafariShared::JSUtilities::nsDictionaryExcludingNullValuesWithJSValue(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  if (JSValueIsObject(this, a2) && (v5 = JSValueToObject(this, a2, 0)) != 0)
  {
    v6 = v5;
    v7 = JSObjectCopyPropertyNames(this, v5);
    Count = JSPropertyNameArrayGetCount(v7);
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:Count];
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        NameAtIndex = JSPropertyNameArrayGetNameAtIndex(v7, i);
        v12 = NameAtIndex;
        if (NameAtIndex)
        {
          JSStringRetain(NameAtIndex);
        }

        Property = JSObjectGetProperty(this, v6, v12, 0);
        if (!JSValueIsNull(this, Property))
        {
          v16 = SafariShared::JSUtilities::translateJSValueToNS(this, Property, v14);
          if (v16)
          {
            v17 = SafariShared::JSUtilities::nsString(v12, v15);
            [v9 setObject:v16 forKey:v17];
          }
        }

        if (v12)
        {
          JSStringRelease(v12);
        }
      }
    }

    JSPropertyNameArrayRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoBugCapture()
{
  if (WBS_LOG_CHANNEL_PREFIXAutoBugCapture_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoBugCapture_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoBugCapture_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFill()
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoPlay()
{
  if (WBS_LOG_CHANNEL_PREFIXAutoPlay_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoPlay_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoPlay_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBanners()
{
  if (WBS_LOG_CHANNEL_PREFIXBanners_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBanners_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBanners_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCertificates()
{
  if (WBS_LOG_CHANNEL_PREFIXCertificates_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCertificates_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCertificates_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudHistory()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudHistory_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudHistory_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudHistory_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXContentBlockers()
{
  if (WBS_LOG_CHANNEL_PREFIXContentBlockers_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXContentBlockers_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXContentBlockers_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCycler()
{
  if (WBS_LOG_CHANNEL_PREFIXCycler_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCycler_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCycler_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXKeychain()
{
  if (WBS_LOG_CHANNEL_PREFIXKeychain_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXKeychain_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXKeychain_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXKeyedArchiver()
{
  if (WBS_LOG_CHANNEL_PREFIXKeyedArchiver_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXKeyedArchiver_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXKeyedArchiver_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXMemory()
{
  if (WBS_LOG_CHANNEL_PREFIXMemory_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXMemory_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXMemory_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXOther()
{
  if (WBS_LOG_CHANNEL_PREFIXOther_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXOther_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXOther_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXParsec()
{
  if (WBS_LOG_CHANNEL_PREFIXParsec_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXParsec_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXParsec_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswords()
{
  if (WBS_LOG_CHANNEL_PREFIXPasswords_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswords_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswords_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPerSitePreferences()
{
  if (WBS_LOG_CHANNEL_PREFIXPerSitePreferences_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPerSitePreferences_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPerSitePreferences_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXProfiles()
{
  if (WBS_LOG_CHANNEL_PREFIXProfiles_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXProfiles_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXProfiles_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXReader()
{
  if (WBS_LOG_CHANNEL_PREFIXReader_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXReader_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXReader_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiriIntelligence()
{
  if (WBS_LOG_CHANNEL_PREFIXSiriIntelligence_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiriIntelligence_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiriIntelligence_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXStartPage()
{
  if (WBS_LOG_CHANNEL_PREFIXStartPage_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXStartPage_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXStartPage_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabDialogs()
{
  if (WBS_LOG_CHANNEL_PREFIXTabDialogs_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabDialogs_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabDialogs_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTest()
{
  if (WBS_LOG_CHANNEL_PREFIXTest_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTest_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTest_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXURLAutocomplete()
{
  if (WBS_LOG_CHANNEL_PREFIXURLAutocomplete_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXURLAutocomplete_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXURLAutocomplete_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserMediaCapture()
{
  if (WBS_LOG_CHANNEL_PREFIXUserMediaCapture_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserMediaCapture_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserMediaCapture_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDigitalHealth()
{
  if (WBS_LOG_CHANNEL_PREFIXDigitalHealth_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDigitalHealth_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDigitalHealth_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness()
{
  if (WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTranslation()
{
  if (WBS_LOG_CHANNEL_PREFIXTranslation_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTranslation_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTranslation_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudSettings()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudSettings_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudSettings_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudSettings_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXInterstellar()
{
  if (WBS_LOG_CHANNEL_PREFIXInterstellar_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXInterstellar_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXInterstellar_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWidgets()
{
  if (WBS_LOG_CHANNEL_PREFIXWidgets_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWidgets_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWidgets_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBiomeDonation()
{
  if (WBS_LOG_CHANNEL_PREFIXBiomeDonation_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBiomeDonation_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBiomeDonation_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBrowsingAssistant()
{
  if (WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites()
{
  if (WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker()
{
  if (WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExport()
{
  if (WBS_LOG_CHANNEL_PREFIXExport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExport_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXImport()
{
  if (WBS_LOG_CHANNEL_PREFIXImport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXImport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXImport_log;
}

void sub_1BB80F4E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BB80F794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

void sub_1BB810804(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB810A10(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB810F40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB811548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB811908(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB81245C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB8141EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL WBSObjCWrappedReplaceDealloc(objc_class *a1, void (*a2)(void))
{
  InstanceMethod = class_getInstanceMethod(a1, sel_dealloc);
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  MethodImplementation = class_replaceMethod(a1, sel_dealloc, a2, TypeEncoding);
  if (!MethodImplementation)
  {
    Superclass = class_getSuperclass(a1);
    MethodImplementation = class_getMethodImplementation(Superclass, sel_dealloc);
  }

  return class_addMethod(a1, sel_safari_oldDealloc, MethodImplementation, TypeEncoding);
}

uint64_t WBSObjCWrappedCallOldDealloc(void *a1)
{
  Class = object_getClass(a1);
  MethodImplementation = class_getMethodImplementation(Class, sel_safari_oldDealloc);

  return (MethodImplementation)(a1, sel_safari_oldDealloc);
}

void std::vector<_WBSSearchSuggestionCandidate>::push_back[abi:sn200100](void *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    std::vector<_WBSSearchSuggestionCandidate>::__emplace_back_slow_path<_WBSSearchSuggestionCandidate const&>(a1);
    goto LABEL_5;
  }

  if (v3)
  {
    v4 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *v3 = v4;
    *(v3 + 16) = a2[2];
    v5 = v3 + 24;
LABEL_5:
    a1[1] = v5;
    return;
  }

  __break(1u);
}

uint64_t byteArrayToInteger(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 > 4)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      byteArrayToInteger();
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = *a1++;
    v4 = (v5 << v3) | v4;
    v3 += 8;
  }

  while (8 * a2 != v3);
  return v4;
}

void sub_1BB816468(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BB81668C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void std::vector<_WBSSearchSuggestionCandidate>::__emplace_back_slow_path<_WBSSearchSuggestionCandidate const&>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v3 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    v6 = a1;
    if (v3)
    {
      std::allocator<_WBSSearchSuggestionCandidate>::allocate_at_least[abi:sn200100](a1, v3);
    }

    v4 = 24 * v1;
    *(&v5 + 1) = 0;
    __break(1u);
  }

  std::__throw_bad_array_new_length[abi:sn200100]();
}

void sub_1BB81682C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<_WBSSearchSuggestionCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<_WBSSearchSuggestionCandidate>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:sn200100]();
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<_WBSSearchSuggestionCandidate>,_WBSSearchSuggestionCandidate*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v7 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *a4 = v7;
      v8 = v6[2];
      v6[2] = 0;
      *(a4 + 16) = v8;
      v6 += 3;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v5 += 3;
    }
  }
}