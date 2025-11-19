@interface VTAudioCircularBuffer
- (VTAudioCircularBuffer)initWithNumChannels:(unint64_t)a3 recordingDuration:(unint64_t)a4 samplingRate:(unint64_t)a5;
- (id)copyBufferWithNumSamplesCopiedIn:(unint64_t *)a3;
- (id)copySamplesFrom:(unint64_t)a3 to:(unint64_t)a4 withNumSamplesCopiedIn:(unint64_t *)a5;
- (void)addSamples:(void *)a3 numSamples:(unint64_t)a4;
- (void)reset;
- (void)saveRecordingBufferFrom:(unint64_t)a3 to:(unint64_t)a4 toURL:(id)a5;
@end

@implementation VTAudioCircularBuffer

- (void)saveRecordingBufferFrom:(unint64_t)a3 to:(unint64_t)a4 toURL:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349570;
    *&buf[4] = a3;
    *&buf[12] = 2050;
    *&buf[14] = a4;
    *&buf[22] = 2114;
    *&v23 = v8;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "saveRecordingBufferFrom: %{public}lu to: %{public}lu toURL: %{public}@", buf, 0x20u);
  }

  v10 = *(self->_vtAudioCircularBufferImpl.__ptr_ + 2);
  v11 = [AudioFileWriter alloc];
  *buf = v10;
  *&buf[8] = xmmword_223B13210;
  v23 = xmmword_223B13220;
  v19 = v10;
  v20 = xmmword_223B13210;
  v21 = xmmword_223B13220;
  v12 = [(AudioFileWriter *)v11 initWithURL:v8 inputFormat:buf outputFormat:&v19];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__VTAudioCircularBuffer_saveRecordingBufferFrom_to_toURL___block_invoke;
  block[3] = &unk_2784EC3C0;
  v17 = a3;
  v18 = a4;
  block[4] = self;
  v16 = v12;
  v14 = v12;
  dispatch_sync(queue, block);
}

