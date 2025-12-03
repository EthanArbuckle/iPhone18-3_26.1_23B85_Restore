@interface TSWPReplaceTextData
+ (id)replaceTextData;
+ (id)replaceTextDataWithAttachments:(id)attachments;
+ (id)replaceTextDataWithDictationAndAutocorrection:(id)autocorrection;
+ (id)replaceTextDataWithLanguage:(id)language;
+ (id)replaceTextDataWithLanguage:(id)language dictationAndAutocorrection:(id)autocorrection;
- (TSWPReplaceTextData)initWithAttachments:(id)attachments;
- (TSWPReplaceTextData)initWithLanguage:(id)language dictationAndAutocorrection:(id)autocorrection;
- (id)replaceTextDataByChangingDictationAndAutocorrection:(id)autocorrection;
- (id)replaceTextDataByChangingLanguage:(id)language;
- (id)replaceTextDataByRemovingAttachments;
@end

@implementation TSWPReplaceTextData

+ (id)replaceTextDataWithLanguage:(id)language dictationAndAutocorrection:(id)autocorrection
{
  languageCopy = language;
  autocorrectionCopy = autocorrection;
  v8 = [self alloc];
  v10 = objc_msgSend_initWithLanguage_dictationAndAutocorrection_(v8, v9, languageCopy, autocorrectionCopy);

  return v10;
}

+ (id)replaceTextDataWithLanguage:(id)language
{
  languageCopy = language;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithLanguage_(v5, v6, languageCopy);

  return v7;
}

+ (id)replaceTextDataWithDictationAndAutocorrection:(id)autocorrection
{
  autocorrectionCopy = autocorrection;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithDictationAndAutocorrection_(v5, v6, autocorrectionCopy);

  return v7;
}

+ (id)replaceTextDataWithAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithAttachments_(v5, v6, attachmentsCopy);

  return v7;
}

+ (id)replaceTextData
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSWPReplaceTextData)initWithLanguage:(id)language dictationAndAutocorrection:(id)autocorrection
{
  languageCopy = language;
  autocorrectionCopy = autocorrection;
  v18.receiver = self;
  v18.super_class = TSWPReplaceTextData;
  v10 = [(TSWPReplaceTextData *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(languageCopy, v8, v9);
    language = v10->_language;
    v10->_language = v11;

    v15 = objc_msgSend_copy(autocorrectionCopy, v13, v14);
    dictationAndAutocorrection = v10->_dictationAndAutocorrection;
    v10->_dictationAndAutocorrection = v15;
  }

  return v10;
}

- (TSWPReplaceTextData)initWithAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v8 = objc_msgSend_init(self, v6, v7);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 24), attachments);
  }

  return v9;
}

- (id)replaceTextDataByChangingLanguage:(id)language
{
  languageCopy = language;
  v5 = objc_opt_class();
  v8 = objc_msgSend_dictationAndAutocorrection(self, v6, v7);
  v10 = objc_msgSend_replaceTextDataWithLanguage_dictationAndAutocorrection_(v5, v9, languageCopy, v8);

  return v10;
}

- (id)replaceTextDataByChangingDictationAndAutocorrection:(id)autocorrection
{
  autocorrectionCopy = autocorrection;
  v5 = objc_opt_class();
  v8 = objc_msgSend_language(self, v6, v7);
  v10 = objc_msgSend_replaceTextDataWithLanguage_dictationAndAutocorrection_(v5, v9, v8, autocorrectionCopy);

  return v10;
}

- (id)replaceTextDataByRemovingAttachments
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_language(self, v4, v5);
  v9 = objc_msgSend_dictationAndAutocorrection(self, v7, v8);
  v11 = objc_msgSend_replaceTextDataWithLanguage_dictationAndAutocorrection_(v3, v10, v6, v9);

  return v11;
}

@end