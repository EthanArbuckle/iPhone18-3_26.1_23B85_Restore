@interface UCAppClipCodeURLEncoder
+ (id)encoderWithExtendedInterfaceWithVersion:(int64_t)a3;
- (UCAppClipCodeURLEncoder)initWithCodingVersion:(int64_t)a3;
- (id).cxx_construct;
- (id)_convertRawURLEncodingBitsToAppClipCodeData:(const void *)a3;
- (id)_errorFromCoderError:(const void *)a3;
- (id)_errorWithCoderErrorCode:(int64_t)a3 codingErrorSymbol:(id)a4 message:(id)a5;
- (id)_errorWithUnsupportedURLComponentType:(int64_t)a3;
- (id)encodeURL:(id)a3 error:(id *)a4;
- (id)encodeURLV0:(id)a3 error:(id *)a4;
- (id)encodeURLV1:(id)a3 error:(id *)a4;
- (id)resultForEncodingURL:(id)a3 error:(id *)a4;
- (shared_ptr<UC::SUE::UCSegmentedURLEncodingResult>)_encodeURL:(id)a3 error:(id *)a4;
- (void)clearCaches;
- (void)dealloc;
@end

@implementation UCAppClipCodeURLEncoder

+ (id)encoderWithExtendedInterfaceWithVersion:(int64_t)a3
{
  v3 = [[a1 alloc] initWithCodingVersion:a3];

  return v3;
}

- (UCAppClipCodeURLEncoder)initWithCodingVersion:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = UCAppClipCodeURLEncoder;
  v4 = [(UCAppClipCodeURLEncoder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_codingVersion = a3;
    v4->_compressionVersion = [UCAppClipCodeEnDecUtility compressionVersionFromPayloadVersion:a3];
    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](&self->_segmentedEncoder, 0);
  v3.receiver = self;
  v3.super_class = UCAppClipCodeURLEncoder;
  [(UCAppClipCodeURLEncoder *)&v3 dealloc];
}

- (id)_convertRawURLEncodingBitsToAppClipCodeData:(const void *)a3
{
  if (self->_codingVersion)
  {
    v3 = *(a3 + 23);
    if (v3 >= 0)
    {
      v4 = a3;
    }

    else
    {
      v4 = *a3;
    }

    if (v3 >= 0)
    {
      v5 = *(a3 + 23);
    }

    else
    {
      v5 = *(a3 + 1);
    }

    UC::appClipCodeVersion1Bytes(v4, v5, v12);
  }

  else
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    if (v6 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = *(a3 + 1);
    }

    UC::appClipCodeVersion0Bytes(v7, v8, v12);
  }

  v9 = v12[0];
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v12[0] length:v12[1] - v12[0]];
  if (v9)
  {
    operator delete(v9);
  }

  return v10;
}

- (id)encodeURLV0:(id)a3 error:(id *)a4
{
  v12 = 0;
  [(UCAppClipCodeURLEncoder *)self _encodeURL:a3 error:&v12];
  v6 = v12;
  v7 = v6;
  if (a4)
  {
    v8 = v6;
    *a4 = v7;
  }

  if (v13)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [(UCAppClipCodeURLEncoder *)self _convertRawURLEncodingBitsToAppClipCodeData:UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(v13)];
  }

  else
  {
    v10 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v10;
}

