@interface SKGProcessor
+ (BOOL)docContentExceedsMaxAllowedSize:(id)size;
+ (BOOL)docIsTrashOrJunkMail:(id)mail;
+ (BOOL)recordHasHTMLContent:(id)content;
+ (BOOL)recordHasTextContent:(id)content;
+ (id)copyMailboxesFromRecord:(id)record;
+ (id)embeddingVersionDataWithVersion:(id)version;
+ (id)normalizeForEmbeddingGeneration:(id)generation bundleID:(id)d;
+ (id)sharedProcessor;
+ (unint64_t)getHTMLContentByteSizeForRecord:(id)record;
+ (unint64_t)getTextContentByteSizeForRecord:(id)record;
+ (unint64_t)textContentLengthForRecord:(id)record;
- (BOOL)canGenerateEmbeddingsForFPRecord:(id)record bundleID:(id)d;
- (BOOL)canGenerateEmbeddingsForMailRecord:(id)record bundleID:(id)d;
- (BOOL)docUnderstandingRecordNeedsProcessing:(id)processing bundleID:(id)d isUpdate:(BOOL)update hasTextContent:(BOOL)content shouldClear:(BOOL *)clear shouldMarkComplete:(BOOL *)complete;
- (BOOL)extractContentFromRecord:(id)record bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length;
- (BOOL)extractContentFromRecordForCalendar:(id)calendar bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length;
- (BOOL)extractContentFromRecordForEvents:(id)events bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length;
- (BOOL)extractContentFromRecordForMail:(id)mail bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length;
- (BOOL)extractContentFromRecordForMessages:(id)messages bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length;
- (BOOL)extractContentFromRecordForReminders:(id)reminders bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length;
- (BOOL)extractContentFromRecordForSafari:(id)safari bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length;
- (BOOL)extractContentFromRecordForWallet:(id)wallet bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length;
- (BOOL)isCJKLanguage:(id)language;
- (BOOL)isStringOnlyNumbersOrPunctuationSpaces:(id)spaces;
- (BOOL)isUpdateFromSpotlightknowledged:(id)spotlightknowledged;
- (BOOL)itemForRecordHasTextContent:(id)content;
- (BOOL)keyphraseRecordNeedsProcessing:(id)processing bundleID:(id)d isUpdate:(BOOL)update hasTextContent:(BOOL)content shouldClear:(BOOL *)clear shouldMarkComplete:(BOOL *)complete;
- (BOOL)needsDocumentUnderstandingForRecord:(id)record bundleID:(id)d;
- (BOOL)needsEmbeddingsForRecord:(id)record bundleID:(id)d;
- (BOOL)needsKeyphrasesForRecord:(id)record bundleID:(id)d;
- (BOOL)needsPriorityForRecord:(id)record bundleID:(id)d;
- (BOOL)needsSKGReindexerEmbeddingsForRecord:(id)record bundleID:(id)d itemHasText:(BOOL)text;
- (BOOL)needsSKGReindexerKeyphrasesForRecord:(id)record bundleID:(id)d itemHasText:(BOOL)text;
- (BOOL)needsSKGReindexingForRecord:(id)record bundleID:(id)d processorFlags:(unint64_t)flags;
- (BOOL)needsSuggestedEventsForRecord:(id)record bundleID:(id)d;
- (BOOL)recordForItemHasTextContent:(id)content;
- (BOOL)recordForItemWillHaveTextContent:(id)content;
- (BOOL)recordIsCurrent:(id)current toCalendarUnit:(unint64_t)unit maxOffset:(unint64_t)offset checkFuture:(BOOL)future dateKeys:(id)keys;
- (BOOL)recordIsRecent:(id)recent toCalendarUnit:(unint64_t)unit maxOffset:(unint64_t)offset dateKeys:(id)keys;
- (BOOL)shouldGenerateDocumentUnderstandingForRecord:(id)record bundleID:(id)d;
- (BOOL)shouldGenerateEmbeddingsForRecord:(id)record bundleID:(id)d skipFpRecordCheck:(BOOL)check;
- (BOOL)shouldGenerateKeyphrasesForRecord:(id)record bundleID:(id)d;
- (BOOL)shouldGenerateSuggestedEventsForRecord:(id)record bundleID:(id)d;
- (BOOL)suggestedEventsRecordNeedsProcessing:(id)processing bundleID:(id)d isUpdate:(BOOL)update hasTextContent:(BOOL)content shouldClear:(BOOL *)clear shouldMarkComplete:(BOOL *)complete;
- (BOOL)updateSKGProcessorAttributes:(id)attributes record:(id)record bundleID:(id)d protectionClass:(id)class isUpdate:(BOOL)update processorFlags:(unint64_t)flags;
- (BOOL)updateSKGReindexerAttributes:(id)attributes record:(id)record bundleID:(id)d processorFlags:(unint64_t)flags;
- (BOOL)updateSKGReindexerDocUnderstandingAttributes:(id)attributes record:(id)record bundleID:(id)d itemHasText:(BOOL)text;
- (BOOL)updateSKGReindexerEmbeddingAttributes:(id)attributes record:(id)record bundleID:(id)d itemHasText:(BOOL)text;
- (SKGProcessor)initWithOptions:(id)options;
- (id)copyArrayFromRecord:(id)record key:(id)key;
- (id)copyBundleIdentifierFromRecord:(id)record;
- (id)copyContentTypeFromRecord:(id)record;
- (id)copyContentURLFromRecord:(id)record;
- (id)copyDateStringFromRecordWithFormat:(id)format key:(id)key formatString:(id)string;
- (id)copyDescriptionContentFromRecord:(id)record;
- (id)copyDocumentTypesFromRecord:(id)record;
- (id)copyDocumentUnderstandingVersionFromRecord:(id)record;
- (id)copyDoubleValueFromRecord:(id)record key:(id)key;
- (id)copyEmbeddingModelVersionFromRecord:(id)record;
- (id)copyEmbeddingVersionFromRecord:(id)record;
- (id)copyExtraDataFromWalletRecord:(id)record;
- (id)copyFilePathFromRecord:(id)record;
- (id)copyKeyphraseVersionFromRecord:(id)record;
- (id)copyLanguageFromRecord:(id)record;
- (id)copyNumberValueFromRecord:(id)record key:(id)key;
- (id)copyPeopleVersionFromRecord:(id)record;
- (id)copyProtectionClassFromRecord:(id)record;
- (id)copyReferenceIdentifierFromRecord:(id)record;
- (id)copySnippetFromRecord:(id)record;
- (id)copyStringArrayFromRecordAndConcatenate:(id)concatenate key:(id)key;
- (id)copyStringValueFromRecord:(id)record key:(id)key;
- (id)copySuggestedEventsVersionFromRecord:(id)record;
- (id)copyTextContentFromRecord:(id)record;
- (id)copyTitleFromRecord:(id)record;
- (id)dateFromRecord:(id)record key:(id)key;
- (id)decorateTextContentWithDescription:(id)description isDescriptive:(BOOL)descriptive delimiter:(id)delimiter;
- (id)referenceDateForRecord:(id)record;
- (void)clearDocUnderstandingAttributes:(id)attributes;
- (void)clearKeyphrasesAttributes:(id)attributes;
- (void)clearSuggestedEventsAttributes:(id)attributes;
- (void)completeDocUnderstandingAttributes:(id)attributes;
- (void)completeKeyphrasesAttributes:(id)attributes;
- (void)completeSuggestedEventsAttributes:(id)attributes;
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

- (SKGProcessor)initWithOptions:(id)options
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

- (id)copyReferenceIdentifierFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_10;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"_kMDItemExternalID", &value))
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

- (id)copyBundleIdentifierFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"_kMDItemBundleID", &value))
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

- (id)copyEmbeddingVersionFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemEmbeddingVersion", &value))
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

- (id)copyEmbeddingModelVersionFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"_kMDItemMediaEmbeddingVersion", &value))
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

- (id)copyKeyphraseVersionFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemKeyphraseVersion", &value))
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

- (id)copySuggestedEventsVersionFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemSuggestedEventsVersion", &value))
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

- (id)copyDocumentUnderstandingVersionFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemDocumentUnderstandingVersion", &value))
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

- (id)copyDocumentTypesFromRecord:(id)record
{
  if (record)
  {
    return copyArrayValueForKey(record, @"kMDItemPhotosSceneClassificationIdentifiers");
  }

  else
  {
    return 0;
  }
}

- (id)copyPeopleVersionFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"_kMDItemKnowledgeIndexVersion", &value))
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

- (id)copyProtectionClassFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_8;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"_kMDItemProtectionClass", &value) || (v5 = value, value == *MEMORY[0x1E695E738]) || !value)
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

- (id)copyLanguageFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemTextContentLanguage", &value))
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
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v7 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyTextContentFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemTextContent", &value))
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
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v7 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyDescriptionContentFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemDescription", &value))
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
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v7 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)copyContentURLFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_9;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemContentURL", &value))
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

- (id)copyContentTypeFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemContentType", &value))
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

- (id)copySnippetFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"_kMDItemSnippet", &value))
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

