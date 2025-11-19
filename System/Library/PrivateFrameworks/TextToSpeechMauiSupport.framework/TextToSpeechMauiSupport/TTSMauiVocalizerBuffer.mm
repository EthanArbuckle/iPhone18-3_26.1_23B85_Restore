@interface TTSMauiVocalizerBuffer
- (TTSMauiVocalizerBuffer)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)computeMarkers:(id)a3;
- (void)fillInOutDataForBuffer:(id *)a3;
- (void)rawAudioBufferPointer;
- (void)reset;
@end

@implementation TTSMauiVocalizerBuffer

- (TTSMauiVocalizerBuffer)init
{
  v11.receiver = self;
  v11.super_class = TTSMauiVocalizerBuffer;
  v2 = [(TTSMauiVocalizerBuffer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    markers = v2->_markers;
    v2->_markers = MEMORY[0x277CBEBF8];

    v5 = objc_alloc(MEMORY[0x277D703D8]);
    v9[0] = kMauiAudioFormat;
    v9[1] = unk_26ECC72B8;
    v10 = 16;
    v6 = [objc_alloc(MEMORY[0x277D703E0]) initWithStreamDescription:v9];
    v7 = [v5 initWithFormat:v6 frameCapacity:256];
    [(TTSMauiVocalizerBuffer *)v3 setAudioBuffer:v7];
  }

  return v3;
}

- (void)computeMarkers:(id)a3
{
  v18 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if (self->markerCount)
  {
    v5 = 0;
    p_szValue = &self->markerBuffer[0].szValue;
    do
    {
      v7 = *(p_szValue - 12);
      if (v7 == 8)
      {
        v16 = *p_szValue;
        v11 = objc_alloc_init(MEMORY[0x277D703E8]);
        v17 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        [v11 setName:v17];
      }

      else
      {
        v8 = *(p_szValue - 4);
        if (v7 != 2 || v8 == 0)
        {
          goto LABEL_12;
        }

        v10 = *(p_szValue - 5);
        v11 = objc_alloc_init(MEMORY[0x277D70430]);
        [v11 setWordRange:{v10 >> 1, v8 >> 1}];
        if (v18)
        {
          v12 = [v11 wordRange];
          v14 = [v18 translateRangeInTransformedString:{v12, v13}];
          [v11 setWordRange:{v14, v15}];
        }
      }

      [v4 addObject:v11];

LABEL_12:
      ++v5;
      p_szValue += 7;
    }

    while (self->markerCount > v5);
  }

  [(TTSMauiVocalizerBuffer *)self setMarkers:v4];
}

- (void)rawAudioBufferPointer
{
  v2 = [(TTSMauiVocalizerBuffer *)self audioBuffer];
  v3 = *([v2 mutableAudioBufferList] + 16);

  return v3;
}

- (void)reset
{
  v3 = [(TTSMauiVocalizerBuffer *)self audioBuffer];
  [v3 setFrameLength:0];

  [(TTSMauiVocalizerBuffer *)self setMarkers:MEMORY[0x277CBEBF8]];
  self->markerCount = 0;
}

- (void)fillInOutDataForBuffer:(id *)a3
{
  a3->var4 = self->markerBuffer;
  a3->var2 = [(TTSMauiVocalizerBuffer *)self rawAudioBufferPointer];
  a3->var3 = 1792;
  v5 = [(TTSMauiVocalizerBuffer *)self audioBuffer];
  v6 = [v5 format];
  v7 = v6;
  if (v6)
  {
    [v6 streamDescription];
    v8 = (v9 << 8);
  }

  else
  {
    v8 = 0;
  }

  a3->var1 = v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TTSMauiVocalizerBuffer);
  memcpy(v4->markerBuffer, self->markerBuffer, 0x708uLL);
  v5 = [(TTSMauiVocalizerBuffer *)self audioBuffer];
  v6 = [v5 copy];
  [(TTSMauiVocalizerBuffer *)v4 setAudioBuffer:v6];

  v7 = [(TTSMauiVocalizerBuffer *)self markers];
  [(TTSMauiVocalizerBuffer *)v4 setMarkers:v7];

  markerCount = v4->markerCount;
  if (markerCount)
  {
    v9 = 0;
    p_szValue = &v4->markerBuffer[0].szValue;
    v11 = &self->markerBuffer[0].szValue;
    do
    {
      if (*v11)
      {
        v12 = strlen(*v11);
        v13 = malloc_type_calloc(v12, 1uLL, 0x100004077774924uLL);
        *p_szValue = v13;
        strncpy(v13, *v11, v12);
        markerCount = v4->markerCount;
      }

      ++v9;
      p_szValue += 7;
      v11 += 7;
    }

    while (markerCount > v9);
  }

  return v4;
}

@end