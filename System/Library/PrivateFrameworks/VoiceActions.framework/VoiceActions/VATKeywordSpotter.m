@interface VATKeywordSpotter
+ (id)pronounciationsFor:(id)a3 wordSeparator:(id)a4;
- (BOOL)_isDetectionValidForResult:(void *)a3 reason:(id *)a4;
- (BOOL)audioDebuggingEnabled;
- (BOOL)batchDecodeEnabled;
- (BOOL)duringKeywordSilenceCheckEnabled;
- (BOOL)postKeywordSilenceCheckEnabled;
- (BOOL)preKeywordSilenceCheckEnabled;
- (BOOL)secondPassEnabled;
- (VATKeywordSpotter)initWithConfig:(id)a3 keywords:(id)a4 delegate:(id)a5;
- (VATKeywordSpotter)initWithConfig:(id)a3 keywordsWithPhonemes:(id)a4 delegate:(id)a5;
- (id).cxx_construct;
- (id)_handleAudioDebuggingForKeyword:(id)a3 result:(void *)a4 buffer:(id)a5;
- (id)_handleSecondPass:(id)a3 expectedKeyword:(id)a4 duration:(double *)a5 secondPassAudio:(id *)a6;
- (id)_replaceModelPathWithAbsolutePathForTest:(id)a3;
- (id)_thresholdsForAllPhrases;
- (void)_acousticCallback:(id)a3 rows:(int64_t)a4 cols:(int64_t)a5;
- (void)_handleValidResult:(void *)a3;
- (void)_initializeDecoderForKeywordsWithPhonemes:(id)a3;
- (void)_postKeywordSilenceProcessingWithResults:(id)a3 rows:(int64_t)a4 cols:(int64_t)a5;
- (void)addAudioSamples:(const void *)a3 count:(int)a4 isFloat:(BOOL)a5;
- (void)addAudioSamples:(const void *)a3 count:(int)a4 isFloat:(BOOL)a5 filePath:(id)a6 byteCount:(int64_t)a7 currentDuration:(double)a8;
- (void)dealloc;
- (void)setSecondPassEnabled:(BOOL)a3 customAssetPath:(id)a4;
- (void)setStreamingMode:(BOOL)a3;
- (void)start;
- (void)stop;
- (void)updateWithKeywords:(id)a3;
- (void)updateWithKeywordsWithPhonemes:(id)a3;
@end

@implementation VATKeywordSpotter

- (BOOL)secondPassEnabled
{
  v2 = [(VATKeywordSpotter *)self configuration];
  v3 = [v2 runtime];
  v4 = [v3 secondPass];

  return v4;
}

- (void)setSecondPassEnabled:(BOOL)a3 customAssetPath:(id)a4
{
  [(VATKeywordSpotter *)self setCustomSecondPassModelPath:a4];

  MEMORY[0x2821F9670](self, sel_setSecondPassEnabled_);
}

- (BOOL)batchDecodeEnabled
{
  v2 = [(VATKeywordSpotter *)self configuration];
  v3 = [v2 runtime];
  v4 = [v3 batchDecode];

  return v4;
}

- (BOOL)audioDebuggingEnabled
{
  v2 = [(VATKeywordSpotter *)self configuration];
  v3 = [v2 runtime];
  v4 = [v3 audioDebug];

  return v4;
}

- (id)_handleSecondPass:(id)a3 expectedKeyword:(id)a4 duration:(double *)a5 secondPassAudio:(id *)a6
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *a6 = [0 copy];
  *a5 = 0.0;

  return v8;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  return self;
}

- (id)_thresholdsForAllPhrases
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  next = self->_phraseThresholds.__table_.__first_node_.__next_;
  while (next)
  {
    v5 = next + 16;
    if (next[39] < 0)
    {
      v5 = *v5;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    LODWORD(v7) = *(next + 10);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [v3 setValue:v8 forKey:v6];

    next = *next;
  }

  return v3;
}

- (id)_replaceModelPathWithAbsolutePathForTest:(id)a3
{
  v4 = a3;
  v5 = [(FeatureExtractObjc *)self->fe configuration];
  [v5 _replaceModelPathWithCustomModelPathForTestWithPrefix:v4];

  v6 = [(FeatureExtractObjc *)self->fe configuration];
  v7 = [v6 description];

  return v7;
}

- (id)_handleAudioDebuggingForKeyword:(id)a3 result:(void *)a4 buffer:(id)a5
{
  v8 = a3;
  v9 = a5;
  fe = self->fe;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", *(a4 + 6)];
  v12 = [(FeatureExtractObjc *)fe saveAudioBufferToFileWithPcmBuffer:v9 keyword:v8 score:v11 duration:*(a4 + 13)];

  return v12;
}

