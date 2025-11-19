@interface SKGProcessor
+ (BOOL)docContentExceedsMaxAllowedSize:(id)a3;
+ (BOOL)docIsTrashOrJunkMail:(id)a3;
+ (BOOL)recordHasHTMLContent:(id)a3;
+ (BOOL)recordHasTextContent:(id)a3;
+ (id)copyMailboxesFromRecord:(id)a3;
+ (id)embeddingVersionDataWithVersion:(id)a3;
+ (id)normalizeForEmbeddingGeneration:(id)a3 bundleID:(id)a4;
+ (id)sharedProcessor;
+ (unint64_t)getHTMLContentByteSizeForRecord:(id)a3;
+ (unint64_t)getTextContentByteSizeForRecord:(id)a3;
+ (unint64_t)textContentLengthForRecord:(id)a3;
- (BOOL)canGenerateEmbeddingsForFPRecord:(id)a3 bundleID:(id)a4;
- (BOOL)canGenerateEmbeddingsForMailRecord:(id)a3 bundleID:(id)a4;
- (BOOL)docUnderstandingRecordNeedsProcessing:(id)a3 bundleID:(id)a4 isUpdate:(BOOL)a5 hasTextContent:(BOOL)a6 shouldClear:(BOOL *)a7 shouldMarkComplete:(BOOL *)a8;
- (BOOL)extractContentFromRecord:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7;
- (BOOL)extractContentFromRecordForCalendar:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7;
- (BOOL)extractContentFromRecordForEvents:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7;
- (BOOL)extractContentFromRecordForMail:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7;
- (BOOL)extractContentFromRecordForMessages:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7;
- (BOOL)extractContentFromRecordForReminders:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7;
- (BOOL)extractContentFromRecordForSafari:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7;
- (BOOL)extractContentFromRecordForWallet:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7;
- (BOOL)isCJKLanguage:(id)a3;
- (BOOL)isStringOnlyNumbersOrPunctuationSpaces:(id)a3;
- (BOOL)isUpdateFromSpotlightknowledged:(id)a3;
- (BOOL)itemForRecordHasTextContent:(id)a3;
- (BOOL)keyphraseRecordNeedsProcessing:(id)a3 bundleID:(id)a4 isUpdate:(BOOL)a5 hasTextContent:(BOOL)a6 shouldClear:(BOOL *)a7 shouldMarkComplete:(BOOL *)a8;
- (BOOL)needsDocumentUnderstandingForRecord:(id)a3 bundleID:(id)a4;
- (BOOL)needsEmbeddingsForRecord:(id)a3 bundleID:(id)a4;
- (BOOL)needsKeyphrasesForRecord:(id)a3 bundleID:(id)a4;
- (BOOL)needsPriorityForRecord:(id)a3 bundleID:(id)a4;
- (BOOL)needsSKGReindexerEmbeddingsForRecord:(id)a3 bundleID:(id)a4 itemHasText:(BOOL)a5;
- (BOOL)needsSKGReindexerKeyphrasesForRecord:(id)a3 bundleID:(id)a4 itemHasText:(BOOL)a5;
- (BOOL)needsSKGReindexingForRecord:(id)a3 bundleID:(id)a4 processorFlags:(unint64_t)a5;
- (BOOL)needsSuggestedEventsForRecord:(id)a3 bundleID:(id)a4;
- (BOOL)recordForItemHasTextContent:(id)a3;
- (BOOL)recordForItemWillHaveTextContent:(id)a3;
- (BOOL)recordIsCurrent:(id)a3 toCalendarUnit:(unint64_t)a4 maxOffset:(unint64_t)a5 checkFuture:(BOOL)a6 dateKeys:(id)a7;
- (BOOL)recordIsRecent:(id)a3 toCalendarUnit:(unint64_t)a4 maxOffset:(unint64_t)a5 dateKeys:(id)a6;
- (BOOL)shouldGenerateDocumentUnderstandingForRecord:(id)a3 bundleID:(id)a4;
- (BOOL)shouldGenerateEmbeddingsForRecord:(id)a3 bundleID:(id)a4 skipFpRecordCheck:(BOOL)a5;
- (BOOL)shouldGenerateKeyphrasesForRecord:(id)a3 bundleID:(id)a4;
- (BOOL)shouldGenerateSuggestedEventsForRecord:(id)a3 bundleID:(id)a4;
- (BOOL)suggestedEventsRecordNeedsProcessing:(id)a3 bundleID:(id)a4 isUpdate:(BOOL)a5 hasTextContent:(BOOL)a6 shouldClear:(BOOL *)a7 shouldMarkComplete:(BOOL *)a8;
- (BOOL)updateSKGProcessorAttributes:(id)a3 record:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 isUpdate:(BOOL)a7 processorFlags:(unint64_t)a8;
- (BOOL)updateSKGReindexerAttributes:(id)a3 record:(id)a4 bundleID:(id)a5 processorFlags:(unint64_t)a6;
- (BOOL)updateSKGReindexerDocUnderstandingAttributes:(id)a3 record:(id)a4 bundleID:(id)a5 itemHasText:(BOOL)a6;
- (BOOL)updateSKGReindexerEmbeddingAttributes:(id)a3 record:(id)a4 bundleID:(id)a5 itemHasText:(BOOL)a6;
- (SKGProcessor)initWithOptions:(id)a3;
- (id)copyArrayFromRecord:(id)a3 key:(id)a4;
- (id)copyBundleIdentifierFromRecord:(id)a3;
- (id)copyContentTypeFromRecord:(id)a3;
- (id)copyContentURLFromRecord:(id)a3;
- (id)copyDateStringFromRecordWithFormat:(id)a3 key:(id)a4 formatString:(id)a5;
- (id)copyDescriptionContentFromRecord:(id)a3;
- (id)copyDocumentTypesFromRecord:(id)a3;
- (id)copyDocumentUnderstandingVersionFromRecord:(id)a3;
- (id)copyDoubleValueFromRecord:(id)a3 key:(id)a4;
- (id)copyEmbeddingModelVersionFromRecord:(id)a3;
- (id)copyEmbeddingVersionFromRecord:(id)a3;
- (id)copyExtraDataFromWalletRecord:(id)a3;
- (id)copyFilePathFromRecord:(id)a3;
- (id)copyKeyphraseVersionFromRecord:(id)a3;
- (id)copyLanguageFromRecord:(id)a3;
- (id)copyNumberValueFromRecord:(id)a3 key:(id)a4;
- (id)copyPeopleVersionFromRecord:(id)a3;
- (id)copyProtectionClassFromRecord:(id)a3;
- (id)copyReferenceIdentifierFromRecord:(id)a3;
- (id)copySnippetFromRecord:(id)a3;
- (id)copyStringArrayFromRecordAndConcatenate:(id)a3 key:(id)a4;
- (id)copyStringValueFromRecord:(id)a3 key:(id)a4;
- (id)copySuggestedEventsVersionFromRecord:(id)a3;
- (id)copyTextContentFromRecord:(id)a3;
- (id)copyTitleFromRecord:(id)a3;
- (id)dateFromRecord:(id)a3 key:(id)a4;
- (id)decorateTextContentWithDescription:(id)a3 isDescriptive:(BOOL)a4 delimiter:(id)a5;
- (id)referenceDateForRecord:(id)a3;
- (void)clearDocUnderstandingAttributes:(id)a3;
- (void)clearKeyphrasesAttributes:(id)a3;
- (void)clearSuggestedEventsAttributes:(id)a3;
- (void)completeDocUnderstandingAttributes:(id)a3;
- (void)completeKeyphrasesAttributes:(id)a3;
- (void)completeSuggestedEventsAttributes:(id)a3;
@end

@implementation SKGProcessor

+ (id)sharedProcessor
{
  if (sharedProcessor_onceToken_0 != -1)
  {
    +[SKGProcessor sharedProcessor];
  }

  v3 = sharedProcessor_gProcessor;

  return v3;
}

uint64_t __31__SKGProcessor_sharedProcessor__block_invoke()
{
  v0 = [SKGProcessor alloc];
  sharedProcessor_gProcessor = [(SKGProcessor *)v0 initWithOptions:MEMORY[0x1E695E0F8]];

  return MEMORY[0x1EEE66BB8]();
}

- (SKGProcessor)initWithOptions:(id)a3
{
  v7.receiver = self;
  v7.super_class = SKGProcessor;
  v3 = [(SKGProcessor *)&v7 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.SpotlightKnowledge.processor", 0);
    queue = v3->_queue;
    v3->_queue = v4;
  }

  return v3;
}

- (id)copyReferenceIdentifierFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"_kMDItemExternalID", &value))
  {
    goto LABEL_10;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_10;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
LABEL_9:
      v5 = v7;
      goto LABEL_11;
    }

    if (v6 == CFNumberGetTypeID())
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v5];
      goto LABEL_9;
    }

LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (id)copyBundleIdentifierFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"_kMDItemBundleID", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyEmbeddingVersionFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemEmbeddingVersion", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v5, "intValue")}];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyEmbeddingModelVersionFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"_kMDItemMediaEmbeddingVersion", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v5, "intValue")}];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyKeyphraseVersionFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemKeyphraseVersion", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v5, "intValue")}];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copySuggestedEventsVersionFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemSuggestedEventsVersion", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v5, "intValue")}];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyDocumentUnderstandingVersionFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemDocumentUnderstandingVersion", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v5, "intValue")}];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyDocumentTypesFromRecord:(id)a3
{
  if (a3)
  {
    return copyArrayValueForKey(a3, @"kMDItemPhotosSceneClassificationIdentifiers");
  }

  else
  {
    return 0;
  }
}

- (id)copyPeopleVersionFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"_kMDItemKnowledgeIndexVersion", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v5, "intValue")}];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyProtectionClassFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"_kMDItemProtectionClass", &value) || (v5 = value, value == *MEMORY[0x1E695E738]) || !value)
  {
    v7 = @"Default";
    goto LABEL_9;
  }

  v6 = CFGetTypeID(value);
  if (v6 != CFStringGetTypeID())
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
LABEL_9:

  return v7;
}

- (id)copyLanguageFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemTextContentLanguage", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
      v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v7 stringByTrimmingCharactersInSet:v8];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyTextContentFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemTextContent", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
      v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v7 stringByTrimmingCharactersInSet:v8];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyDescriptionContentFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemDescription", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
      v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v7 stringByTrimmingCharactersInSet:v8];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyContentURLFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemContentURL", &value))
  {
    goto LABEL_9;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_9;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithString:v5];
      v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7];

      goto LABEL_10;
    }

    if (v6 == CFURLGetTypeID())
    {
      v5 = [v5 copy];
      goto LABEL_10;
    }

