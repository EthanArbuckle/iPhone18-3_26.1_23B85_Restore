@interface TTSPhonemeSupport
+ (id)_getPhonemeMapForSynth:(id)a3 language:(id)a4;
+ (id)_ipaVectorFromString:(id)a3;
+ (id)_phonemesFromIPA:(id)a3 language:(id)a4 synth:(id)a5;
+ (id)applebetPhonemesFromIPA:(id)a3;
+ (id)eloquencePhonemesFromIPA:(id)a3 language:(id)a4;
+ (id)supportedIPAPhonemeLanguages;
@end

@implementation TTSPhonemeSupport

+ (id)applebetPhonemesFromIPA:(id)a3
{
  v4 = objc_msgSend_lhPhonemesFromIPA_language_(a1, a2, a3, @"en-US", v3);
  v8 = objc_msgSend_convertLHToApplebet_(TTSLHPhonemeToApplebetPhonemeMapper, v5, v4, v6, v7);

  return v8;
}

+ (id)_getPhonemeMapForSynth:(id)a3 language:(id)a4
{
  v5 = a3;
  v10 = a4;
  if (qword_1EB390FF0 != -1)
  {
    sub_1A95788B8();
  }

  objc_msgSend_lock(qword_1EB390FE8, v6, v7, v8, v9);
  v14 = objc_msgSend_objectForKeyedSubscript_(qword_1EB390FE0, v11, v5, v12, v13);
  v18 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v10, v16, v17);

  if (!v18)
  {
    v18 = _TTSLoadIPAToNativePhonemeMapForLanguage(v10, v5, v20, v21, v22);
    if (v18)
    {
      v23 = objc_msgSend_objectForKeyedSubscript_(qword_1EB390FE0, v19, v5, v21, v22);

      if (!v23)
      {
        v28 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v24, v25, v26, v27);
        objc_msgSend_setObject_forKeyedSubscript_(qword_1EB390FE0, v29, v28, v5, v30);
      }

      v31 = objc_msgSend_objectForKeyedSubscript_(qword_1EB390FE0, v24, v5, v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v32, v18, v10, v33);
    }
  }

  objc_msgSend_unlock(qword_1EB390FE8, v19, v20, v21, v22);

  return v18;
}

+ (id)_ipaVectorFromString:(id)a3
{
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a3, a2, @"ˌ", &stru_1F1CFF8D8, v3);
  v9 = objc_msgSend_length(v4, v5, v6, v7, v8);
  v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13);
  if (v9 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v4, v14, v18, v15, v16);
      v21 = v20;
      v23 = objc_msgSend_substringWithRange_(v4, v20, v19, v20, v22);
      v27 = v23;
      if (v21 == 2 && objc_msgSend_characterAtIndex_(v23, v24, 1, v25, v26) == 865 && v9 >= v18 + 2)
      {
        v28 = objc_msgSend_substringWithRange_(v4, v24, v19, 3, v26);

        ++v18;
        v27 = v28;
      }

      objc_msgSend_addObject_(v17, v24, v27, v25, v26);
      v18 += v21;
    }

    while (v18 < v9);
  }

  return v17;
}

+ (id)_phonemesFromIPA:(id)a3 language:(id)a4 synth:(id)a5
{
  v7 = a3;
  v8 = a4;
  v11 = a5;
  if (!v8)
  {
    v8 = TTSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
  }

  v15 = objc_msgSend__getPhonemeMapForSynth_language_(TTSPhonemeSupport, v9, v11, v8, v10);
  if (v15)
  {
    v55 = v11;
    v56 = v7;
    v16 = objc_msgSend__ipaVectorFromString_(TTSPhonemeSupport, v12, v7, v13, v14);
    v17 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (objc_msgSend_count(v16, v18, v19, v20, v21))
    {
      v25 = 0;
      do
      {
        v26 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, v25, v23, v24);
        v30 = objc_msgSend_objectForKeyedSubscript_(v15, v27, v26, v28, v29);
        v31 = v25 + 1;
        if (v25 + 1 < objc_msgSend_count(v16, v32, v33, v34, v35))
        {
          v39 = objc_msgSend_objectAtIndexedSubscript_(v16, v36, v25 + 1, v37, v38);
          v43 = objc_msgSend_stringByAppendingString_(v26, v40, v39, v41, v42);

          v47 = objc_msgSend_objectForKeyedSubscript_(v15, v44, v43, v45, v46);
          v48 = v47;
          if (v47)
          {
            v49 = v47;

            v30 = v49;
            v25 = v31;
          }
        }

        if (v30)
        {
          objc_msgSend_appendString_(v17, v36, v30, v37, v38);
        }

        else
        {
          objc_msgSend_appendString_(v17, v36, v26, v37, v38);
        }

        ++v25;
      }

      while (v25 < objc_msgSend_count(v16, v50, v51, v52, v53));
    }

    v11 = v55;
    v7 = v56;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)eloquencePhonemesFromIPA:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_msgSend_containsString_(v6, v8, @"ˈ", v9, v10) & 1) != 0 || objc_msgSend_containsString_(v6, v11, @"'", v12, v13))
  {
    v14 = objc_msgSend__phonemesFromIPA_language_synth_(a1, v11, v6, v7, @"Kona");
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)supportedIPAPhonemeLanguages
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v2, v4, v3, v5, v6);
  v10 = objc_msgSend_pathsForResourcesOfType_inDirectory_(v7, v8, @"json", @"PhonemeMaps", v9);

  v45 = objc_msgSend_set(MEMORY[0x1E695DFA8], v11, v12, v13, v14);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = v10;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v46, v50, 16);
  if (v17)
  {
    v21 = v17;
    v22 = *v47;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(v15);
        }

        v24 = *(*(&v46 + 1) + 8 * i);
        if (objc_msgSend_rangeOfString_(v24, v18, @"Vocalizer", v19, v20) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = objc_msgSend_componentsSeparatedByString_(v24, v18, @"Vocalizer-", v19, v20);
          v30 = objc_msgSend_lastObject(v25, v26, v27, v28, v29);

          v34 = objc_msgSend_componentsSeparatedByString_(v30, v31, @".", v32, v33);
          v39 = objc_msgSend_firstObject(v34, v35, v36, v37, v38);

          if (v39)
          {
            objc_msgSend_addObject_(v45, v40, v39, v41, v42);
          }
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v46, v50, 16);
    }

    while (v21);
  }

  v43 = *MEMORY[0x1E69E9840];

  return v45;
}

@end