- (void)_handleValidResult:(void *)a3
{
  v111 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (*(*a3 + 23) < 0)
  {
    v3 = *v3;
  }

  v93 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v103 = 0.0;
  v4 = *(*a3 + 32);
  v5 = [(VATKeywordSpotter *)self configuration];
  v6 = [v5 decoder];
  v7 = [v6 audioCapture];
  v8 = [v7 leftOfStartFrameOffset];

  v9 = *(*a3 + 36);
  v10 = [(VATKeywordSpotter *)self configuration];
  v11 = [v10 decoder];
  v12 = [v11 audioCapture];
  v13 = v9 + [v12 rightOfEndFrameOffset];

  v14 = v13;
  v102 = v13;
  v15 = [(VATKeywordSpotter *)self configuration];
  v16 = [v15 runtime];
  v88 = (v4 - v8);
  if ([v16 secondPass])
  {
  }

  else
  {
    v17 = [(VATKeywordSpotter *)self configuration];
    v18 = [v17 runtime];
    v19 = [v18 audioDebug];

    if (!v19)
    {
      v91 = 0;
LABEL_44:
      obj = 0;
      v90 = 0;
      goto LABEL_45;
    }
  }

  v90 = [(FeatureExtractObjc *)self->fe audioForKeywordWithStartFrame:v88 endFrame:v14 actualEndFrame:&v102];
  v20 = [(VATKeywordSpotter *)self configuration];
  v21 = [v20 runtime];
  v22 = [v21 secondPass];

  if (v90)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) != 0 || (-[VATKeywordSpotter configuration](self, "configuration"), v24 = objc_claimAutoreleasedReturnValue(), [v24 runtime], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "audioDebug"), v25, v24, !v26))
  {
    v91 = 0;
  }

  else
  {
    v27 = [(VATKeywordSpotter *)self _handleAudioDebuggingForKeyword:v93 result:*a3 buffer:v90];
    v28 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v105 = v27;
      _os_log_impl(&dword_2721E4000, v28, OS_LOG_TYPE_INFO, "audio %@", buf, 0xCu);
    }

    v91 = v27;
  }

  v29 = [(VATKeywordSpotter *)self configuration];
  v30 = [v29 runtime];
  v31 = [v30 secondPass];

  if (!v31)
  {
    obj = 0;
LABEL_45:
    v95 = 0;
    goto LABEL_46;
  }

  if (!v90)
  {
    v56 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2721E4000, v56, OS_LOG_TYPE_INFO, "No audio for second pass", buf, 2u);
    }

    goto LABEL_44;
  }

  v101 = 0;
  v85 = [(VATKeywordSpotter *)self _handleSecondPass:v90 expectedKeyword:v93 duration:&v103 secondPassAudio:&v101];
  v87 = v101;
  if (v87)
  {
    v32 = [(VATKeywordSpotter *)self configuration];
    v33 = [v32 runtime];
    v34 = [v33 audioDebug];

    if (v34)
    {
      v35 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&unk_272387710];
      v36 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v35 frameCapacity:objc_msgSend(v87, "length") / *(objc_msgSend(v35, "streamDescription") + 24)];
      [v36 setFrameLength:{objc_msgSend(v36, "frameCapacity")}];
      v37 = [v36 frameCapacity];
      *([v36 mutableAudioBufferList] + 12) = v37;
      v38 = *([v36 mutableAudioBufferList] + 16);
      v39 = v87;
      memcpy(v38, [v87 bytes], 2 * objc_msgSend(v36, "frameCapacity"));
      v40 = [(VATKeywordSpotter *)self _handleAudioDebuggingForKeyword:v93 result:*a3 buffer:v36];

      v41 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v105 = v40;
        _os_log_impl(&dword_2721E4000, v41, OS_LOG_TYPE_INFO, "audio %@", buf, 0xCu);
      }

      v91 = v40;
    }
  }

  v86 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"_[0-9]+$" options:0 error:0];
  v84 = [v86 stringByReplacingMatchesInString:v93 options:0 range:0 withTemplate:{objc_msgSend(v93, "length"), &stru_2881908A8}];
  v42 = [v84 lowercaseString];
  v43 = [v42 stringByReplacingOccurrencesOfString:@"_" withString:&stru_2881908A8];

  v96 = [v43 stringByReplacingOccurrencesOfString:@" " withString:&stru_2881908A8];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v85;
  v44 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v44)
  {
    v45 = 0;
    v95 = 0;
    v46 = *v98;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v98 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v97 + 1) + 8 * i);
        v49 = [v48 lowercaseString];
        v50 = [v49 stringByReplacingOccurrencesOfString:@" " withString:&stru_2881908A8];

        v51 = _VATLoggingFacility(kVATLogCategoryFramework);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v54 = [v50 hasPrefix:v96];
          *buf = 138412802;
          v105 = v96;
          v106 = 2112;
          v107 = v50;
          v108 = 1024;
          v109 = v54;
          _os_log_debug_impl(&dword_2721E4000, v51, OS_LOG_TYPE_DEBUG, "%@ is prefix of %@ = %d", buf, 0x1Cu);
        }

        if ([v50 hasPrefix:v96])
        {
          v52 = v48;

          v53 = _VATLoggingFacility(kVATLogCategoryFramework);
          v45 = 1;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v105 = v52;
            v106 = 2112;
            v107 = v93;
            _os_log_impl(&dword_2721E4000, v53, OS_LOG_TYPE_INFO, "Second pass %@ matches keyword %@", buf, 0x16u);
          }

          v95 = v52;
        }

        else
        {
          v53 = _VATLoggingFacility(kVATLogCategoryFramework);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v105 = v48;
            v106 = 2112;
            v107 = v93;
            _os_log_impl(&dword_2721E4000, v53, OS_LOG_TYPE_INFO, "Second pass %@ doesn't match keyword %@", buf, 0x16u);
          }
        }
      }

      v44 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v44);

    if (v45)
    {
      v55 = 0;
      goto LABEL_63;
    }
  }

  else
  {

    v95 = 0;
  }

  v75 = _VATLoggingFacility(kVATLogCategoryFramework);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
  {
    v76 = [obj componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v105 = v76;
    v106 = 2112;
    v107 = v93;
    _os_log_impl(&dword_2721E4000, v75, OS_LOG_TYPE_INFO, "Second pass %@ doesn't match keyword %@", buf, 0x16u);
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v78 = self->_delegate;
    v79 = [obj componentsJoinedByString:{@", "}];
    v80 = MEMORY[0x277CCACA8];
    v81 = [obj componentsJoinedByString:{@", "}];
    v82 = [v80 stringWithFormat:@"%@ vs %@ mismatch", v93, v81];
    [(VATKeywordSpotterDelegate *)v78 keywordDiscarded:v93 failedPreSilence:0 failedDuringSilence:0 failedPostSilence:0 failedSecondPass:1 secondPassResult:v79 reason:v82 audioURL:v91];
  }

  v55 = 1;
LABEL_63:

  if (v55)
  {
    goto LABEL_64;
  }

LABEL_46:
  v57 = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v58 = self->_delegate;
    v59 = [VATKeywordSpotterResult alloc];
    LODWORD(v60) = *(*a3 + 24);
    LODWORD(v61) = *(*a3 + 56);
    v62 = [(VATKeywordSpotterResult *)v59 initWithKeyword:v93 cost:*(*a3 + 32) threshold:*(*a3 + 36) start:*(*a3 + 52) end:v60 duration:v61];
    [(VATKeywordSpotterResult *)v62 setAudioFileURL:v91];
    v63 = [(VATKeywordSpotter *)self configuration];
    v64 = [v63 runtime];
    v65 = [v64 secondPass];

    if (v65)
    {
      [(VATKeywordSpotterResult *)v62 setSecondPassResult:v95];
      [(VATKeywordSpotterResult *)v62 setSecondPassDuration:v103];
    }

    v66 = [(VATKeywordSpotter *)self configuration];
    v67 = [v66 runtime];
    if ([v67 secondPass])
    {
    }

    else
    {
      v72 = [(VATKeywordSpotter *)self configuration];
      v73 = [v72 runtime];
      v74 = [v73 audioDebug];

      if (!v74)
      {
LABEL_56:
        [(VATKeywordSpotterDelegate *)v58 keywordSpotted:v62 nbestResults:0 filePath:self->_filePath fileByteCount:self->_fileByteCount fileDuration:self->_fileCurrentDuration];

        goto LABEL_64;
      }
    }

    [(VATKeywordSpotterResult *)v62 setAudioStart:v88];
    [(VATKeywordSpotterResult *)v62 setAudioEnd:v102];
    -[VATKeywordSpotterResult setAudioDuration:](v62, "setAudioDuration:", [v90 frameLength] / 16000.0);
    goto LABEL_56;
  }

  v68 = objc_opt_respondsToSelector();
  v69 = self->_delegate;
  v70 = *a3;
  v71 = *(*a3 + 24);
  if (v68)
  {
    [(VATKeywordSpotterDelegate *)v69 keywordSpotted:v93 cost:*(v70 + 32) threshold:*(v70 + 36) start:v71 end:*(v70 + 56)];
  }

  else
  {
    [(VATKeywordSpotterDelegate *)v69 keywordSpotted:v93 cost:*(v70 + 32) start:*(v70 + 36) end:v71];
  }