LABEL_9:
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (id)copyContentTypeFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemContentType", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copySnippetFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"_kMDItemSnippet", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyStringValueFromRecord:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_7;
  }

  ValueForKey = getValueForKey(v5, v6);
  v8 = ValueForKey;
  if (ValueForKey)
  {
    v9 = CFGetTypeID(ValueForKey);
    if (v9 == CFStringGetTypeID())
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v8];
      goto LABEL_8;
    }

    if (v9 == CFURLGetTypeID())
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = [v8 absoluteString];
      v8 = [v10 initWithString:v11];

      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (id)copyDoubleValueFromRecord:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_5;
  }

  ValueForKey = getValueForKey(v5, v6);
  v8 = ValueForKey;
  if (ValueForKey)
  {
    v9 = CFGetTypeID(ValueForKey);
    if (v9 == CFNumberGetTypeID())
    {
      v10 = objc_alloc(MEMORY[0x1E696AD98]);
      [v8 doubleValue];
      v8 = [v10 initWithDouble:?];
      goto LABEL_6;
    }

LABEL_5:
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (id)copyNumberValueFromRecord:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_8;
  }

  ValueForKey = getValueForKey(v5, v6);
  v8 = ValueForKey;
  if (ValueForKey)
  {
    v9 = CFGetTypeID(ValueForKey);
    if (v9 == CFNumberGetTypeID())
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v8, "intValue")}];
LABEL_7:
      v8 = v10;
      goto LABEL_9;
    }

    if (v9 == CFBooleanGetTypeID())
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:CFBooleanGetValue(v8) != 0];
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (id)copyTitleFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_13;
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(v3, @"kMDItemSubject", &value);
  v6 = MEMORY[0x1E695E738];
  if (ValueIfPresent)
  {
    v7 = value;
    if (value != *MEMORY[0x1E695E738])
    {
      if (value)
      {
        goto LABEL_11;
      }
    }
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v4, @"kMDItemTitle", &value))
  {
    v7 = value;
    if (value != *v6)
    {
      if (value)
      {
        goto LABEL_11;
      }
    }
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v4, @"kMDItemDisplayName", &value))
  {
    goto LABEL_13;
  }

  v7 = value;
  if (value == *v6)
  {
    goto LABEL_13;
  }

  if (value)
  {
LABEL_11:
    v8 = CFGetTypeID(v7);
    if (v8 == CFStringGetTypeID())
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v7];
      v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v7 = [v9 stringByTrimmingCharactersInSet:v10];

      goto LABEL_14;
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (id)copyArrayFromRecord:(id)a3 key:(id)a4
{
  if (a3)
  {
    return copyArrayValueForKey(a3, a4);
  }

  else
  {
    return 0;
  }
}

- (id)copyStringArrayFromRecordAndConcatenate:(id)a3 key:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = copyArrayValueForKey(a3, a4);
  if ([(__CFArray *)v4 count])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(__CFArray *)v4 componentsJoinedByString:@", "];
    v7 = [v5 initWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyExtraDataFromWalletRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemExtraData", &value))
  {
    goto LABEL_9;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_9;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFArrayGetTypeID() && CFArrayGetCount(v5) >= 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 1);
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 == CFDataGetTypeID())
      {
        v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:ValueAtIndex];
        goto LABEL_10;
      }
    }

LABEL_9:
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (id)dateFromRecord:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_5;
  }

  ValueForKey = getValueForKey(v5, v6);
  v8 = ValueForKey;
  if (!ValueForKey)
  {
    goto LABEL_6;
  }

  v9 = CFGetTypeID(ValueForKey);
  if (v9 == CFDateGetTypeID())
  {
    v8 = v8;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (id)referenceDateForRecord:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SKGProcessor *)self dateFromRecord:v4 key:@"com_apple_mail_dateReceived"];
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [(SKGProcessor *)self dateFromRecord:v4 key:@"kMDItemContentCreationDate"];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] now];
  }

  v5 = v6;
LABEL_6:

  return v5;
}

- (id)copyDateStringFromRecordWithFormat:(id)a3 key:(id)a4 formatString:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = [(SKGProcessor *)self dateFromRecord:a3 key:a4];
    if (v9)
    {
      v10 = +[SKGSystemListener sharedProcessorListener];
      v11 = [v10 currentTimezone];

      v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v12 setDateFormat:v8];
      [v12 setTimeZone:v11];
      a3 = [v12 stringFromDate:v9];
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

- (id)copyFilePathFromRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemPath", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v5];
      v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v7 stringByTrimmingCharactersInSet:v8];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

+ (id)copyMailboxesFromRecord:(id)a3
{
  if (a3)
  {
    return copyArrayValueForKey(a3, @"kMDItemMailboxes");
  }

  else
  {
    return 0;
  }
}

- (BOOL)recordIsRecent:(id)a3 toCalendarUnit:(unint64_t)a4 maxOffset:(unint64_t)a5 dateKeys:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v27 = a5;
  v14 = 0;
  v15 = *v29;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = [(SKGProcessor *)self dateFromRecord:v10 key:*(*(&v28 + 1) + 8 * i)];
      if (!v14 || [v14 compare:v17] == -1)
      {
        v18 = v17;

        v14 = v18;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v13);
  if (v14)
  {
    v19 = [MEMORY[0x1E695DEE8] currentCalendar];
    v20 = [MEMORY[0x1E695DF00] now];
    v21 = [v19 components:a4 fromDate:v14 toDate:v20 options:0];

    if (v21)
    {
      if (a4 == 4)
      {
        v23 = [v21 year];
        v22 = v27;
      }

      else
      {
        v22 = v27;
        if (a4 == 16)
        {
          v23 = [v21 day];
        }

        else
        {
          v23 = [v21 month];
        }
      }

      v24 = v23 <= v22;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
LABEL_16:
    v24 = 1;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)recordIsCurrent:(id)a3 toCalendarUnit:(unint64_t)a4 maxOffset:(unint64_t)a5 checkFuture:(BOOL)a6 dateKeys:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a7;
  v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v13)
  {
    v16 = 0;
    v15 = 0;
    goto LABEL_29;
  }

  v14 = v13;
  v38 = a6;
  v39 = a4;
  v37 = a5;
  v15 = 0;
  v16 = 0;
  v17 = *v42;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v42 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v41 + 1) + 8 * i);
      v20 = [(SKGProcessor *)self dateFromRecord:v12 key:v19, v37];
      if ([&unk_1F0BDD078 containsObject:v19])
      {
        v21 = v20;

        v16 = v21;
      }

      if (!v15 || [v15 compare:v20] == -1)
      {
        v22 = v20;

        v15 = v22;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v14);
  if (!v16)
  {
    v26 = v39;
    if (!v15)
    {
      v16 = 0;
      goto LABEL_29;
    }

    v27 = [MEMORY[0x1E695DEE8] currentCalendar];
    v28 = [MEMORY[0x1E695DF00] now];
    v29 = v27;
    v30 = v39;
    v31 = v15;
    v32 = v28;
    goto LABEL_23;
  }

  v23 = MEMORY[0x19A8E69C0](v16);
  Current = CFAbsoluteTimeGetCurrent();
  v25 = v23 < Current && !v38;
  v26 = v39;
  if (v38 && v23 >= Current)
  {
    v27 = [MEMORY[0x1E695DEE8] currentCalendar];
    v28 = [MEMORY[0x1E695DF00] now];
    v29 = v27;
    v30 = v39;
    v31 = v28;
    v32 = v16;
LABEL_23:
    v33 = [v29 components:v30 fromDate:v31 toDate:v32 options:0];

    if (v33)
    {
      switch(v26)
      {
        case 4uLL:
          v34 = [v33 year];
          break;
        case 0x2000uLL:
          v34 = [v33 weekOfYear];
          break;
        case 0x10uLL:
          v34 = [v33 day];
          break;
        default:
          v34 = [v33 month];
          break;
      }

      v25 = v34 <= v37;

      goto LABEL_34;
    }

LABEL_29:
    v25 = 0;
  }

LABEL_34:

  v35 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (BOOL)recordHasTextContent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (value = 0, CFDictionaryGetValueIfPresent(v3, @"kMDItemTextContent", &value)) && value != *MEMORY[0x1E695E738] && value)
  {
    v5 = CFGetTypeID(value);
    v6 = v5 == CFStringGetTypeID();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)recordHasHTMLContent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (value = 0, CFDictionaryGetValueIfPresent(v3, @"kMDItemHTMLContentData", &value)) && value != *MEMORY[0x1E695E738] && value)
  {
    v5 = CFGetTypeID(value);
    v6 = v5 == CFDataGetTypeID();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)getHTMLContentByteSizeForRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemHTMLContentData", &value))
  {
    goto LABEL_7;
  }

  Length = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(Length);
      goto LABEL_8;
    }

LABEL_7:
    Length = 0;
  }

LABEL_8:

  return Length;
}

+ (unint64_t)getTextContentByteSizeForRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v3, @"kMDItemTextContent", &value))
  {
    goto LABEL_7;
  }

  v5 = value;
  if (value == *MEMORY[0x1E695E738])
  {
    goto LABEL_7;
  }

  if (value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFStringGetTypeID())
    {
      v5 = [v5 lengthOfBytesUsingEncoding:4];
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

+ (unint64_t)textContentLengthForRecord:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (value = 0, CFDictionaryGetValueIfPresent(v3, @"_kMDItemTextContentLength", &value)) && (v5 = value, value != *MEMORY[0x1E695E738]) && value && (v6 = CFGetTypeID(value), v6 == CFNumberGetTypeID()))
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)decorateTextContentWithDescription:(id)a3 isDescriptive:(BOOL)a4 delimiter:(id)a5
{
  v6 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v21 = a5;
  v8 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v14 count] == 2)
        {
          v15 = [v14 objectAtIndexedSubscript:0];
          v16 = [v14 objectAtIndexedSubscript:1];
          if ([v16 length])
          {
            if (v6)
            {
              v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v15, v16];
              [v8 addObject:v17];
            }

            else
            {
              [v8 addObject:v16];
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [v8 componentsJoinedByString:v21];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)clearDocUnderstandingAttributes:(id)a3
{
  v3 = *MEMORY[0x1E695E738];
  v4 = a3;
  [v4 setObject:v3 forKey:@"_kMDItemNeedsDocumentUnderstanding"];
  [v4 setObject:v3 forKey:@"kMDItemDocumentUnderstandingVersion"];
}

- (void)completeDocUnderstandingAttributes:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v6 = +[SKGProcessorContext sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(v6, "documentUnderstandingVersion")}];
  [v4 setObject:v5 forKey:@"kMDItemDocumentUnderstandingVersion"];
}

- (BOOL)docUnderstandingRecordNeedsProcessing:(id)a3 bundleID:(id)a4 isUpdate:(BOOL)a5 hasTextContent:(BOOL)a6 shouldClear:(BOOL *)a7 shouldMarkComplete:(BOOL *)a8
{
  v10 = a3;
  v11 = [(SKGProcessor *)self recordContainsValue:v10 key:@"_kMDItemOCRContentLevel1"];
  v12 = v11;
  if (a8 && v11)
  {
    v13 = [(SKGProcessor *)self copyStringValueFromRecord:v10 key:@"_kMDItemOCRContentLevel1"];
    v14 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v15 = [v13 stringByTrimmingCharactersInSet:v14];

    if (([v15 length] - 1501) <= 0xFFFFFFFFFFFFFA2CLL)
    {
      *a8 = 1;
    }
  }

  return v12;
}