- (id)copyStringValueFromRecord:(id)record key:(id)key
{
  recordCopy = record;
  keyCopy = key;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  ValueForKey = getValueForKey(recordCopy, keyCopy);
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
      absoluteString = [v8 absoluteString];
      v8 = [v10 initWithString:absoluteString];

      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (id)copyDoubleValueFromRecord:(id)record key:(id)key
{
  recordCopy = record;
  keyCopy = key;
  if (!recordCopy)
  {
    goto LABEL_5;
  }

  ValueForKey = getValueForKey(recordCopy, keyCopy);
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

- (id)copyNumberValueFromRecord:(id)record key:(id)key
{
  recordCopy = record;
  keyCopy = key;
  if (!recordCopy)
  {
    goto LABEL_8;
  }

  ValueForKey = getValueForKey(recordCopy, keyCopy);
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

- (id)copyTitleFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_13;
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemSubject", &value);
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
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v7 = [v9 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      goto LABEL_14;
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (id)copyArrayFromRecord:(id)record key:(id)key
{
  if (record)
  {
    return copyArrayValueForKey(record, key);
  }

  else
  {
    return 0;
  }
}

- (id)copyStringArrayFromRecordAndConcatenate:(id)concatenate key:(id)key
{
  if (!concatenate)
  {
    return 0;
  }

  v4 = copyArrayValueForKey(concatenate, key);
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

- (id)copyExtraDataFromWalletRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_9;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemExtraData", &value))
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

- (id)dateFromRecord:(id)record key:(id)key
{
  recordCopy = record;
  keyCopy = key;
  if (!recordCopy)
  {
    goto LABEL_5;
  }

  ValueForKey = getValueForKey(recordCopy, keyCopy);
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

- (id)referenceDateForRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v5 = [(SKGProcessor *)self dateFromRecord:recordCopy key:@"com_apple_mail_dateReceived"];
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [(SKGProcessor *)self dateFromRecord:recordCopy key:@"kMDItemContentCreationDate"];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] now];
  }

  v5 = v6;
LABEL_6:

  return v5;
}

- (id)copyDateStringFromRecordWithFormat:(id)format key:(id)key formatString:(id)string
{
  stringCopy = string;
  if (format)
  {
    v9 = [(SKGProcessor *)self dateFromRecord:format key:key];
    if (v9)
    {
      v10 = +[SKGSystemListener sharedProcessorListener];
      currentTimezone = [v10 currentTimezone];

      v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v12 setDateFormat:stringCopy];
      [v12 setTimeZone:currentTimezone];
      format = [v12 stringFromDate:v9];
    }

    else
    {
      format = 0;
    }
  }

  return format;
}

- (id)copyFilePathFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemPath", &value))
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
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v7 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

+ (id)copyMailboxesFromRecord:(id)record
{
  if (record)
  {
    return copyArrayValueForKey(record, @"kMDItemMailboxes");
  }

  else
  {
    return 0;
  }
}

- (BOOL)recordIsRecent:(id)recent toCalendarUnit:(unint64_t)unit maxOffset:(unint64_t)offset dateKeys:(id)keys
{
  v33 = *MEMORY[0x1E69E9840];
  recentCopy = recent;
  keysCopy = keys;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [keysCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  offsetCopy = offset;
  v14 = 0;
  v15 = *v29;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(keysCopy);
      }

      v17 = [(SKGProcessor *)self dateFromRecord:recentCopy key:*(*(&v28 + 1) + 8 * i)];
      if (!v14 || [v14 compare:v17] == -1)
      {
        v18 = v17;

        v14 = v18;
      }
    }

    v13 = [keysCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v13);
  if (v14)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v20 = [MEMORY[0x1E695DF00] now];
    v21 = [currentCalendar components:unit fromDate:v14 toDate:v20 options:0];

    if (v21)
    {
      if (unit == 4)
      {
        year = [v21 year];
        v22 = offsetCopy;
      }

      else
      {
        v22 = offsetCopy;
        if (unit == 16)
        {
          year = [v21 day];
        }

        else
        {
          year = [v21 month];
        }
      }

      v24 = year <= v22;
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

- (BOOL)recordIsCurrent:(id)current toCalendarUnit:(unint64_t)unit maxOffset:(unint64_t)offset checkFuture:(BOOL)future dateKeys:(id)keys
{
  v46 = *MEMORY[0x1E69E9840];
  currentCopy = current;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = keys;
  v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v13)
  {
    v16 = 0;
    v15 = 0;
    goto LABEL_29;
  }

  v14 = v13;
  futureCopy = future;
  unitCopy = unit;
  offsetCopy = offset;
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
      offsetCopy = [(SKGProcessor *)self dateFromRecord:currentCopy key:v19, offsetCopy];
      if ([&unk_1F0BDD078 containsObject:v19])
      {
        v21 = offsetCopy;

        v16 = v21;
      }

      if (!v15 || [v15 compare:offsetCopy] == -1)
      {
        v22 = offsetCopy;

        v15 = v22;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v14);
  if (!v16)
  {
    v26 = unitCopy;
    if (!v15)
    {
      v16 = 0;
      goto LABEL_29;
    }

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v28 = [MEMORY[0x1E695DF00] now];
    v29 = currentCalendar;
    v30 = unitCopy;
    v31 = v15;
    v32 = v28;
    goto LABEL_23;
  }

  v23 = MEMORY[0x19A8E69C0](v16);
  Current = CFAbsoluteTimeGetCurrent();
  v25 = v23 < Current && !futureCopy;
  v26 = unitCopy;
  if (futureCopy && v23 >= Current)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v28 = [MEMORY[0x1E695DF00] now];
    v29 = currentCalendar;
    v30 = unitCopy;
    v31 = v28;
    v32 = v16;
LABEL_23:
    v33 = [v29 components:v30 fromDate:v31 toDate:v32 options:0];

    if (v33)
    {
      switch(v26)
      {
        case 4uLL:
          year = [v33 year];
          break;
        case 0x2000uLL:
          year = [v33 weekOfYear];
          break;
        case 0x10uLL:
          year = [v33 day];
          break;
        default:
          year = [v33 month];
          break;
      }

      v25 = year <= offsetCopy;

      goto LABEL_34;
    }

LABEL_29:
    v25 = 0;
  }

LABEL_34:

  v35 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (BOOL)recordHasTextContent:(id)content
{
  contentCopy = content;
  v4 = contentCopy;
  if (contentCopy && (value = 0, CFDictionaryGetValueIfPresent(contentCopy, @"kMDItemTextContent", &value)) && value != *MEMORY[0x1E695E738] && value)
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

+ (BOOL)recordHasHTMLContent:(id)content
{
  contentCopy = content;
  v4 = contentCopy;
  if (contentCopy && (value = 0, CFDictionaryGetValueIfPresent(contentCopy, @"kMDItemHTMLContentData", &value)) && value != *MEMORY[0x1E695E738] && value)
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

+ (unint64_t)getHTMLContentByteSizeForRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemHTMLContentData", &value))
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

+ (unint64_t)getTextContentByteSizeForRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_7;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(recordCopy, @"kMDItemTextContent", &value))
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

+ (unint64_t)textContentLengthForRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (recordCopy && (value = 0, CFDictionaryGetValueIfPresent(recordCopy, @"_kMDItemTextContentLength", &value)) && (v5 = value, value != *MEMORY[0x1E695E738]) && value && (v6 = CFGetTypeID(value), v6 == CFNumberGetTypeID()))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntValue;
}

- (id)decorateTextContentWithDescription:(id)description isDescriptive:(BOOL)descriptive delimiter:(id)delimiter
{
  descriptiveCopy = descriptive;
  v27 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  delimiterCopy = delimiter;
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = descriptionCopy;
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
            if (descriptiveCopy)
            {
              v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v15, v16];
              [array addObject:v17];
            }

            else
            {
              [array addObject:v16];
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [array componentsJoinedByString:delimiterCopy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)clearDocUnderstandingAttributes:(id)attributes
{
  v3 = *MEMORY[0x1E695E738];
  attributesCopy = attributes;
  [attributesCopy setObject:v3 forKey:@"_kMDItemNeedsDocumentUnderstanding"];
  [attributesCopy setObject:v3 forKey:@"kMDItemDocumentUnderstandingVersion"];
}

- (void)completeDocUnderstandingAttributes:(id)attributes
{
  v3 = MEMORY[0x1E696AD98];
  attributesCopy = attributes;
  v6 = +[SKGProcessorContext sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(v6, "documentUnderstandingVersion")}];
  [attributesCopy setObject:v5 forKey:@"kMDItemDocumentUnderstandingVersion"];
}

- (BOOL)docUnderstandingRecordNeedsProcessing:(id)processing bundleID:(id)d isUpdate:(BOOL)update hasTextContent:(BOOL)content shouldClear:(BOOL *)clear shouldMarkComplete:(BOOL *)complete
{
  processingCopy = processing;
  v11 = [(SKGProcessor *)self recordContainsValue:processingCopy key:@"_kMDItemOCRContentLevel1"];
  v12 = v11;
  if (complete && v11)
  {
    v13 = [(SKGProcessor *)self copyStringValueFromRecord:processingCopy key:@"_kMDItemOCRContentLevel1"];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v15 = [v13 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if (([v15 length] - 1501) <= 0xFFFFFFFFFFFFFA2CLL)
    {
      *complete = 1;
    }
  }

  return v12;
}

- (BOOL)updateSKGReindexerDocUnderstandingAttributes:(id)attributes record:(id)record bundleID:(id)d itemHasText:(BOOL)text
{
  textCopy = text;
  attributesCopy = attributes;
  recordCopy = record;
  dCopy = d;
  if ([(SKGProcessor *)self recordContainsValue:recordCopy key:@"_kMDItemNeedsDocumentUnderstanding"])
  {
    goto LABEL_21;
  }

  if (dCopy)
  {
    v13 = dCopy;
  }

  else
  {
    v13 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
    if (!v13)
    {
      v13 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:recordCopy];
      if (v13)
      {
        v29 = +[SKGProcessorContext sharedContext];
        docUnderstandingItemDomainIds = [v29 docUnderstandingItemDomainIds];
        v31 = [docUnderstandingItemDomainIds containsObject:v13];

        if (v31)
        {

          v13 = 0;
LABEL_6:
          v33 = textCopy;
          v17 = [(SKGProcessor *)self copyDocumentUnderstandingVersionFromRecord:recordCopy];
          v18 = v17;
          if (v17)
          {
            intValue = [v17 intValue];
            v20 = +[SKGProcessorContext sharedContext];
            v21 = [v20 documentUnderstandingVersion] == intValue;
          }

          else
          {
            v21 = 0;
          }

          v22 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemUpdaterVersion"];
          v23 = v22;
          if (v22)
          {
            intValue2 = [v22 intValue];
            v25 = +[SKGProcessorContext sharedContext];
            v26 = [v25 textVersion] != intValue2;
          }

          else
          {
            v26 = 1;
          }

          v34 = 0;
          v27 = [(SKGProcessor *)self docUnderstandingRecordNeedsProcessing:recordCopy bundleID:v13 isUpdate:0 hasTextContent:v33 shouldClear:&v34 + 1 shouldMarkComplete:&v34]&& (!v21 || v26);
          if (HIBYTE(v34) == 1)
          {
            [(SKGProcessor *)self clearDocUnderstandingAttributes:attributesCopy];
          }

          if (v27)
          {
            if (v21 || (v34 & 1) == 0)
            {
              v28 = 1;
LABEL_24:

              goto LABEL_25;
            }

            [(SKGProcessor *)self clearDocUnderstandingAttributes:attributesCopy];
          }

          v28 = 0;
          goto LABEL_24;
        }
      }

      goto LABEL_20;
    }
  }

  v14 = +[SKGProcessorContext sharedContext];
  docUnderstandingIncludeBundles = [v14 docUnderstandingIncludeBundles];
  v16 = [docUnderstandingIncludeBundles containsObject:v13];

  if (v16)
  {
    goto LABEL_6;
  }

LABEL_20:
  [(SKGProcessor *)self clearDocUnderstandingAttributes:attributesCopy];

LABEL_21:
  v28 = 0;
LABEL_25:

  return v28;
}

- (BOOL)needsDocumentUnderstandingForRecord:(id)record bundleID:(id)d
{
  recordCopy = record;
  dCopy = d;
  if ([recordCopy count])
  {
    v8 = +[SKGProcessor sharedProcessor];
    v9 = [v8 recordIsValid:recordCopy];

    if (v9)
    {
      v10 = [(SKGProcessor *)self copyDocumentUnderstandingVersionFromRecord:recordCopy];
      v11 = v10;
      if (v10)
      {
        intValue = [v10 intValue];
        v13 = +[SKGProcessorContext sharedContext];
        documentUnderstandingVersion = [v13 documentUnderstandingVersion];

        if (documentUnderstandingVersion == intValue)
        {
          LOBYTE(v15) = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      if (dCopy)
      {
        v16 = dCopy;
      }

      else
      {
        v16 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
        if (!v16)
        {
          v15 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:recordCopy];
          if (!v15)
          {
            v16 = 0;
            goto LABEL_15;
          }

          v20 = +[SKGProcessorContext sharedContext];
          docUnderstandingItemDomainIds = [v20 docUnderstandingItemDomainIds];
          v22 = [docUnderstandingItemDomainIds containsObject:v15];

          v16 = 0;
          if (v22)
          {
            goto LABEL_11;
          }

          goto LABEL_14;
        }
      }

      v17 = +[SKGProcessorContext sharedContext];
      docUnderstandingIncludeBundles = [v17 docUnderstandingIncludeBundles];
      v19 = [docUnderstandingIncludeBundles containsObject:v16];

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

- (BOOL)shouldGenerateDocumentUnderstandingForRecord:(id)record bundleID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v6 = [(SKGProcessor *)self copyStringValueFromRecord:recordCopy key:@"_kMDItemOCRContentLevel1"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(SKGProcessor *)self copyDocumentTypesFromRecord:recordCopy];
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
              intValue = [v15 intValue];
              if (intValue > 11245)
              {
                if (intValue == 11246 || intValue == 12539)
                {
LABEL_21:
                  v7 = 1;
                  goto LABEL_24;
                }
              }

              else if (intValue == 492 || intValue == 960)
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

- (BOOL)isCJKLanguage:(id)language
{
  if (!language)
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

+ (id)embeddingVersionDataWithVersion:(id)version
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"SPOTLIGHT_CURRENT_MODEL_EMBEDDING_VERSION";
  v10[1] = @"SPOTLIGHT_CURRENT_EMBEDDING_VERSION";
  v11[0] = version;
  v11[1] = &unk_1F0BDD018;
  v10[2] = @"SPOTLIGHT_CURRENT_RELEASE_VERSION";
  v11[2] = &unk_1F0BDD018;
  v3 = MEMORY[0x1E695DF20];
  versionCopy = version;
  v5 = [v3 dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v9];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)normalizeForEmbeddingGeneration:(id)generation bundleID:(id)d
{
  generationCopy = generation;
  dCopy = d;
  if ([generationCopy length])
  {
    if (normalizeForEmbeddingGeneration_bundleID__onceToken != -1)
    {
      +[SKGProcessor(EmbeddingsUtils) normalizeForEmbeddingGeneration:bundleID:];
    }

    if (SKGBundleIsCalendar(dCopy, v7))
    {
      v8 = [normalizeForEmbeddingGeneration_bundleID__cRegex stringByReplacingMatchesInString:generationCopy options:0 range:0 withTemplate:{objc_msgSend(generationCopy, "length"), @" "}];
      v9 = [normalizeForEmbeddingGeneration_bundleID__cMultipleLineRegex stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{objc_msgSend(v8, "length"), @"\n"}];
    }

    else
    {
      v9 = [normalizeForEmbeddingGeneration_bundleID__sRegex stringByReplacingMatchesInString:generationCopy options:0 range:0 withTemplate:{objc_msgSend(generationCopy, "length"), @" "}];
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v10 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
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

- (BOOL)extractContentFromRecordForMail:(id)mail bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length
{
  mailCopy = mail;
  dCopy = d;
  v14 = dCopy;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:mailCopy];
  }

  v16 = v15;
  if ((SKGBundleIsMail(v15) & 1) != 0 || SKGBundleIsPommesCtl(v16, v17))
  {
    v18 = [(SKGProcessor *)self copyNumberValueFromRecord:mailCopy key:@"_kMDItemTextContentLength"];
    unsignedIntegerValue = [v18 unsignedIntegerValue];

    if (length)
    {
      *length = unsignedIntegerValue;
    }

    if (content || unsignedIntegerValue <= 0x13)
    {
      if (content || !unsignedIntegerValue)
      {
        v21 = [(SKGProcessor *)self copyTextContentFromRecord:mailCopy];
        if (!v21)
        {
          v21 = [(SKGProcessor *)self copySnippetFromRecord:mailCopy];
        }

        unsignedIntegerValue = stringComposedLengthForEmbeddingCheck(v21);
      }

      else
      {
        v21 = 0;
      }

      v22 = [(SKGProcessor *)self copyTitleFromRecord:mailCopy];
      v23 = stringComposedLengthForEmbeddingCheck(v22) + unsignedIntegerValue;
      if (length)
      {
        *length = v23;
      }

      v20 = v23 > 0x13;
      if (v23 >= 0x14)
      {
        if (content)
        {
          v24 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:mailCopy key:@"kMDItemAuthors"];
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

          *content = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v26, v27, v25];
        }

        if (ptr)
        {
          *ptr = 2;
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

- (BOOL)extractContentFromRecordForSafari:(id)safari bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length
{
  safariCopy = safari;
  dCopy = d;
  v14 = dCopy;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:safariCopy];
  }

  v17 = v15;
  if (SKGBundleIsSafari(v15, v16))
  {
    v18 = [(SKGProcessor *)self copyTitleFromRecord:safariCopy];
    v19 = [(SKGProcessor *)self copyStringValueFromRecord:safariCopy key:@"redirectSourceTitle"];
    v20 = v19;
    ptrCopy = ptr;
    if (v19 && v18 && ([v19 isEqualToString:v18] & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v20, v18];

      v18 = v21;
    }

    contentCopy = content;
    v51 = v20;
    v22 = [(SKGProcessor *)self copyStringValueFromRecord:safariCopy key:@"kMDItemContentURL"];
    v50 = v22;
    if ([v22 length])
    {
      v23 = [MEMORY[0x1E696AF20] componentsWithString:v22];
      percentEncodedPath = [v23 percentEncodedPath];
      v25 = [percentEncodedPath stringByReplacingOccurrencesOfString:@"/" withString:@" "];

      v26 = MEMORY[0x1E696AEC0];
      [v23 host];
      v28 = v27 = length;
      v29 = [v26 stringWithFormat:@"%@%@", v28, v25];

      length = v27;
    }

    else
    {
      v29 = 0;
    }

    v31 = [(SKGProcessor *)self copyStringValueFromRecord:safariCopy key:@"redirectSourceURL"];
    if ([v31 length])
    {
      lengthCopy = length;
      v48 = v17;
      v32 = [MEMORY[0x1E696AF20] componentsWithString:v31];
      percentEncodedPath2 = [v32 percentEncodedPath];
      v34 = [percentEncodedPath2 stringByReplacingOccurrencesOfString:@"/" withString:@" "];

      v35 = MEMORY[0x1E696AEC0];
      host = [v32 host];
      v37 = [v35 stringWithFormat:@"%@ %@", host, v34];

      if (v37 && v29 && ([v37 isEqualToString:v29] & 1) == 0)
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v37, v29];

        v29 = v38;
      }

      length = lengthCopy;
      v17 = v48;
    }

    v39 = [(SKGProcessor *)self copyStringValueFromRecord:safariCopy key:@"kMDItemDescription"];
    v40 = stringComposedLengthForEmbeddingCheck(v18);
    v41 = stringComposedLengthForEmbeddingCheck(v29) + v40;
    v42 = v41 + stringComposedLengthForEmbeddingCheck(v39);
    if (length)
    {
      *length = v42;
    }

    v30 = v42 > 0x13;
    if (v42 >= 0x14)
    {
      if (contentCopy)
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

        *contentCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v44, v45, v43];
      }

      if (ptrCopy)
      {
        *ptrCopy = 1;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)extractContentFromRecordForCalendar:(id)calendar bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length
{
  calendarCopy = calendar;
  dCopy = d;
  v14 = dCopy;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:calendarCopy];
  }

  v17 = v15;
  if (SKGBundleIsCalendar(v15, v16))
  {
    contentCopy = content;
    ptrCopy = ptr;
    v18 = [(SKGProcessor *)self copyTitleFromRecord:calendarCopy];
    v36 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:calendarCopy key:@"kMDItemAuthors"];
    v19 = [(SKGProcessor *)self copyStringValueFromRecord:calendarCopy key:@"kMDItemNamedLocation"];
    v20 = [(SKGProcessor *)self copyStringValueFromRecord:calendarCopy key:@"kMDItemComment"];
    v21 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v22 = stringComposedLengthForEmbeddingCheck(v18);
    v23 = stringComposedLengthForEmbeddingCheck(v19) + v22;
    v24 = v23 + stringComposedLengthForEmbeddingCheck(v21);
    v25 = [(SKGProcessor *)self copyLanguageFromRecord:calendarCopy];
    v26 = [(SKGProcessor *)self isCJKLanguage:v25];
    if (length)
    {
      *length = v24;
    }

    v27 = 15;
    if (v26)
    {
      v27 = 8;
    }

    v28 = v24 >= v27;
    if (v24 >= v27)
    {
      if (contentCopy)
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

        *contentCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n%@", v30, v31, v32, v29];
      }

      if (ptrCopy)
      {
        *ptrCopy = 1;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)extractContentFromRecordForReminders:(id)reminders bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length
{
  remindersCopy = reminders;
  dCopy = d;
  v14 = dCopy;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:remindersCopy];
  }

  v17 = v15;
  if (SKGBundleIsReminders(v15, v16))
  {
    v18 = [(SKGProcessor *)self copyTitleFromRecord:remindersCopy];
    v19 = [(SKGProcessor *)self copyStringValueFromRecord:remindersCopy key:@"kMDItemNamedLocation"];
    v20 = [(SKGProcessor *)self copyStringValueFromRecord:remindersCopy key:@"kMDItemComment"];
    v21 = stringComposedLengthForEmbeddingCheck(v18);
    v22 = stringComposedLengthForEmbeddingCheck(v19) + v21;
    v23 = v22 + stringComposedLengthForEmbeddingCheck(v20);
    if (length)
    {
      *length = v23;
    }

    v24 = v23 > 0x13;
    if (v23 >= 0x14)
    {
      if (content)
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

        *content = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v26, v27, v25];
      }

      if (ptr)
      {
        *ptr = 1;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)extractContentFromRecordForWallet:(id)wallet bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length
{
  walletCopy = wallet;
  dCopy = d;
  v14 = dCopy;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:walletCopy];
  }

  v17 = v15;
  if (!SKGBundleIsWallet(v15, v16))
  {
    v24 = 0;
    goto LABEL_39;
  }

  ptrCopy = ptr;
  contentCopy = content;
  v18 = [(SKGProcessor *)self copyTitleFromRecord:walletCopy];
  v19 = [(SKGProcessor *)self copyStringValueFromRecord:walletCopy key:@"kMDItemCreator"];
  v20 = [(SKGProcessor *)self copyExtraDataFromWalletRecord:walletCopy];
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
    v26 = [(SKGProcessor *)self copyTextContentFromRecord:walletCopy];
    if (!v26)
    {
      v26 = [(SKGProcessor *)self copySnippetFromRecord:walletCopy];
    }

    v25 = v26;
  }

  v27 = stringComposedLengthForEmbeddingCheck(v18);
  v28 = stringComposedLengthForEmbeddingCheck(v19);
  v29 = v28 + v27 + stringComposedLengthForEmbeddingCheck(v25);
  if (length)
  {
    *length = v29;
  }

  v24 = v29 > 0x13;
  if (v29 >= 0x14)
  {
    if (contentCopy)
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

      *contentCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v31, v32, v30];
    }

    if (ptrCopy)
    {
      *ptrCopy = 1;
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

- (BOOL)extractContentFromRecordForEvents:(id)events bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length
{
  eventsCopy = events;
  dCopy = d;
  v14 = dCopy;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:eventsCopy];
  }

  v17 = v15;
  if (!SKGBundleIsEvent(v15, v16))
  {
    v20 = 0;
    goto LABEL_78;
  }

  v18 = [(SKGProcessor *)self copyNumberValueFromRecord:eventsCopy key:@"_kMDItemTextContentLength"];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  if (length)
  {
    *length = unsignedIntegerValue;
  }

  if (!content && unsignedIntegerValue > 0x13)
  {
    v20 = 1;
    goto LABEL_78;
  }

  v21 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventType"];
  v22 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemTitle"];
  ptrCopy = ptr;
  v60 = v22;
  if ([(__CFString *)v21 isEqualToString:@"hotel"])
  {
    v23 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventHotelUnderName"];
    v24 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventHotelReservationForAddress"];
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
      v58 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:eventsCopy key:@"kMDItemEventCustomerNames"];
      v57 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventProvider"];
      v56 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventFlightDepartureAirportCode"];
      v55 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventFlightDepartureAirportLocality"];
      v30 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventFlightArrivalAirportCode"];
      v31 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventFlightArrivalAirportLocality"];
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

      v58 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:eventsCopy key:@"kMDItemEventCustomerNames"];
      v40 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventProvider"];
      v41 = [(SKGProcessor *)self copyStringValueFromRecord:eventsCopy key:@"kMDItemEventStartLocationAddress"];
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
  v49 = [(SKGProcessor *)self copyDateStringFromRecordWithFormat:eventsCopy key:@"kMDItemStartDate" formatString:@"MMMM d, Y HH:mm"];
  v50 = [(SKGProcessor *)self copyDateStringFromRecordWithFormat:eventsCopy key:@"kMDItemEndDate" formatString:@"MMMM d, Y HH:mm"];
  v51 = v50;
  if (v49 && v50)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Event time range: %@ to %@.", v29, v49, v50];

    v29 = v52;
  }

  v53 = stringComposedLengthForEmbeddingCheck(v29);
  if (length)
  {
    *length = v53;
  }

  v20 = v53 > 0x13;
  if (v53 >= 0x14)
  {
    if (content)
    {
      *content = [v29 copy];
    }

    if (ptrCopy)
    {
      *ptrCopy = 1;
    }
  }

