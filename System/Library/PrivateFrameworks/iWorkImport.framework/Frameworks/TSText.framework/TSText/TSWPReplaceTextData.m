@interface TSWPReplaceTextData
+ (id)replaceTextData;
+ (id)replaceTextDataWithAttachments:(id)a3;
+ (id)replaceTextDataWithDictationAndAutocorrection:(id)a3;
+ (id)replaceTextDataWithLanguage:(id)a3;
+ (id)replaceTextDataWithLanguage:(id)a3 dictationAndAutocorrection:(id)a4;
- (TSWPReplaceTextData)initWithAttachments:(id)a3;
- (TSWPReplaceTextData)initWithLanguage:(id)a3 dictationAndAutocorrection:(id)a4;
- (id)replaceTextDataByChangingDictationAndAutocorrection:(id)a3;
- (id)replaceTextDataByChangingLanguage:(id)a3;
- (id)replaceTextDataByRemovingAttachments;
@end

@implementation TSWPReplaceTextData

+ (id)replaceTextDataWithLanguage:(id)a3 dictationAndAutocorrection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v10 = objc_msgSend_initWithLanguage_dictationAndAutocorrection_(v8, v9, v6, v7);

  return v10;
}

+ (id)replaceTextDataWithLanguage:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithLanguage_(v5, v6, v4);

  return v7;
}

+ (id)replaceTextDataWithDictationAndAutocorrection:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithDictationAndAutocorrection_(v5, v6, v4);

  return v7;
}

+ (id)replaceTextDataWithAttachments:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithAttachments_(v5, v6, v4);

  return v7;
}

+ (id)replaceTextData
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSWPReplaceTextData)initWithLanguage:(id)a3 dictationAndAutocorrection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = TSWPReplaceTextData;
  v10 = [(TSWPReplaceTextData *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    language = v10->_language;
    v10->_language = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    dictationAndAutocorrection = v10->_dictationAndAutocorrection;
    v10->_dictationAndAutocorrection = v15;
  }

  return v10;
}

- (TSWPReplaceTextData)initWithAttachments:(id)a3
{
  v5 = a3;
  v8 = objc_msgSend_init(self, v6, v7);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 24), a3);
  }

  return v9;
}

- (id)replaceTextDataByChangingLanguage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_dictationAndAutocorrection(self, v6, v7);
  v10 = objc_msgSend_replaceTextDataWithLanguage_dictationAndAutocorrection_(v5, v9, v4, v8);

  return v10;
}

- (id)replaceTextDataByChangingDictationAndAutocorrection:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_language(self, v6, v7);
  v10 = objc_msgSend_replaceTextDataWithLanguage_dictationAndAutocorrection_(v5, v9, v8, v4);

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