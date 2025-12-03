@interface UCAppClipCodeURLDecoder
+ (id)decoderWithVersion:(int64_t)version;
- (UCAppClipCodeURLDecoder)initWithCodingVersion:(int64_t)version;
- (id).cxx_construct;
- (id)_decodeURLWithDataV0:(id)v0 error:(id *)error;
- (id)_decodeURLWithDataV1:(id)v1 error:(id *)error;
- (id)_errorWithCoderErrorCode:(int64_t)code message:(id)message;
- (id)decodeURLWithData:(id)data error:(id *)error;
- (unique_ptr<UC::UCBitVector,)_bitVectorFromData:(id)data;
- (void)clearCaches;
- (void)dealloc;
@end

@implementation UCAppClipCodeURLDecoder

+ (id)decoderWithVersion:(int64_t)version
{
  v3 = [[self alloc] initWithCodingVersion:version];

  return v3;
}

- (UCAppClipCodeURLDecoder)initWithCodingVersion:(int64_t)version
{
  v8.receiver = self;
  v8.super_class = UCAppClipCodeURLDecoder;
  v4 = [(UCAppClipCodeURLDecoder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_codingVersion = version;
    v4->_compressionVersion = [UCAppClipCodeEnDecUtility compressionVersionFromPayloadVersion:version];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [(UCAppClipCodeURLDecoder *)&v5->_codingVersion initWithCodingVersion:?];
    }

    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](&self->_segmentedDecoder, 0);
  std::unique_ptr<UC::SUE::PrefixedURLEncoderImpl>::reset[abi:ne200100](&self->_prefixedDecoder, 0);
  v3.receiver = self;
  v3.super_class = UCAppClipCodeURLDecoder;
  [(UCAppClipCodeURLDecoder *)&v3 dealloc];
}

- (unique_ptr<UC::UCBitVector,)_bitVectorFromData:(id)data
{
  v4 = v3;
  dataCopy = data;
  UC::bitVectorFromAppClipCodeEncodingData([dataCopy bytes], objc_msgSend(dataCopy, "length"), v4);

  return v6;
}

- (id)_errorWithCoderErrorCode:(int64_t)code message:(id)message
{
  messageCopy = message;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = dictionary;
  if (messageCopy)
  {
    [dictionary setObject:messageCopy forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.URLCompression.URLCoderErrorDomain" code:code userInfo:v7];

  return v8;
}

- (id)decodeURLWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UCAppClipCodeURLDecoder decodeURLWithData:dataCopy error:self];
  }

  compressionVersion = self->_compressionVersion;
  if (compressionVersion == 1)
  {
    v8 = [(UCAppClipCodeURLDecoder *)self _decodeURLWithDataV1:dataCopy error:error];
    goto LABEL_7;
  }

  if (!compressionVersion)
  {
    v8 = [(UCAppClipCodeURLDecoder *)self _decodeURLWithDataV0:dataCopy error:error];
LABEL_7:
    v9 = v8;
    goto LABEL_9;
  }

  v10 = [(UCAppClipCodeURLDecoder *)self _errorWithCoderErrorCode:1002 message:@"Decoding of the data failed. Unsupported code version."];
  v9 = 0;
  *error = v10;
LABEL_9:

  return v9;
}