LABEL_64:

  v83 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDetectionValidForResult:(void *)a3 reason:(id *)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v81 = [(VATKeywordSpotter *)self preKeywordSilenceCheckEnabled];
  v5 = [(VATKeywordSpotter *)self configuration];
  v6 = [v5 runtime];
  v7 = [v6 duringKeywordSilence];

  v8 = [(VATKeywordSpotter *)self configuration];
  v9 = [v8 runtime];
  v10 = [v9 duringKeywordSilence];

  if (v10)
  {
    floatFstDecoder = self->_floatFstDecoder;
    v12 = *(a3 + 8);
    v13 = *(a3 + 9);
    v78 = [(VATKeywordSpotter *)self configuration];
    v14 = [v78 decoder];
    v15 = [v14 duringKeywordSilence];
    [v15 minPercentageOfNonSilenceFrames];
    v17 = v16;
    v18 = [(VATKeywordSpotter *)self configuration];
    v19 = [v18 decoder];
    v20 = [v19 duringKeywordSilence];
    [v20 silenceProbability];
    v22 = floatFstDecoder[8];
    LODWORD(v23) = v12 - v22;
    v24 = v13 - v22;
    if (v24 >= v23)
    {
      v25 = 0;
      v23 = v23;
      do
      {
        if (*(*(floatFstDecoder[2] + (((floatFstDecoder[5] + v23) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((floatFstDecoder[5] + v23) & 0x3FF)) >= v21)
        {
          ++v25;
        }

        ++v23;
      }

      while (v24 >= v23);
    }

    else
    {
      v25 = 0;
    }

    v27 = (v13 - v12);
    v28 = ((v17 * v27) + 0.5);
    v26 = v25 >= v28;

    if (a4 && v25 < v28)
    {
      v29 = MEMORY[0x277CCACA8];
      v79 = [(VATKeywordSpotter *)self configuration];
      v30 = [v79 decoder];
      v31 = [v30 duringKeywordSilence];
      [v31 minPercentageOfNonSilenceFrames];
      *a4 = [v29 stringWithFormat:@"speechToSilence ratio %4.2f < %4.2f", (v25 / v27), v32];

      v26 = 0;
    }
  }

  else
  {
    v26 = v7 ^ 1;
  }

  if ([(VATKeywordSpotter *)self preKeywordSilenceCheckEnabled])
  {
    v75 = v26;
    v33 = self->_floatFstDecoder;
    v34 = *(a3 + 8);
    v82 = [(VATKeywordSpotter *)self configuration];
    v80 = [v82 decoder];
    v77 = [v80 preKeywordSilence];
    v35 = [v77 lookbackFrames];
    v76 = [(VATKeywordSpotter *)self configuration];
    v36 = [v76 decoder];
    v37 = [v36 preKeywordSilence];
    v38 = [v37 minSilenceInLookbackFrames];
    v39 = [(VATKeywordSpotter *)self configuration];
    v40 = [v39 decoder];
    v41 = [v40 preKeywordSilence];
    [v41 silenceProbability];
    v43 = v33[8];
    v44 = v34 >= v43;
    v45 = v34 - v43;
    if (v45 != 0 && v44)
    {
      v50 = v82;
      v46 = 0;
      if (v35 >= 1)
      {
        v47 = v35 & 0x7FFFFFFF;
        do
        {
          if (!v45)
          {
            break;
          }

          if (*(*(v33[2] + (((v45 + v33[5]) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v45 + v33[5]) & 0x3FF)) <= v42)
          {
            ++v46;
          }

          --v35;
          --v45;
          --v47;
        }

        while (v47);
      }

      v48 = (v35 + v46);
      v49 = v48 >= v38;
    }

    else
    {
      v48 = 0;
      v49 = 1;
      v50 = v82;
    }

    if (a4 && (v49 & 1) == 0)
    {
      v51 = MEMORY[0x277CCACA8];
      v83 = [(VATKeywordSpotter *)self configuration];
      v52 = [v83 decoder];
      v53 = [v52 preKeywordSilence];
      v54 = [v53 minSilenceInLookbackFrames];
      if ([*a4 length])
      {
        v55 = *a4;
      }

      else
      {
        v55 = &stru_2881908A8;
      }

      *a4 = [v51 stringWithFormat:@"pre-keyword silence frames %d < %ld. %@", v48, v54, v55];
    }

    v26 = v75;
  }

  else
  {
    v49 = !v81;
  }

  v56 = v26;
  v57 = v26 ^ 1u;
  if (((v49 ^ 1) & 1) != 0 || v57)
  {
    if (*(a3 + 23) >= 0)
    {
      v58 = a3;
    }

    else
    {
      v58 = *a3;
    }

    v59 = [MEMORY[0x277CCACA8] stringWithCString:v58 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v60 = [(VATKeywordSpotter *)self configuration];
    v61 = [v60 runtime];
    v62 = [v61 audioDebug];

    if (v62)
    {
      v63 = *(a3 + 8);
      *buf = *(a3 + 9);
      v64 = [FeatureExtractObjc audioForKeywordWithStartFrame:"audioForKeywordWithStartFrame:endFrame:actualEndFrame:" endFrame:v63 actualEndFrame:?];
      if (v64 && (-[VATKeywordSpotter configuration](self, "configuration"), v65 = objc_claimAutoreleasedReturnValue(), [v65 runtime], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "audioDebug"), v66, v65, v67))
      {
        v68 = [(VATKeywordSpotter *)self _handleAudioDebuggingForKeyword:v59 result:a3 buffer:v64];
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v68 = 0;
    }

    v69 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      v73 = *(a3 + 8);
      v84 = *(a3 + 9);
      v86 = *a4;
      v74 = [v68 path];
      *buf = 138413314;
      *&buf[4] = v59;
      v89 = 1024;
      v90 = v73;
      v91 = 1024;
      v92 = v84;
      v93 = 2112;
      v94 = v86;
      v95 = 2112;
      v96 = v74;
      _os_log_debug_impl(&dword_2721E4000, v69, OS_LOG_TYPE_DEBUG, "Keyword %@ [%d,%d] dismissed. %@, %@", buf, 0x2Cu);
    }

    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(VATKeywordSpotterDelegate *)self->_delegate keywordDiscarded:v59 failedPreSilence:v49 ^ 1u failedDuringSilence:v57 failedPostSilence:0 failedSecondPass:0 secondPassResult:0 reason:*a4 audioURL:v68];
    }
  }

  v71 = *MEMORY[0x277D85DE8];
  return v49 & v56;
}

- (void)_postKeywordSilenceProcessingWithResults:(id)a3 rows:(int64_t)a4 cols:(int64_t)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v80 = a3;
  [v80 bytes];
  v82 = self;
  if (a4 >= 1)
  {
    sub_272366344(1uLL);
  }

  v7 = self->_frameCountSinceKeywordDetected + a4;
  self->_frameCountSinceKeywordDetected = v7;
  v83 = 0;
  v84 = -1;
  v8 = [(VATKeywordSpotter *)self configuration];
  v9 = [v8 decoder];
  v10 = [v9 postKeywordSilence];
  v11 = [v10 lookForwardFrames];

  if (v11 <= v7)
  {
    v19 = [(VATKeywordSpotter *)v82 configuration];
    v20 = [v19 decoder];
    v21 = [v20 postKeywordSilence];
    v22 = [v21 lookForwardFrames];

    p_keywordResults = &v82->_keywordResults;
    v23 = *(v82->_keywordResults.__begin_ + 9);
    if (v23 <= 0)
    {
      v24 = -(-v23 & 7);
    }

    else
    {
      v24 = *(v82->_keywordResults.__begin_ + 9) & 7;
    }

    v25 = 15 - v24;
    if (v22 == 8)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22;
    }

    v78 = v26;
    floatFstDecoder = v82->_floatFstDecoder;
    v73 = [(VATKeywordSpotter *)v82 configuration];
    v27 = [v73 decoder];
    v28 = [v27 postKeywordSilence];
    [v28 silenceProbability];
    v30 = v29;
    v31 = [(VATKeywordSpotter *)v82 configuration];
    v32 = [v31 decoder];
    v33 = [v32 postKeywordSilence];
    v34 = sub_27236638C(floatFstDecoder, v23, 0, 0, v78, [v33 minSilenceFramesExpected], &v84, &v83, v30);

    begin = p_keywordResults->__begin_;
    if (*(p_keywordResults->__begin_ + 23) < 0)
    {
      begin = *begin;
    }

    v79 = [MEMORY[0x277CCACA8] stringWithCString:begin encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    if (v34)
    {
      v36 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v77 = [MEMORY[0x277CCABB0] numberWithInt:v83];
        v63 = MEMORY[0x277CCABB0];
        v64 = [(VATKeywordSpotter *)v82 configuration];
        v65 = [v64 decoder];
        v66 = [v65 postKeywordSilence];
        v67 = [v63 numberWithInteger:{objc_msgSend(v66, "minSilenceFramesExpected")}];
        v68 = MEMORY[0x277CCABB0];
        v69 = [(VATKeywordSpotter *)v82 configuration];
        v70 = [v69 decoder];
        v71 = [v70 postKeywordSilence];
        v72 = [v68 numberWithInteger:{objc_msgSend(v71, "lookForwardFrames")}];
        *buf = 138413058;
        *&buf[4] = v79;
        v86 = 2112;
        v87 = v77;
        v88 = 2112;
        v89 = v67;
        v90 = 2112;
        v91 = v72;
        _os_log_debug_impl(&dword_2721E4000, v36, OS_LOG_TYPE_DEBUG, "Enough silence after keyword %@, %@ > %@/%@", buf, 0x2Au);
      }

      v38 = &v82->_keywordResults;
      v37 = v82;
      [(VATKeywordSpotter *)v82 _handleValidResult:p_keywordResults];
    }

    else
    {
      v39 = [(VATKeywordSpotter *)v82 configuration];
      v40 = [v39 runtime];
      v41 = [v40 audioDebug];

      if (v41)
      {
        v42 = v82->_keywordResults.__begin_;
        v43 = *(v42 + 8);
        *buf = *(v42 + 9);
        v44 = [FeatureExtractObjc audioForKeywordWithStartFrame:"audioForKeywordWithStartFrame:endFrame:actualEndFrame:" endFrame:v43 actualEndFrame:?];
        v74 = [(VATKeywordSpotter *)v82 _handleAudioDebuggingForKeyword:v79 result:v82->_keywordResults.__begin_ buffer:v44];
      }

      else
      {
        v74 = 0;
      }

      v45 = MEMORY[0x277CCACA8];
      v76 = [MEMORY[0x277CCABB0] numberWithInt:v83];
      v46 = MEMORY[0x277CCABB0];
      v47 = [(VATKeywordSpotter *)v82 configuration];
      v48 = [v47 decoder];
      v49 = [v48 postKeywordSilence];
      v50 = [v46 numberWithInteger:{objc_msgSend(v49, "minSilenceFramesExpected")}];
      v51 = MEMORY[0x277CCABB0];
      v52 = [(VATKeywordSpotter *)v82 configuration];
      v53 = [v52 decoder];
      v54 = [v53 postKeywordSilence];
      v55 = [v51 numberWithInteger:{objc_msgSend(v54, "lookForwardFrames")}];
      v56 = [v45 stringWithFormat:@"not enough silence after keyword %@ < %@/%@", v76, v50, v55];

      v57 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v79;
        v86 = 2112;
        v87 = v56;
        _os_log_impl(&dword_2721E4000, v57, OS_LOG_TYPE_INFO, "Discarding keyword %@, %@", buf, 0x16u);
      }

      delegate = v82->_delegate;
      if (objc_opt_respondsToSelector())
      {
        v59 = v82->_delegate;
        v60 = v82->_keywordResults.__begin_;
        if (*(v60 + 23) < 0)
        {
          v60 = *v60;
        }

        v61 = [MEMORY[0x277CCACA8] stringWithCString:v60 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        [(VATKeywordSpotterDelegate *)v59 keywordDiscarded:v61 failedPreSilence:0 failedDuringSilence:0 failedPostSilence:1 failedSecondPass:0 secondPassResult:0 reason:v56 audioURL:v74];
      }

      v38 = &v82->_keywordResults;
      v37 = v82;
    }

    v37->_frameCountSinceKeywordDetected = 0;
    sub_272363EE8(v38);
    v12 = v79;
  }

  else
  {
    v12 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = [(VATKeywordSpotter *)v82 configuration];
      v15 = [v14 decoder];
      v16 = [v15 postKeywordSilence];
      v17 = [v13 numberWithInteger:{objc_msgSend(v16, "minSilenceFramesExpected")}];
      frameCountSinceKeywordDetected = v82->_frameCountSinceKeywordDetected;
      *buf = 138412546;
      *&buf[4] = v17;
      v86 = 1024;
      LODWORD(v87) = frameCountSinceKeywordDetected;
      _os_log_debug_impl(&dword_2721E4000, v12, OS_LOG_TYPE_DEBUG, "waiting for %@ frames, have only %d", buf, 0x12u);
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_acousticCallback:(id)a3 rows:(int64_t)a4 cols:(int64_t)a5
{
  v147 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (a4 != 8)
  {
    v126 = sub_2723686B0(v125, "/Library/Caches/com.apple.xbs/Sources/VoiceActions/VoiceActions/v1/VATKeywordSpotter.m", 86);
    v127 = sub_2723686B0(v126, " line ", 6);
    v128 = MEMORY[0x2743C5B80](v127, 397);
    v129 = sub_2723686B0(v128, ": ", 2);
    v130 = sub_2723686B0(v129, "Mismatch in acoustic model output shape, expected 8 rows", 56);
    sub_2723689D8(v130);
    std::terminate();
  }

  if (v8)
  {
    v10 = [(VATKeywordSpotter *)self configuration];
    v133 = v9;
    v11 = [v10 runtime];
    v137 = self;
    if ([v11 postKeywordSilence])
    {
      end = self->_keywordResults.__end_;
      begin = self->_keywordResults.__begin_;

      v14 = end == begin;
      self = v137;
      if (!v14)
      {
        [(VATKeywordSpotter *)v137 _postKeywordSilenceProcessingWithResults:v9 rows:8 cols:a5];
        v137->_processedFrameCount += 8;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v17 = [v9 bytes];
    p_keywordResults = &self->_keywordResults;
    *&v18 = 138413058;
    v131 = v18;
    v19 = 0;
    v135 = 4 * a5;
    v136 = a5;
    while (1)
    {
      v138 = v19;
      v139 = v17;
      if (a5)
      {
        if (!(a5 >> 62))
        {
          sub_272366344(a5);
        }

        sub_27236F7F0();
      }

      floatFstDecoder = self->_floatFstDecoder;
      if (*(floatFstDecoder + 23) != *(floatFstDecoder + 24))
      {
        processedFrameCount = self->_processedFrameCount;
        if ((floatFstDecoder[72] & 1) != 0 || (floatFstDecoder[73] & 1) != 0 || floatFstDecoder[74] == 1)
        {
          v22 = *(floatFstDecoder + 1);
          v23 = *(floatFstDecoder + 3);
          v24 = *(floatFstDecoder + 2);
          v25 = v23 - v24;
          if (v23 == v24)
          {
            v26 = 0;
          }

          else
          {
            v26 = ((v23 - v24) << 7) - 1;
          }

          v28 = *(floatFstDecoder + 5);
          v27 = *(floatFstDecoder + 6);
          v29 = v27 + v28;
          if (v26 == v27 + v28)
          {
            if (v28 < 0x400)
            {
              v30 = *(floatFstDecoder + 4);
              v31 = *(floatFstDecoder + 1);
              if (v25 < v30 - v31)
              {
                if (v30 != v23)
                {
                  operator new();
                }

                operator new();
              }

              if (v30 == v31)
              {
                v32 = 1;
              }

              else
              {
                v32 = (v30 - v31) >> 2;
              }

              *(&v144 + 1) = floatFstDecoder + 8;
              sub_272367404(v32);
            }

            *(floatFstDecoder + 5) = v28 - 1024;
            __str.__r_.__value_.__r.__words[0] = *v24;
            *(floatFstDecoder + 2) = v24 + 1;
            sub_272367300(floatFstDecoder + 1, &__str);
            v24 = *(floatFstDecoder + 2);
            v28 = *(floatFstDecoder + 5);
            v27 = *(floatFstDecoder + 6);
            v29 = v28 + v27;
          }

          *(*(v24 + ((v29 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v29 & 0x3FF)) = MEMORY[0xD8];
          *(floatFstDecoder + 6) = v27 + 1;
          if (v27 + 1 == *(floatFstDecoder + 14))
          {
            *(floatFstDecoder + 5) = v28 + 1;
            *(floatFstDecoder + 6) = v27;
            sub_272366EC0((floatFstDecoder + 8));
            ++*(floatFstDecoder + 8);
          }
        }

        v33 = *(floatFstDecoder + 23);
        if (0xAAAAAAAAAAAAAAABLL * ((*(floatFstDecoder + 11) - *(floatFstDecoder + 10)) >> 3) != (*(floatFstDecoder + 24) - v33) >> 5)
        {
          __assert_rtn("SearchFrame", "OnlineFstSpottingDecoder.hpp", 505, "tokens.size() == states.size()");
        }

        v34 = floatFstDecoder[517];
        v35 = processedFrameCount != 0;
        *v33 = voiceactions::kNolabel;
        v36 = *&voiceactions::kLogZero;
        if ((v35 & v34) == 0)
        {
          v36 = 0.0;
        }

        v134 = processedFrameCount;
        if ((v35 & v34) != 0)
        {
          v37 = voiceactions::kNoTime;
        }

        else
        {
          v37 = processedFrameCount;
        }

        *(v33 + 20) = 0;
        *(v33 + 12) = 0;
        *(v33 + 4) = v36;
        *(v33 + 8) = v37;
        v38 = -1 - 1431655765 * ((*(floatFstDecoder + 11) - *(floatFstDecoder + 10)) >> 3);
        if ((v38 & 0x80000000) == 0)
        {
          do
          {
            v39 = (*(floatFstDecoder + 10) + 24 * v38);
            v40 = *v39;
            if (v39[1] != *v39)
            {
              v41 = *(v40 + 8);
              v42 = floatFstDecoder[524];
              v43 = *(4 * v41 - 4);
              v44 = logf(v43);
              if (!v42)
              {
                v44 = v43;
              }

              sub_2723696E4(*(floatFstDecoder + 23) + 32 * v38, (*(floatFstDecoder + 23) + 32 * *(v40 + 4)), v41, *(v40 + 12), *(floatFstDecoder + 120), 1, *(v40 + 16) - v44);
              v46 = *v39;
              v45 = v39[1];
              if (0xAAAAAAAAAAAAAAABLL * ((v45 - *v39) >> 3) >= 2)
              {
                v47 = 0;
                v48 = 1;
                do
                {
                  v49 = v46 + v47;
                  v50 = *(v46 + v47 + 32);
                  v51 = floatFstDecoder[524];
                  v52 = *(4 * v50 - 4);
                  v53 = logf(v52);
                  if (!v51)
                  {
                    v53 = v52;
                  }

                  v54 = *(floatFstDecoder + 23);
                  v55 = v54 + 32 * v38;
                  v56 = (v54 + 32 * *(v49 + 28));
                  if ((v56[1] - v53) < *(v55 + 4))
                  {
                    sub_2723696E4(v55, v56, v50, *(v49 + 36), *(floatFstDecoder + 120), 0, -v53);
                    v46 = *v39;
                    v45 = v39[1];
                  }

                  ++v48;
                  v47 += 24;
                }

                while (0xAAAAAAAAAAAAAAABLL * ((v45 - v46) >> 3) > v48);
              }
            }
          }

          while (v38-- > 0);
        }

        v58 = *(floatFstDecoder + 15);
        v9 = v133;
        self = v137;
        if (v58)
        {
          while (1)
          {
            v59 = v58[2];
            v141 = v59;
            v60 = *(floatFstDecoder + 23) + 32 * v59;
            v61 = *(v60 + 4);
            if (v61 >= *&voiceactions::kLogZero)
            {
              goto LABEL_87;
            }

            memset(&__str, 0, sizeof(__str));
            *&v145[20] = voiceactions::kLogZero;
            v145[24] = 0;
            *&v144 = v61 + *(&v59 + 1);
            *&v145[16] = 0;
            v62 = *(v60 + 8);
            *(&v144 + 1) = __PAIR64__(v134, v62);
            if (*v60 >= 1 && (v63 = sub_27236A1FC(floatFstDecoder + 45, *v60)) != 0)
            {
              if (*(v63 + 47) < 0)
              {
                sub_272369088(&__dst, v63[3], v63[4]);
              }

              else
              {
                __dst = *(v63 + 1);
              }
            }

            else
            {
              memset(&__dst, 0, sizeof(__dst));
            }

            v65 = *(v60 + 20);
            v64 = *(v60 + 24);
            v66 = *(v60 + 12);
            v67 = *(v60 + 16);
            __str = __dst;
            DWORD1(v144) = v67;
            *v145 = v65;
            *&v145[4] = v66;
            *&v145[8] = v64;
            *&v145[12] = v134 + 1 - v62;
            __dst.__r_.__value_.__r.__words[0] = &__str;
            v68 = *(sub_272369758(floatFstDecoder + 50, &__str) + 10);
            v145[24] = *&v144 < v68;
            *&v145[16] = v68;
            *&v145[20] = v144;
            if (*&v144 < v68 && *&v144 < *(floatFstDecoder + 67))
            {
              std::string::operator=((floatFstDecoder + 208), &__str);
              v69 = *v145;
              *(floatFstDecoder + 232) = v144;
              *(floatFstDecoder + 248) = v69;
              *(floatFstDecoder + 257) = *&v145[9];
            }

            v70 = v141;
            v71 = *(floatFstDecoder + 19);
            if (!v71)
            {
              goto LABEL_84;
            }

            v72 = vcnt_s8(v71);
            v72.i16[0] = vaddlv_u8(v72);
            if (v72.u32[0] > 1uLL)
            {
              v73 = v141;
              if (v71 <= v141)
              {
                v73 = v141 % v71;
              }
            }

            else
            {
              v73 = (v71 - 1) & v141;
            }

            v74 = *(*(floatFstDecoder + 18) + 8 * v73);
            if (!v74 || (v75 = *v74) == 0)
            {
LABEL_84:
              __dst.__r_.__value_.__r.__words[0] = &v141;
              v78 = sub_272368C38(floatFstDecoder + 18, v70);
              std::string::operator=(v78 + 1, &__str);
              v79 = *&v145[9];
              v80 = *v145;
              *(v78 + 3) = v144;
              *(v78 + 4) = v80;
              *(v78 + 73) = v79;
              goto LABEL_85;
            }

            while (1)
            {
              v76 = v75[1];
              if (v76 == v141)
              {
                break;
              }

              if (v72.u32[0] > 1uLL)
              {
                if (v76 >= v71)
                {
                  v76 %= v71;
                }
              }

              else
              {
                v76 &= v71 - 1;
              }

              if (v76 != v73)
              {
                goto LABEL_84;
              }

LABEL_79:
              v75 = *v75;
              if (!v75)
              {
                goto LABEL_84;
              }
            }

            if (*(v75 + 4) != v141)
            {
              goto LABEL_79;
            }

            __dst.__r_.__value_.__r.__words[0] = &v141;
            v77 = sub_272368C38(floatFstDecoder + 18, v141);
            if (*(v77 + 12) > *&v144)
            {
              v70 = v141;
              goto LABEL_84;
            }

LABEL_85:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

LABEL_87:
            v58 = *v58;
            if (!v58)
            {
              v81 = *(floatFstDecoder + 15);
                ;
              }

              break;
            }
          }
        }
      }

      v82 = self->_floatFstDecoder;
      v83 = self->_processedFrameCount;
      memset(&__dst, 0, sizeof(__dst));
      v84 = v82[20];
      if (v84)
      {
        v85 = 0;
        do
        {
          sub_272368BD4(&__str, (v84 + 2));
          if (v146 == 1)
          {
            v85 |= *&v145[4] >= v83 - *(v82 + 130);
          }

          if (SBYTE7(v144) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__size_);
          }

          v84 = *v84;
        }

        while (v84);
        if (v85)
        {
          v86 = v82[20];
          self = v137;
          if (v86)
          {
            do
            {
              sub_272368BD4(&__str, (v86 + 2));
              if (v146 == 1)
              {
                sub_2723692DC(&__dst, &__str.__r_.__value_.__r.__words[1]);
              }

              if (SBYTE7(v144) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__size_);
              }

              v86 = *v86;
            }

            while (v86);
            size = __dst.__r_.__value_.__l.__size_;
            v87 = __dst.__r_.__value_.__r.__words[0];
          }

          else
          {
            size = 0;
            v87 = 0;
          }
        }

        else
        {
          size = 0;
          v87 = 0;
          self = v137;
        }
      }

      else
      {
        size = 0;
        v87 = 0;
      }

      v89 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((size - v87) >> 3));
      if (size == v87)
      {
        v90 = 0;
      }

      else
      {
        v90 = v89;
      }

      sub_272370FCC(v87, size, v90, 1);
      v91 = [(VATKeywordSpotter *)self configuration];
      v92 = [v91 runtime];
      if (([(__CFString *)v92 batchDecode]& 1) != 0 || __dst.__r_.__value_.__l.__size_ == __dst.__r_.__value_.__r.__words[0])
      {
        goto LABEL_151;
      }

      v93 = *(__dst.__r_.__value_.__r.__words[0] + 64);

      if (v93)
      {
        break;
      }

LABEL_152:
      ++self->_processedFrameCount;
      __str.__r_.__value_.__r.__words[0] = &__dst;
      sub_272363E94(&__str);
      a5 = v136;
      v17 = v139 + v135;
      v19 = v138 + 1;
      if (v138 == 7)
      {
        goto LABEL_9;
      }
    }

    v94 = __dst.__r_.__value_.__r.__words[0];
    if (*(__dst.__r_.__value_.__r.__words[0] + 23) < 0)
    {
      v94 = *__dst.__r_.__value_.__l.__data_;
    }

    v91 = [MEMORY[0x277CCACA8] stringWithCString:v94 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding", v131)}];
    v140 = &stru_2881908A8;
    v95 = [(VATKeywordSpotter *)self _isDetectionValidForResult:__dst.__r_.__value_.__r.__words[0] reason:&v140];
    v92 = v140;
    if (v95)
    {
      v96 = [(VATKeywordSpotter *)self configuration];
      v97 = [v96 runtime];
      v98 = [v97 postKeywordSilence];

      v99 = _VATLoggingFacility(kVATLogCategoryFramework);
      v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG);
      if (v98)
      {
        if (v100)
        {
          v120 = *(__dst.__r_.__value_.__r.__words[0] + 32);
          v119 = *(__dst.__r_.__value_.__r.__words[0] + 36);
          v121 = self->_processedFrameCount;
          LODWORD(__str.__r_.__value_.__l.__data_) = v131;
          *(__str.__r_.__value_.__r.__words + 4) = v91;
          WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str.__r_.__value_.__r.__words[1] + 6) = v120;
          WORD1(__str.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(__str.__r_.__value_.__r.__words[2]) = v119;
          LOWORD(v144) = 1024;
          *(&v144 + 2) = v121;
          _os_log_debug_impl(&dword_2721E4000, v99, OS_LOG_TYPE_DEBUG, "Got keyword %@ [%d, %d] at frame %d, waiting for silence", &__str, 0x1Eu);
        }

        if (p_keywordResults != &__dst)
        {
          v101 = __dst.__r_.__value_.__l.__size_;
          v102 = __dst.__r_.__value_.__r.__words[0];
          v103 = __dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0];
          cap = self->_keywordResults.__cap_;
          v105 = self->_keywordResults.__begin_;
          if (cap - v105 < __dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0])
          {
            if (v105)
            {
              sub_272363EE8(p_keywordResults);
              operator delete(p_keywordResults->__begin_);
              cap = 0;
              p_keywordResults->__begin_ = 0;
              p_keywordResults->__end_ = 0;
              p_keywordResults->__cap_ = 0;
            }

            v106 = 0x8E38E38E38E38E39 * (v103 >> 3);
            if (v106 <= 0x38E38E38E38E38ELL)
            {
              v107 = 0x8E38E38E38E38E39 * (cap >> 3);
              if (2 * v107 > v106)
              {
                v106 = 2 * v107;
              }

              if (v107 >= 0x1C71C71C71C71C7)
              {
                v108 = 0x38E38E38E38E38ELL;
              }

              else
              {
                v108 = v106;
              }

              if (v108 <= 0x38E38E38E38E38ELL)
              {
                sub_272369220(v108);
              }
            }

            sub_27236F7F0();
          }

          v110 = self->_keywordResults.__end_;
          if (v110 - v105 >= v103)
          {
            if (__dst.__r_.__value_.__r.__words[0] != __dst.__r_.__value_.__l.__size_)
            {
              do
              {
                std::string::operator=(v105, v102);
                v114 = *(v102 + 24);
                v115 = *(v102 + 40);
                *(v105 + 49) = *(v102 + 49);
                *(v105 + 40) = v115;
                *(v105 + 24) = v114;
                v102 += 72;
                v105 = (v105 + 72);
              }

              while (v102 != v101);
              v110 = self->_keywordResults.__end_;
            }

            while (v110 != v105)
            {
              v116 = *(v110 - 49);
              v110 -= 9;
              if (v116 < 0)
              {
                operator delete(*v110);
              }
            }

            self->_keywordResults.__end_ = v105;
          }

          else
          {
            v111 = (__dst.__r_.__value_.__r.__words[0] + v110 - v105);
            if (v110 != v105)
            {
              do
              {
                std::string::operator=(v105, v102);
                v112 = *(v102 + 24);
                v113 = *(v102 + 40);
                *(v105 + 49) = *(v102 + 49);
                *(v105 + 40) = v113;
                *(v105 + 24) = v112;
                v102 += 72;
                v105 = (v105 + 72);
              }

              while (v102 != v111);
              v110 = self->_keywordResults.__end_;
            }

            self->_keywordResults.__end_ = sub_272369144(p_keywordResults, v111, v101, v110);
          }
        }
      }

      else
      {
        if (v100)
        {
          v123 = *(__dst.__r_.__value_.__r.__words[0] + 32);
          v122 = *(__dst.__r_.__value_.__r.__words[0] + 36);
          v124 = self->_processedFrameCount;
          LODWORD(__str.__r_.__value_.__l.__data_) = v131;
          *(__str.__r_.__value_.__r.__words + 4) = v91;
          WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str.__r_.__value_.__r.__words[1] + 6) = v123;
          WORD1(__str.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(__str.__r_.__value_.__r.__words[2]) = v122;
          LOWORD(v144) = 1024;
          *(&v144 + 2) = v124;
          _os_log_debug_impl(&dword_2721E4000, v99, OS_LOG_TYPE_DEBUG, "Got keyword %@ [%d, %d] after %d frames, not looking for silence after", &__str, 0x1Eu);
        }

        [(VATKeywordSpotter *)self _handleValidResult:&__dst];
      }
    }

    else
    {
      v109 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        v118 = *(__dst.__r_.__value_.__r.__words[0] + 32);
        v117 = *(__dst.__r_.__value_.__r.__words[0] + 36);
        LODWORD(__str.__r_.__value_.__l.__data_) = v131;
        *(__str.__r_.__value_.__r.__words + 4) = v91;
        WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = v118;
        WORD1(__str.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(__str.__r_.__value_.__r.__words[2]) = v117;
        LOWORD(v144) = 2112;
        *(&v144 + 2) = v92;
        _os_log_debug_impl(&dword_2721E4000, v109, OS_LOG_TYPE_DEBUG, "Keyword %@ [%d,%d] dismissed. %@", &__str, 0x22u);
      }
    }

    sub_272368A90(self->_floatFstDecoder);
LABEL_151:

    goto LABEL_152;
  }

  v15 = _VATLoggingFacility(kVATLogCategoryFramework);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_2721E4000, v15, OS_LOG_TYPE_ERROR, "Got nil acoustic model output", &__str, 2u);
  }

LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_initializeDecoderForKeywordsWithPhonemes:(id)a3
{
  v4 = *MEMORY[0x277D85DE8];
  a3;
  fwrite("Allocating new decoder\n", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
  self->_processedFrameCount = 0;
  operator new();
}

- (BOOL)postKeywordSilenceCheckEnabled
{
  v2 = [(VATKeywordSpotter *)self configuration];
  v3 = [v2 runtime];
  v4 = [v3 postKeywordSilence];

  return v4;
}

- (BOOL)duringKeywordSilenceCheckEnabled
{
  v2 = [(VATKeywordSpotter *)self configuration];
  v3 = [v2 runtime];
  v4 = [v3 duringKeywordSilence];

  return v4;
}

- (BOOL)preKeywordSilenceCheckEnabled
{
  v2 = [(VATKeywordSpotter *)self configuration];
  v3 = [v2 runtime];
  v4 = [v3 preKeywordSilence];

  return v4;
}

- (void)stop
{
  if (self->_isRunning)
  {
    v3 = dispatch_semaphore_create(0);
    fe = self->fe;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_272370840;
    v33[3] = &unk_279E40788;
    v33[4] = self;
    v5 = v3;
    v34 = v5;
    [(FeatureExtractObjc *)fe stopWithCompletionHandlerWithCompletionHandler:v33];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    self->_isRunning = 0;
    self->_processedFrameCount = 0;
    floatFstDecoder = self->_floatFstDecoder;
    sub_272368A90(floatFstDecoder);
    floatFstDecoder[8] = 0;
    v7 = floatFstDecoder[5];
    v8 = (v7 >> 7) & 0x1FFFFFFFFFFFFF8;
    v9 = floatFstDecoder[2];
    v31 = floatFstDecoder[3];
    if (v31 == v9)
    {
      v10 = 0;
      v17 = 0;
      v11 = floatFstDecoder + 6;
      v18 = (floatFstDecoder + 1);
    }

    else
    {
      v10 = *(v9 + v8) + 4 * (floatFstDecoder[5] & 0x3FFLL);
      v11 = floatFstDecoder + 6;
      v12 = floatFstDecoder[6] + v7;
      v13 = (v12 >> 7) & 0x1FFFFFFFFFFFFF8;
      v14 = v12 & 0x3FF;
      v15 = *(v9 + v13) + 4 * v14;
      v16 = (v14 | ((v13 - v8) << 7)) - (floatFstDecoder[5] & 0x3FFLL);
      if (v15 == v10)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      v18 = (floatFstDecoder + 1);
    }

    v32 = v8;
    v30 = v10;
    v19 = sub_272366F18((v9 + v8), v10, 0);
    if (v17 >= 1)
    {
      v21 = v19;
      v22 = v20;
      v23 = v17;
      v29 = v5;
      v24 = *v11 - v17;
      v25 = v23;
      v26 = sub_272366F18(v19, v20, v23);
      sub_272367104(v35, (v9 + v32), v30, v21, v22, v26, v27);
      v28 = floatFstDecoder[6] - v25;
      floatFstDecoder[5] += v25;
      floatFstDecoder[6] = v28;
      v5 = v29;
        ;
      }
    }

    [(FeatureExtractObjc *)self->fe reset];
  }
}