uint64_t __58__VTAudioCircularBuffer_saveRecordingBufferFrom_to_toURL___block_invoke(uint64_t a1)
{
  v90[19] = *MEMORY[0x277D85DE8];
  v79[6] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  v79[0] = MEMORY[0x277D82890] + 104;
  v3 = MEMORY[0x277D82890] + 64;
  v70 = MEMORY[0x277D82890] + 64;
  v4 = MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 24);
  v69[0] = *(MEMORY[0x277D82818] + 16);
  *(v69 + *(v69[0] - 24)) = v5;
  v69[1] = 0;
  v6 = (v69 + *(v69[0] - 24));
  std::ios_base::init(v6, &v71);
  v7 = MEMORY[0x277D82890] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v8 = v4[5];
  v70 = v4[4];
  *(&v70 + *(v70 - 24)) = v8;
  v69[0] = v4[1];
  *(v69 + *(v69[0] - 24)) = v4[6];
  v79[0] = v2;
  v69[0] = v7;
  v9 = MEMORY[0x277D82868] + 16;
  v70 = v3;
  v71 = MEMORY[0x277D82868] + 16;
  MEMORY[0x223DF1C90](&v72);
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v65 = MEMORY[0x277D82878] + 16;
  v71 = MEMORY[0x277D82878] + 16;
  *v76 = 0u;
  v77 = 0u;
  v78 = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v71);
  v10 = *(*(a1 + 32) + 8);
  v90[6] = 0;
  v11 = MEMORY[0x277D828A0] + 64;
  v90[0] = MEMORY[0x277D828A0] + 64;
  v12 = *(MEMORY[0x277D82828] + 16);
  *buf = *(MEMORY[0x277D82828] + 8);
  *&buf[*(*buf - 24)] = v12;
  v13 = &buf[*(*buf - 24)];
  std::ios_base::init(v13, &buf[8]);
  v14 = MEMORY[0x277D828A0] + 24;
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  *buf = v14;
  v90[0] = v11;
  v67 = MEMORY[0x277D82868] + 16;
  *&buf[8] = MEMORY[0x277D82868] + 16;
  MEMORY[0x223DF1C90](&buf[16]);
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v66 = MEMORY[0x277D82878] + 16;
  *&buf[8] = MEMORY[0x277D82878] + 16;
  __p = 0u;
  v88 = 0u;
  v89 = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&buf[8]);
  v68 = a1;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "{\n  mNumChannels: ", 18);
  v15 = MEMORY[0x223DF1C70](buf, *v10);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n  mRecordingDurationInSecs: ", 29);
  v17 = MEMORY[0x223DF1C70](v16, v10[1]);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n  mSampleRate: ", 16);
  v19 = MEMORY[0x223DF1C70](v18, v10[2]);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n  mBytesPerSample: ", 20);
  v21 = MEMORY[0x223DF1C70](v20, 2);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n  mBufferLengthInSamples: ", 27);
  v23 = MEMORY[0x223DF1C70](v22, v10[3]);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n  mNextWritePos: ", 18);
  v25 = MEMORY[0x223DF1C70](v24, v10[4]);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n  mSamplesCount: ", 18);
  v27 = MEMORY[0x223DF1C70](v26, v10[5]);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n  mMemoryPool(", 15);
  v29 = MEMORY[0x223DF1C60](v28, v10[6]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "): [", 4);
  if (*v10)
  {
    v30 = 0;
    do
    {
      v31 = *(v10[7] + 8 * v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n    chan-", 10);
      v32 = MEMORY[0x223DF1C70](buf, v30);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 2);
      v34 = MEMORY[0x223DF1C60](v33, v31);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ": sz=", 5);
      v36 = MEMORY[0x223DF1C70](v35, v10[3]);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ": mem-sz: ", 10);
      MEMORY[0x223DF1C70](v37, 2 * v10[3]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n", 1);
      ++v30;
    }

    while (v30 < *v10);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n ]\n}\n", 6);
  v38 = MEMORY[0x277D82818];
  if ((v89 & 0x10) != 0)
  {
    v40 = *(&v88 + 1);
    if (*(&v88 + 1) < v86)
    {
      *(&v88 + 1) = v86;
      v40 = v86;
    }

    v41 = &v85 + 1;
  }

  else
  {
    if ((v89 & 8) == 0)
    {
      v39 = 0;
      v81 = 0;
      goto LABEL_17;
    }

    v41 = &v84;
    v40 = v85;
  }

  v42 = *v41;
  v39 = v40 - *v41;
  if (v39 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v81 = v40 - *v41;
  if (v39)
  {
    memmove(__dst, v42, v39);
  }

LABEL_17:
  *(__dst + v39) = 0;
  if ((v81 & 0x80u) == 0)
  {
    v43 = __dst;
  }

  else
  {
    v43 = __dst[0];
  }

  if ((v81 & 0x80u) == 0)
  {
    v44 = v81;
  }

  else
  {
    v44 = __dst[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, v43, v44);
  v45 = MEMORY[0x277D82828];
  if (v81 < 0)
  {
    operator delete(__dst[0]);
  }

  *buf = *v45;
  *&buf[*(*buf - 24)] = v45[3];
  *&buf[8] = v66;
  if (SBYTE7(v88) < 0)
  {
    operator delete(__p);
  }

  *&buf[8] = v67;
  std::locale::~locale(&buf[16]);
  std::ostream::~ostream();
  MEMORY[0x223DF1CE0](v90);
  v46 = MEMORY[0x277CCACA8];
  if ((v78 & 0x10) != 0)
  {
    v48 = *(&v77 + 1);
    if (*(&v77 + 1) < v75)
    {
      *(&v77 + 1) = v75;
      v48 = v75;
    }

    v49 = &v74 + 1;
  }

  else
  {
    if ((v78 & 8) == 0)
    {
      v47 = 0;
      HIBYTE(v83) = 0;
      goto LABEL_40;
    }

    v49 = &v73;
    v48 = v74;
  }

  v50 = *v49;
  v47 = v48 - *v49;
  if (v47 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v47 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v83) = v48 - *v49;
  if (v47)
  {
    memmove(buf, v50, v47);
  }

LABEL_40:
  buf[v47] = 0;
  if (v83 >= 0)
  {
    v51 = buf;
  }

  else
  {
    v51 = *buf;
  }

  v52 = [v46 stringWithCString:v51 encoding:4];
  if (SHIBYTE(v83) < 0)
  {
    operator delete(*buf);
  }

  v53 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v52;
    _os_log_impl(&dword_223A31000, v53, OS_LOG_TYPE_DEFAULT, "csrb: %{public}@", buf, 0xCu);
  }

  voicetrigger::VTAudioCircularBufferImpl<unsigned short>::copySamples(__dst, *(*(v68 + 32) + 8), *(v68 + 48), *(v68 + 56));
  v54 = __dst[0];
  v55 = VTLogContextFacilityVoiceTrigger;
  if (__dst[0])
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v56 = *(*(v68 + 32) + 8);
      v57 = *(v56 + 40);
      v60 = v56 + 16;
      v58 = *(v56 + 16);
      v59 = *(v60 + 8);
      *buf = 134349568;
      *&buf[4] = v59;
      *&buf[12] = 2050;
      *&buf[14] = v57;
      v83 = 2050;
      *&v84 = v58;
      _os_log_impl(&dword_223A31000, v55, OS_LOG_TYPE_DEFAULT, "mBufferLen:  %{public}lu, samplesCount=%{public}lu, sampleRate=%{public}lu", buf, 0x20u);
    }

    [*(v68 + 40) addSamples:v54 len:*(v68 + 56) - *(v68 + 48)];
    [*(v68 + 40) close];
    MEMORY[0x223DF1D00](v54, 0x1000C80BDFB0063);
  }

  else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v63 = *(v68 + 48);
    v64 = *(v68 + 56);
    *buf = 134349312;
    *&buf[4] = v63;
    *&buf[12] = 2050;
    *&buf[14] = v64;
    _os_log_error_impl(&dword_223A31000, v55, OS_LOG_TYPE_ERROR, "Invalid request: (%{public}lu, %{public}lu): noting to write to file", buf, 0x16u);
  }

  v69[0] = *v38;
  v61 = v38[9];
  *(v69 + *(v69[0] - 24)) = v38[8];
  v70 = v61;
  v71 = v65;
  if (SBYTE7(v77) < 0)
  {
    operator delete(v76[0]);
  }

  v71 = v9;
  std::locale::~locale(&v72);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DF1CE0](v79);
}

