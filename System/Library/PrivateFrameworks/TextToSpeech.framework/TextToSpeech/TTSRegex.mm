@interface TTSRegex
- (TTSRegex)initWithCStringPattern:(const char *)a3 options:(unint64_t)a4;
- (TTSRegex)initWithPattern:(id)a3 options:(unint64_t)a4;
- (TTSRegex)initWithPerlPattern:(id)a3;
- (id)matchesInCString:(const char *)a3 length:(unint64_t)a4;
- (void)dealloc;
- (void)enumerateMatchesInCString:(const char *)a3 ranges:(id)a4 usingBlock:(id)a5;
- (void)enumerateMatchesInCString:(const char *)a3 startOffset:(unint64_t)a4 length:(unint64_t)a5 usingBlock:(id)a6;
@end

@implementation TTSRegex

- (void)dealloc
{
  if (objc_msgSend_compiledPCRERegex(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_compiledPCRERegex(self, v6, v7, v8, v9);
    pcre2_code_free_8(v10);
  }

  v11.receiver = self;
  v11.super_class = TTSRegex;
  [(TTSRegex *)&v11 dealloc];
}

- (TTSRegex)initWithPerlPattern:(id)a3
{
  v4 = a3;
  hasSuffix = objc_msgSend_hasSuffix_(v4, v5, @"/i", v6, v7);
  v16 = objc_msgSend_hasSuffix_(v4, v9, @"/i", v10, v11);
  if (hasSuffix)
  {
    v17 = objc_msgSend_length(v4, v12, v13, v14, v15);
    v21 = objc_msgSend_substringToIndex_(v4, v18, v17 - 1, v19, v20);

    v4 = v21;
  }

  if (v16)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v23 = objc_msgSend_length(v4, v12, v13, v14, v15);
  v26 = objc_msgSend_substringWithRange_(v4, v24, 1, v23 - 2, v25);

  v29 = objc_msgSend_initWithPattern_options_(self, v27, v26, v22, v28);
  return v29;
}

- (TTSRegex)initWithPattern:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v11 = objc_msgSend_cStringUsingEncoding_(a3, v8, 4, v9, v10);

  return MEMORY[0x1EEE66B58](self, sel_initWithCStringPattern_options_, v11, a4, v12);
}

- (TTSRegex)initWithCStringPattern:(const char *)a3 options:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = TTSRegex;
  v4 = [(TTSRegex *)&v19 init];
  if (!v4)
  {
    goto LABEL_4;
  }

  v18 = 0;
  v17 = 0;
  v5 = pcre2_compile_8();
  if (v5)
  {
    objc_msgSend_setCompiledPCRERegex_(v4, v6, v5, v7, v8);
LABEL_4:
    v9 = v4;
    goto LABEL_8;
  }

  pcre2_get_error_message_8(v18, v20, 512);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, v20, v11, v12);
  v14 = AXTTSLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1A95783A4(&v17, v13, v14);
  }

  v9 = 0;
LABEL_8:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)enumerateMatchesInCString:(const char *)a3 startOffset:(unint64_t)a4 length:(unint64_t)a5 usingBlock:(id)a6
{
  v9 = a6;
  v14 = objc_msgSend_compiledPCRERegex(self, v10, v11, v12, v13);
  v15 = pcre2_match_data_create_from_pattern_8(v14, 0);
  objc_msgSend_compiledPCRERegex(self, v16, v17, v18, v19);
  matched = pcre2_match_8();
  if (matched == -1)
  {
    pcre2_match_data_free_8(v15);
    goto LABEL_34;
  }

  v21 = matched;
  ovector_pointer_8 = pcre2_get_ovector_pointer_8(v15);
  v24 = objc_msgSend__matchFromOvector_matches_string_length_(self, v23, ovector_pointer_8, v21, a3, a5);
  if (v24)
  {
    v9[2](v9, v24);
  }

  v42 = v24;
  HIDWORD(v46) = 0;
  pcre2_pattern_info_8(v14, 0, (&v46 + 4));
  v45 = HIDWORD(v46);
  LODWORD(v46) = 0;
  pcre2_pattern_info_8(v14, 0x14u, &v46);
  v43 = v46 - 3;
  v44 = a5 - 1;
  while (1)
  {
    while (1)
    {
      v25 = ovector_pointer_8[1];
      if (*ovector_pointer_8 != v25)
      {
        break;
      }

      if (v25 == a5)
      {
        goto LABEL_33;
      }

      v26 = ovector_pointer_8[1];
      v27 = pcre2_match_8();
      if (v27 != -1)
      {
        goto LABEL_15;
      }

      v29 = v25 + 1;
      ovector_pointer_8[1] = v25 + 1;
      if (v43 <= 2 && v25 < v44 && a3[v25] == 13 && a3[v29] == 10)
      {
        ovector_pointer_8[1] = v25 + 2;
      }

      else if ((v45 & 0x80000) != 0 && v29 < a5)
      {
        v34 = &a3[v25 + 1];
        v35 = v44 - v25;
        v36 = v25 + 2;
        do
        {
          v37 = *v34++;
          if ((v37 & 0xC0) != 0x80)
          {
            break;
          }

          ovector_pointer_8[1] = v36++;
          --v35;
        }

        while (v35);
      }
    }

    startchar_8 = pcre2_get_startchar_8(v15);
    if (v25 <= startchar_8)
    {
      if (startchar_8 >= a5)
      {
        goto LABEL_33;
      }

      v33 = startchar_8 + 1;
      if ((v45 & 0x80000) != 0 && v33 < a5)
      {
        do
        {
          if ((a3[v33] & 0xC0) != 0x80)
          {
            break;
          }

          ++v33;
        }

        while (a5 != v33);
      }
    }

    v27 = pcre2_match_8();
    if (v27 == -1)
    {
      goto LABEL_33;
    }

LABEL_15:
    v31 = v27;
    if ((v27 & 0x80000000) != 0)
    {
      break;
    }

    v32 = objc_msgSend__matchFromOvector_matches_string_length_(self, v28, ovector_pointer_8, v27, a3, a5, v42);
    v9[2](v9, v32);
  }

  v38 = AXTTSLogCommon();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    sub_1A9578430(v31, v38, v39, v40, v41);
  }

LABEL_33:
  pcre2_match_data_free_8(v15);

LABEL_34:
}

- (void)enumerateMatchesInCString:(const char *)a3 ranges:(id)a4 usingBlock:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v22, v26, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = objc_msgSend_rangeValue(*(*(&v22 + 1) + 8 * v18), v12, v13, v14, v15);
        objc_msgSend_enumerateMatchesInCString_startOffset_length_usingBlock_(self, v20, a3, v19, &v20[v19], v9);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v12, &v22, v26, 16);
    }

    while (v16);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)matchesInCString:(const char *)a3 length:(unint64_t)a4
{
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4, v4);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A93464CC;
  v12[3] = &unk_1E7880328;
  v9 = v8;
  v13 = v9;
  objc_msgSend_enumerateMatchesInCString_length_usingBlock_(self, v10, a3, a4, v12);

  return v9;
}

@end