- (void)addAudioSamples:(const void *)a3 count:(int)a4 isFloat:(BOOL)a5 filePath:(id)a6 byteCount:(int64_t)a7 currentDuration:(double)a8
{
  objc_storeStrong(&self->_filePath, a6);
  self->_fileCurrentDuration = a8;
  self->_fileByteCount += a7;

  MEMORY[0x2821F9670](self, sel_addAudioSamples_count_isFloat_);
}

- (void)addAudioSamples:(const void *)a3 count:(int)a4 isFloat:(BOOL)a5
{
  fe = self->fe;
  if (a5)
  {
    MEMORY[0x2821F9670](fe, sel_addFloatSamples_count_);
  }

  else
  {
    MEMORY[0x2821F9670](fe, sel_addSamples_count_);
  }
}

- (void)setStreamingMode:(BOOL)a3
{
  fe = self->fe;
  if (fe)
  {

    MEMORY[0x2821F9670](fe, sel_setStreamingModeWithStreaming_);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_2721E4000, v6, OS_LOG_TYPE_INFO, "VATKeywordSpotter setStreamingMode ignored due to fe being null", v7, 2u);
    }
  }
}

- (void)start
{
  filePath = self->_filePath;
  self->_filePath = 0;

  self->_fileByteCount = 0;
  self->_fileCurrentDuration = 0.0;
  if (!self->_isRunning)
  {
    v4 = dispatch_semaphore_create(0);
    fe = self->fe;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_27237261C;
    v7[3] = &unk_279E40760;
    v8 = v4;
    v6 = v4;
    [(FeatureExtractObjc *)fe startWithCompletionHandlerWithCompletionHandler:v7];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    self->_isRunning = 1;
  }
}