- (void)reset
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "VTAudioCircularBuffer.reset", v5, 2u);
  }

  ptr = self->_vtAudioCircularBufferImpl.__ptr_;
  ptr[4] = 0;
  ptr[5] = 0;
}

- (id)copyBufferWithNumSamplesCopiedIn:(unint64_t *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  ptr = self->_vtAudioCircularBufferImpl.__ptr_;
  v6 = ptr[5];
  v7 = ptr[3];
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a3;
    v14 = 134349568;
    v15 = v10;
    v16 = 2050;
    v17 = v6;
    v18 = 2050;
    v19 = v12;
    _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "copyBuffer: oldestSample: %{public}lu latestSample: %{public}lu, numSamplesCopied: %{public}lu", &v14, 0x20u);
  }

  return [(VTAudioCircularBuffer *)self copySamplesFrom:v10 to:v6 withNumSamplesCopiedIn:a3];
}

- (id)copySamplesFrom:(unint64_t)a3 to:(unint64_t)a4 withNumSamplesCopiedIn:(unint64_t *)a5
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__VTAudioCircularBuffer_copySamplesFrom_to_withNumSamplesCopiedIn___block_invoke;
  block[3] = &unk_2784EC398;
  block[6] = a3;
  block[7] = a4;
  block[4] = self;
  block[5] = &v9;
  block[8] = a5;
  dispatch_sync(queue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __67__VTAudioCircularBuffer_copySamplesFrom_to_withNumSamplesCopiedIn___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  voicetrigger::VTAudioCircularBufferImpl<unsigned short>::copySamples(&v13, *(*(a1 + 32) + 8), *(a1 + 48), *(a1 + 56));
  v2 = v13;
  if (v13)
  {
    v3 = *(a1 + 56) - *(a1 + 48);
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:2 * **(*(a1 + 32) + 8) * v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    **(a1 + 64) = v3;
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *buf = 134349568;
      v15 = v8;
      v16 = 2050;
      v17 = v9;
      v18 = 2050;
      v19 = v3;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "copyFrom: %{public}lu to: %{public}lu, retSampleCount: %{public}lu", buf, 0x20u);
    }

    MEMORY[0x223DF1D00](v2, 0x1000C80BDFB0063);
  }

  else
  {
    v10 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      *buf = 134349312;
      v15 = v11;
      v16 = 2050;
      v17 = v12;
      _os_log_error_impl(&dword_223A31000, v10, OS_LOG_TYPE_ERROR, "Could not copyFrom:%{public}lu to: %{public}lu", buf, 0x16u);
    }

    **(a1 + 64) = 0;
  }
}

