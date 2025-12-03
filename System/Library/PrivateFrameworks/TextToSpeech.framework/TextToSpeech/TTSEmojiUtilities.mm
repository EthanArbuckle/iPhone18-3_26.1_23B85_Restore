@interface TTSEmojiUtilities
+ (_NSRange)emojiRangeFromString:(id)string withSearchRange:(_NSRange)range;
+ (id)stringByRemovingEmojiCharacters:(id)characters;
+ (id)stringByReplacingEmojiCharactersWithEmojiDescriptions:(id)descriptions stringForPauses:(id)pauses language:(id)language rangeReplacements:(id)replacements appendEmojiSuffix:(BOOL)suffix;
+ (void)_initializeEmojiStructures:(id)structures;
+ (void)enumerateEmojiCharactersInString:(id)string languageCode:(id)code withBlock:(id)block;
@end

@implementation TTSEmojiUtilities

+ (_NSRange)emojiRangeFromString:(id)string withSearchRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = &unk_1A95FC00D;
  v23 = xmmword_1A9586960;
  v9 = objc_msgSend_substringWithRange_(stringCopy, v7, location, length, v8);
  objc_msgSend_length(v9, v10, v11, v12, v13);
  CEMEnumerateEmojiTokensInStringWithBlock();
  v14 = v20[4];
  v15 = v20[5];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v14 + location;
  }

  _Block_object_dispose(&v19, 8);
  v17 = v16;
  v18 = v15;
  result.length = v18;
  result.location = v17;
  return result;
}

+ (void)_initializeEmojiStructures:(id)structures
{
  structuresCopy = structures;
  v8 = structuresCopy;
  if (qword_1ED970FF0 != -1)
  {
    sub_1A9578200();
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!structuresCopy)
  {
LABEL_3:
    v9 = objc_msgSend_currentLanguageCode(TTSSpeechManager, v4, v5, v6, v7);
    v8 = AXCRemapLanguageCodeToFallbackIfNeccessary();
  }

LABEL_4:
  v10 = qword_1ED9702A0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A9342FB0;
  block[3] = &unk_1E787FE20;
  v13 = v8;
  v11 = v8;
  dispatch_sync(v10, block);
}

+ (id)stringByRemovingEmojiCharacters:(id)characters
{
  charactersCopy = characters;
  objc_msgSend__initializeEmojiStructures_(self, v5, 0, v6, v7);
  v12 = objc_msgSend_mutableCopy(charactersCopy, v8, v9, v10, v11);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93431F0;
  block[3] = &unk_1E787FF60;
  block[4] = &v23;
  dispatch_sync(qword_1ED9702A0, block);
  v13 = objc_autoreleasePoolPush();
  objc_msgSend_length(charactersCopy, v14, v15, v16, v17);
  v18 = v24[3];
  v19 = v12;
  CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
  v20 = v24[3];
  if (v20)
  {
    CFRelease(v20);
    v24[3] = 0;
  }

  objc_autoreleasePoolPop(v13);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);

  return v19;
}

+ (void)enumerateEmojiCharactersInString:(id)string languageCode:(id)code withBlock:(id)block
{
  stringCopy = string;
  codeCopy = code;
  blockCopy = block;
  if (stringCopy)
  {
    objc_msgSend__initializeEmojiStructures_(self, v10, codeCopy, v11, v12);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9343424;
    block[3] = &unk_1E787FF60;
    block[4] = &v22;
    dispatch_sync(qword_1ED9702A0, block);
    objc_msgSend_length(stringCopy, v14, v15, v16, v17);
    v18 = v23[3];
    v20 = blockCopy;
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    v19 = v23[3];
    if (v19)
    {
      CFRelease(v19);
      v23[3] = 0;
    }

    _Block_object_dispose(&v22, 8);
  }
}

+ (id)stringByReplacingEmojiCharactersWithEmojiDescriptions:(id)descriptions stringForPauses:(id)pauses language:(id)language rangeReplacements:(id)replacements appendEmojiSuffix:(BOOL)suffix
{
  descriptionsCopy = descriptions;
  pausesCopy = pauses;
  languageCopy = language;
  replacementsCopy = replacements;
  if (descriptionsCopy)
  {
    v19 = objc_msgSend_mutableCopy(descriptionsCopy, v14, v15, v16, v17);
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = 0;
    v20 = objc_opt_class();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1A93436D8;
    v26[3] = &unk_1E78802C8;
    suffixCopy = suffix;
    v27 = languageCopy;
    v28 = pausesCopy;
    v29 = descriptionsCopy;
    v21 = v19;
    v30 = v21;
    v32 = v34;
    v31 = replacementsCopy;
    objc_msgSend_enumerateEmojiCharactersInString_languageCode_withBlock_(v20, v22, v29, v27, v26);
    v23 = v31;
    v24 = v21;

    _Block_object_dispose(v34, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end