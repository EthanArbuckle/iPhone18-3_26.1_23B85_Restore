@interface TTSSSEUtils
+ (id)combinedProsodyMarkupForString:(id)a3 rate:(id)a4 pitch:(id)a5 volume:(id)a6;
+ (id)enclosedStringWithPhonemes:(id)a3 originalString:(id)a4;
+ (id)genericMarkerMarkupWithName:(id)a3;
+ (id)speechMarkupStringForType:(int64_t)a3 string:(id)a4;
@end

@implementation TTSSSEUtils

+ (id)enclosedStringWithPhonemes:(id)a3 originalString:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v11 = objc_msgSend_xmlEscaped(a4, v7, v8, v9, v10);
  v15 = objc_msgSend_stringWithFormat_(v6, v12, @"<phoneme alphabet=ipa ph=%@>%@</phoneme>", v13, v14, v5, v11);

  return v15;
}

+ (id)genericMarkerMarkupWithName:(id)a3
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"<mark name=%@ />", v3, v4, a3);

  return v5;
}

+ (id)speechMarkupStringForType:(int64_t)a3 string:(id)a4
{
  v5 = a4;
  v10 = v5;
  if ((a3 - 1) < 2)
  {
LABEL_6:
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"<say-as interpret-as=characters>%@</say-as>", v8, v9, v10);
    goto LABEL_9;
  }

  if (a3)
  {
    if (a3 == 3)
    {
      if (objc_msgSend_length(v5, v6, v7, v8, v9) == 1)
      {
        v12 = objc_msgSend_lowercaseString(v10, v6, v11, v8, v9);

        v10 = v12;
      }

      goto LABEL_6;
    }

    v13 = &stru_1F1CFF8D8;
  }

  else
  {
    v13 = @"<break time=%dms />";
  }

LABEL_9:

  return v13;
}

+ (id)combinedProsodyMarkupForString:(id)a3 rate:(id)a4 pitch:(id)a5 volume:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = objc_msgSend_shared(_TtC12TextToSpeech12SSMLServices, v13, v14, v15, v16);
  v19 = objc_msgSend_makeProsodySnippetWithString_rate_pitch_volume_(v17, v18, v9, v10, v11, v12);

  if (objc_msgSend_isEqual_(v19, v20, v9, v21, v22))
  {
    v23 = v9;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23;

  return v23;
}

@end