- (BOOL)updateSKGReindexerDocUnderstandingAttributes:(id)a3 record:(id)a4 bundleID:(id)a5 itemHasText:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(SKGProcessor *)self recordContainsValue:v11 key:@"_kMDItemNeedsDocumentUnderstanding"])
  {
    goto LABEL_21;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v11];
    if (!v13)
    {
      v13 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:v11];
      if (v13)
      {
        v29 = +[SKGProcessorContext sharedContext];
        v30 = [v29 docUnderstandingItemDomainIds];
        v31 = [v30 containsObject:v13];

        if (v31)
        {

          v13 = 0;
LABEL_6:
          v33 = v6;
          v17 = [(SKGProcessor *)self copyDocumentUnderstandingVersionFromRecord:v11];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 intValue];
            v20 = +[SKGProcessorContext sharedContext];
            v21 = [v20 documentUnderstandingVersion] == v19;
          }

          else
          {
            v21 = 0;
          }

          v22 = [(SKGProcessor *)self copyNumberValueFromRecord:v11 key:@"_kMDItemUpdaterVersion"];
          v23 = v22;
          if (v22)
          {
            v24 = [v22 intValue];
            v25 = +[SKGProcessorContext sharedContext];
            v26 = [v25 textVersion] != v24;
          }

          else
          {
            v26 = 1;
          }

          v34 = 0;
          v27 = [(SKGProcessor *)self docUnderstandingRecordNeedsProcessing:v11 bundleID:v13 isUpdate:0 hasTextContent:v33 shouldClear:&v34 + 1 shouldMarkComplete:&v34]&& (!v21 || v26);
          if (HIBYTE(v34) == 1)
          {
            [(SKGProcessor *)self clearDocUnderstandingAttributes:v10];
          }

          if (v27)
          {
            if (v21 || (v34 & 1) == 0)
            {
              v28 = 1;
LABEL_24:

              goto LABEL_25;
            }

            [(SKGProcessor *)self clearDocUnderstandingAttributes:v10];
          }

          v28 = 0;
          goto LABEL_24;
        }
      }

      goto LABEL_20;
    }
  }

  v14 = +[SKGProcessorContext sharedContext];
  v15 = [v14 docUnderstandingIncludeBundles];
  v16 = [v15 containsObject:v13];

  if (v16)
  {
    goto LABEL_6;
  }

LABEL_20:
  [(SKGProcessor *)self clearDocUnderstandingAttributes:v10];

LABEL_21:
  v28 = 0;
LABEL_25:

  return v28;
}

- (BOOL)needsDocumentUnderstandingForRecord:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = +[SKGProcessor sharedProcessor];
    v9 = [v8 recordIsValid:v6];

    if (v9)
    {
      v10 = [(SKGProcessor *)self copyDocumentUnderstandingVersionFromRecord:v6];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 intValue];
        v13 = +[SKGProcessorContext sharedContext];
        v14 = [v13 documentUnderstandingVersion];

        if (v14 == v12)
        {
          LOBYTE(v15) = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      if (v7)
      {
        v16 = v7;
      }

      else
      {
        v16 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v6];
        if (!v16)
        {
          v15 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:v6];
          if (!v15)
          {
            v16 = 0;
            goto LABEL_15;
          }

          v20 = +[SKGProcessorContext sharedContext];
          v21 = [v20 docUnderstandingItemDomainIds];
          v22 = [v21 containsObject:v15];

          v16 = 0;
          if (v22)
          {
            goto LABEL_11;
          }

          goto LABEL_14;
        }
      }

      v17 = +[SKGProcessorContext sharedContext];
      v18 = [v17 docUnderstandingIncludeBundles];
      v19 = [v18 containsObject:v16];

      if (v19)
      {
LABEL_11:
        LOBYTE(v15) = 1;
LABEL_15:

        goto LABEL_16;
      }

LABEL_14:
      LOBYTE(v15) = 0;
      goto LABEL_15;
    }
  }

  LOBYTE(v15) = 0;
LABEL_17:

  return v15;
}

- (BOOL)shouldGenerateDocumentUnderstandingForRecord:(id)a3 bundleID:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(SKGProcessor *)self copyStringValueFromRecord:v5 key:@"_kMDItemOCRContentLevel1"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(SKGProcessor *)self copyDocumentTypesFromRecord:v5];
    v9 = v8;
    if (v8)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            if (v15)
            {
              v16 = [v15 intValue];
              if (v16 > 11245)
              {
                if (v16 == 11246 || v16 == 12539)
                {
LABEL_21:
                  v7 = 1;
                  goto LABEL_24;
                }
              }

              else if (v16 == 492 || v16 == 960)
              {
                goto LABEL_21;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v7 = 0;
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v7 = 0;
      }

LABEL_24:
    }

    else
    {
      v7 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isCJKLanguage:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  if (v3)
  {
    v4 = SILanguagesIsCJK() != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)embeddingVersionDataWithVersion:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"SPOTLIGHT_CURRENT_MODEL_EMBEDDING_VERSION";
  v10[1] = @"SPOTLIGHT_CURRENT_EMBEDDING_VERSION";
  v11[0] = a3;
  v11[1] = &unk_1F0BDD018;
  v10[2] = @"SPOTLIGHT_CURRENT_RELEASE_VERSION";
  v11[2] = &unk_1F0BDD018;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v9];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)normalizeForEmbeddingGeneration:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    if (normalizeForEmbeddingGeneration_bundleID__onceToken != -1)
    {
      +[SKGProcessor(EmbeddingsUtils) normalizeForEmbeddingGeneration:bundleID:];
    }

    if (SKGBundleIsCalendar(v6, v7))
    {
      v8 = [normalizeForEmbeddingGeneration_bundleID__cRegex stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), @" "}];
      v9 = [normalizeForEmbeddingGeneration_bundleID__cMultipleLineRegex stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{objc_msgSend(v8, "length"), @"\n"}];
    }

    else
    {
      v9 = [normalizeForEmbeddingGeneration_bundleID__sRegex stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), @" "}];
    }

    v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v10 = [v9 stringByTrimmingCharactersInSet:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __74__SKGProcessor_EmbeddingsUtils__normalizeForEmbeddingGeneration_bundleID___block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\s+" options:0 error:0];
  v1 = normalizeForEmbeddingGeneration_bundleID__sRegex;
  normalizeForEmbeddingGeneration_bundleID__sRegex = v0;

  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[\\t\\f\\r  ]+" options:0 error:0];
  v3 = normalizeForEmbeddingGeneration_bundleID__cRegex;
  normalizeForEmbeddingGeneration_bundleID__cRegex = v2;

  normalizeForEmbeddingGeneration_bundleID__cMultipleLineRegex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[\n]+" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)extractContentFromRecordForMail:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v12];
  }

  v16 = v15;
  if ((SKGBundleIsMail(v15) & 1) != 0 || SKGBundleIsPommesCtl(v16, v17))
  {
    v18 = [(SKGProcessor *)self copyNumberValueFromRecord:v12 key:@"_kMDItemTextContentLength"];
    v19 = [v18 unsignedIntegerValue];

    if (a7)
    {
      *a7 = v19;
    }

    if (a5 || v19 <= 0x13)
    {
      if (a5 || !v19)
      {
        v21 = [(SKGProcessor *)self copyTextContentFromRecord:v12];
        if (!v21)
        {
          v21 = [(SKGProcessor *)self copySnippetFromRecord:v12];
        }

        v19 = stringComposedLengthForEmbeddingCheck(v21);
      }

      else
      {
        v21 = 0;
      }

      v22 = [(SKGProcessor *)self copyTitleFromRecord:v12];
      v23 = stringComposedLengthForEmbeddingCheck(v22) + v19;
      if (a7)
      {
        *a7 = v23;
      }

      v20 = v23 > 0x13;
      if (v23 >= 0x14)
      {
        if (a5)
        {
          v24 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:v12 key:@"kMDItemAuthors"];
          v25 = &stru_1F0BD7AF0;
          if (v22)
          {
            v26 = v22;
          }

          else
          {
            v26 = &stru_1F0BD7AF0;
          }

          if (v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = &stru_1F0BD7AF0;
          }

          if (v21)
          {
            v25 = v21;
          }

          *a5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v26, v27, v25];
        }

        if (a6)
        {
          *a6 = 2;
        }
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)extractContentFromRecordForSafari:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v12];
  }

  v17 = v15;
  if (SKGBundleIsSafari(v15, v16))
  {
    v18 = [(SKGProcessor *)self copyTitleFromRecord:v12];
    v19 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"redirectSourceTitle"];
    v20 = v19;
    v52 = a6;
    if (v19 && v18 && ([v19 isEqualToString:v18] & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v20, v18];

      v18 = v21;
    }

    v49 = a5;
    v51 = v20;
    v22 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemContentURL"];
    v50 = v22;
    if ([v22 length])
    {
      v23 = [MEMORY[0x1E696AF20] componentsWithString:v22];
      v24 = [v23 percentEncodedPath];
      v25 = [v24 stringByReplacingOccurrencesOfString:@"/" withString:@" "];

      v26 = MEMORY[0x1E696AEC0];
      [v23 host];
      v28 = v27 = a7;
      v29 = [v26 stringWithFormat:@"%@%@", v28, v25];

      a7 = v27;
    }

    else
    {
      v29 = 0;
    }

    v31 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"redirectSourceURL"];
    if ([v31 length])
    {
      v47 = a7;
      v48 = v17;
      v32 = [MEMORY[0x1E696AF20] componentsWithString:v31];
      v33 = [v32 percentEncodedPath];
      v34 = [v33 stringByReplacingOccurrencesOfString:@"/" withString:@" "];

      v35 = MEMORY[0x1E696AEC0];
      v36 = [v32 host];
      v37 = [v35 stringWithFormat:@"%@ %@", v36, v34];

      if (v37 && v29 && ([v37 isEqualToString:v29] & 1) == 0)
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v37, v29];

        v29 = v38;
      }

      a7 = v47;
      v17 = v48;
    }

    v39 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemDescription"];
    v40 = stringComposedLengthForEmbeddingCheck(v18);
    v41 = stringComposedLengthForEmbeddingCheck(v29) + v40;
    v42 = v41 + stringComposedLengthForEmbeddingCheck(v39);
    if (a7)
    {
      *a7 = v42;
    }

    v30 = v42 > 0x13;
    if (v42 >= 0x14)
    {
      if (v49)
      {
        v43 = &stru_1F0BD7AF0;
        if (v18)
        {
          v44 = v18;
        }

        else
        {
          v44 = &stru_1F0BD7AF0;
        }

        if (v29)
        {
          v45 = v29;
        }

        else
        {
          v45 = &stru_1F0BD7AF0;
        }

        if (v39)
        {
          v43 = v39;
        }

        *v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v44, v45, v43];
      }

      if (v52)
      {
        *v52 = 1;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)extractContentFromRecordForCalendar:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v12];
  }

  v17 = v15;
  if (SKGBundleIsCalendar(v15, v16))
  {
    v34 = a5;
    v35 = a6;
    v18 = [(SKGProcessor *)self copyTitleFromRecord:v12];
    v36 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:v12 key:@"kMDItemAuthors"];
    v19 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemNamedLocation"];
    v20 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemComment"];
    v21 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v22 = stringComposedLengthForEmbeddingCheck(v18);
    v23 = stringComposedLengthForEmbeddingCheck(v19) + v22;
    v24 = v23 + stringComposedLengthForEmbeddingCheck(v21);
    v25 = [(SKGProcessor *)self copyLanguageFromRecord:v12];
    v26 = [(SKGProcessor *)self isCJKLanguage:v25];
    if (a7)
    {
      *a7 = v24;
    }

    v27 = 15;
    if (v26)
    {
      v27 = 8;
    }

    v28 = v24 >= v27;
    if (v24 >= v27)
    {
      if (v34)
      {
        v29 = &stru_1F0BD7AF0;
        if (v18)
        {
          v30 = v18;
        }

        else
        {
          v30 = &stru_1F0BD7AF0;
        }

        v31 = v36;
        if (!v36)
        {
          v31 = &stru_1F0BD7AF0;
        }

        if (v19)
        {
          v32 = v19;
        }

        else
        {
          v32 = &stru_1F0BD7AF0;
        }

        if (v21)
        {
          v29 = v21;
        }

        *v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n%@", v30, v31, v32, v29];
      }

      if (v35)
      {
        *v35 = 1;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)extractContentFromRecordForReminders:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v12];
  }

  v17 = v15;
  if (SKGBundleIsReminders(v15, v16))
  {
    v18 = [(SKGProcessor *)self copyTitleFromRecord:v12];
    v19 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemNamedLocation"];
    v20 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemComment"];
    v21 = stringComposedLengthForEmbeddingCheck(v18);
    v22 = stringComposedLengthForEmbeddingCheck(v19) + v21;
    v23 = v22 + stringComposedLengthForEmbeddingCheck(v20);
    if (a7)
    {
      *a7 = v23;
    }

    v24 = v23 > 0x13;
    if (v23 >= 0x14)
    {
      if (a5)
      {
        v25 = &stru_1F0BD7AF0;
        if (v18)
        {
          v26 = v18;
        }

        else
        {
          v26 = &stru_1F0BD7AF0;
        }

        if (v19)
        {
          v27 = v19;
        }

        else
        {
          v27 = &stru_1F0BD7AF0;
        }

        if (v20)
        {
          v25 = v20;
        }

        *a5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v26, v27, v25];
      }

      if (a6)
      {
        *a6 = 1;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)extractContentFromRecordForWallet:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v12];
  }

  v17 = v15;
  if (!SKGBundleIsWallet(v15, v16))
  {
    v24 = 0;
    goto LABEL_39;
  }

  v35 = a6;
  v36 = a5;
  v18 = [(SKGProcessor *)self copyTitleFromRecord:v12];
  v19 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemCreator"];
  v20 = [(SKGProcessor *)self copyExtraDataFromWalletRecord:v12];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v20)
  {
    v38 = 0;
    v21 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v20 options:1 error:&v38];
    v22 = v38;
    v23 = v22;
    if (v21 && !v22)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __112__SKGProcessor_EmbeddingsUtils__extractContentFromRecordForWallet_bundleID_content_maxChunkCountPtr_textLength___block_invoke;
      v37[3] = &unk_1E74B7F28;
      v37[4] = &v39;
      [v21 enumerateKeysAndObjectsUsingBlock:v37];
