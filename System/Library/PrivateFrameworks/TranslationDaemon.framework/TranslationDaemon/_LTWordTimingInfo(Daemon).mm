@interface _LTWordTimingInfo(Daemon)
+ (id)smoothedWordTimingWithTextRangeInfoFrom:()Daemon wordTimingInfo:;
+ (id)wordTimingInfoFromArray:()Daemon text:;
+ (id)wordTimingInfoFromSiriTTSService:()Daemon text:;
- (id)initWithFTWordTimingInfo:()Daemon;
@end

@implementation _LTWordTimingInfo(Daemon)

- (id)initWithFTWordTimingInfo:()Daemon
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = &off_284893148;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  if (v5)
  {
    word = [v4 word];
    [v5 setWord:word];

    [v5 setSampleIndex:{objc_msgSend(v4, "sample_idx")}];
    [v5 setOffset:{objc_msgSend(v4, "offset")}];
    [v5 setLength:{objc_msgSend(v4, "length")}];
    [v4 timestamp];
    [v5 setStartTime:v7];
    v8 = v5;
  }

  return v5;
}

+ (id)wordTimingInfoFromArray:()Daemon text:
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = a3;
  array = [v5 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58___LTWordTimingInfo_Daemon__wordTimingInfoFromArray_text___block_invoke;
  v12[3] = &unk_2789B8250;
  v13 = array;
  v9 = array;
  [v7 enumerateObjectsUsingBlock:v12];

  v10 = [objc_opt_class() smoothedWordTimingWithTextRangeInfoFrom:v6 wordTimingInfo:v9];

  return v10;
}

+ (id)wordTimingInfoFromSiriTTSService:()Daemon text:
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = a3;
  array = [v5 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67___LTWordTimingInfo_Daemon__wordTimingInfoFromSiriTTSService_text___block_invoke;
  v12[3] = &unk_2789B8278;
  v13 = array;
  v9 = array;
  [v7 enumerateObjectsUsingBlock:v12];

  v10 = [objc_opt_class() smoothedWordTimingWithTextRangeInfoFrom:v6 wordTimingInfo:v9];

  return v10;
}

