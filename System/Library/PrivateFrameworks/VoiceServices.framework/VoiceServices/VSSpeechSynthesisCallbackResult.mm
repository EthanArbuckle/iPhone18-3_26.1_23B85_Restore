@interface VSSpeechSynthesisCallbackResult
- (AudioStreamBasicDescription)asbd;
- (VSSpeechSynthesisCallbackResult)initWithCallback:(id)a3;
- (id).cxx_construct;
- (id)phonemes;
- (int)synthesisCallback:(int)a3;
- (unint64_t)utf16OffsetFromUTF8:(unint64_t)a3;
- (unint64_t)utf8BytesForChar:(unsigned __int16)a3;
- (void)processMarkerBuffer;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
@end

@implementation VSSpeechSynthesisCallbackResult

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[4].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[4].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[5].mSampleRate;
  return self;
}

- (id)phonemes
{
  v3 = [MEMORY[0x277CBEB18] array];
  begin = self->_phonemeBuffer.__begin_;
  for (i = self->_phonemeBuffer.__end_; begin != i; begin += 3)
  {
    v6 = begin;
    if (*(begin + 23) < 0)
    {
      v6 = *begin;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    [v3 addObject:v7];
  }

  return v3;
}

- (void)processMarkerBuffer
{
  begin = self->_markers.__begin_;
  end = self->_markers.__end_;
  if (begin != end)
  {
    v5 = &begin->markerName[26];
    do
    {
      v10 = *(v5 - 2);
      v11 = *(v5 - 1);
      if (v5[23] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
      }

      else
      {
        __p = *v5;
      }

      if (v10 == 2)
      {
        ++self->_numOfPromptsTriggered;
      }

      else if (!v10)
      {
        v6 = objc_alloc_init(VSSpeechWordTimingInfo);
        [(VSSpeechSynthesisCallbackResult *)self asbd];
        [(VSSpeechWordTimingInfo *)v6 setStartTime:*(&v11 + 1) / v9];
        v7 = [(VSSpeechSynthesisCallbackResult *)self utf16OffsetFromUTF8:*(&v10 + 1)];
        [(VSSpeechWordTimingInfo *)v6 setTextRange:v7, [(VSSpeechSynthesisCallbackResult *)self utf16OffsetFromUTF8:v11 + *(&v10 + 1)]- v7];
        [(NSMutableArray *)self->_wordTimings addObject:v6];
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v5 - 32;
      v5 += 56;
    }

    while (v8 + 56 != end);
  }
}

- (unint64_t)utf16OffsetFromUTF8:(unint64_t)a3
{
  lastUTF8Offset = self->_lastUTF8Offset;
  v6 = lastUTF8Offset > a3;
  if (lastUTF8Offset >= a3)
  {
    while (v6)
    {
      lastUTF16Offset = self->_lastUTF16Offset;
      if (!lastUTF16Offset)
      {
        break;
      }

      text = self->_text;
      self->_lastUTF16Offset = lastUTF16Offset - 1;
      v15 = self->_lastUTF8Offset - [(VSSpeechSynthesisCallbackResult *)self utf8BytesForChar:[(NSString *)text characterAtIndex:?]];
      self->_lastUTF8Offset = v15;
      v6 = v15 > a3;
    }
  }

  else
  {
    v7 = [(NSString *)self->_text length];
    if (self->_lastUTF8Offset < a3)
    {
      v8 = v7;
      do
      {
        v9 = self->_lastUTF16Offset;
        if (v9 >= v8)
        {
          break;
        }

        v10 = self->_text;
        self->_lastUTF16Offset = v9 + 1;
        v11 = self->_lastUTF8Offset + [(VSSpeechSynthesisCallbackResult *)self utf8BytesForChar:[(NSString *)v10 characterAtIndex:?]];
        self->_lastUTF8Offset = v11;
      }

      while (v11 < a3);
    }
  }

  return self->_lastUTF16Offset;
}

- (unint64_t)utf8BytesForChar:(unsigned __int16)a3
{
  v3 = 1;
  v4 = 2;
  if (a3 >= 0x7FFu)
  {
    v4 = 3;
  }

  if (a3 >= 0x7Fu)
  {
    v3 = v4;
  }

  if ((a3 & 0xF800) == 0xD800)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (int)synthesisCallback:(int)a3
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      self->_state = 2;
      if (self->_stopMark == 1)
      {
        begin = self->_markers.__begin_;
        for (i = self->_markers.__end_; begin != i; begin = (begin + 56))
        {
          v13 = *&begin->markerName[10];
          v38 = *&begin->id;
          v39 = v13;
          if (begin->markerName[49] < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *&begin->markerName[26], *&begin->markerName[34]);
          }

          else
          {
            v14 = *&begin->markerName[26];
            __p.__r_.__value_.__r.__words[2] = *&begin->markerName[42];
            *&__p.__r_.__value_.__l.__data_ = v14;
          }

          if (!v38)
          {
            v15 = *(&v39 + 1);
            [(VSSpeechSynthesisCallbackResult *)self asbd];
            v16 = v15 * v37;
            v18 = self->_samples.__begin_;
            end = self->_samples.__end_;
            v19 = (v16 - (end - v18));
            if (v16 <= end - v18)
            {
              if (v16 < end - v18)
              {
                self->_samples.__end_ = &v18[v16];
              }
            }

            else
            {
              if ((self->_samples.__cap_ - end) < v19)
              {
                if ((v16 & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v20 = &v18[v16];
              bzero(end, v19);
              self->_samples.__end_ = v20;
            }

            v21 = self->_markers.__begin_;
            v22 = self->_markers.__end_;
            v23 = 0x6DB6DB6DB6DB6DB7 * ((&v38 - v21) >> 3) + 1;
            v24 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 3);
            v25 = v23 >= v24;
            v26 = v23 - v24;
            if (v26 != 0 && v25)
            {
              cap = self->_markers.__cap_;
              if (0x6DB6DB6DB6DB6DB7 * ((cap - v22) >> 3) < v26)
              {
                if (v23 <= 0x492492492492492)
                {
                  v28 = 0x6DB6DB6DB6DB6DB7 * ((cap - v21) >> 3);
                  v29 = 2 * v28;
                  if (2 * v28 <= v23)
                  {
                    v29 = v23;
                  }

                  if (v28 >= 0x249249249249249)
                  {
                    v30 = 0x492492492492492;
                  }

                  else
                  {
                    v30 = v29;
                  }

                  if (v30 <= 0x492492492492492)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v32 = (v22 + 56 * v26);
              do
              {
                *&v22->markerName[42] = 0;
                *&v22->markerName[10] = 0uLL;
                *&v22->markerName[26] = 0uLL;
                *&v22->id = 0uLL;
                v22->markerName[49] = 1;
                v22 = (v22 + 56);
              }

              while (v22 != v32);
              self->_markers.__end_ = v32;
            }

            else if (!v25)
            {
              v31 = (v21 + 56 * v23);
              while (v22 != v31)
              {
                if (v22[-1].markerName[255] < 0)
                {
                  operator delete(*&v22[-1].markerName[232]);
                }

                v22 = (v22 - 56);
              }

              self->_markers.__end_ = v31;
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v33 = (*(self->_callback + 2))();
      error = self->_error;
      self->_error = v33;

      v35 = self->_samples.__end_ - self->_samples.__begin_;
      [(VSSpeechSynthesisCallbackResult *)self asbd];
      self->_samplesProcessed += v35 / DWORD2(v39);
      self->_samples.__end_ = self->_samples.__begin_;
    }

    else if (a3 == 5)
    {
      [(VSSpeechSynthesisCallbackResult *)self processMarkerBuffer];
      std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](&self->_markers);
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      self->_state = 3;
      callback = self->_callback;
      v5 = (*(self->_callback + 2))();
      v6 = self->_error;
      self->_error = v5;

      v7 = self->_callback;
      self->_callback = 0;
    }
  }

  else
  {
    self->_state = 1;
    self->_lastUTF8Offset = 0;
    self->_lastUTF16Offset = 0;
    self->_samplesProcessed = 0;
    v8 = self->_callback;
    v9 = (*(self->_callback + 2))();
    v10 = self->_error;
    self->_error = v9;

    [(NSMutableArray *)self->_wordTimings removeAllObjects];
  }

  return self->_error != 0;
}

- (VSSpeechSynthesisCallbackResult)initWithCallback:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VSSpeechSynthesisCallbackResult;
  v5 = [(VSSpeechSynthesisCallbackResult *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x2743CEF70](v4);
    callback = v5->_callback;
    v5->_callback = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    wordTimings = v5->_wordTimings;
    v5->_wordTimings = v8;
  }

  return v5;
}

@end