- (id)_decodeURLWithDataV0:(id)v0 error:(id *)error
{
  v0Copy = v0;
  if (!self->_segmentedDecoder.__ptr_)
  {
    v7 = +[UCResourceFilePath combinedPathAndQueryFilePathForSegmentedURLCoderVersion0];
    std::string::basic_string[abi:ne200100]<0>(&v27, [v7 UTF8String]);
    v8 = +[UCResourceFilePath segmentedPathAndQueryFilePathForSegmentedURLCoderVersion0];

    v9 = v8;
    std::string::basic_string[abi:ne200100]<0>(v25, [v8 UTF8String]);
    v10 = +[UCResourceFilePath hostFilePathForSegmentedURLCoderVersion0];

    std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
    std::allocate_shared[abi:ne200100]<UC::SUE::UCSegmentedURLCoderProvider,std::allocator<UC::SUE::UCSegmentedURLCoderProvider>,std::string &,std::string &,std::string &,0>(__p, &v27, v25, &v21);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v11 = operator new(0x18uLL);
    *v25 = v21;
    v21 = 0uLL;
    UC::SUE::SegmentedURLDecoderImpl::SegmentedURLDecoderImpl(v11, v25);
    v22 = v11;
    if (v25[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25[1]);
      v11 = v22;
    }

    v22 = 0;
    std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](&self->_segmentedDecoder, v11);
    std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](&v22, 0);
    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  [(UCAppClipCodeURLDecoder *)self _bitVectorFromData:v0Copy];
  v12 = v25[0];
  v13 = operator new(0x30uLL);
  UC::UCBitStream::UCBitStream(v13, v12);
  __p[0] = v13;
  if (UC::readUntilBeginMarkerFound(v13, v14) && UC::UCBitStream::hasMore(__p[0]))
  {
    UC::SUE::SegmentedURLDecoderImpl::decodeURL(self->_segmentedDecoder.__ptr_, __p[0], &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v27;
    }

    else
    {
      v15 = v27.__r_.__value_.__r.__words[0];
    }

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = 0;
    if (error)
    {
      *error = [(UCAppClipCodeURLDecoder *)self _errorWithCoderErrorCode:1002 message:@"The encoding data is malformed"];
    }
  }

  v18 = __p[0];
  __p[0] = 0;
  if (v18)
  {
    std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](__p, v18);
  }

  v19 = v25[0];
  v25[0] = 0;
  if (v19)
  {
    std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](v25, v19);
  }

  return v17;
}

- (id)_decodeURLWithDataV1:(id)v1 error:(id *)error
{
  v1Copy = v1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UCAppClipCodeURLDecoder _decodeURLWithDataV1:v1Copy error:self];
  }

  v6 = [UCAppClipCodeEnDecUtility perepareData:v1Copy withCodingVersion:self->_codingVersion forCompressionVersion:self->_compressionVersion];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UCAppClipCodeURLDecoder _decodeURLWithDataV1:error:];
  }

  [(UCAppClipCodeURLDecoder *)self _bitVectorFromData:v6];
  v7 = operator new(0x30uLL);
  UC::UCBitStream::UCBitStream(v7, v20);
  v19 = v7;
  ptr = self->_prefixedDecoder.__ptr_;
  if (!ptr)
  {
    v9 = operator new(0x20uLL);
    UC::SUE::PrefixedURLDecoderImpl::PrefixedURLDecoderImpl(v9, self->_codingVersion);
    __p[0] = 0;
    std::unique_ptr<UC::SUE::PrefixedURLEncoderImpl>::reset[abi:ne200100](&self->_prefixedDecoder, v9);
    std::unique_ptr<UC::SUE::PrefixedURLEncoderImpl>::reset[abi:ne200100](__p, 0);
    ptr = self->_prefixedDecoder.__ptr_;
    v7 = v19;
  }

  UC::SUE::PrefixedURLDecoderImpl::decodeURL(ptr, v7, __p);
  if (v18 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UCAppClipCodeURLDecoder _decodeURLWithDataV1:error:];
  }

  v13 = [UCAppClipCodeEnDecUtility prepareURL:v12 withCompressionVersion:self->_compressionVersion forCodingVersion:self->_codingVersion];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UCAppClipCodeURLDecoder _decodeURLWithDataV1:error:];
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](&v19, v14);
  }

  v15 = v20;
  v20 = 0;
  if (v15)
  {
    std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](&v20, v15);
  }

  return v13;
}

- (void)clearCaches
{
  ptr = self->_segmentedDecoder.__ptr_;
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

- (void)initWithCodingVersion:(uint64_t *)a1 .cold.1(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *a2;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)decodeURLWithData:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_decodeURLWithDataV1:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_decodeURLWithDataV1:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_decodeURLWithDataV1:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_decodeURLWithDataV1:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end