LABEL_18:

      goto LABEL_19;
    }

    if (v22)
    {
      if (SKGLogGetCurrentLoggingLevel() < 7)
      {
        goto LABEL_18;
      }

      v34 = SKGLogEmbedInit();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [SKGProcessor(EmbeddingsUtils) extractContentFromRecordForWallet:bundleID:content:maxChunkCountPtr:textLength:];
      }
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() < 7)
      {
        goto LABEL_18;
      }

      v34 = SKGLogEmbedInit();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [SKGProcessor(EmbeddingsUtils) extractContentFromRecordForWallet:bundleID:content:maxChunkCountPtr:textLength:];
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  v25 = [SKGProcessor normalizeForEmbeddingGeneration:v40[5] bundleID:v14];
  if (![v25 length])
  {
    v26 = [(SKGProcessor *)self copyTextContentFromRecord:v12];
    if (!v26)
    {
      v26 = [(SKGProcessor *)self copySnippetFromRecord:v12];
    }

    v25 = v26;
  }

  v27 = stringComposedLengthForEmbeddingCheck(v18);
  v28 = stringComposedLengthForEmbeddingCheck(v19);
  v29 = v28 + v27 + stringComposedLengthForEmbeddingCheck(v25);
  if (a7)
  {
    *a7 = v29;
  }

  v24 = v29 > 0x13;
  if (v29 >= 0x14)
  {
    if (v36)
    {
      v30 = &stru_1F0BD7AF0;
      if (v18)
      {
        v31 = v18;
      }

      else
      {
        v31 = &stru_1F0BD7AF0;
      }

      if (v19)
      {
        v32 = v19;
      }

      else
      {
        v32 = &stru_1F0BD7AF0;
      }

      if (v40[5])
      {
        v30 = v40[5];
      }

      *v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v31, v32, v30];
    }

    if (v35)
    {
      *v35 = 1;
    }
  }

  _Block_object_dispose(&v39, 8);
LABEL_39:

  return v24;
}

uint64_t __112__SKGProcessor_EmbeddingsUtils__extractContentFromRecordForWallet_bundleID_content_maxChunkCountPtr_textLength___block_invoke(uint64_t a1, __CFString *a2, __CFString *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = &stru_1F0BD7AF0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = &stru_1F0BD7AF0;
  }

  if (a3)
  {
    v4 = a3;
  }

  return [v3 appendFormat:@" %@ %@", v5, v4];
}

- (BOOL)extractContentFromRecordForEvents:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v12];
  }

  v17 = v15;
  if (!SKGBundleIsEvent(v15, v16))
  {
    v20 = 0;
    goto LABEL_78;
  }

  v18 = [(SKGProcessor *)self copyNumberValueFromRecord:v12 key:@"_kMDItemTextContentLength"];
  v19 = [v18 unsignedIntegerValue];

  if (a7)
  {
    *a7 = v19;
  }

  if (!a5 && v19 > 0x13)
  {
    v20 = 1;
    goto LABEL_78;
  }

  v21 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventType"];
  v22 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemTitle"];
  v59 = a6;
  v60 = v22;
  if ([(__CFString *)v21 isEqualToString:@"hotel"])
  {
    v23 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventHotelUnderName"];
    v24 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventHotelReservationForAddress"];
    v25 = &stru_1F0BD7AF0;
    if (v21)
    {
      v26 = v21;
    }

    else
    {
      v26 = &stru_1F0BD7AF0;
    }

    if (v22)
    {
      v27 = v22;
    }

    else
    {
      v27 = &stru_1F0BD7AF0;
    }

    if (v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = &stru_1F0BD7AF0;
    }

    if (v24)
    {
      v25 = v24;
    }

    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This is %@ event document. Document title: %@. Customer name: %@. Event location: %@.", v26, v27, v28, v25];
  }

  else
  {
    if ([(__CFString *)v21 isEqualToString:@"flight"])
    {
      v58 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:v12 key:@"kMDItemEventCustomerNames"];
      v57 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventProvider"];
      v56 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventFlightDepartureAirportCode"];
      v55 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventFlightDepartureAirportLocality"];
      v30 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventFlightArrivalAirportCode"];
      v31 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventFlightArrivalAirportLocality"];
      v32 = &stru_1F0BD7AF0;
      if (v21)
      {
        v33 = v21;
      }

      else
      {
        v33 = &stru_1F0BD7AF0;
      }

      if (v22)
      {
        v34 = v22;
      }

      else
      {
        v34 = &stru_1F0BD7AF0;
      }

      v36 = v57;
      v35 = v58;
      if (!v58)
      {
        v35 = &stru_1F0BD7AF0;
      }

      if (!v57)
      {
        v36 = &stru_1F0BD7AF0;
      }

      v38 = v55;
      v37 = v56;
      if (!v56)
      {
        v37 = &stru_1F0BD7AF0;
      }

      if (!v55)
      {
        v38 = &stru_1F0BD7AF0;
      }

      if (v30)
      {
        v39 = v30;
      }

      else
      {
        v39 = &stru_1F0BD7AF0;
      }

      if (v31)
      {
        v32 = v31;
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This is %@ event document. Document title: %@. Customer name: %@. Airline: %@. Departure airport: %@. Departure location: %@. Arrival airport: %@. Arrival location: %@.", v33, v34, v35, v36, v37, v38, v39, v32];
    }

    else
    {
      if (![(__CFString *)v21 isEqualToString:@"restaurant"])
      {
        v47 = &stru_1F0BD7AF0;
        if (v21)
        {
          v48 = v21;
        }

        else
        {
          v48 = &stru_1F0BD7AF0;
        }

        if (v22)
        {
          v47 = v22;
        }

        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This is %@ event document. Document title: %@.", v48, v47];
        goto LABEL_67;
      }

      v58 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:v12 key:@"kMDItemEventCustomerNames"];
      v40 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventProvider"];
      v41 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEventStartLocationAddress"];
      v42 = &stru_1F0BD7AF0;
      if (v21)
      {
        v43 = v21;
      }

      else
      {
        v43 = &stru_1F0BD7AF0;
      }

      if (v22)
      {
        v44 = v22;
      }

      else
      {
        v44 = &stru_1F0BD7AF0;
      }

      v45 = v58;
      if (!v58)
      {
        v45 = &stru_1F0BD7AF0;
      }

      if (v40)
      {
        v46 = v40;
      }

      else
      {
        v46 = &stru_1F0BD7AF0;
      }

      if (v41)
      {
        v42 = v41;
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This is %@ event document. Document title: %@. Customer name: %@. Event provider: %@. Event location: %@.", v43, v44, v45, v46, v42];
    }
  }

LABEL_67:
  v49 = [(SKGProcessor *)self copyDateStringFromRecordWithFormat:v12 key:@"kMDItemStartDate" formatString:@"MMMM d, Y HH:mm"];
  v50 = [(SKGProcessor *)self copyDateStringFromRecordWithFormat:v12 key:@"kMDItemEndDate" formatString:@"MMMM d, Y HH:mm"];
  v51 = v50;
  if (v49 && v50)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Event time range: %@ to %@.", v29, v49, v50];

    v29 = v52;
  }

  v53 = stringComposedLengthForEmbeddingCheck(v29);
  if (a7)
  {
    *a7 = v53;
  }

  v20 = v53 > 0x13;
  if (v53 >= 0x14)
  {
    if (a5)
    {
      *a5 = [v29 copy];
    }

    if (v59)
    {
      *v59 = 1;
    }
  }

