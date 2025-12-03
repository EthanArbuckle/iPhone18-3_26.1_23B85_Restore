@interface TSWPTranscriber
+ (id)transcriberWithIdentifier:(id)identifier displayName:(id)name romanizationLocaleID:(id)d transformIdentifier:(id)transformIdentifier;
- (TSWPTranscriber)initWithIdentifier:(id)identifier displayName:(id)name romanizationLocaleID:(id)d transformIdentifier:(id)transformIdentifier;
- (id)transcribeText:(id)text;
- (id)transcribeText:(id)text withLocale:(id)locale;
- (void)transcribeWordsInText:(id)text withRange:(_NSRange)range locale:(id)locale block:(id)block;
@end

@implementation TSWPTranscriber

- (TSWPTranscriber)initWithIdentifier:(id)identifier displayName:(id)name romanizationLocaleID:(id)d transformIdentifier:(id)transformIdentifier
{
  identifierCopy = identifier;
  nameCopy = name;
  dCopy = d;
  transformIdentifierCopy = transformIdentifier;
  v32.receiver = self;
  v32.super_class = TSWPTranscriber;
  v16 = [(TSWPTranscriber *)&v32 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(identifierCopy, v14, v15);
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v21 = objc_msgSend_copy(nameCopy, v19, v20);
    displayName = v16->_displayName;
    v16->_displayName = v21;

    v25 = objc_msgSend_copy(transformIdentifierCopy, v23, v24);
    transformIdentifier = v16->_transformIdentifier;
    v16->_transformIdentifier = v25;

    v27 = objc_alloc(MEMORY[0x277CBEAF8]);
    v29 = objc_msgSend_initWithLocaleIdentifier_(v27, v28, dCopy);
    romanizationLocale = v16->_romanizationLocale;
    v16->_romanizationLocale = v29;
  }

  return v16;
}

+ (id)transcriberWithIdentifier:(id)identifier displayName:(id)name romanizationLocaleID:(id)d transformIdentifier:(id)transformIdentifier
{
  identifierCopy = identifier;
  nameCopy = name;
  dCopy = d;
  transformIdentifierCopy = transformIdentifier;
  v13 = objc_alloc(objc_opt_class());
  v15 = objc_msgSend_initWithIdentifier_displayName_romanizationLocaleID_transformIdentifier_(v13, v14, identifierCopy, nameCopy, dCopy, transformIdentifierCopy);

  return v15;
}

- (id)transcribeText:(id)text
{
  v3 = objc_msgSend_transcribeText_withLocale_(self, a2, text, self->_romanizationLocale);

  return v3;
}

- (id)transcribeText:(id)text withLocale:(id)locale
{
  textCopy = text;
  localeCopy = locale;
  v10 = objc_msgSend_string(MEMORY[0x277CCAB68], v8, v9);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v13 = objc_msgSend_length(textCopy, v11, v12);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_276E04570;
  v27[3] = &unk_27A6F4BC8;
  v32 = 1;
  v31 = &v33;
  v14 = v10;
  v28 = v14;
  v15 = textCopy;
  v29 = v15;
  selfCopy = self;
  sub_276E0405C(v15, 0, v13, localeCopy, v27);
  if (objc_msgSend_length(v15, v16, v17))
  {
    v20 = v34[3];
    if (v20 < objc_msgSend_length(v15, v18, v19) - 1)
    {
      v21 = objc_msgSend_substringFromIndex_(v15, v18, v34[3]);
      objc_msgSend_appendString_(v14, v22, v21);
    }
  }

  v23 = objc_msgSend_tsp_protobufString(v14, v18, v19);
  v24 = &stru_28860A0F0;
  if (v23)
  {
    v24 = v14;
  }

  v25 = v24;

  _Block_object_dispose(&v33, 8);

  return v25;
}

- (void)transcribeWordsInText:(id)text withRange:(_NSRange)range locale:(id)locale block:(id)block
{
  length = range.length;
  location = range.location;
  textCopy = text;
  localeCopy = locale;
  blockCopy = block;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276E047B0;
  v17[3] = &unk_27A6F4BF0;
  v18 = textCopy;
  selfCopy = self;
  v20 = localeCopy;
  v21 = blockCopy;
  v14 = blockCopy;
  v15 = localeCopy;
  v16 = textCopy;
  sub_276E0405C(v16, location, length, v15, v17);
}

@end