- (VATKeywordSpotter)initWithConfig:(id)a3 keywordsWithPhonemes:(id)a4 delegate:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = VATKeywordSpotter;
  v11 = [(VATKeywordSpotter *)&v30 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  v29 = 0;
  v12 = [[VATConfiguration alloc] initWithFilename:v8 error:&v29];
  v13 = v29;
  if (!v12)
  {
    v18 = _VATLoggingFacility("VATKeywordSpotter");
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v17 = 0;
      goto LABEL_10;
    }

    *location = 138412546;
    *&location[4] = v8;
    v32 = 2112;
    v33 = v13;
    v19 = "Failed to load config from %@: %@";
    v20 = v18;
    v21 = 22;
LABEL_12:
    _os_log_error_impl(&dword_2721E4000, v20, OS_LOG_TYPE_ERROR, v19, location, v21);
    goto LABEL_9;
  }

  [(VATKeywordSpotter *)v11 setConfiguration:v12];
  v14 = [[FeatureExtractObjc alloc] initWithConfig:v12];
  fe = v11->fe;
  v11->fe = v14;

  if (!v11->fe)
  {
    v18 = _VATLoggingFacility("VATKeywordSpotter");
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *location = 0;
    v19 = "Failed to create frontend or AM neural net";
    v20 = v18;
    v21 = 2;
    goto LABEL_12;
  }

  objc_storeStrong(&v11->_delegate, a5);
  objc_storeStrong(&v11->_keywordsWithPhonemes, a4);
  [(VATKeywordSpotter *)v11 _initializeDecoderForKeywordsWithPhonemes:v9];
  objc_initWeak(location, v11);
  v16 = v11->fe;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_272372928;
  v27 = &unk_279E40738;
  objc_copyWeak(&v28, location);
  [(FeatureExtractObjc *)v16 addCallbackForAcousticModelOutputAvailableWithCallback:&v24];
  [(VATKeywordSpotter *)v11 start:v24];
  objc_destroyWeak(&v28);
  objc_destroyWeak(location);