LABEL_78:
  return v20;
}

- (BOOL)extractContentFromRecordForMessages:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7
{
  v73[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v12];
  }

  v17 = v15;
  if (SKGBundleIsMessages(v15, v16))
  {
    v63 = v17;
    v18 = [(SKGProcessor *)self copyNumberValueFromRecord:v12 key:@"_kMDItemTextContentLength"];
    v19 = [v18 unsignedIntegerValue];

    v20 = [(SKGProcessor *)self copyLanguageFromRecord:v12];
    if ([(SKGProcessor *)self isCJKLanguage:v20])
    {
      v21 = 8;
    }

    else
    {
      v21 = 20;
    }

    if (a7)
    {
      *a7 = v19;
    }

    if (v19)
    {
      if (!a5 && v19 >= v21)
      {
        v22 = 1;
        v17 = v63;
LABEL_72:

        goto LABEL_73;
      }

      v61 = a6;
      if (!a5)
      {
        v60 = 0;
        v64 = 0;
        goto LABEL_23;
      }

      v23 = 1;
    }

    else
    {
      v61 = a6;
      v23 = a5 != 0;
    }

    v60 = v23;
    v64 = [(SKGProcessor *)self copyTextContentFromRecord:v12];
    if (!v64)
    {
      v64 = [(SKGProcessor *)self copySnippetFromRecord:v12];
      if (!v64)
      {
        v64 = [(SKGProcessor *)self copyTitleFromRecord:v12];
        if (v64)
        {
          LODWORD(v21) = 10;
        }
      }
    }

LABEL_23:
    v24 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:v12 key:@"kMDItemAuthors"];
    v59 = a5;
    v62 = v20;
    if ([(SKGProcessor *)self isStringOnlyNumbersOrPunctuationSpaces:v24])
    {

      v24 = 0;
    }

    v25 = stringComposedLengthForEmbeddingCheck(v64);
    v26 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemLinkType"];
    v27 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemURL"];
    v28 = v26;
    if ([v26 length])
    {
      v29 = 0;
      if (!a7)
      {
LABEL_28:
        v30 = v25 < v21 && v29;
        v31 = v27;
        v17 = v63;
        if (!v30)
        {
          if (v60)
          {
            v32 = &stru_1F0BD7AF0;
            if (v24)
            {
              v33 = v24;
            }

            else
            {
              v33 = &stru_1F0BD7AF0;
            }

            if (v64)
            {
              v32 = v64;
            }

            *v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v33, v32];
            if (!v29)
            {
              v56 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemLinkSubType"];
              v57 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemURLDescription"];
              v34 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemLinkName"];
              v55 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemArtist"];
              v54 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemAlbum"];
              v53 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemEpisode"];
              v52 = [(SKGProcessor *)self copyStringValueFromRecord:v12 key:@"kMDItemPodcastName"];
              v58 = v34;
              if ([v28 isEqualToString:*MEMORY[0x1E6963AF0]])
              {
                v35 = [(SKGProcessor *)self copyArrayFromRecord:v12 key:@"kMDItemAddresses"];
                v51 = [v35 componentsJoinedByString:@" "];

                v34 = v58;
              }

              else
              {
                v51 = 0;
              }

              v36 = [MEMORY[0x1E695DF70] array];
              if (v28)
              {
                v73[0] = @"link type";
                v73[1] = v28;
                v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
                [v36 addObject:v37];

                v34 = v58;
              }

              if (v56)
              {
                v72[0] = @"link subtype";
                v72[1] = v56;
                v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
                [v36 addObject:v38];

                v34 = v58;
              }

              if (v57)
              {
                v71[0] = @"link description";
                v71[1] = v57;
                v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
                [v36 addObject:v39];

                v34 = v58;
              }

              if (v34)
              {
                v70[0] = @"link name";
                v70[1] = v34;
                v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
                [v36 addObject:v40];
              }

              if (v55)
              {
                v69[0] = @"artist name";
                v69[1] = v55;
                v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
                [v36 addObject:v41];
              }

              if (v54)
              {
                v68[0] = @"album name";
                v68[1] = v54;
                v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
                [v36 addObject:v42];
              }

              if (v53)
              {
                v67[0] = @"episode name";
                v67[1] = v53;
                v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
                [v36 addObject:v43];
              }

              if (v52)
              {
                v66[0] = @"podcast name";
                v66[1] = v52;
                v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
                [v36 addObject:v44];
              }

              if (v51)
              {
                v65[0] = @"address";
                v65[1] = v51;
                v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
                [v36 addObject:v45];
              }

              v46 = [(SKGProcessor *)self decorateTextContentWithDescription:v36 isDescriptive:1 delimiter:@""];;
              if ([v46 length])
              {
                *v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *v59, v46];;
              }
            }

            CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
            v31 = v27;
            if (CurrentLoggingLevel >= 7)
            {
              v48 = SKGLogEmbedInit();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                [SKGProcessor(EmbeddingsUtils) extractContentFromRecordForMessages:v59 bundleID:? content:? maxChunkCountPtr:? textLength:?];
              }

              v31 = v27;
            }
          }

          if (v61)
          {
            *v61 = 1;
          }
        }

        v22 = !v30;

        v20 = v62;
        goto LABEL_72;
      }
    }

    else
    {
      v29 = [v27 length] == 0;
      if (!a7)
      {
        goto LABEL_28;
      }
    }

    *a7 = v25;
    goto LABEL_28;
  }

  v22 = 0;
LABEL_73:

  v49 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)extractContentFromRecord:(id)a3 bundleID:(id)a4 content:(id *)a5 maxChunkCountPtr:(unint64_t *)a6 textLength:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v12];
  }

  v16 = v15;
  if ((SKGBundleIsMail(v15) & 1) != 0 || SKGBundleIsPommesCtl(v16, v17))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForMail:v12 bundleID:v16 content:a5 maxChunkCountPtr:a6 textLength:a7];
LABEL_7:
    v20 = v19;
    goto LABEL_8;
  }

  if (SKGBundleIsSafari(v16, v18))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForSafari:v12 bundleID:v16 content:a5 maxChunkCountPtr:a6 textLength:a7];
    goto LABEL_7;
  }

  if (SKGBundleIsCalendar(v16, v22))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForCalendar:v12 bundleID:v16 content:a5 maxChunkCountPtr:a6 textLength:a7];
    goto LABEL_7;
  }

  if (SKGBundleIsReminders(v16, v23))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForReminders:v12 bundleID:v16 content:a5 maxChunkCountPtr:a6 textLength:a7];
    goto LABEL_7;
  }

  if (SKGBundleIsWallet(v16, v24))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForWallet:v12 bundleID:v16 content:a5 maxChunkCountPtr:a6 textLength:a7];
    goto LABEL_7;
  }

  if (SKGBundleIsMessages(v16, v25))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForMessages:v12 bundleID:v16 content:a5 maxChunkCountPtr:a6 textLength:a7];
    goto LABEL_7;
  }

  if (SKGBundleIsEvent(v16, v26))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForEvents:v12 bundleID:v16 content:a5 maxChunkCountPtr:a6 textLength:a7];
    goto LABEL_7;
  }

  v27 = [(SKGProcessor *)self copyNumberValueFromRecord:v12 key:@"_kMDItemTextContentLength"];
  v28 = [v27 unsignedIntegerValue];

  if (a7)
  {
    *a7 = v28;
  }

  if (a5 || v28 <= 0x13)
  {
    if (a5 || !v28)
    {
      v30 = [(SKGProcessor *)self copyTextContentFromRecord:v12];
      if (v30)
      {
        v29 = v30;
        [v16 containsString:@"com.apple"];
      }

      else
      {
        v29 = [(SKGProcessor *)self copySnippetFromRecord:v12];
        v31 = [v16 containsString:@"com.apple"];
        if (!v29 && v31)
        {
          v29 = [(SKGProcessor *)self copyDescriptionContentFromRecord:v12];
        }
      }

      v28 = stringComposedLengthForEmbeddingCheck(v29);
    }

    else
    {
      v29 = 0;
    }

    v32 = [(SKGProcessor *)self copyTitleFromRecord:v12];
    v33 = stringComposedLengthForEmbeddingCheck(v32) + v28;
    if (a7)
    {
      *a7 = v33;
    }

    v20 = v33 > 0x13;
    if (v33 >= 0x14)
    {
      if (a5)
      {
        v34 = &stru_1F0BD7AF0;
        if (v32)
        {
          v35 = v32;
        }

        else
        {
          v35 = &stru_1F0BD7AF0;
        }

        if (v29)
        {
          v34 = v29;
        }

        *a5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v35, v34];
      }

      if (a6)
      {
        *a6 = 2;
      }
    }
  }

  else
  {
    v20 = 1;
  }

LABEL_8:

  return v20;
}

- (BOOL)updateSKGReindexerEmbeddingAttributes:(id)a3 record:(id)a4 bundleID:(id)a5 itemHasText:(BOOL)a6
{
  v7 = a4;
  if ([(SKGProcessor *)self recordContainsValue:v7 key:@"_kMDItemNeedsEmbeddings"])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SKGProcessor *)self copyEmbeddingVersionFromRecord:v7];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 intValue];
      v12 = +[SKGProcessorContext sharedContext];
      v13 = [v12 embeddingVersion] == v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(SKGProcessor *)self copyEmbeddingModelVersionFromRecord:v7];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 intValue];
      v17 = +[SKGProcessorContext sharedContext];
      v18 = [v17 embeddingModelVersion] != v16;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(SKGProcessor *)self copyNumberValueFromRecord:v7 key:@"_kMDItemUpdaterVersion"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 intValue];
      v22 = +[SKGProcessorContext sharedContext];
      v23 = [v22 textVersion] != v21;
    }

    else
    {
      v23 = 1;
    }

    v8 = !v13 || v18 || v23;
  }

  return v8 & 1;
}

- (BOOL)needsSKGReindexerEmbeddingsForRecord:(id)a3 bundleID:(id)a4 itemHasText:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[SKGProcessorContext sharedContext];
  v10 = [v9 enableEmbeddings];

  if (v10)
  {
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v7];
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v13 = +[SKGProcessorContext sharedContext];
    v14 = [v13 embeddingExcludeBundles];
    v15 = [v14 containsObject:v11];

    if (v15)
    {
      v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

LABEL_8:
    v16 = [(SKGProcessor *)self copyEmbeddingVersionFromRecord:v7];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 intValue];
      v19 = +[SKGProcessorContext sharedContext];
      v20 = [v19 embeddingVersion] != v18;
    }

    else
    {
      v20 = 1;
    }

    v21 = [(SKGProcessor *)self copyNumberValueFromRecord:v7 key:@"_kMDItemUpdaterVersion"];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 intValue];
      v24 = +[SKGProcessorContext sharedContext];
      v25 = [v24 textVersion] != v23;
    }

    else
    {
      v25 = 1;
    }

    v12 = v20 || v25;
    if (![(SKGProcessor *)self needsEmbeddingsForRecord:v7 bundleID:v11])
    {
      v12 &= [(SKGProcessor *)self shouldGenerateEmbeddingsForRecord:v7 bundleID:v11];
    }

    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12 & 1;
}