LABEL_78:
  return v20;
}

- (BOOL)extractContentFromRecordForMessages:(id)messages bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length
{
  v73[2] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dCopy = d;
  v14 = dCopy;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:messagesCopy];
  }

  v17 = v15;
  if (SKGBundleIsMessages(v15, v16))
  {
    v63 = v17;
    v18 = [(SKGProcessor *)self copyNumberValueFromRecord:messagesCopy key:@"_kMDItemTextContentLength"];
    unsignedIntegerValue = [v18 unsignedIntegerValue];

    v20 = [(SKGProcessor *)self copyLanguageFromRecord:messagesCopy];
    if ([(SKGProcessor *)self isCJKLanguage:v20])
    {
      v21 = 8;
    }

    else
    {
      v21 = 20;
    }

    if (length)
    {
      *length = unsignedIntegerValue;
    }

    if (unsignedIntegerValue)
    {
      if (!content && unsignedIntegerValue >= v21)
      {
        v22 = 1;
        v17 = v63;
LABEL_72:

        goto LABEL_73;
      }

      ptrCopy2 = ptr;
      if (!content)
      {
        v60 = 0;
        v64 = 0;
        goto LABEL_23;
      }

      v23 = 1;
    }

    else
    {
      ptrCopy2 = ptr;
      v23 = content != 0;
    }

    v60 = v23;
    v64 = [(SKGProcessor *)self copyTextContentFromRecord:messagesCopy];
    if (!v64)
    {
      v64 = [(SKGProcessor *)self copySnippetFromRecord:messagesCopy];
      if (!v64)
      {
        v64 = [(SKGProcessor *)self copyTitleFromRecord:messagesCopy];
        if (v64)
        {
          LODWORD(v21) = 10;
        }
      }
    }

LABEL_23:
    v24 = [(SKGProcessor *)self copyStringArrayFromRecordAndConcatenate:messagesCopy key:@"kMDItemAuthors"];
    contentCopy = content;
    v62 = v20;
    if ([(SKGProcessor *)self isStringOnlyNumbersOrPunctuationSpaces:v24])
    {

      v24 = 0;
    }

    v25 = stringComposedLengthForEmbeddingCheck(v64);
    v26 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemLinkType"];
    v27 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemURL"];
    v28 = v26;
    if ([v26 length])
    {
      v29 = 0;
      if (!length)
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

            *contentCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v33, v32];
            if (!v29)
            {
              v56 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemLinkSubType"];
              v57 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemURLDescription"];
              v34 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemLinkName"];
              v55 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemArtist"];
              v54 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemAlbum"];
              v53 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemEpisode"];
              v52 = [(SKGProcessor *)self copyStringValueFromRecord:messagesCopy key:@"kMDItemPodcastName"];
              v58 = v34;
              if ([v28 isEqualToString:*MEMORY[0x1E6963AF0]])
              {
                v35 = [(SKGProcessor *)self copyArrayFromRecord:messagesCopy key:@"kMDItemAddresses"];
                v51 = [v35 componentsJoinedByString:@" "];

                v34 = v58;
              }

              else
              {
                v51 = 0;
              }

              array = [MEMORY[0x1E695DF70] array];
              if (v28)
              {
                v73[0] = @"link type";
                v73[1] = v28;
                v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
                [array addObject:v37];

                v34 = v58;
              }

              if (v56)
              {
                v72[0] = @"link subtype";
                v72[1] = v56;
                v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
                [array addObject:v38];

                v34 = v58;
              }

              if (v57)
              {
                v71[0] = @"link description";
                v71[1] = v57;
                v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
                [array addObject:v39];

                v34 = v58;
              }

              if (v34)
              {
                v70[0] = @"link name";
                v70[1] = v34;
                v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
                [array addObject:v40];
              }

              if (v55)
              {
                v69[0] = @"artist name";
                v69[1] = v55;
                v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
                [array addObject:v41];
              }

              if (v54)
              {
                v68[0] = @"album name";
                v68[1] = v54;
                v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
                [array addObject:v42];
              }

              if (v53)
              {
                v67[0] = @"episode name";
                v67[1] = v53;
                v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
                [array addObject:v43];
              }

              if (v52)
              {
                v66[0] = @"podcast name";
                v66[1] = v52;
                v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
                [array addObject:v44];
              }

              if (v51)
              {
                v65[0] = @"address";
                v65[1] = v51;
                v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
                [array addObject:v45];
              }

              v46 = [(SKGProcessor *)self decorateTextContentWithDescription:array isDescriptive:1 delimiter:@""];;
              if ([v46 length])
              {
                *contentCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *contentCopy, v46];;
              }
            }

            CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
            v31 = v27;
            if (CurrentLoggingLevel >= 7)
            {
              v48 = SKGLogEmbedInit();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                [SKGProcessor(EmbeddingsUtils) extractContentFromRecordForMessages:contentCopy bundleID:? content:? maxChunkCountPtr:? textLength:?];
              }

              v31 = v27;
            }
          }

          if (ptrCopy2)
          {
            *ptrCopy2 = 1;
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
      if (!length)
      {
        goto LABEL_28;
      }
    }

    *length = v25;
    goto LABEL_28;
  }

  v22 = 0;
