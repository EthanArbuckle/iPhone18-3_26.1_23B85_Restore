@interface TTSSSEUtils
+ (id)combinedProsodyMarkupForString:(id)string rate:(id)rate pitch:(id)pitch volume:(id)volume;
+ (id)enclosedStringWithPhonemes:(id)phonemes originalString:(id)string;
+ (id)genericMarkerMarkupWithName:(id)name;
+ (id)speechMarkupStringForType:(int64_t)type string:(id)string;
@end

@implementation TTSSSEUtils

+ (id)enclosedStringWithPhonemes:(id)phonemes originalString:(id)string
{
  phonemesCopy = phonemes;
  v6 = MEMORY[0x1E696AEC0];
  v11 = objc_msgSend_xmlEscaped(string, v7, v8, v9, v10);
  v15 = objc_msgSend_stringWithFormat_(v6, v12, @"<phoneme alphabet=ipa ph=%@>%@</phoneme>", v13, v14, phonemesCopy, v11);

  return v15;
}

+ (id)genericMarkerMarkupWithName:(id)name
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"<mark name=%@ />", v3, v4, name);

  return v5;
}

+ (id)speechMarkupStringForType:(int64_t)type string:(id)string
{
  stringCopy = string;
  v10 = stringCopy;
  if ((type - 1) < 2)
  {
LABEL_6:
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"<say-as interpret-as=characters>%@</say-as>", v8, v9, v10);
    goto LABEL_9;
  }

  if (type)
  {
    if (type == 3)
    {
      if (objc_msgSend_length(stringCopy, v6, v7, v8, v9) == 1)
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

+ (id)combinedProsodyMarkupForString:(id)string rate:(id)rate pitch:(id)pitch volume:(id)volume
{
  stringCopy = string;
  rateCopy = rate;
  pitchCopy = pitch;
  volumeCopy = volume;
  v17 = objc_msgSend_shared(_TtC12TextToSpeech12SSMLServices, v13, v14, v15, v16);
  v19 = objc_msgSend_makeProsodySnippetWithString_rate_pitch_volume_(v17, v18, stringCopy, rateCopy, pitchCopy, volumeCopy);

  if (objc_msgSend_isEqual_(v19, v20, stringCopy, v21, v22))
  {
    v23 = stringCopy;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23;

  return v23;
}

@end