- (BOOL)needsEmbeddingsForRecord:(id)a3 bundleID:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69D3DC8] sharedInstance];
  v9 = [v8 deviceCanGenerateEmbeddings];

  if (v9)
  {
    if (![(SKGProcessor *)self recordContainsValue:v6 key:@"_kMDItemNeedsEmbeddings"])
    {
      if ([v6 count])
      {
        v10 = +[SKGProcessor sharedProcessor];
        v11 = [v10 recordIsValid:v6];

        if (v11)
        {
          v12 = [(SKGProcessor *)self copyEmbeddingVersionFromRecord:v6];
          v13 = [(SKGProcessor *)self copyEmbeddingModelVersionFromRecord:v6];
          if (v12)
          {
            v14 = [v12 intValue];
            v15 = +[SKGProcessorContext sharedContext];
            if ([v15 embeddingVersion] == v14)
            {
              if (!v13)
              {

LABEL_49:
                if (SKGLogGetCurrentLoggingLevel() < 7)
                {
                  v19 = 0;
LABEL_69:

LABEL_70:
                  goto LABEL_71;
                }

                v20 = SKGLogEmbedInit();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  [SKGProcessor(EmbeddingsUtils) needsEmbeddingsForRecord:bundleID:];
                }

                goto LABEL_52;
              }

              v16 = [v13 intValue];
              v17 = +[SKGProcessorContext sharedContext];
              v18 = [v17 embeddingModelVersion];

              if (v18 == v16)
              {
                goto LABEL_49;
              }
            }

            else
            {
            }
          }

          if (v7)
          {
            v20 = v7;
          }

          else
          {
            v20 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v6];
            if (!v20)
            {
              goto LABEL_23;
            }
          }

          v21 = +[SKGProcessorContext sharedContext];
          v22 = [v21 embeddingExcludeBundles];
          v23 = [v22 containsObject:v20];

          if (v23)
          {
            if (SKGLogGetCurrentLoggingLevel() < 7)
            {
LABEL_52:
              v19 = 0;
LABEL_68:

              goto LABEL_69;
            }

            v24 = SKGLogEmbedInit();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [SKGProcessor(EmbeddingsUtils) needsEmbeddingsForRecord:bundleID:];
            }

            goto LABEL_47;
          }

LABEL_23:
          v25 = [(SKGProcessor *)self copyContentTypeFromRecord:v6];
          v24 = v25;
          if (!v25)
          {
            if (SKGLogGetCurrentLoggingLevel() < 7)
            {
LABEL_47:
              v19 = 0;
LABEL_67:

              goto LABEL_68;
            }

            v26 = SKGLogEmbedInit();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [SKGProcessor(EmbeddingsUtils) needsEmbeddingsForRecord:bundleID:];
            }

            v19 = 0;
LABEL_66:

            goto LABEL_67;
          }

          v41 = v13;
          v42 = v25;
          v26 = [MEMORY[0x1E6982C40] typeWithIdentifier:v25];
          if (v26)
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v27 = +[SKGProcessorContext sharedContext];
            v28 = [v27 embeddingExcludeContentTypes];

            v29 = [v28 countByEnumeratingWithState:&v47 objects:v52 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v48;
LABEL_27:
              v32 = 0;
              while (1)
              {
                if (*v48 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                if ([v26 conformsToType:*(*(&v47 + 1) + 8 * v32)])
                {
                  break;
                }

                if (v30 == ++v32)
                {
                  v30 = [v28 countByEnumeratingWithState:&v47 objects:v52 count:16];
                  if (v30)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_33;
                }
              }

              if (SKGLogGetCurrentLoggingLevel() < 7)
              {
                goto LABEL_58;
              }

              v38 = SKGLogEmbedInit();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                [SKGProcessor(EmbeddingsUtils) needsEmbeddingsForRecord:bundleID:];
              }

              v19 = 0;
              goto LABEL_63;
            }

LABEL_33:
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v33 = +[SKGProcessorContext sharedContext];
          v28 = [v33 embeddingExtractionAttributes];

          v34 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (!v34)
          {
LABEL_58:
            v19 = 0;
LABEL_65:

            v13 = v41;
            v24 = v42;
            goto LABEL_66;
          }

          v35 = v34;
          v36 = *v44;
LABEL_36:
          v37 = 0;
          while (1)
          {
            if (*v44 != v36)
            {
              objc_enumerationMutation(v28);
            }

            if ([(SKGProcessor *)self recordContainsValue:v6 key:*(*(&v43 + 1) + 8 * v37)])
            {
              break;
            }

            if (v35 == ++v37)
            {
              v35 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
              if (v35)
              {
                goto LABEL_36;
              }

              goto LABEL_58;
            }
          }

          if (SKGLogGetCurrentLoggingLevel() < 7)
          {
            v19 = 1;
            goto LABEL_65;
          }

          v38 = SKGLogEmbedInit();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            [SKGProcessor(EmbeddingsUtils) needsEmbeddingsForRecord:bundleID:];
          }

          v19 = 1;
LABEL_63:

          goto LABEL_65;
        }
      }
    }
  }

  else if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v12 = SKGLogEmbedInit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SKGProcessor(EmbeddingsUtils) needsEmbeddingsForRecord:bundleID:];
    }

    v19 = 0;
    goto LABEL_70;
  }

  v19 = 0;
LABEL_71:

  v39 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)canGenerateEmbeddingsForMailRecord:(id)a3 bundleID:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v6];
  }

  v10 = v9;
  if ((SKGBundleIsMail(v9) & 1) != 0 || SKGBundleIsPommesCtl(v10, v11))
  {
    v12 = [SKGProcessor copyMailboxesFromRecord:v6];
    v13 = [v12 containsObject:@"mailbox.junk"];
    v14 = [v6 objectForKeyedSubscript:@"kMDItemIsLikelyJunk"];
    if (v14)
    {
      v15 = [v6 objectForKeyedSubscript:@"kMDItemIsLikelyJunk"];
      v16 = [v15 isEqualToNumber:&unk_1F0BDD030] ^ 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = (v13 | v16) ^ 1;
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v18 = SKGLogEmbedInit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138413058;
        v22 = v8;
        v23 = 1024;
        v24 = v17 & 1;
        v25 = 1024;
        v26 = v13;
        v27 = 1024;
        v28 = v16;
        _os_log_debug_impl(&dword_1977A7000, v18, OS_LOG_TYPE_DEBUG, "SKGProcessor+EmbeddingsUtils#canGenerateEmbeddingsForMailRecord bundle=%@ returning=%{BOOL}d isJunkMailBox=%{BOOL}d isJunkItem=%{BOOL}d", &v21, 0x1Eu);
      }
    }
  }

  else
  {
    v17 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

- (BOOL)canGenerateEmbeddingsForFPRecord:(id)a3 bundleID:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SKGProcessor *)self copyFileProviderIDFromRecord:v6];
  if (v8)
  {
    v9 = [(SKGProcessor *)self copyNumberValueFromRecord:v6 key:@"_kMDItemRequiresImport"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 BOOLValue];
    }

    else
    {
      v11 = 0;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v12 = SKGLogEmbedInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138413058;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        v19 = 1024;
        v20 = v11;
        v21 = 2112;
        v22 = v10;
        _os_log_debug_impl(&dword_1977A7000, v12, OS_LOG_TYPE_DEBUG, "SKGProcessor+EmbeddingsUtils#canGenerateEmbeddingsForFPRecord bundle=%@ fpId=%@ returning=%{BOOL}d requiresImport=%@", &v15, 0x26u);
      }
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)shouldGenerateEmbeddingsForRecord:(id)a3 bundleID:(id)a4 skipFpRecordCheck:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v8];
  }

  v12 = v11;
  v13 = +[SKGProcessorContext sharedContext];
  v14 = [v13 embeddingExcludeBundles];
  v15 = [v14 containsObject:v12];

  if ((v15 & 1) == 0)
  {
    v17 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:v8];
    v18 = +[SKGProcessorContext sharedContext];
    v19 = [v18 embeddingExcludeDomainIdentifier];
    v20 = [v19 containsObject:v17];

    if ((v20 & 1) != 0 || !a5 && ![(SKGProcessor *)self canGenerateEmbeddingsForFPRecord:v8 bundleID:v12]|| ![(SKGProcessor *)self canGenerateEmbeddingsForMailRecord:v8 bundleID:v12])
    {
      goto LABEL_29;
    }

    if (SKGBundleIsCalendar(v12, v21))
    {
      v22 = [(SKGProcessor *)self copyStringValueFromRecord:v8 key:@"kMDItemCalendarHolidayIdentifier"];
      v23 = v22;
      if (v22 && ([v22 isEqualToString:@"Y"] & 1) != 0)
      {

LABEL_29:
        v16 = 0;
        goto LABEL_30;
      }
    }

    v33 = 0;
    v24 = [(SKGProcessor *)self copyNumberValueFromRecord:v8 key:@"_kMDItemTextContentIndexExists"];
    if (v24 || (v24 = [(SKGProcessor *)self copySnippetFromRecord:v8]) != 0 || (v24 = [(SKGProcessor *)self copyTextContentFromRecord:v8]) != 0)
    {
    }

    else
    {
      v29 = [(SKGProcessor *)self copyFileProviderIDFromRecord:v8];
      if (v29)
      {
        v30 = v29;
        v31 = [(SKGProcessor *)self copyContentURLFromRecord:v8];
        v32 = [v31 isFileURL];

        if (v32)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 7)
          {
            v27 = SKGLogEmbedInit();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [SKGProcessor(EmbeddingsUtils) shouldGenerateEmbeddingsForRecord:bundleID:skipFpRecordCheck:];
            }

            goto LABEL_23;
          }

LABEL_37:
          v16 = 1;
          goto LABEL_30;
        }
      }
    }

    v25 = [(SKGProcessor *)self extractContentFromRecord:v8 bundleID:v12 content:0 maxChunkCountPtr:0 textLength:&v33];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (!v25)
    {
      if (CurrentLoggingLevel < 7)
      {
        goto LABEL_29;
      }

      v27 = SKGLogEmbedInit();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [SKGProcessor(EmbeddingsUtils) shouldGenerateEmbeddingsForRecord:v12 bundleID:&v33 skipFpRecordCheck:?];
      }

      v16 = 0;
LABEL_28:

LABEL_30:
      goto LABEL_31;
    }

    if (CurrentLoggingLevel >= 7)
    {
      v27 = SKGLogEmbedInit();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [SKGProcessor(EmbeddingsUtils) shouldGenerateEmbeddingsForRecord:bundleID:skipFpRecordCheck:];
      }

LABEL_23:
      v16 = 1;
      goto LABEL_28;
    }

    goto LABEL_37;
  }

  v16 = 0;
LABEL_31:

  return v16;
}

