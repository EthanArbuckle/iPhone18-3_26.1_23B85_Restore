@interface MotionEncoderWrapper
- (MotionEncoderWrapper)initWithAttributeCount:(unsigned int)a3 componentCount:(unsigned int)a4 quantization:(unsigned int)a5;
- (id).cxx_construct;
- (id)motionEncoderWrapperLogSharedInstance;
- (unint64_t)encodeFrameInternal:(const int *)a3 outputEncodedBuffer:(char *)a4 outputBufferLength:(unint64_t)a5 type:(unint64_t *)a6 encodeError:(unint64_t *)a7;
- (void)dealloc;
@end

@implementation MotionEncoderWrapper

- (id)motionEncoderWrapperLogSharedInstance
{
  if ([MotionEncoderWrapper motionEncoderWrapperLogSharedInstance]::onceToken != -1)
  {
    [MotionEncoderWrapper motionEncoderWrapperLogSharedInstance];
  }

  v3 = [MotionEncoderWrapper motionEncoderWrapperLogSharedInstance]::sharedInstance;

  return v3;
}

void __61__MotionEncoderWrapper_motionEncoderWrapperLogSharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.signalcompression", "motionEncoderWrapper");
  v1 = [MotionEncoderWrapper motionEncoderWrapperLogSharedInstance]::sharedInstance;
  [MotionEncoderWrapper motionEncoderWrapperLogSharedInstance]::sharedInstance = v0;
}

- (MotionEncoderWrapper)initWithAttributeCount:(unsigned int)a3 componentCount:(unsigned int)a4 quantization:(unsigned int)a5
{
  v5 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = MotionEncoderWrapper;
  v8 = [(MotionEncoderWrapper *)&v35 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_31;
  }

  v8->_componentsPerAttribute = a4;
  v8->_attributeCount = a3;
  v8->_quantization = v5;
  v10 = operator new(8uLL);
  gcl::motion::Encoder::Encoder(v10);
  v9->encoder = v10;
  *&v9->_intraFramePeriod = 2;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, 8uLL);
  v11 = gcl::motion::Encoder::encodeSequenceParameterSet(v9->encoder, v9->_attributeCount, v9->_componentsPerAttribute, __p, v33 - __p, &v9->encParametersLength);
  if (v11)
  {
    v12 = [(MotionEncoderWrapper *)v9 motionEncoderWrapperLogSharedInstance];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MotionEncoderWrapper initWithAttributeCount:v12 componentCount:? quantization:?];
    }

    encoder = v9->encoder;
    if (encoder)
    {
      gcl::motion::Encoder::~Encoder(encoder);
      operator delete(v14);
    }
  }

  else
  {
    v15 = v33;
    if (v33 >= v34)
    {
      v17 = __p;
      v18 = v33 - __p;
      v19 = v33 - __p + 1;
      if (v19 < 0)
      {
        std::vector<gcl::ArithmeticContext>::__throw_length_error[abi:ne200100]();
      }

      v20 = v34 - __p;
      if (2 * (v34 - __p) > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        v22 = operator new(v21);
      }

      else
      {
        v22 = 0;
      }

      v22[v18] = v5;
      v16 = &v22[v18 + 1];
      memcpy(v22, v17, v18);
      __p = v22;
      v33 = v16;
      v34 = &v22[v21];
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v33 = v5;
      v16 = (v15 + 1);
    }

    v33 = v16;
    ++v9->encParametersLength;
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:?];
    encoderParamsData = v9->_encoderParamsData;
    v9->_encoderParamsData = v23;

    v25 = gcl::motion::Encoder::estimateMaxEncodedFrameSize(v9->_attributeCount, v9->_componentsPerAttribute);
    begin = v9->_bitstream.__begin_;
    v9->estimatedEncodedFrameSizeInBytes = v25;
    v27 = v9->_bitstream.__end_ - begin;
    if (v25 <= v27)
    {
      if (v25 < v27)
      {
        v9->_bitstream.__end_ = &begin[v25];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&v9->_bitstream, v25 - v27);
    }

    v28 = [(MotionEncoderWrapper *)v9 motionEncoderWrapperLogSharedInstance];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v37 = 0;
      v38 = 1024;
      v39 = 3;
      v40 = 1024;
      v41 = 0;
      _os_log_impl(&dword_26606F000, v28, OS_LOG_TYPE_DEFAULT, "Local Encoder version is %d %d %d", buf, 0x14u);
    }
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v29 = 0;
  }

  else
  {
LABEL_31:
    v29 = v9;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)dealloc
{
  encoder = self->encoder;
  if (encoder)
  {
    gcl::motion::Encoder::~Encoder(encoder);
    operator delete(v4);
  }

  v5.receiver = self;
  v5.super_class = MotionEncoderWrapper;
  [(MotionEncoderWrapper *)&v5 dealloc];
}

- (unint64_t)encodeFrameInternal:(const int *)a3 outputEncodedBuffer:(char *)a4 outputBufferLength:(unint64_t)a5 type:(unint64_t *)a6 encodeError:(unint64_t *)a7
{
  if (!a3)
  {
    *a7 = 1;
    v13 = [(MotionEncoderWrapper *)self motionEncoderWrapperLogSharedInstance:0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MotionEncoderWrapper encodeFrameInternal:v13 outputEncodedBuffer:? outputBufferLength:? type:? encodeError:?];
    }

    goto LABEL_8;
  }

  if (!a4 || (componentsPerAttribute = self->_componentsPerAttribute, attributeCount = self->_attributeCount, a5 < 4 * attributeCount * componentsPerAttribute))
  {
    *a7 = 1;
    v13 = [(MotionEncoderWrapper *)self motionEncoderWrapperLogSharedInstance];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MotionEncoderWrapper encodeFrameInternal:a4 outputEncodedBuffer:a5 outputBufferLength:v13 type:? encodeError:?];
    }

LABEL_8:

    return 0;
  }

  __p = 0;
  v28 = 0;
  v29 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[componentsPerAttribute * attributeCount], componentsPerAttribute * attributeCount);
  if (*a6 == 1)
  {
    LODWORD(v19) = 1;
  }

  else if (*a6 == 2)
  {
    frameCount = self->_frameCount;
    v19 = frameCount % self->_intraFramePeriod != 0;
    *a6 = v19;
    self->_frameCount = frameCount + 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v23 = 0;
  v26 = 0;
  v24 = 257;
  quantization = self->_quantization;
  v22 = 0;
  v20 = gcl::motion::Encoder::encodeFrame(self->encoder, a3, v19, a4, a5, &v22, &v23);
  if (v20)
  {
    *a7 = 2;
    v21 = [(MotionEncoderWrapper *)self motionEncoderWrapperLogSharedInstance];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MotionEncoderWrapper encodeFrameInternal:v20 outputEncodedBuffer:v21 outputBufferLength:? type:? encodeError:?];
    }

    v14 = 0;
  }

  else
  {
    v14 = v22;
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v14;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)encodeFrameInternal:(int)a1 outputEncodedBuffer:(NSObject *)a2 outputBufferLength:type:encodeError:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_26606F000, a2, OS_LOG_TYPE_ERROR, "Error cannot compress inputs %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)encodeFrameInternal:(os_log_t)log outputEncodedBuffer:outputBufferLength:type:encodeError:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_26606F000, log, OS_LOG_TYPE_ERROR, "Error outbuffer %p is invalid %zu", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end