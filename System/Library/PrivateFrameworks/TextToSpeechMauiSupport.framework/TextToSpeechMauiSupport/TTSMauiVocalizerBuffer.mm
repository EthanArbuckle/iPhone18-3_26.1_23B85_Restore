@interface TTSMauiVocalizerBuffer
- (TTSMauiVocalizerBuffer)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)computeMarkers:(id)markers;
- (void)fillInOutDataForBuffer:(id *)buffer;
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

- (void)computeMarkers:(id)markers
{
  markersCopy = markers;
  array = [MEMORY[0x277CBEB18] array];
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
        if (markersCopy)
        {
          wordRange = [v11 wordRange];
          v14 = [markersCopy translateRangeInTransformedString:{wordRange, v13}];
          [v11 setWordRange:{v14, v15}];
        }
      }

      [array addObject:v11];

LABEL_12:
      ++v5;
      p_szValue += 7;
    }

    while (self->markerCount > v5);
  }

  [(TTSMauiVocalizerBuffer *)self setMarkers:array];
}

- (void)rawAudioBufferPointer
{
  audioBuffer = [(TTSMauiVocalizerBuffer *)self audioBuffer];
  v3 = *([audioBuffer mutableAudioBufferList] + 16);

  return v3;
}

- (void)reset
{
  audioBuffer = [(TTSMauiVocalizerBuffer *)self audioBuffer];
  [audioBuffer setFrameLength:0];

  [(TTSMauiVocalizerBuffer *)self setMarkers:MEMORY[0x277CBEBF8]];
  self->markerCount = 0;
}

- (void)fillInOutDataForBuffer:(id *)buffer
{
  buffer->var4 = self->markerBuffer;
  buffer->var2 = [(TTSMauiVocalizerBuffer *)self rawAudioBufferPointer];
  buffer->var3 = 1792;
  audioBuffer = [(TTSMauiVocalizerBuffer *)self audioBuffer];
  format = [audioBuffer format];
  v7 = format;
  if (format)
  {
    [format streamDescription];
    v8 = (v9 << 8);
  }

  else
  {
    v8 = 0;
  }

  buffer->var1 = v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TTSMauiVocalizerBuffer);
  memcpy(v4->markerBuffer, self->markerBuffer, 0x708uLL);
  audioBuffer = [(TTSMauiVocalizerBuffer *)self audioBuffer];
  v6 = [audioBuffer copy];
  [(TTSMauiVocalizerBuffer *)v4 setAudioBuffer:v6];

  markers = [(TTSMauiVocalizerBuffer *)self markers];
  [(TTSMauiVocalizerBuffer *)v4 setMarkers:markers];

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