+ (id)smoothedWordTimingWithTextRangeInfoFrom:()Daemon wordTimingInfo:
{
  v101 = *MEMORY[0x277D85DE8];
  v84 = a3;
  v5 = a4;
  array = [MEMORY[0x277CBEB18] array];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v90;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v90 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v89 + 1) + 8 * i);
        v12 = _LTOSLogTTS();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v95 = v11;
          _os_log_debug_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEBUG, "Smoothing _LTWordTimingInfo: %@", buf, 0xCu);
        }

        v13 = objc_alloc_init(MEMORY[0x277CE1C50]);
        word = [v11 word];
        [v13 setWord:word];

        [v13 setSampleIndex:{objc_msgSend(v11, "sampleIndex")}];
        [v11 startTime];
        [v13 setStartTime:?];
        offset = [v11 offset];
        v16 = [v11 length];
        if (NSClassFromString(&cfstr_Sirittsnsrange.isa))
        {
          v17 = [NSClassFromString(&cfstr_Sirittsnsrange.isa) mapUtf8RangeToUtf16:offset inText:v16, v84];
          [v13 setTextRange:{v17, v18}];
        }

        [v13 textRange];
        [v13 setLength:v19];
        [v13 setOffset:{objc_msgSend(v13, "textRange")}];
        if ([v13 textRange] != offset || v20 != v16)
        {
          v21 = _LTOSLogTTS();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = v21;
            v103.location = offset;
            v103.length = v16;
            v23 = NSStringFromRange(v103);
            v104.location = [v13 textRange];
            v24 = NSStringFromRange(v104);
            word2 = [v13 word];
            v26 = [word2 length];
            *buf = 138412802;
            v95 = v23;
            v96 = 2112;
            v97 = v24;
            v98 = 2048;
            v99 = v26;
            _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_INFO, "Corrected FTWordTimingInfo UTF8(%@) range to UTF16(%@), word length: %zu", buf, 0x20u);
          }
        }

        if (v8 && ([v8 startTime], v28 = v27, objc_msgSend(v13, "startTime"), v28 == v29))
        {
          v30 = _LTOSLogTTS();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Merging _LTWordTimingInfo to previous one because same start timestamp", buf, 2u);
          }

          word3 = [v8 word];
          word4 = [v13 word];
          v33 = [word3 stringByAppendingString:word4];
          [v8 setWord:v33];

          [v8 textRange];
          v35 = v34;
          word5 = [v13 word];
          v37 = [word5 length] + v35;

          [v8 setTextRange:{objc_msgSend(v8, "textRange"), v37}];
          [v8 setLength:v37];
        }

        else
        {
          [array addObject:v13];
          v38 = v13;

          v8 = v38;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = array;
  v39 = [v83 countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (!v39)
  {
    length = 0;
    v64 = v84;
    goto LABEL_47;
  }

  v41 = v39;
  length = 0;
  location = 0;
  v44 = 0;
  v45 = *v86;
  *&v40 = 134218240;
  v80 = v40;
  do
  {
    v46 = 0;
    do
    {
      v47 = v44;
      if (*v86 != v45)
      {
        objc_enumerationMutation(v83);
      }

      v48 = *(*(&v85 + 1) + 8 * v46);
      v49 = _LTOSLogTTS();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v95 = v48;
        _os_log_debug_impl(&dword_232E53000, v49, OS_LOG_TYPE_DEBUG, "Smoothed _LTWordTimingInfo:\n%@", buf, 0xCu);
      }

      v110.location = [v48 textRange];
      v110.length = v50;
      v105.location = location;
      v105.length = length;
      v51 = NSUnionRange(v105, v110);
      location = v51.location;
      length = v51.length;
      word6 = [v48 word];
      v53 = [word6 length];
      [v48 textRange];
      v55 = v54;

      if (v53 != v55 && (v56 = _LTOSLogTTS(), os_log_type_enabled(v56, OS_LOG_TYPE_ERROR)))
      {
        v66 = v56;
        word7 = [v48 word];
        v68 = [word7 length];
        [v48 textRange];
        *buf = v80;
        v95 = v68;
        v96 = 2048;
        v97 = v69;
        _os_log_error_impl(&dword_232E53000, v66, OS_LOG_TYPE_ERROR, "_LTWordTimingInfo word length(%zu) and text range length(%zu) don't match", buf, 0x16u);

        if (!v47)
        {
          goto LABEL_37;
        }
      }

      else if (!v47)
      {
        goto LABEL_37;
      }

      textRange = [v47 textRange];
      v59 = v58;
      v111.location = [v48 textRange];
      v111.length = v60;
      v106.location = textRange;
      v106.length = v59;
      if (NSIntersectionRange(v106, v111).length)
      {
        v61 = _LTOSLogTTS();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v73 = v61;
          v108.location = [v48 textRange];
          v74 = NSStringFromRange(v108);
          v109.location = [v47 textRange];
          v75 = NSStringFromRange(v109);
          *buf = 138412546;
          v95 = v74;
          v96 = 2112;
          v97 = v75;
          _os_log_error_impl(&dword_232E53000, v73, OS_LOG_TYPE_ERROR, "_LTWordTimingInfo text range(%@) overlaps with previous one(%@)", buf, 0x16u);
        }
      }

LABEL_37:
      textRange2 = [v48 textRange];
      [v48 textRange];
      v64 = v84;
      if (v63 + textRange2 > [v84 length])
      {
        v65 = _LTOSLogTTS();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v70 = v65;
          v107.location = [v48 textRange];
          v71 = NSStringFromRange(v107);
          v72 = [v84 length];
          *buf = 138412546;
          v95 = v71;
          v96 = 2048;
          v97 = v72;
          _os_log_error_impl(&dword_232E53000, v70, OS_LOG_TYPE_ERROR, "_LTWordTimingInfo text range(%@) is out of range from total text(text.length: %zu)", buf, 0x16u);
        }
      }

      v44 = v48;

      ++v46;
    }

    while (v41 != v46);
    v76 = [v83 countByEnumeratingWithState:&v85 objects:v93 count:16];
    v41 = v76;
  }

  while (v76);

LABEL_47:
  if (length != [v64 length])
  {
    v77 = _LTOSLogTTS();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      [(_LTWordTimingInfo(Daemon) *)v77 smoothedWordTimingWithTextRangeInfoFrom:v64 wordTimingInfo:length];
    }
  }

  v78 = *MEMORY[0x277D85DE8];

  return v83;
}

+ (void)smoothedWordTimingWithTextRangeInfoFrom:()Daemon wordTimingInfo:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 134218240;
  v8 = a3;
  v9 = 2048;
  v10 = [a2 length];
  _os_log_error_impl(&dword_232E53000, v5, OS_LOG_TYPE_ERROR, "Union of _LTWordTimingInfo ranges length(%zu) does not match text length(%zu)", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end