- (BOOL)isStringOnlyNumbersOrPunctuationSpaces:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"SELF MATCHES %@", @"^[0-9[:punct:]\\s+]+$"];
  v6 = [v5 evaluateWithObject:v4];

  return v6;
}

- (BOOL)recordForItemHasTextContent:(id)a3
{
  v4 = a3;
  v5 = [(SKGProcessor *)self recordContainsValue:v4 key:@"kMDItemTextContent"]|| [(SKGProcessor *)self recordContainsValue:v4 key:@"_kMDItemSnippet"];

  return v5;
}

- (BOOL)recordForItemWillHaveTextContent:(id)a3
{
  v4 = a3;
  v5 = [(SKGProcessor *)self recordContainsValue:v4 key:@"kMDItemTextContent"];
  v6 = [(SKGProcessor *)self copyFileProviderIDFromRecord:v4];
  v7 = v6;
  if ((v5 & 1) == 0 && v6)
  {
    v8 = [(SKGProcessor *)self copyNumberValueFromRecord:v4 key:@"_kMDItemRequiresImport"];
    v9 = [(SKGProcessor *)self copyContentTypeFromRecord:v4];
    v10 = v9;
    v5 = 0;
    if (v8 && v9)
    {
      if ([v8 BOOLValue] && (objc_msgSend(v10, "isEqualToString:", @"public.folder") & 1) == 0)
      {
        v5 = [v8 BOOLValue];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (BOOL)itemForRecordHasTextContent:(id)a3
{
  v3 = [(SKGProcessor *)self copyNumberValueFromRecord:a3 key:@"_kMDItemTextContentIndexExists"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isUpdateFromSpotlightknowledged:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"_kMDItemEmbeddingsSN"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 objectForKeyedSubscript:@"_kMDItemPrioritySN"];
        if (v8)
        {
          v5 = 1;
        }

        else
        {
          v9 = [v3 objectForKeyedSubscript:@"_kMDItemNeedsPriority"];
          if (v9)
          {
            v5 = 1;
          }

          else
          {
            v10 = [v3 objectForKeyedSubscript:@":INC:_kMDItemEmbeddingsError"];
            if (v10)
            {
              v5 = 1;
            }

            else
            {
              v11 = [v3 objectForKeyedSubscript:@"_kMDItemKeyphrasesSN"];
              if (v11)
              {
                v5 = 1;
              }

              else
              {
                v12 = [v3 objectForKeyedSubscript:@"_kMDItemNeedsKeyphrases"];
                if (v12)
                {
                  v5 = 1;
                }

                else
                {
                  v13 = [v3 objectForKeyedSubscript:@"kMDItemKeyphraseVersion"];
                  if (v13)
                  {
                    v5 = 1;
                  }

                  else
                  {
                    v14 = [v3 objectForKeyedSubscript:@"kMDItemBreadcrumbsVersion"];
                    if (v14)
                    {
                      v5 = 1;
                    }

                    else
                    {
                      v22 = [v3 objectForKeyedSubscript:@":INC:_kMDItemKeyphrasesError"];
                      if (v22)
                      {
                        v5 = 1;
                      }

                      else
                      {
                        v21 = [v3 objectForKeyedSubscript:@"_kMDItemSuggestedEventsSN"];
                        if (v21)
                        {
                          v5 = 1;
                        }

                        else
                        {
                          v20 = [v3 objectForKeyedSubscript:@"_kMDItemNeedsSuggestedEvents"];
                          if (v20)
                          {
                            v5 = 1;
                          }

                          else
                          {
                            v19 = [v3 objectForKeyedSubscript:@"kMDItemSuggestedEventsVersion"];
                            if (v19)
                            {
                              v5 = 1;
                            }

                            else
                            {
                              v18 = [v3 objectForKeyedSubscript:@"_kMDItemDocumentUnderstandingSN"];
                              if (v18)
                              {
                                v5 = 1;
                              }

                              else
                              {
                                v17 = [v3 objectForKeyedSubscript:@"_kMDItemNeedsDocumentUnderstanding"];
                                if (v17)
                                {
                                  v5 = 1;
                                }

                                else
                                {
                                  v15 = [v3 objectForKeyedSubscript:{@"kMDItemDocumentUnderstandingVersion", 0, 0, 0, 0, 0, 0}];
                                  v5 = v15 != 0;
                                }
                              }
                            }
                          }
                        }
                      }

                      v14 = 0;
                    }

                    v13 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)updateSKGProcessorAttributes:(id)a3 record:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 isUpdate:(BOOL)a7 processorFlags:(unint64_t)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (![v15 count] || (+[SKGProcessor sharedProcessor](SKGProcessor, "sharedProcessor"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "recordIsValid:", v15), v18, !v19))
  {
    LOBYTE(v22) = 0;
    goto LABEL_9;
  }

  if ([(SKGProcessor *)self recordForItemHasTextContent:v15]|| [(SKGProcessor *)self recordForItemWillHaveTextContent:v15])
  {
    v20 = 1;
    v21 = 1;
    if ((v8 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    LOBYTE(v24) = a7;
    v22 = [(SKGProcessor *)self updateSKGProcessorKeyphrasesAttributes:v14 record:v15 bundleID:v16 protectionClass:v17 recordHasText:v20 itemHasText:v21 isUpdate:v24];
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v21 = [(SKGProcessor *)self itemForRecordHasTextContent:v15];
  v20 = 0;
  if ((v8 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v22 = 0;
  if ((v8 & 0x20) != 0)
  {
LABEL_12:
    LOBYTE(v24) = a7;
    v22 |= [(SKGProcessor *)self updateSKGProcessorDocUnderstandingAttributes:v14 record:v15 bundleID:v16 protectionClass:v17 recordHasText:v20 itemHasText:v21 isUpdate:v24];
  }

LABEL_13:
  if ((v8 & 0x10) != 0)
  {
    LOBYTE(v24) = a7;
    LOBYTE(v22) = [(SKGProcessor *)self updateSKGProcessorSuggestedEventsAttributes:v14 record:v15 bundleID:v16 protectionClass:v17 recordHasText:v20 itemHasText:v21 isUpdate:v24]| v22;
  }

LABEL_9:

  return v22 & 1;
}

- (BOOL)updateSKGReindexerAttributes:(id)a3 record:(id)a4 bundleID:(id)a5 processorFlags:(unint64_t)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![v11 count] || (+[SKGProcessor sharedProcessor](SKGProcessor, "sharedProcessor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "recordIsValid:", v11), v13, !v14))
  {
    LOBYTE(v16) = 0;
    goto LABEL_7;
  }

  v15 = [(SKGProcessor *)self itemForRecordHasTextContent:v11];
  if ((v6 & 4) == 0)
  {
    v16 = 0;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = [(SKGProcessor *)self updateSKGReindexerKeyphrasesAttributes:v10 record:v11 bundleID:v12 itemHasText:v15];
  if ((v6 & 0x20) != 0)
  {
LABEL_9:
    v16 |= [(SKGProcessor *)self updateSKGReindexerDocUnderstandingAttributes:v10 record:v11 bundleID:v12 itemHasText:v15];
  }

LABEL_10:
  if ((v6 & 0x10) != 0)
  {
    v16 |= [(SKGProcessor *)self updateSKGReindexerSuggestedEventsAttributes:v10 record:v11 bundleID:v12 itemHasText:v15];
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_7;
  }

  if ([(SKGProcessor *)self needsEmbeddingsForRecord:v11 bundleID:v12]&& [(SKGProcessor *)self shouldGenerateEmbeddingsForRecord:v11 bundleID:v12])
  {
    LOBYTE(v16) = [(SKGProcessor *)self updateSKGReindexerEmbeddingAttributes:v10 record:v11 bundleID:v12 itemHasText:v15]| v16;
  }

LABEL_7:

  return v16 & 1;
}

- (BOOL)needsSKGReindexingForRecord:(id)a3 bundleID:(id)a4 processorFlags:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = +[SKGProcessor sharedProcessor];
    v11 = [v10 recordIsValid:v8];

    if (v11)
    {
      if (![(SKGProcessor *)self isUpdateFromSpotlightknowledged:v8])
      {
        v14 = [(SKGProcessor *)self itemForRecordHasTextContent:v8];
        if ((v5 & 2) != 0)
        {
          v12 = [(SKGProcessor *)self needsSKGReindexerEmbeddingsForRecord:v8 bundleID:v9 itemHasText:v14];
          if ((v5 & 4) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v12 = 0;
          if ((v5 & 4) == 0)
          {
LABEL_11:
            if ((v5 & 0x20) != 0)
            {
              v12 |= [(SKGProcessor *)self needsSKGReindexerDocUnderstandingForRecord:v8 bundleID:v9 itemHasText:v14];
              if ((v5 & 0x10) == 0)
              {
                goto LABEL_5;
              }
            }

            else if ((v5 & 0x10) == 0)
            {
              goto LABEL_5;
            }

            LOBYTE(v12) = [(SKGProcessor *)self needsSKGReindexerSuggestedEventsForRecord:v8 bundleID:v9 itemHasText:v14]| v12;
            goto LABEL_5;
          }
        }

        v12 |= [(SKGProcessor *)self needsSKGReindexerKeyphrasesForRecord:v8 bundleID:v9 itemHasText:v14];
        goto LABEL_11;
      }
    }
  }

  LOBYTE(v12) = 0;
LABEL_5:

  return v12 & 1;
}

- (BOOL)needsPriorityForRecord:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v6];
  }

  v10 = v9;
  if (SKGBundleIsMail(v9))
  {
    v11 = &unk_1F0BDD090;
  }

  else
  {
    v11 = &unk_1F0BDD0A8;
  }

  v12 = [(SKGProcessor *)self recordIsCurrent:v6 toCalendarUnit:16 maxOffset:3 checkFuture:0 dateKeys:v11];
  v13 = v12 | [(SKGProcessor *)self recordIsCurrent:v6 toCalendarUnit:8 maxOffset:3 checkFuture:1 dateKeys:&unk_1F0BDD0C0];

  return v13 & 1;
}

- (void)clearKeyphrasesAttributes:(id)a3
{
  v3 = *MEMORY[0x1E695E738];
  v4 = a3;
  [v4 setObject:v3 forKey:@"_kMDItemNeedsKeyphrases"];
  [v4 setObject:v3 forKey:@"kMDItemKeyphraseLabels"];
  [v4 setObject:v3 forKey:@"kMDItemKeyphraseConfidences"];
  [v4 setObject:v3 forKey:@"kMDItemKeyphraseVersion"];
}

- (void)completeKeyphrasesAttributes:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v6 = +[SKGProcessorContext sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(v6, "keyphraseVersion")}];
  [v4 setObject:v5 forKey:@"kMDItemKeyphraseVersion"];
}

- (BOOL)keyphraseRecordNeedsProcessing:(id)a3 bundleID:(id)a4 isUpdate:(BOOL)a5 hasTextContent:(BOOL)a6 shouldClear:(BOOL *)a7 shouldMarkComplete:(BOOL *)a8
{
  v10 = a6;
  v11 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = +[SKGProcessorContext sharedContext];
  v17 = [v16 enableExtractions];

  if (!v17)
  {
    goto LABEL_15;
  }

  v31 = v11;
  v32 = a7;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = +[SKGProcessorContext sharedContext];
  v19 = [v18 keyphraseOptionalExtractionAttributes];

  v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;
  v22 = *v34;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v34 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v33 + 1) + 8 * i);
      if ([(__CFString *)v24 isEqualToString:@"kMDItemTitle"])
      {
        if (![v15 isEqualToString:@"com.apple.mobilecal"])
        {
          continue;
        }

        v25 = self;
        v26 = v14;
        v27 = @"kMDItemTitle";
      }

      else
      {
        v25 = self;
        v26 = v14;
        v27 = v24;
      }

      if ([(SKGProcessor *)v25 recordContainsValue:v26 key:v27])
      {

        v28 = 1;
        goto LABEL_26;
      }
    }

    v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_14:

  a7 = v32;
  v11 = v31;
LABEL_15:
  if (v10)
  {
    if (a8 && [SKGProcessor textContentLengthForRecord:v14]<= 0x13)
    {
      *a8 = 1;
    }

    v28 = 1;
    if (a7 && v11)
    {
      *a7 = 1;
    }
  }

  else
  {
    v28 = 0;
    if (a7 && !v11)
    {
      v28 = 0;
      *a7 = 1;
    }
  }

LABEL_26:

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (BOOL)needsSKGReindexerKeyphrasesForRecord:(id)a3 bundleID:(id)a4 itemHasText:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = +[SKGProcessorContext sharedContext];
  v11 = [v10 enableKeyphrases];

  if (v11)
  {
    if (v9)
    {
      v12 = v9;
      v13 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:v8];
    }

    else
    {
      v12 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v8];
      v13 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:v8];
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v15 = +[SKGProcessorContext sharedContext];
    v16 = [v15 keyphrasesSupportsBundle:v12 domainID:v13];

    if (!v16)
    {
      v14 = 0;
LABEL_18:

      goto LABEL_19;
    }

LABEL_7:
    v29 = v5;
    v17 = [(SKGProcessor *)self copyKeyphraseVersionFromRecord:v8];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 intValue];
      v20 = +[SKGProcessorContext sharedContext];
      v21 = [v20 keyphraseVersion] == v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = [(SKGProcessor *)self copyNumberValueFromRecord:v8 key:@"_kMDItemUpdaterVersion"];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 intValue];
      v25 = +[SKGProcessorContext sharedContext];
      v26 = [v25 textVersion] != v24;
    }

    else
    {
      v26 = 1;
    }

    v30 = 0;
    v27 = [(SKGProcessor *)self keyphraseRecordNeedsProcessing:v8 bundleID:v12 isUpdate:0 hasTextContent:v29 shouldClear:&v30 + 1 shouldMarkComplete:&v30];
    v14 = 0;
    if (v27 && (!v21 || v26))
    {
      v14 = v30 ^ 1 | v21;
    }

    goto LABEL_18;
  }

  v14 = 0;
LABEL_19:

  return v14 & 1;
}

- (BOOL)needsKeyphrasesForRecord:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    goto LABEL_8;
  }

  v8 = +[SKGProcessor sharedProcessor];
  v9 = [v8 recordIsValid:v6];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = +[SKGProcessorContext sharedContext];
  v11 = [v10 enableKeyphrases];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = +[SKGProcessorContext sharedContext];
  v13 = [v12 enableExtractions];

  if (v13)
  {
    goto LABEL_10;
  }

  v14 = [(SKGProcessor *)self copyProtectionClassFromRecord:v6];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if ([v14 isEqualToString:*MEMORY[0x1E696A378]])
  {
LABEL_12:
    v17 = 0;
LABEL_22:

    goto LABEL_9;
  }

  v16 = [v15 isEqualToString:*MEMORY[0x1E696A380]];

  if ((v16 & 1) == 0)
  {
LABEL_10:
    v19 = [(SKGProcessor *)self copyKeyphraseVersionFromRecord:v6];
    v15 = v19;
    if (v19)
    {
      v20 = [v19 intValue];
      v21 = +[SKGProcessorContext sharedContext];
      v22 = [v21 keyphraseVersion];

      if (v22 == v20)
      {
        goto LABEL_12;
      }
    }

    if (v7)
    {
      v23 = v7;
    }

    else
    {
      v23 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v6];
      if (!v23)
      {
        goto LABEL_17;
      }
    }

    v24 = +[SKGProcessorContext sharedContext];
    v25 = [v24 keyphrasesSupportsBundle:v23 domainID:0];

    if (!v25)
    {
      v17 = 0;
LABEL_21:

      goto LABEL_22;
    }

LABEL_17:
    v17 = [(SKGProcessor *)self recordContainsValue:v6 key:@"kMDItemTextContent"]|| [(SKGProcessor *)self recordContainsValue:v6 key:@"_kMDItemSnippet"];
    goto LABEL_21;
  }

