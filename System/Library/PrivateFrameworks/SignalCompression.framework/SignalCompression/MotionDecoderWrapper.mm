@interface MotionDecoderWrapper
- (MotionDecoderWrapper)initWithEncoderSeqParams:(id)params;
- (char)getPointerToDataBuffer:(id)buffer;
- (id).cxx_construct;
- (id)motionDecoderWrapperLogSharedInstance;
- (int)decodeFrameInternal:(id)internal decodedFrame:(int *)frame decodeError:(unint64_t *)error;
- (void)dealloc;
@end

@implementation MotionDecoderWrapper

- (id)motionDecoderWrapperLogSharedInstance
{
  if ([MotionDecoderWrapper motionDecoderWrapperLogSharedInstance]::onceToken != -1)
  {
    [MotionDecoderWrapper motionDecoderWrapperLogSharedInstance];
  }

  v3 = [MotionDecoderWrapper motionDecoderWrapperLogSharedInstance]::sharedInstance;

  return v3;
}

void __61__MotionDecoderWrapper_motionDecoderWrapperLogSharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.signalcompression", "motionDecoderWrapper");
  v1 = [MotionDecoderWrapper motionDecoderWrapperLogSharedInstance]::sharedInstance;
  [MotionDecoderWrapper motionDecoderWrapperLogSharedInstance]::sharedInstance = v0;
}

- (char)getPointerToDataBuffer:(id)buffer
{
  bufferCopy = buffer;

  return [bufferCopy bytes];
}

- (MotionDecoderWrapper)initWithEncoderSeqParams:(id)params
{
  v34 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v21.receiver = self;
  v21.super_class = MotionDecoderWrapper;
  v5 = [(MotionDecoderWrapper *)&v21 init];
  if (v5)
  {
    v6 = operator new(8uLL);
    gcl::motion::Decoder::Decoder(v6);
    *(v5 + 1) = v6;
    v7 = [v5 getPointerToDataBuffer:paramsCopy];
    v8 = [paramsCopy length];
    __p = 0;
    v19 = 0;
    v20 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v7, v7 + v8, v8);
    v17 = 0;
    gcl::motion::Decoder::decodeSequenceParameterSet(*(v5 + 1), __p, [paramsCopy length], &v17, (v5 + 32));
    v9 = *(v5 + 5);
    *&v10 = v9;
    *(&v10 + 1) = SHIDWORD(v9);
    *(v5 + 1) = v10;
    motionDecoderWrapperLogSharedInstance = [v5 motionDecoderWrapperLogSharedInstance];
    if (os_log_type_enabled(motionDecoderWrapperLogSharedInstance, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v5[36];
      v13 = v5[37];
      v14 = *(v5 + 19);
      *buf = 67110400;
      v23 = v12;
      v24 = 1024;
      v25 = v13;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      v29 = 0;
      v30 = 1024;
      v31 = 3;
      v32 = 1024;
      v33 = 0;
      _os_log_impl(&dword_26606F000, motionDecoderWrapperLogSharedInstance, OS_LOG_TYPE_DEFAULT, "Remote Encoder version is %d %d %d, Local Encoder version is %d %d %d", buf, 0x26u);
    }

    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  decoder = self->decoder;
  if (decoder)
  {
    gcl::motion::Decoder::~Decoder(decoder);
    operator delete(v4);
  }

  v5.receiver = self;
  v5.super_class = MotionDecoderWrapper;
  [(MotionDecoderWrapper *)&v5 dealloc];
}

- (int)decodeFrameInternal:(id)internal decodedFrame:(int *)frame decodeError:(unint64_t *)error
{
  v42 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  v9 = [internalCopy length];
  v29 = 0;
  if (!v9)
  {
    v14 = 0;
    *error = 4;
    goto LABEL_12;
  }

  v10 = [(MotionDecoderWrapper *)self getPointerToDataBuffer:internalCopy];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v26, v10, &v10[v9], v9);
  std::vector<int>::vector[abi:ne200100](&__p, self->_componentsPerAttribute * self->_attributeCount);
  v11 = gcl::motion::Decoder::decodeFrame(self->decoder, v26, v9, &v29, __p);
  v12 = v11;
  if (v11)
  {
    *error = 5;
    if (v11 == 7)
    {
      *error = 6;
    }

    else if (v11 == 11)
    {
      *error = 7;
      motionDecoderWrapperLogSharedInstance = [(MotionDecoderWrapper *)self motionDecoderWrapperLogSharedInstance];
      if (os_log_type_enabled(motionDecoderWrapperLogSharedInstance, OS_LOG_TYPE_ERROR))
      {
        [MotionDecoderWrapper decodeFrameInternal:motionDecoderWrapperLogSharedInstance decodedFrame:? decodeError:?];
      }
    }

    motionDecoderWrapperLogSharedInstance2 = [(MotionDecoderWrapper *)self motionDecoderWrapperLogSharedInstance];
    if (os_log_type_enabled(motionDecoderWrapperLogSharedInstance2, OS_LOG_TYPE_ERROR))
    {
      CurrentFrameNumber = gcl::motion::Decoder::getCurrentFrameNumber(self->decoder);
      v19 = gcl::motion::Decoder::getlastDecodedFrameNumber(self->decoder);
      CurrentFrameQP = gcl::motion::Decoder::getCurrentFrameQP(self->decoder);
      CurrentFramePayloadLength = gcl::motion::Decoder::getCurrentFramePayloadLength(self->decoder);
      CurrentFrameFlags = gcl::motion::Decoder::getCurrentFrameFlags(self->decoder);
      *buf = 67110400;
      v31 = v12;
      v32 = 1024;
      v33 = CurrentFrameNumber;
      v34 = 1024;
      v35 = v19;
      v36 = 1024;
      v37 = CurrentFrameQP;
      v38 = 1024;
      v39 = CurrentFramePayloadLength;
      v40 = 1024;
      v41 = CurrentFrameFlags;
      _os_log_error_impl(&dword_26606F000, motionDecoderWrapperLogSharedInstance2, OS_LOG_TYPE_ERROR, "Failed to decode with error %d c:%d p:%d q:%d l:%d f:%d", buf, 0x26u);
    }

    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = __p;
    if (v25 != __p)
    {
      memmove(frame, __p, v25 - __p);
    }

    v14 = v29;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v25 = v15;
  operator delete(v15);
LABEL_9:
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 45) = 0;
  return self;
}

- (void)decodeFrameInternal:(uint64_t)a1 decodedFrame:(NSObject *)a2 decodeError:.cold.1(uint64_t a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 36);
  v3 = *(a1 + 37);
  v4 = *(a1 + 38);
  v6[0] = 67110400;
  v6[1] = v2;
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  v11 = 1024;
  v12 = 0;
  v13 = 1024;
  v14 = 3;
  v15 = 1024;
  v16 = 0;
  _os_log_error_impl(&dword_26606F000, a2, OS_LOG_TYPE_ERROR, "Remote Encoder version is %d %d %d, Local Encoder version is %d %d %d", v6, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

@end