LABEL_73:

  v49 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)extractContentFromRecord:(id)record bundleID:(id)d content:(id *)content maxChunkCountPtr:(unint64_t *)ptr textLength:(unint64_t *)length
{
  recordCopy = record;
  dCopy = d;
  v14 = dCopy;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
  }

  v16 = v15;
  if ((SKGBundleIsMail(v15) & 1) != 0 || SKGBundleIsPommesCtl(v16, v17))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForMail:recordCopy bundleID:v16 content:content maxChunkCountPtr:ptr textLength:length];
LABEL_7:
    v20 = v19;
    goto LABEL_8;
  }

  if (SKGBundleIsSafari(v16, v18))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForSafari:recordCopy bundleID:v16 content:content maxChunkCountPtr:ptr textLength:length];
    goto LABEL_7;
  }

  if (SKGBundleIsCalendar(v16, v22))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForCalendar:recordCopy bundleID:v16 content:content maxChunkCountPtr:ptr textLength:length];
    goto LABEL_7;
  }

  if (SKGBundleIsReminders(v16, v23))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForReminders:recordCopy bundleID:v16 content:content maxChunkCountPtr:ptr textLength:length];
    goto LABEL_7;
  }

  if (SKGBundleIsWallet(v16, v24))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForWallet:recordCopy bundleID:v16 content:content maxChunkCountPtr:ptr textLength:length];
    goto LABEL_7;
  }

  if (SKGBundleIsMessages(v16, v25))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForMessages:recordCopy bundleID:v16 content:content maxChunkCountPtr:ptr textLength:length];
    goto LABEL_7;
  }

  if (SKGBundleIsEvent(v16, v26))
  {
    v19 = [(SKGProcessor *)self extractContentFromRecordForEvents:recordCopy bundleID:v16 content:content maxChunkCountPtr:ptr textLength:length];
    goto LABEL_7;
  }

  v27 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemTextContentLength"];
  unsignedIntegerValue = [v27 unsignedIntegerValue];

  if (length)
  {
    *length = unsignedIntegerValue;
  }

  if (content || unsignedIntegerValue <= 0x13)
  {
    if (content || !unsignedIntegerValue)
    {
      v30 = [(SKGProcessor *)self copyTextContentFromRecord:recordCopy];
      if (v30)
      {
        v29 = v30;
        [v16 containsString:@"com.apple"];
      }

      else
      {
        v29 = [(SKGProcessor *)self copySnippetFromRecord:recordCopy];
        v31 = [v16 containsString:@"com.apple"];
        if (!v29 && v31)
        {
          v29 = [(SKGProcessor *)self copyDescriptionContentFromRecord:recordCopy];
        }
      }

      unsignedIntegerValue = stringComposedLengthForEmbeddingCheck(v29);
    }

    else
    {
      v29 = 0;
    }

    v32 = [(SKGProcessor *)self copyTitleFromRecord:recordCopy];
    v33 = stringComposedLengthForEmbeddingCheck(v32) + unsignedIntegerValue;
    if (length)
    {
      *length = v33;
    }

    v20 = v33 > 0x13;
    if (v33 >= 0x14)
    {
      if (content)
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

        *content = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v35, v34];
      }

      if (ptr)
      {
        *ptr = 2;
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

- (BOOL)updateSKGReindexerEmbeddingAttributes:(id)attributes record:(id)record bundleID:(id)d itemHasText:(BOOL)text
{
  recordCopy = record;
  if ([(SKGProcessor *)self recordContainsValue:recordCopy key:@"_kMDItemNeedsEmbeddings"])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SKGProcessor *)self copyEmbeddingVersionFromRecord:recordCopy];
    v10 = v9;
    if (v9)
    {
      intValue = [v9 intValue];
      v12 = +[SKGProcessorContext sharedContext];
      v13 = [v12 embeddingVersion] == intValue;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(SKGProcessor *)self copyEmbeddingModelVersionFromRecord:recordCopy];
    v15 = v14;
    if (v14)
    {
      intValue2 = [v14 intValue];
      v17 = +[SKGProcessorContext sharedContext];
      v18 = [v17 embeddingModelVersion] != intValue2;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemUpdaterVersion"];
    v20 = v19;
    if (v19)
    {
      intValue3 = [v19 intValue];
      v22 = +[SKGProcessorContext sharedContext];
      v23 = [v22 textVersion] != intValue3;
    }

    else
    {
      v23 = 1;
    }

    v8 = !v13 || v18 || v23;
  }

  return v8 & 1;
}