LABEL_8:
  v17 = 0;
LABEL_9:

  return v17;
}

- (BOOL)shouldGenerateKeyphrasesForRecord:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = [(SKGProcessor *)self copyFileProviderIDFromRecord:v5];

  if (v6)
  {
    v7 = [(SKGProcessor *)self copyNumberValueFromRecord:v5 key:@"_kMDItemRequiresImport"];
    v8 = [(SKGProcessor *)self copyContentTypeFromRecord:v5];
    v9 = v8;
    v10 = v7 && v8 && [v7 BOOLValue] && !objc_msgSend(v9, "isEqualToString:", @"public.folder");
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (BOOL)docContentExceedsMaxAllowedSize:(id)a3
{
  v3 = a3;
  v4 = [SKGProcessor getHTMLContentByteSizeForRecord:v3];
  v5 = [SKGProcessor getTextContentByteSizeForRecord:v3];

  return v5 + v4 > 0x100000;
}

+ (BOOL)docIsTrashOrJunkMail:(id)a3
{
  v3 = [SKGProcessor copyMailboxesFromRecord:a3];
  if ([v3 containsObject:*MEMORY[0x1E6963B68]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsObject:*MEMORY[0x1E6963B58]];
  }

  return v4;
}

- (void)clearSuggestedEventsAttributes:(id)a3
{
  v3 = *MEMORY[0x1E695E738];
  v4 = a3;
  [v4 setObject:v3 forKey:@"_kMDItemNeedsSuggestedEvents"];
  [v4 setObject:v3 forKey:@"kMDItemSuggestedEventsVersion"];
}

- (void)completeSuggestedEventsAttributes:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v6 = +[SKGProcessorContext sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(v6, "suggestedEventsVersion")}];
  [v4 setObject:v5 forKey:@"kMDItemSuggestedEventsVersion"];
}

- (BOOL)suggestedEventsRecordNeedsProcessing:(id)a3 bundleID:(id)a4 isUpdate:(BOOL)a5 hasTextContent:(BOOL)a6 shouldClear:(BOOL *)a7 shouldMarkComplete:(BOOL *)a8
{
  v9 = a6;
  v10 = a3;
  v11 = [SKGProcessor recordHasHTMLContent:v10];
  v12 = v9 || v11;
  if (!a8 || !v9 && !v11)
  {
    goto LABEL_14;
  }

  v13 = v11;
  if (!v9)
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v14 = [SKGProcessor textContentLengthForRecord:v10];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL || v13)
  {
LABEL_8:
    if (![SKGProcessor docContentExceedsMaxAllowedSize:v10])
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1977A7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "**** shouldGenerateSuggestedEventsForRecord: ignoring doc as content exceeds max allowed size", v16, 2u);
    }

    goto LABEL_11;
  }

  if (v14 >= 0x989680)
  {
LABEL_11:
    *a8 = 1;
  }

LABEL_12:
  if ([SKGProcessor docIsTrashOrJunkMail:v10])
  {
    *a8 = 1;
  }

LABEL_14:

  return v12;
}

- (BOOL)needsSuggestedEventsForRecord:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = +[SKGProcessor sharedProcessor];
    v9 = [v8 recordIsValid:v6];

    if (v9)
    {
      v10 = [(SKGProcessor *)self copySuggestedEventsVersionFromRecord:v6];
      v11 = v10;
      if (v10 && (v12 = [v10 intValue], +[SKGProcessorContext sharedContext](SKGProcessorContext, "sharedContext"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "suggestedEventsVersion"), v13, v14 == v12) || -[SKGProcessor recordContainsValue:key:](self, "recordContainsValue:key:", v6, @"_kMDItemNeedsSuggestedEvents"))
      {
        v15 = 0;
      }

      else
      {
        if (v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v6];
          if (!v16)
          {
            v15 = 1;
            goto LABEL_12;
          }
        }

        v17 = +[SKGProcessorContext sharedContext];
        v18 = [v17 suggestedEventsIncludeBundles];
        v15 = [v18 containsObject:v16];
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (BOOL)shouldGenerateSuggestedEventsForRecord:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:v6];
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v10 = +[SKGProcessorContext sharedContext];
  v11 = [v10 suggestedEventsIncludeBundles];
  v12 = [v11 containsObject:v9];

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (![SKGProcessor recordHasTextContent:v6]&& ![SKGProcessor recordHasHTMLContent:v6])
  {
    goto LABEL_14;
  }

  if ([SKGProcessor docContentExceedsMaxAllowedSize:v6])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "**** shouldGenerateSuggestedEventsForRecord: ignoring doc as content exceeds max allowed size";
      v15 = &v25;
LABEL_13:
      _os_log_impl(&dword_1977A7000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (![SKGProcessor docIsTrashOrJunkMail:v6])
  {
    v18 = [(SKGProcessor *)self copyFileProviderIDFromRecord:v6];

    if (v18)
    {
      v19 = [(SKGProcessor *)self copyNumberValueFromRecord:v6 key:@"_kMDItemRequiresImport"];
      v20 = [(SKGProcessor *)self copyContentTypeFromRecord:v6];
      v21 = v20;
      if (!v19 || !v20 || ![v19 BOOLValue] || objc_msgSend(v21, "isEqualToString:", @"public.folder"))
      {
        v16 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v22 = [(SKGProcessor *)self copyNumberValueFromRecord:v6 key:@"_kMDItemTextContentIndexExists"];
      v19 = v22;
      if (v22 && [v22 intValue])
      {
        v16 = 1;
LABEL_29:

        goto LABEL_15;
      }

      v21 = [(SKGProcessor *)self copySnippetFromRecord:v6];
      if (!v21)
      {
        v23 = [(SKGProcessor *)self copyTextContentFromRecord:v6];
        v16 = v23 != 0;

        goto LABEL_28;
      }
    }

    v16 = 1;
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "**** shouldGenerateSuggestedEventsForRecord: ignoring doc as trash or spam email";
    v15 = &v24;
    goto LABEL_13;
  }

LABEL_14:
  v16 = 0;
LABEL_15:

  return v16;
}

@end