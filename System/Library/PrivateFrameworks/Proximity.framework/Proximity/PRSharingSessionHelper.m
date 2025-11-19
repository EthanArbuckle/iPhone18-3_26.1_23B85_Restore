@interface PRSharingSessionHelper
+ (basic_string<char,)UIntToHexString:(std::allocator<char>> *__return_ptr)retstr len:;
+ (id)HexStringToNSDataMac:(const void *)a3;
+ (id)NSDataMacToUUID:(id)a3;
+ (id)ProxToString:(int64_t)a3;
+ (id)UUIDStringToNSDataMac:(const void *)a3 len:(unint64_t)a4;
+ (id)UUIDToNSDataMac:(id)a3 len:(unint64_t)a4;
+ (id)convertMacStringToNSData:(const void *)a3;
+ (id)reverseNSData:(id)a3;
+ (int)ProxToCoarseRange:(int64_t)a3;
+ (int64_t)CoarseRangeToProx:(int)a3;
+ (unint64_t)NSDataToUInt64:(id)a3;
@end

@implementation PRSharingSessionHelper

+ (id)NSDataMacToUUID:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PRSharingSessionHelper.mm" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"mac"}];
  }

  v10[0] = 0;
  v10[1] = 0;
  [v5 getBytes:v10 length:{objc_msgSend(v5, "length")}];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v10];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)UUIDToNSDataMac:(id)a3 len:(unint64_t)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PRSharingSessionHelper.mm" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  if (a4 <= 8)
  {
    v12[0] = 0;
    v12[1] = 0;
    [v7 getUUIDBytes:v12];
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v12 length:a4];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)UUIDStringToNSDataMac:(const void *)a3 len:(unint64_t)a4
{
  v5 = a3;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v6 = 0;
    if (!a4 || !*(a3 + 23))
    {
      goto LABEL_9;
    }

LABEL_8:
    v7 = [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v6 = [PRSharingSessionHelper UUIDToNSDataMac:v8 len:a4];

    goto LABEL_9;
  }

  v6 = 0;
  if (a4 && *(a3 + 1))
  {
    v5 = *a3;
    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

+ (id)HexStringToNSDataMac:(const void *)a3
{
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 1))
    {
      v6 = (*(a3 + 1) & 1) == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_12;
    }

    v5 = *a3;
  }

  else
  {
    if (*(a3 + 23))
    {
      v4 = (*(a3 + 23) & 1) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
LABEL_12:
      v7 = 0;
      goto LABEL_25;
    }

    v5 = a3;
  }

  v8 = strlen(v5);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v8;
  if (v8)
  {
    memmove(&__p, v5, v8);
  }

  __p.__r_.__value_.__s.__data_[v9] = 0;
  v10 = std::stoull(&__p, 0, 16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = v10;
  v11 = objc_alloc(MEMORY[0x277CBEA90]);
  v12 = *(a3 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a3 + 1);
  }

  v7 = [v11 initWithBytes:&v15 length:{v12 >> 1, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]}];
LABEL_25:

  return v7;
}

+ (basic_string<char,)UIntToHexString:(std::allocator<char>> *__return_ptr)retstr len:
{
  v3 = v2;
  v4 = v1;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v6 = v16;
  v7 = v16;
  *(&v16 + *(v16 - 24) + 8) |= 0x4000u;
  v8 = (&v16 + *(v7 - 24));
  if (v8[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v8);
    v9 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v14);
    v6 = v16;
  }

  v8[1].__fmtflags_ = 48;
  *(&v18[1].__locale_ + *(v6 - 24)) = (2 * v3);
  *(&v16 + *(v6 - 24) + 8) = *(&v16 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23191ED50](&v16, v4);
  std::stringbuf::str();
  v10 = 2 * v3;
  var1 = *(&retstr->var0.var1 + 23);
  if ((var1 & 0x8000000000000000) != 0)
  {
    var1 = retstr->var0.var1.var1;
    if (var1 <= v10)
    {
      goto LABEL_10;
    }
  }

  else if (v10 >= var1)
  {
    goto LABEL_10;
  }

  std::string::basic_string(&v14, retstr, var1 - v10, 0xFFFFFFFFFFFFFFFFLL, &v21);
  if (*(&retstr->var0.var1 + 23) < 0)
  {
    operator delete(retstr->var0.var1.var0);
  }

  *retstr = v14;
LABEL_10:
  v15[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v12;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x23191EE10](&v20);
}

+ (unint64_t)NSDataToUInt64:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PRSharingSessionHelper.mm" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"inData"}];
  }

  v11 = 0;
  v6 = [v5 length];
  if (v6 >= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  [v5 getBytes:&v11 length:v7];
  v8 = v11;

  return v8;
}

+ (id)convertMacStringToNSData:(const void *)a3
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 1);
  }

  if (v3 == 36)
  {
    [PRSharingSessionHelper UUIDStringToNSDataMac:"UUIDStringToNSDataMac:len:" len:?];
  }

  else
  {
    [PRSharingSessionHelper HexStringToNSDataMac:?];
  }
  v4 = ;

  return v4;
}

+ (id)reverseNSData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PRSharingSessionHelper.mm" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"inData"}];
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v5];
  v7 = [v6 mutableBytes];
  v8 = [v6 length];
  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }

  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v6];

  return v14;
}

+ (int)ProxToCoarseRange:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return dword_230EED628[a3];
  }
}

+ (id)ProxToString:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"immediate";
  }

  else
  {
    return off_2788F3BE8[a3];
  }
}

+ (int64_t)CoarseRangeToProx:(int)a3
{
  if (a3 > 3)
  {
    return 4;
  }

  else
  {
    return qword_230EED640[a3];
  }
}

@end