- (id)encodeURLV1:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!self->_prefixedURLEncoder.__ptr_)
  {
    v6 = operator new(0x20uLL);
    UC::SUE::PrefixedURLEncoderImpl::PrefixedURLEncoderImpl(v6, self->_codingVersion);
    v13[0].__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<UC::SUE::PrefixedURLEncoderImpl>::reset[abi:ne200100](&self->_prefixedURLEncoder, v6);
    std::unique_ptr<UC::SUE::PrefixedURLEncoderImpl>::reset[abi:ne200100](v13, 0);
  }

  v7 = [UCAppClipCodeEnDecUtility prepareURL:v5 withCodingVersion:self->_codingVersion forCompressionVersion:self->_compressionVersion, v13[0].__r_.__value_.__r.__words[0]];

  ptr = self->_prefixedURLEncoder.__ptr_;
  UCURLComponentsFromNSURL(v7, v13);
  UC::SUE::PrefixedURLEncoderImpl::encodeURL(ptr, v13, &v14);
  UC::UCURLComponents::~UCURLComponents(&v13[0].__r_.__value_.__l.__data_);
  v9 = [(UCAppClipCodeURLEncoder *)self _convertRawURLEncodingBitsToAppClipCodeData:UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(&v14)];
  v10 = [UCAppClipCodeEnDecUtility prepareData:v9 withCompressionVersion:self->_compressionVersion forCodingVersion:self->_codingVersion];

  v11 = v15;
  v15 = 0;
  if (v11)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](&v15, v11);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v10;
}

- (id)encodeURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  compressionVersion = self->_compressionVersion;
  if (compressionVersion == 1)
  {
    v8 = [(UCAppClipCodeURLEncoder *)self encodeURLV1:v6 error:a4];
    goto LABEL_5;
  }

  if (!compressionVersion)
  {
    v8 = [(UCAppClipCodeURLEncoder *)self encodeURLV0:v6 error:a4];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)resultForEncodingURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  [(UCAppClipCodeURLEncoder *)self _encodeURL:v6 error:&v23];
  v7 = v23;
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    *a4 = v8;
  }

  v10 = 0;
  if (v24 && !v8)
  {
    v11 = [(UCAppClipCodeURLEncoder *)self _convertRawURLEncodingBitsToAppClipCodeData:UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(v24)];
    v12 = MEMORY[0x277CCACA8];
    EncodingBits = UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(v24);
    if (*(EncodingBits + 23) >= 0)
    {
      v14 = EncodingBits;
    }

    else
    {
      v14 = *EncodingBits;
    }

    v15 = [v12 stringWithFormat:@"1%s", v14];
    v10 = [UCAppClipCodeURLEncodingResult resultWithRawEncodedBits:v15 appClipCodeBytes:v11];
    [(UCAppClipCodeURLEncodingResult *)v10 setUrl:v6];
    HostEncodingResult = UC::SUE::UCSegmentedURLEncodingResult::getHostEncodingResult(v24);
    v17 = UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(HostEncodingResult);
    if (*(v17 + 23) >= 0)
    {
      v18 = *(v17 + 23);
    }

    else
    {
      v18 = *(v17 + 8);
    }

    [(UCAppClipCodeURLEncodingResult *)v10 setHostEncodedBitCount:v18];
    [(UCAppClipCodeURLEncodingResult *)v10 setHasPathOrQueryEncoding:UC::SUE::UCSegmentedURLEncodingResult::getHasPathOrQuery(v24)];
    v19 = UC::SUE::UCSegmentedURLEncodingResult::getHostEncodingResult(v24);
    FormatType = UC::SUE::UCSegmentedURLEncodingResult::HostResult::getFormatType(v19);
    if (FormatType == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = FormatType == 1;
    }

    [(UCAppClipCodeURLEncodingResult *)v10 setHostEncodingFormat:v21];
    [(UCAppClipCodeURLEncodingResult *)v10 setTemplateType:UC::SUE::UCSegmentedURLEncodingResult::getTemplateType(v24) != 0];
    [(UCAppClipCodeURLEncodingResult *)v10 setSubdomainType:UC::SUE::UCSegmentedURLEncodingResult::HostResult::getFormatType(v24) != 0];
    [(UCAppClipCodeURLEncodingResult *)v10 setNonTemplatePathAndQueryEncodeType:UC::SUE::UCSegmentedURLEncodingResult::getNonTemplatePathAndQueryEncodeType(v24) != 0];
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  return v10;
}

- (id)_errorWithUnsupportedURLComponentType:(int64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"UCURLCoderUnsupportedURLComponentType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.URLCompression.URLCoderErrorDomain" code:2 userInfo:v4];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_errorWithCoderErrorCode:(int64_t)a3 codingErrorSymbol:(id)a4 message:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = v9;
  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"UCURLCoderErrorSymbol"];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.URLCompression.URLCoderErrorDomain" code:a3 userInfo:v10];

  return v11;
}