- (void)addSamples:(void *)a3 numSamples:(unint64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VTAudioCircularBuffer_addSamples_numSamples___block_invoke;
  block[3] = &unk_2784EC370;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(queue, block);
}

void *__47__VTAudioCircularBuffer_addSamples_numSamples___block_invoke(void *result)
{
  v1 = *(result[4] + 8);
  v2 = result[6];
  v3 = v1[3];
  if (*v1)
  {
    v4 = result[5];
    v5 = 2 * v2;
    v18 = v2 - v3;
    v21 = *(result[4] + 8);
    if (v2 >= v3)
    {
      v13 = 0;
      v14 = &v4[v5];
      v15 = result[5];
      v20 = result[6];
      do
      {
        v16 = v1[4];
        v17 = *(v1[7] + 8 * v13);
        if (v3 - v16 < v2)
        {
          v10 = (v16 + v18) % v3;
          v19 = &v4[2 * v13 * v2 + 2 * v18];
          memcpy(&v17[2 * v10], &v14[-2 * v3], 2 * (v3 - v10));
          result = memcpy(v17, (v19 + 2 * (v3 - v10)), 2 * v10);
          v2 = v20;
        }

        else
        {
          result = memcpy(&v17[2 * v16], v15, v5);
          v2 = v20;
          v10 = v16 + v20;
        }

        ++v13;
        v1 = v21;
        v14 += v5;
        v15 += v5;
      }

      while (v13 < *v21);
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = v1[4];
        v8 = *(v1[7] + 8 * v6);
        v9 = &v8[2 * v7];
        v10 = v2 - (v3 - v7);
        v11 = v2;
        if (v2 > v3 - v7)
        {
          memcpy(v9, v4, 2 * (v3 - v7));
          result = memcpy(v8, &v4[2 * v3 - 2 * v7], 2 * v10);
        }

        else
        {
          result = memcpy(v9, v4, v5);
          v10 = v7 + v11;
        }

        v2 = v11;
        ++v6;
        v1 = v21;
        v4 += v5;
      }

      while (v6 < *v21);
    }
  }

  else
  {
    v10 = v1[4];
  }

  v12 = v1[5] + v2;
  v1[4] = v10 % v3;
  v1[5] = v12;
  return result;
}

- (VTAudioCircularBuffer)initWithNumChannels:(unint64_t)a3 recordingDuration:(unint64_t)a4 samplingRate:(unint64_t)a5
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = VTAudioCircularBuffer;
  if ([(VTAudioCircularBuffer *)&v6 init])
  {
    operator new();
  }

  return 0;
}

@end