@interface SiriTTSOspreyStreamingPartialResponse
+ (void)processServerLogs:(id)a3;
- (AudioStreamBasicDescription)asbd;
- (SiriTTSOspreyStreamingPartialResponse)initWithOspreyPartialResponse:(id)a3;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
@end

@implementation SiriTTSOspreyStreamingPartialResponse

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
  v3 = *&self[1].mSampleRate;
  *&retstr->mSampleRate = *&self->mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerPacket;
  return self;
}

- (SiriTTSOspreyStreamingPartialResponse)initWithOspreyPartialResponse:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SiriTTSOspreyStreamingPartialResponse;
  v5 = [(SiriTTSOspreyStreamingPartialResponse *)&v25 init];
  if (v5)
  {
    v6 = [v4 audio];
    audioData = v5->_audioData;
    v5->_audioData = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v4;
    v9 = [v4 word_timing_info];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = objc_alloc_init(SiriTTSOspreyWordTimingInfo);
          -[SiriTTSOspreyWordTimingInfo setTextRange:](v15, "setTextRange:", [v14 offset], objc_msgSend(v14, "length"));
          [v14 timestamp];
          [(SiriTTSOspreyWordTimingInfo *)v15 setTimestamp:v16];
          [(NSArray *)v8 addObject:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    timingInfos = v5->_timingInfos;
    v5->_timingInfos = v8;

    v4 = v20;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)processServerLogs:(id)a3
{
  v92 = *MEMORY[0x1E69E9840];
  [a3 feature];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v55 = v81 = 0u;
  v3 = [v55 replacement];
  v4 = [v3 countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v79;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v79 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v78 + 1) + 8 * i);
        v9 = TTSGetServiceLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 original];
          v11 = [v8 replacement];
          *buf = 138412546;
          v88 = v10;
          v89 = 2112;
          v90 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v78 objects:v91 count:16];
    }

    while (v5);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v12 = [v55 prompts];
  v13 = [v12 countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v75;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v75 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v74 + 1) + 8 * j);
        v18 = [v17 prompts];
        v19 = [v18 count];

        if (v19)
        {
          v20 = TTSGetServiceLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v17 prompts];
            v22 = [v21 componentsJoinedByString:@" "];
            *buf = 138412290;
            v88 = v22;
            _os_log_impl(&dword_1B1A8A000, v20, OS_LOG_TYPE_INFO, "Prompt: %@", buf, 0xCu);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v14);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [v55 phoneme_sequence];
  v23 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v23)
  {
    v24 = v23;
    v57 = *v71;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v71 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v70 + 1) + 8 * k);
        v27 = [MEMORY[0x1E695DF70] array];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v28 = [v26 word_phonemes];
        v29 = [v28 countByEnumeratingWithState:&v66 objects:v84 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v67;
          do
          {
            for (m = 0; m != v30; ++m)
            {
              if (*v67 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = [*(*(&v66 + 1) + 8 * m) phonemes];
              v34 = [v33 componentsJoinedByString:@" "];
              [v27 addObject:v34];
            }

            v30 = [v28 countByEnumeratingWithState:&v66 objects:v84 count:16];
          }

          while (v30);
        }

        v35 = TTSGetServiceLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = [v27 componentsJoinedByString:@" _ "];
          *buf = 138412290;
          v88 = v36;
          _os_log_impl(&dword_1B1A8A000, v35, OS_LOG_TYPE_INFO, "Phonemes: %@", buf, 0xCu);
        }
      }

      v24 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v24);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v37 = [v55 normalized_text];
  v38 = [v37 countByEnumeratingWithState:&v62 objects:v83 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v63;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v63 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v62 + 1) + 8 * n);
        v43 = TTSGetServiceLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [v42 text];
          *buf = 138412290;
          v88 = v44;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v62 objects:v83 count:16];
    }

    while (v39);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v45 = [v55 neural_phoneme_sequence];
  v46 = [v45 countByEnumeratingWithState:&v58 objects:v82 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v59;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v58 + 1) + 8 * ii);
        v51 = TTSGetServiceLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = [v50 phonemes];
          v53 = [v52 componentsJoinedByString:@" "];
          *buf = 138412290;
          v88 = v53;
          _os_log_impl(&dword_1B1A8A000, v51, OS_LOG_TYPE_INFO, "Neural Phonemes: %@", buf, 0xCu);
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v58 objects:v82 count:16];
    }

    while (v47);
  }

  v54 = *MEMORY[0x1E69E9840];
}

@end