- (BOOL)needsSKGReindexerEmbeddingsForRecord:(id)record bundleID:(id)d itemHasText:(BOOL)text
{
  recordCopy = record;
  dCopy = d;
  v9 = +[SKGProcessorContext sharedContext];
  enableEmbeddings = [v9 enableEmbeddings];

  if (enableEmbeddings)
  {
    if (dCopy)
    {
      v11 = dCopy;
    }

    else
    {
      v11 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v13 = +[SKGProcessorContext sharedContext];
    embeddingExcludeBundles = [v13 embeddingExcludeBundles];
    v15 = [embeddingExcludeBundles containsObject:v11];

    if (v15)
    {
      v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

LABEL_8:
    v16 = [(SKGProcessor *)self copyEmbeddingVersionFromRecord:recordCopy];
    v17 = v16;
    if (v16)
    {
      intValue = [v16 intValue];
      v19 = +[SKGProcessorContext sharedContext];
      v20 = [v19 embeddingVersion] != intValue;
    }

    else
    {
      v20 = 1;
    }

    v21 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemUpdaterVersion"];
    v22 = v21;
    if (v21)
    {
      intValue2 = [v21 intValue];
      v24 = +[SKGProcessorContext sharedContext];
      v25 = [v24 textVersion] != intValue2;
    }

    else
    {
      v25 = 1;
    }

    v12 = v20 || v25;
    if (![(SKGProcessor *)self needsEmbeddingsForRecord:recordCopy bundleID:v11])
    {
      v12 &= [(SKGProcessor *)self shouldGenerateEmbeddingsForRecord:recordCopy bundleID:v11];
    }

    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12 & 1;
}

- (BOOL)needsEmbeddingsForRecord:(id)record bundleID:(id)d
{
  v53 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  dCopy = d;
  mEMORY[0x1E69D3DC8] = [MEMORY[0x1E69D3DC8] sharedInstance];
  deviceCanGenerateEmbeddings = [mEMORY[0x1E69D3DC8] deviceCanGenerateEmbeddings];

  if (deviceCanGenerateEmbeddings)
  {
    if (![(SKGProcessor *)self recordContainsValue:recordCopy key:@"_kMDItemNeedsEmbeddings"])
    {
      if ([recordCopy count])
      {
        v10 = +[SKGProcessor sharedProcessor];
        v11 = [v10 recordIsValid:recordCopy];

        if (v11)
        {
          v12 = [(SKGProcessor *)self copyEmbeddingVersionFromRecord:recordCopy];
          v13 = [(SKGProcessor *)self copyEmbeddingModelVersionFromRecord:recordCopy];
          if (v12)
          {
            intValue = [v12 intValue];
            v15 = +[SKGProcessorContext sharedContext];
            if ([v15 embeddingVersion] == intValue)
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

              intValue2 = [v13 intValue];
              v17 = +[SKGProcessorContext sharedContext];
              embeddingModelVersion = [v17 embeddingModelVersion];

              if (embeddingModelVersion == intValue2)
              {
                goto LABEL_49;
              }
            }

            else
            {
            }
          }

          if (dCopy)
          {
            v20 = dCopy;
          }

          else
          {
            v20 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
            if (!v20)
            {
              goto LABEL_23;
            }
          }

          v21 = +[SKGProcessorContext sharedContext];
          embeddingExcludeBundles = [v21 embeddingExcludeBundles];
          v23 = [embeddingExcludeBundles containsObject:v20];

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
          v25 = [(SKGProcessor *)self copyContentTypeFromRecord:recordCopy];
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
            embeddingExcludeContentTypes = [v27 embeddingExcludeContentTypes];

            v29 = [embeddingExcludeContentTypes countByEnumeratingWithState:&v47 objects:v52 count:16];
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
                  objc_enumerationMutation(embeddingExcludeContentTypes);
                }

                if ([v26 conformsToType:*(*(&v47 + 1) + 8 * v32)])
                {
                  break;
                }

                if (v30 == ++v32)
                {
                  v30 = [embeddingExcludeContentTypes countByEnumeratingWithState:&v47 objects:v52 count:16];
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
          embeddingExcludeContentTypes = [v33 embeddingExtractionAttributes];

          v34 = [embeddingExcludeContentTypes countByEnumeratingWithState:&v43 objects:v51 count:16];
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
              objc_enumerationMutation(embeddingExcludeContentTypes);
            }

            if ([(SKGProcessor *)self recordContainsValue:recordCopy key:*(*(&v43 + 1) + 8 * v37)])
            {
              break;
            }

            if (v35 == ++v37)
            {
              v35 = [embeddingExcludeContentTypes countByEnumeratingWithState:&v43 objects:v51 count:16];
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

- (BOOL)canGenerateEmbeddingsForMailRecord:(id)record bundleID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  dCopy = d;
  v8 = dCopy;
  if (dCopy)
  {
    v9 = dCopy;
  }

  else
  {
    v9 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
  }

  v10 = v9;
  if ((SKGBundleIsMail(v9) & 1) != 0 || SKGBundleIsPommesCtl(v10, v11))
  {
    v12 = [SKGProcessor copyMailboxesFromRecord:recordCopy];
    v13 = [v12 containsObject:@"mailbox.junk"];
    v14 = [recordCopy objectForKeyedSubscript:@"kMDItemIsLikelyJunk"];
    if (v14)
    {
      v15 = [recordCopy objectForKeyedSubscript:@"kMDItemIsLikelyJunk"];
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

- (BOOL)canGenerateEmbeddingsForFPRecord:(id)record bundleID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  dCopy = d;
  v8 = [(SKGProcessor *)self copyFileProviderIDFromRecord:recordCopy];
  if (v8)
  {
    v9 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemRequiresImport"];
    v10 = v9;
    if (v9)
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v12 = SKGLogEmbedInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138413058;
        v16 = dCopy;
        v17 = 2112;
        v18 = v8;
        v19 = 1024;
        v20 = bOOLValue;
        v21 = 2112;
        v22 = v10;
        _os_log_debug_impl(&dword_1977A7000, v12, OS_LOG_TYPE_DEBUG, "SKGProcessor+EmbeddingsUtils#canGenerateEmbeddingsForFPRecord bundle=%@ fpId=%@ returning=%{BOOL}d requiresImport=%@", &v15, 0x26u);
      }
    }
  }

  else
  {
    LOBYTE(bOOLValue) = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)shouldGenerateEmbeddingsForRecord:(id)record bundleID:(id)d skipFpRecordCheck:(BOOL)check
{
  recordCopy = record;
  dCopy = d;
  v10 = dCopy;
  if (dCopy)
  {
    v11 = dCopy;
  }

  else
  {
    v11 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
  }

  v12 = v11;
  v13 = +[SKGProcessorContext sharedContext];
  embeddingExcludeBundles = [v13 embeddingExcludeBundles];
  v15 = [embeddingExcludeBundles containsObject:v12];

  if ((v15 & 1) == 0)
  {
    v17 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:recordCopy];
    v18 = +[SKGProcessorContext sharedContext];
    embeddingExcludeDomainIdentifier = [v18 embeddingExcludeDomainIdentifier];
    v20 = [embeddingExcludeDomainIdentifier containsObject:v17];

    if ((v20 & 1) != 0 || !check && ![(SKGProcessor *)self canGenerateEmbeddingsForFPRecord:recordCopy bundleID:v12]|| ![(SKGProcessor *)self canGenerateEmbeddingsForMailRecord:recordCopy bundleID:v12])
    {
      goto LABEL_29;
    }

    if (SKGBundleIsCalendar(v12, v21))
    {
      v22 = [(SKGProcessor *)self copyStringValueFromRecord:recordCopy key:@"kMDItemCalendarHolidayIdentifier"];
      v23 = v22;
      if (v22 && ([v22 isEqualToString:@"Y"] & 1) != 0)
      {

LABEL_29:
        v16 = 0;
        goto LABEL_30;
      }
    }

    v33 = 0;
    v24 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemTextContentIndexExists"];
    if (v24 || (v24 = [(SKGProcessor *)self copySnippetFromRecord:recordCopy]) != 0 || (v24 = [(SKGProcessor *)self copyTextContentFromRecord:recordCopy]) != 0)
    {
    }

    else
    {
      v29 = [(SKGProcessor *)self copyFileProviderIDFromRecord:recordCopy];
      if (v29)
      {
        v30 = v29;
        v31 = [(SKGProcessor *)self copyContentURLFromRecord:recordCopy];
        isFileURL = [v31 isFileURL];

        if (isFileURL)
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

    v25 = [(SKGProcessor *)self extractContentFromRecord:recordCopy bundleID:v12 content:0 maxChunkCountPtr:0 textLength:&v33];
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

- (BOOL)isStringOnlyNumbersOrPunctuationSpaces:(id)spaces
{
  v3 = MEMORY[0x1E696AE18];
  spacesCopy = spaces;
  v5 = [v3 predicateWithFormat:@"SELF MATCHES %@", @"^[0-9[:punct:]\\s+]+$"];
  v6 = [v5 evaluateWithObject:spacesCopy];

  return v6;
}

- (BOOL)recordForItemHasTextContent:(id)content
{
  contentCopy = content;
  v5 = [(SKGProcessor *)self recordContainsValue:contentCopy key:@"kMDItemTextContent"]|| [(SKGProcessor *)self recordContainsValue:contentCopy key:@"_kMDItemSnippet"];

  return v5;
}

- (BOOL)recordForItemWillHaveTextContent:(id)content
{
  contentCopy = content;
  bOOLValue = [(SKGProcessor *)self recordContainsValue:contentCopy key:@"kMDItemTextContent"];
  v6 = [(SKGProcessor *)self copyFileProviderIDFromRecord:contentCopy];
  v7 = v6;
  if ((bOOLValue & 1) == 0 && v6)
  {
    v8 = [(SKGProcessor *)self copyNumberValueFromRecord:contentCopy key:@"_kMDItemRequiresImport"];
    v9 = [(SKGProcessor *)self copyContentTypeFromRecord:contentCopy];
    v10 = v9;
    bOOLValue = 0;
    if (v8 && v9)
    {
      if ([v8 BOOLValue] && (objc_msgSend(v10, "isEqualToString:", @"public.folder") & 1) == 0)
      {
        bOOLValue = [v8 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }
  }

  return bOOLValue;
}

- (BOOL)itemForRecordHasTextContent:(id)content
{
  v3 = [(SKGProcessor *)self copyNumberValueFromRecord:content key:@"_kMDItemTextContentIndexExists"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isUpdateFromSpotlightknowledged:(id)spotlightknowledged
{
  spotlightknowledgedCopy = spotlightknowledged;
  v4 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemEmbeddingsSN"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [spotlightknowledgedCopy objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemPrioritySN"];
        if (v8)
        {
          v5 = 1;
        }

        else
        {
          v9 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemNeedsPriority"];
          if (v9)
          {
            v5 = 1;
          }

          else
          {
            v10 = [spotlightknowledgedCopy objectForKeyedSubscript:@":INC:_kMDItemEmbeddingsError"];
            if (v10)
            {
              v5 = 1;
            }

            else
            {
              v11 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemKeyphrasesSN"];
              if (v11)
              {
                v5 = 1;
              }

              else
              {
                v12 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemNeedsKeyphrases"];
                if (v12)
                {
                  v5 = 1;
                }

                else
                {
                  v13 = [spotlightknowledgedCopy objectForKeyedSubscript:@"kMDItemKeyphraseVersion"];
                  if (v13)
                  {
                    v5 = 1;
                  }

                  else
                  {
                    v14 = [spotlightknowledgedCopy objectForKeyedSubscript:@"kMDItemBreadcrumbsVersion"];
                    if (v14)
                    {
                      v5 = 1;
                    }

                    else
                    {
                      v22 = [spotlightknowledgedCopy objectForKeyedSubscript:@":INC:_kMDItemKeyphrasesError"];
                      if (v22)
                      {
                        v5 = 1;
                      }

                      else
                      {
                        v21 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemSuggestedEventsSN"];
                        if (v21)
                        {
                          v5 = 1;
                        }

                        else
                        {
                          v20 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemNeedsSuggestedEvents"];
                          if (v20)
                          {
                            v5 = 1;
                          }

                          else
                          {
                            v19 = [spotlightknowledgedCopy objectForKeyedSubscript:@"kMDItemSuggestedEventsVersion"];
                            if (v19)
                            {
                              v5 = 1;
                            }

                            else
                            {
                              v18 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemDocumentUnderstandingSN"];
                              if (v18)
                              {
                                v5 = 1;
                              }

                              else
                              {
                                v17 = [spotlightknowledgedCopy objectForKeyedSubscript:@"_kMDItemNeedsDocumentUnderstanding"];
                                if (v17)
                                {
                                  v5 = 1;
                                }

                                else
                                {
                                  v15 = [spotlightknowledgedCopy objectForKeyedSubscript:{@"kMDItemDocumentUnderstandingVersion", 0, 0, 0, 0, 0, 0}];
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

- (BOOL)updateSKGProcessorAttributes:(id)attributes record:(id)record bundleID:(id)d protectionClass:(id)class isUpdate:(BOOL)update processorFlags:(unint64_t)flags
{
  flagsCopy = flags;
  attributesCopy = attributes;
  recordCopy = record;
  dCopy = d;
  classCopy = class;
  if (![recordCopy count] || (+[SKGProcessor sharedProcessor](SKGProcessor, "sharedProcessor"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "recordIsValid:", recordCopy), v18, !v19))
  {
    LOBYTE(v22) = 0;
    goto LABEL_9;
  }

  if ([(SKGProcessor *)self recordForItemHasTextContent:recordCopy]|| [(SKGProcessor *)self recordForItemWillHaveTextContent:recordCopy])
  {
    v20 = 1;
    v21 = 1;
    if ((flagsCopy & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    LOBYTE(v24) = update;
    v22 = [(SKGProcessor *)self updateSKGProcessorKeyphrasesAttributes:attributesCopy record:recordCopy bundleID:dCopy protectionClass:classCopy recordHasText:v20 itemHasText:v21 isUpdate:v24];
    if ((flagsCopy & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v21 = [(SKGProcessor *)self itemForRecordHasTextContent:recordCopy];
  v20 = 0;
  if ((flagsCopy & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v22 = 0;
  if ((flagsCopy & 0x20) != 0)
  {
LABEL_12:
    LOBYTE(v24) = update;
    v22 |= [(SKGProcessor *)self updateSKGProcessorDocUnderstandingAttributes:attributesCopy record:recordCopy bundleID:dCopy protectionClass:classCopy recordHasText:v20 itemHasText:v21 isUpdate:v24];
  }

LABEL_13:
  if ((flagsCopy & 0x10) != 0)
  {
    LOBYTE(v24) = update;
    LOBYTE(v22) = [(SKGProcessor *)self updateSKGProcessorSuggestedEventsAttributes:attributesCopy record:recordCopy bundleID:dCopy protectionClass:classCopy recordHasText:v20 itemHasText:v21 isUpdate:v24]| v22;
  }

LABEL_9:

  return v22 & 1;
}

- (BOOL)updateSKGReindexerAttributes:(id)attributes record:(id)record bundleID:(id)d processorFlags:(unint64_t)flags
{
  flagsCopy = flags;
  attributesCopy = attributes;
  recordCopy = record;
  dCopy = d;
  if (![recordCopy count] || (+[SKGProcessor sharedProcessor](SKGProcessor, "sharedProcessor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "recordIsValid:", recordCopy), v13, !v14))
  {
    LOBYTE(v16) = 0;
    goto LABEL_7;
  }

  v15 = [(SKGProcessor *)self itemForRecordHasTextContent:recordCopy];
  if ((flagsCopy & 4) == 0)
  {
    v16 = 0;
    if ((flagsCopy & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = [(SKGProcessor *)self updateSKGReindexerKeyphrasesAttributes:attributesCopy record:recordCopy bundleID:dCopy itemHasText:v15];
  if ((flagsCopy & 0x20) != 0)
  {
LABEL_9:
    v16 |= [(SKGProcessor *)self updateSKGReindexerDocUnderstandingAttributes:attributesCopy record:recordCopy bundleID:dCopy itemHasText:v15];
  }

LABEL_10:
  if ((flagsCopy & 0x10) != 0)
  {
    v16 |= [(SKGProcessor *)self updateSKGReindexerSuggestedEventsAttributes:attributesCopy record:recordCopy bundleID:dCopy itemHasText:v15];
    if ((flagsCopy & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((flagsCopy & 2) == 0)
  {
    goto LABEL_7;
  }

  if ([(SKGProcessor *)self needsEmbeddingsForRecord:recordCopy bundleID:dCopy]&& [(SKGProcessor *)self shouldGenerateEmbeddingsForRecord:recordCopy bundleID:dCopy])
  {
    LOBYTE(v16) = [(SKGProcessor *)self updateSKGReindexerEmbeddingAttributes:attributesCopy record:recordCopy bundleID:dCopy itemHasText:v15]| v16;
  }

LABEL_7:

  return v16 & 1;
}

- (BOOL)needsSKGReindexingForRecord:(id)record bundleID:(id)d processorFlags:(unint64_t)flags
{
  flagsCopy = flags;
  recordCopy = record;
  dCopy = d;
  if ([recordCopy count])
  {
    v10 = +[SKGProcessor sharedProcessor];
    v11 = [v10 recordIsValid:recordCopy];

    if (v11)
    {
      if (![(SKGProcessor *)self isUpdateFromSpotlightknowledged:recordCopy])
      {
        v14 = [(SKGProcessor *)self itemForRecordHasTextContent:recordCopy];
        if ((flagsCopy & 2) != 0)
        {
          v12 = [(SKGProcessor *)self needsSKGReindexerEmbeddingsForRecord:recordCopy bundleID:dCopy itemHasText:v14];
          if ((flagsCopy & 4) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v12 = 0;
          if ((flagsCopy & 4) == 0)
          {
LABEL_11:
            if ((flagsCopy & 0x20) != 0)
            {
              v12 |= [(SKGProcessor *)self needsSKGReindexerDocUnderstandingForRecord:recordCopy bundleID:dCopy itemHasText:v14];
              if ((flagsCopy & 0x10) == 0)
              {
                goto LABEL_5;
              }
            }

            else if ((flagsCopy & 0x10) == 0)
            {
              goto LABEL_5;
            }

            LOBYTE(v12) = [(SKGProcessor *)self needsSKGReindexerSuggestedEventsForRecord:recordCopy bundleID:dCopy itemHasText:v14]| v12;
            goto LABEL_5;
          }
        }

        v12 |= [(SKGProcessor *)self needsSKGReindexerKeyphrasesForRecord:recordCopy bundleID:dCopy itemHasText:v14];
        goto LABEL_11;
      }
    }
  }

  LOBYTE(v12) = 0;
LABEL_5:

  return v12 & 1;
}

- (BOOL)needsPriorityForRecord:(id)record bundleID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v8 = dCopy;
  if (dCopy)
  {
    v9 = dCopy;
  }

  else
  {
    v9 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
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

  v12 = [(SKGProcessor *)self recordIsCurrent:recordCopy toCalendarUnit:16 maxOffset:3 checkFuture:0 dateKeys:v11];
  v13 = v12 | [(SKGProcessor *)self recordIsCurrent:recordCopy toCalendarUnit:8 maxOffset:3 checkFuture:1 dateKeys:&unk_1F0BDD0C0];

  return v13 & 1;
}

- (void)clearKeyphrasesAttributes:(id)attributes
{
  v3 = *MEMORY[0x1E695E738];
  attributesCopy = attributes;
  [attributesCopy setObject:v3 forKey:@"_kMDItemNeedsKeyphrases"];
  [attributesCopy setObject:v3 forKey:@"kMDItemKeyphraseLabels"];
  [attributesCopy setObject:v3 forKey:@"kMDItemKeyphraseConfidences"];
  [attributesCopy setObject:v3 forKey:@"kMDItemKeyphraseVersion"];
}

- (void)completeKeyphrasesAttributes:(id)attributes
{
  v3 = MEMORY[0x1E696AD98];
  attributesCopy = attributes;
  v6 = +[SKGProcessorContext sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(v6, "keyphraseVersion")}];
  [attributesCopy setObject:v5 forKey:@"kMDItemKeyphraseVersion"];
}

- (BOOL)keyphraseRecordNeedsProcessing:(id)processing bundleID:(id)d isUpdate:(BOOL)update hasTextContent:(BOOL)content shouldClear:(BOOL *)clear shouldMarkComplete:(BOOL *)complete
{
  contentCopy = content;
  updateCopy = update;
  v38 = *MEMORY[0x1E69E9840];
  processingCopy = processing;
  dCopy = d;
  v16 = +[SKGProcessorContext sharedContext];
  enableExtractions = [v16 enableExtractions];

  if (!enableExtractions)
  {
    goto LABEL_15;
  }

  v31 = updateCopy;
  clearCopy = clear;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = +[SKGProcessorContext sharedContext];
  keyphraseOptionalExtractionAttributes = [v18 keyphraseOptionalExtractionAttributes];

  v20 = [keyphraseOptionalExtractionAttributes countByEnumeratingWithState:&v33 objects:v37 count:16];
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
        objc_enumerationMutation(keyphraseOptionalExtractionAttributes);
      }

      v24 = *(*(&v33 + 1) + 8 * i);
      if ([(__CFString *)v24 isEqualToString:@"kMDItemTitle"])
      {
        if (![dCopy isEqualToString:@"com.apple.mobilecal"])
        {
          continue;
        }

        selfCopy2 = self;
        v26 = processingCopy;
        v27 = @"kMDItemTitle";
      }

      else
      {
        selfCopy2 = self;
        v26 = processingCopy;
        v27 = v24;
      }

      if ([(SKGProcessor *)selfCopy2 recordContainsValue:v26 key:v27])
      {

        v28 = 1;
        goto LABEL_26;
      }
    }

    v21 = [keyphraseOptionalExtractionAttributes countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_14:

  clear = clearCopy;
  updateCopy = v31;
LABEL_15:
  if (contentCopy)
  {
    if (complete && [SKGProcessor textContentLengthForRecord:processingCopy]<= 0x13)
    {
      *complete = 1;
    }

    v28 = 1;
    if (clear && updateCopy)
    {
      *clear = 1;
    }
  }

  else
  {
    v28 = 0;
    if (clear && !updateCopy)
    {
      v28 = 0;
      *clear = 1;
    }
  }

LABEL_26:

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (BOOL)needsSKGReindexerKeyphrasesForRecord:(id)record bundleID:(id)d itemHasText:(BOOL)text
{
  textCopy = text;
  recordCopy = record;
  dCopy = d;
  v10 = +[SKGProcessorContext sharedContext];
  enableKeyphrases = [v10 enableKeyphrases];

  if (enableKeyphrases)
  {
    if (dCopy)
    {
      v12 = dCopy;
      v13 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:recordCopy];
    }

    else
    {
      v12 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
      v13 = [(SKGProcessor *)self copyDomainIdentifierFromRecord:recordCopy];
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
    v29 = textCopy;
    v17 = [(SKGProcessor *)self copyKeyphraseVersionFromRecord:recordCopy];
    v18 = v17;
    if (v17)
    {
      intValue = [v17 intValue];
      v20 = +[SKGProcessorContext sharedContext];
      v21 = [v20 keyphraseVersion] == intValue;
    }

    else
    {
      v21 = 0;
    }

    v22 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemUpdaterVersion"];
    v23 = v22;
    if (v22)
    {
      intValue2 = [v22 intValue];
      v25 = +[SKGProcessorContext sharedContext];
      v26 = [v25 textVersion] != intValue2;
    }

    else
    {
      v26 = 1;
    }

    v30 = 0;
    v27 = [(SKGProcessor *)self keyphraseRecordNeedsProcessing:recordCopy bundleID:v12 isUpdate:0 hasTextContent:v29 shouldClear:&v30 + 1 shouldMarkComplete:&v30];
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

- (BOOL)needsKeyphrasesForRecord:(id)record bundleID:(id)d
{
  recordCopy = record;
  dCopy = d;
  if (![recordCopy count])
  {
    goto LABEL_8;
  }

  v8 = +[SKGProcessor sharedProcessor];
  v9 = [v8 recordIsValid:recordCopy];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = +[SKGProcessorContext sharedContext];
  enableKeyphrases = [v10 enableKeyphrases];

  if (!enableKeyphrases)
  {
    goto LABEL_8;
  }

  v12 = +[SKGProcessorContext sharedContext];
  enableExtractions = [v12 enableExtractions];

  if (enableExtractions)
  {
    goto LABEL_10;
  }

  v14 = [(SKGProcessor *)self copyProtectionClassFromRecord:recordCopy];
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
    v19 = [(SKGProcessor *)self copyKeyphraseVersionFromRecord:recordCopy];
    v15 = v19;
    if (v19)
    {
      intValue = [v19 intValue];
      v21 = +[SKGProcessorContext sharedContext];
      keyphraseVersion = [v21 keyphraseVersion];

      if (keyphraseVersion == intValue)
      {
        goto LABEL_12;
      }
    }

    if (dCopy)
    {
      v23 = dCopy;
    }

    else
    {
      v23 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
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
    v17 = [(SKGProcessor *)self recordContainsValue:recordCopy key:@"kMDItemTextContent"]|| [(SKGProcessor *)self recordContainsValue:recordCopy key:@"_kMDItemSnippet"];
    goto LABEL_21;
  }

LABEL_8:
  v17 = 0;
LABEL_9:

  return v17;
}

- (BOOL)shouldGenerateKeyphrasesForRecord:(id)record bundleID:(id)d
{
  recordCopy = record;
  v6 = [(SKGProcessor *)self copyFileProviderIDFromRecord:recordCopy];

  if (v6)
  {
    v7 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemRequiresImport"];
    v8 = [(SKGProcessor *)self copyContentTypeFromRecord:recordCopy];
    v9 = v8;
    v10 = v7 && v8 && [v7 BOOLValue] && !objc_msgSend(v9, "isEqualToString:", @"public.folder");
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (BOOL)docContentExceedsMaxAllowedSize:(id)size
{
  sizeCopy = size;
  v4 = [SKGProcessor getHTMLContentByteSizeForRecord:sizeCopy];
  v5 = [SKGProcessor getTextContentByteSizeForRecord:sizeCopy];

  return v5 + v4 > 0x100000;
}

+ (BOOL)docIsTrashOrJunkMail:(id)mail
{
  v3 = [SKGProcessor copyMailboxesFromRecord:mail];
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

- (void)clearSuggestedEventsAttributes:(id)attributes
{
  v3 = *MEMORY[0x1E695E738];
  attributesCopy = attributes;
  [attributesCopy setObject:v3 forKey:@"_kMDItemNeedsSuggestedEvents"];
  [attributesCopy setObject:v3 forKey:@"kMDItemSuggestedEventsVersion"];
}

- (void)completeSuggestedEventsAttributes:(id)attributes
{
  v3 = MEMORY[0x1E696AD98];
  attributesCopy = attributes;
  v6 = +[SKGProcessorContext sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(v6, "suggestedEventsVersion")}];
  [attributesCopy setObject:v5 forKey:@"kMDItemSuggestedEventsVersion"];
}

- (BOOL)suggestedEventsRecordNeedsProcessing:(id)processing bundleID:(id)d isUpdate:(BOOL)update hasTextContent:(BOOL)content shouldClear:(BOOL *)clear shouldMarkComplete:(BOOL *)complete
{
  contentCopy = content;
  processingCopy = processing;
  v11 = [SKGProcessor recordHasHTMLContent:processingCopy];
  v12 = contentCopy || v11;
  if (!complete || !contentCopy && !v11)
  {
    goto LABEL_14;
  }

  v13 = v11;
  if (!contentCopy)
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v14 = [SKGProcessor textContentLengthForRecord:processingCopy];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL || v13)
  {
LABEL_8:
    if (![SKGProcessor docContentExceedsMaxAllowedSize:processingCopy])
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
    *complete = 1;
  }

LABEL_12:
  if ([SKGProcessor docIsTrashOrJunkMail:processingCopy])
  {
    *complete = 1;
  }

LABEL_14:

  return v12;
}

- (BOOL)needsSuggestedEventsForRecord:(id)record bundleID:(id)d
{
  recordCopy = record;
  dCopy = d;
  if ([recordCopy count])
  {
    v8 = +[SKGProcessor sharedProcessor];
    v9 = [v8 recordIsValid:recordCopy];

    if (v9)
    {
      v10 = [(SKGProcessor *)self copySuggestedEventsVersionFromRecord:recordCopy];
      v11 = v10;
      if (v10 && (v12 = [v10 intValue], +[SKGProcessorContext sharedContext](SKGProcessorContext, "sharedContext"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "suggestedEventsVersion"), v13, v14 == v12) || -[SKGProcessor recordContainsValue:key:](self, "recordContainsValue:key:", recordCopy, @"_kMDItemNeedsSuggestedEvents"))
      {
        v15 = 0;
      }

      else
      {
        if (dCopy)
        {
          v16 = dCopy;
        }

        else
        {
          v16 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
          if (!v16)
          {
            v15 = 1;
            goto LABEL_12;
          }
        }

        v17 = +[SKGProcessorContext sharedContext];
        suggestedEventsIncludeBundles = [v17 suggestedEventsIncludeBundles];
        v15 = [suggestedEventsIncludeBundles containsObject:v16];
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (BOOL)shouldGenerateSuggestedEventsForRecord:(id)record bundleID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v8 = dCopy;
  if (dCopy)
  {
    v9 = dCopy;
  }

  else
  {
    v9 = [(SKGProcessor *)self copyBundleIdentifierFromRecord:recordCopy];
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v10 = +[SKGProcessorContext sharedContext];
  suggestedEventsIncludeBundles = [v10 suggestedEventsIncludeBundles];
  v12 = [suggestedEventsIncludeBundles containsObject:v9];

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (![SKGProcessor recordHasTextContent:recordCopy]&& ![SKGProcessor recordHasHTMLContent:recordCopy])
  {
    goto LABEL_14;
  }

  if ([SKGProcessor docContentExceedsMaxAllowedSize:recordCopy])
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

  if (![SKGProcessor docIsTrashOrJunkMail:recordCopy])
  {
    v18 = [(SKGProcessor *)self copyFileProviderIDFromRecord:recordCopy];

    if (v18)
    {
      v19 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemRequiresImport"];
      v20 = [(SKGProcessor *)self copyContentTypeFromRecord:recordCopy];
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
      v22 = [(SKGProcessor *)self copyNumberValueFromRecord:recordCopy key:@"_kMDItemTextContentIndexExists"];
      v19 = v22;
      if (v22 && [v22 intValue])
      {
        v16 = 1;
LABEL_29:

        goto LABEL_15;
      }

      v21 = [(SKGProcessor *)self copySnippetFromRecord:recordCopy];
      if (!v21)
      {
        v23 = [(SKGProcessor *)self copyTextContentFromRecord:recordCopy];
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