- (id)_errorFromCoderError:(const void *)a3
{
  v5 = (a3 + 8);
  v6 = *(a3 + 31);
  if (v6 >= 0)
  {
    v7 = *(a3 + 31);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  if (v7 != strlen("UCSegmentedURLCoderErrorDomain") || ((v8 = *v5, v6 >= 0) ? (v9 = v5) : (v9 = *v5), memcmp(v9, "UCSegmentedURLCoderErrorDomain", v7)))
  {
    if (v7 != strlen("UCPrefixedURLCoderErrorDomain") || ((v10 = *v5, v6 >= 0) ? (v11 = v5) : (v11 = *v5), memcmp(v11, "UCPrefixedURLCoderErrorDomain", v7)))
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = -1;
LABEL_15:
      v14 = [v12 errorWithDomain:@"com.apple.URLCompression.URLCoderErrorDomain" code:v13 userInfo:0];
LABEL_16:
      v15 = v14;
      goto LABEL_17;
    }
  }

  v15 = 0;
  v17 = *(a3 + 8);
  if (v17 <= 3)
  {
    switch(v17)
    {
      case 1:
        v12 = MEMORY[0x277CCA9B8];
        v13 = 1;
        goto LABEL_15;
      case 2:
        v30 = self;
        v31 = 0;
        break;
      case 3:
        v30 = self;
        v31 = 1;
        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_72;
  }

  if (v17 <= 5)
  {
    if (v17 != 4)
    {
      v18 = *(a3 + 63);
      if (v18 >= 0)
      {
        v19 = a3 + 40;
      }

      else
      {
        v19 = *(a3 + 5);
      }

      if (v18 >= 0)
      {
        v20 = *(a3 + 63);
      }

      else
      {
        v20 = *(a3 + 6);
      }

      v21 = nsStringFromString(v19, v20);
      v24 = *(a3 + 8);
      v23 = a3 + 64;
      v22 = v24;
      v25 = v23[23];
      if (v25 >= 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = v22;
      }

      if (v25 >= 0)
      {
        v27 = v23[23];
      }

      else
      {
        v27 = *(v23 + 1);
      }

      v28 = nsStringFromString(v26, v27);
      v29 = [(UCAppClipCodeURLEncoder *)self _errorWithCoderErrorCode:3 codingErrorSymbol:v21 message:v28];
      goto LABEL_70;
    }

    v30 = self;
    v31 = 2;
LABEL_72:
    v14 = [(UCAppClipCodeURLEncoder *)v30 _errorWithUnsupportedURLComponentType:v31];
    goto LABEL_16;
  }

  if (v17 == 6)
  {
    v41 = *(a3 + 63);
    if (v41 >= 0)
    {
      v42 = a3 + 40;
    }

    else
    {
      v42 = *(a3 + 5);
    }

    if (v41 >= 0)
    {
      v43 = *(a3 + 63);
    }

    else
    {
      v43 = *(a3 + 6);
    }

    v21 = nsStringFromString(v42, v43);
    v46 = *(a3 + 8);
    v45 = a3 + 64;
    v44 = v46;
    v47 = v45[23];
    if (v47 >= 0)
    {
      v48 = v45;
    }

    else
    {
      v48 = v44;
    }

    if (v47 >= 0)
    {
      v49 = v45[23];
    }

    else
    {
      v49 = *(v45 + 1);
    }

    v28 = nsStringFromString(v48, v49);
    v29 = [(UCAppClipCodeURLEncoder *)self _errorWithCoderErrorCode:4 codingErrorSymbol:v21 message:v28];
  }

  else
  {
    if (v17 != 8)
    {
      goto LABEL_17;
    }

    v32 = *(a3 + 63);
    if (v32 >= 0)
    {
      v33 = a3 + 40;
    }

    else
    {
      v33 = *(a3 + 5);
    }

    if (v32 >= 0)
    {
      v34 = *(a3 + 63);
    }

    else
    {
      v34 = *(a3 + 6);
    }

    v21 = nsStringFromString(v33, v34);
    v37 = *(a3 + 8);
    v36 = a3 + 64;
    v35 = v37;
    v38 = v36[23];
    if (v38 >= 0)
    {
      v39 = v36;
    }

    else
    {
      v39 = v35;
    }

    if (v38 >= 0)
    {
      v40 = v36[23];
    }

    else
    {
      v40 = *(v36 + 1);
    }

    v28 = nsStringFromString(v39, v40);
    v29 = [(UCAppClipCodeURLEncoder *)self _errorWithCoderErrorCode:1003 codingErrorSymbol:v21 message:v28];
  }

LABEL_70:
  v15 = v29;

LABEL_17:

  return v15;
}

- (shared_ptr<UC::SUE::UCSegmentedURLEncodingResult>)_encodeURL:(id)a3 error:(id *)a4
{
  v7 = v4;
  v8 = a3;
  if (!self->_segmentedEncoder.__ptr_)
  {
    v9 = +[UCResourceFilePath combinedPathAndQueryFilePathForSegmentedURLCoderVersion0];
    std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
    v10 = +[UCResourceFilePath segmentedPathAndQueryFilePathForSegmentedURLCoderVersion0];

    v11 = v10;
    std::string::basic_string[abi:ne200100]<0>(&v21, [v10 UTF8String]);
    v12 = +[UCResourceFilePath hostFilePathForSegmentedURLCoderVersion0];

    std::string::basic_string[abi:ne200100]<0>(v27, [v12 UTF8String]);
    std::allocate_shared[abi:ne200100]<UC::SUE::UCSegmentedURLCoderProvider,std::allocator<UC::SUE::UCSegmentedURLCoderProvider>,std::string &,std::string &,std::string &,0>(v27, __p, &v21, &v26);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v13 = operator new(0x18uLL);
    v14 = v13;
    *&v21.__r_.__value_.__l.__data_ = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    UC::SUE::SegmentedURLEncoderImpl::SegmentedURLEncoderImpl(v13, &v21);
    __p[0].__r_.__value_.__r.__words[0] = v14;
    if (v21.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21.__r_.__value_.__l.__size_);
      v14 = __p[0].__r_.__value_.__r.__words[0];
    }

    __p[0].__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](&self->_segmentedEncoder, v14);
    std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](__p, 0);
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }
  }

  *v7 = 0;
  v7[1] = 0;
  if (v8)
  {
    ptr = self->_segmentedEncoder.__ptr_;
    UCURLComponentsFromNSURL(v8, __p);
    UC::SUE::SegmentedURLEncoderImpl::encodeURL(ptr, __p, &v21);
    v16 = operator new(0x50uLL);
    *(v16 + 1) = 0;
    *(v16 + 2) = 0;
    *v16 = &unk_28803D6A8;
    *(v16 + 24) = *&v21.__r_.__value_.__l.__data_;
    *&v21.__r_.__value_.__l.__data_ = 0uLL;
    v17 = v22;
    *(v16 + 5) = *(&v21.__r_.__value_.__l + 2);
    *(v16 + 6) = v17;
    *(v16 + 14) = v23;
    *(v16 + 8) = v24;
    v16[72] = v25;
    *v7 = v16 + 24;
    v7[1] = v16;
    v21.__r_.__value_.__r.__words[2] = 0;
    v24 = 0;
    UC::UCURLComponents::~UCURLComponents(&__p[0].__r_.__value_.__l.__data_);
  }

  else if (a4)
  {
    *a4 = [(UCAppClipCodeURLEncoder *)self _errorWithCoderErrorCode:1001 codingErrorSymbol:0 message:@"Cannot encode a null URL. Make sure a valid URL is provided"];
  }

  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (void)clearCaches
{
  ptr = self->_segmentedEncoder.__ptr_;
  if (ptr)
  {
    UC::SUE::SegmentedURLEncoderImpl::clearCaches(ptr);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end