LABEL_5:
  v17 = v11;
LABEL_10:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (VATKeywordSpotter)initWithConfig:(id)a3 keywords:(id)a4 delegate:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = self;
  v11 = objc_alloc_init(G2PFactoredObjc);
  [(G2PFactoredObjc *)v11 setup];
  v12 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [(G2PFactoredObjc *)v11 getPhrasePronounciationWithPhrase:*(*(&v22 + 1) + 8 * v16) wordSep:@"<w>" prefixWithPhrase:1];
        if (v17)
        {
          [v12 addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = [(VATKeywordSpotter *)v21 initWithConfig:v8 keywordsWithPhonemes:v12 delegate:v10];
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)updateWithKeywordsWithPhonemes:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(VATKeywordSpotter *)self stop];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = v9;
        sub_27236B1B4(__p, [v9 UTF8String]);
        sub_27236B26C(&v25, __p);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v6);
  }

  floatFstDecoder = self->_floatFstDecoder;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  sub_27236B398(&v15, v25, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3));
  sub_27236B420(v18, floatFstDecoder, v15, v16);
  sub_27236FEDC(v18[2]);
  v12 = v18[0];
  v18[0] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  __p[0] = &v15;
  sub_27236A158(__p);
  v13 = self->_floatFstDecoder;
  sub_27236C8E0(v13 + 23, (-1431655765 * ((v13[11] - v13[10]) >> 3)));
  sub_272368A90(v13);
  sub_272368A90(self->_floatFstDecoder);
  [(VATKeywordSpotter *)self start];
  __p[0] = &v25;
  sub_27236A158(__p);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateWithKeywords:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(G2PFactoredObjc);
  [(G2PFactoredObjc *)v5 setup];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(G2PFactoredObjc *)v5 getPhrasePronounciationWithPhrase:*(*(&v13 + 1) + 8 * v10) wordSep:@"<w>" prefixWithPhrase:1, v13];
        if (v11)
        {
          [v6 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(VATKeywordSpotter *)self updateWithKeywordsWithPhonemes:v6];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  floatFstDecoder = self->_floatFstDecoder;
  if (floatFstDecoder)
  {
    (*(*floatFstDecoder + 8))(floatFstDecoder, a2);
  }

  [(VATKeywordSpotter *)self _categoryDealloc];
  v4.receiver = self;
  v4.super_class = VATKeywordSpotter;
  [(VATKeywordSpotter *)&v4 dealloc];
}

+ (id)pronounciationsFor:(id)a3 wordSeparator:(id)a4
{
  v4 = [VATKeywordSpotter pronounciationsFor:a3 wordSeparator:a4 prefixWithPhrase:0];

  return v4;
}

@end