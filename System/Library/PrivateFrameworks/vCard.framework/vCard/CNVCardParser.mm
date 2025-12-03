@interface CNVCardParser
+ (BOOL)isTagSyntacticallyValid:(id)valid;
+ (BOOL)parseFirstResultInData:(id)data resultBuilder:(id)builder;
+ (id)newParameterSelectorMap;
+ (id)newParsingSelectorMap;
+ (id)os_log;
+ (id)parseData:(id)data options:(id)options resultFactory:(id)factory;
+ (id)parseData:(id)data resultFactory:(id)factory;
+ (unint64_t)countOfCardsInData:(id)data;
+ (unint64_t)inferredStringEncodingFromData:(id)data;
- (BOOL)advancePastSemicolon;
- (BOOL)parseExtension:(id)extension;
- (BOOL)parseInstantMessageValueWithService:(id)service;
- (BOOL)parseLine;
- (BOOL)parseNextResultUsingResultBuilder:(id)builder;
- (BOOL)parseValueUsingSelector:(SEL)selector;
- (BOOL)parse_ADR;
- (BOOL)parse_BDAY;
- (BOOL)parse_CALURI;
- (BOOL)parse_EMAIL;
- (BOOL)parse_FN;
- (BOOL)parse_IMPP;
- (BOOL)parse_N;
- (BOOL)parse_NICKNAME;
- (BOOL)parse_NOTE;
- (BOOL)parse_ORG;
- (BOOL)parse_TEL;
- (BOOL)parse_TITLE;
- (BOOL)parse_UID;
- (BOOL)parse_URL;
- (BOOL)parse_VERSION;
- (BOOL)parse_VND_63_POSTER_IDENTIFIER;
- (BOOL)parse_VND_63_SENSITIVE_CONTENT_CONFIG;
- (BOOL)parse_X_ABDATE;
- (BOOL)parse_X_ABORDER;
- (BOOL)parse_X_ABPHOTO;
- (BOOL)parse_X_ABRELATEDNAMES;
- (BOOL)parse_X_ABSHOWAS;
- (BOOL)parse_X_ABUID;
- (BOOL)parse_X_ACTIVITY_ALERT;
- (BOOL)parse_X_ADDRESSBOOKSERVER_PHONEME_DATA;
- (BOOL)parse_X_ADDRESSING_GRAMMAR;
- (BOOL)parse_X_ALTBDAY;
- (BOOL)parse_X_APPLE_GUARDIAN_WHITELISTED;
- (BOOL)parse_X_APPLE_LIKENESS_SERVICE_IDENTIFIER;
- (BOOL)parse_X_APPLE_LIKENESS_SOURCE;
- (BOOL)parse_X_IMAGEHASH;
- (BOOL)parse_X_IMAGETYPE;
- (BOOL)parse_X_IMAGE_BACKGROUND_COLORS_DATA;
- (BOOL)parse_X_MAIDENNAME;
- (BOOL)parse_X_PHONETIC_FIRST_NAME;
- (BOOL)parse_X_PHONETIC_LAST_NAME;
- (BOOL)parse_X_PHONETIC_MIDDLE_NAME;
- (BOOL)parse_X_PHONETIC_ORG;
- (BOOL)parse_X_PRONUNCIATION_FIRST_NAME;
- (BOOL)parse_X_PRONUNCIATION_LAST_NAME;
- (BOOL)parse_X_SHARED_PHOTO_DISPLAY_PREF;
- (BOOL)parse_X_SOCIALPROFILE;
- (BOOL)parse_X_WALLPAPER;
- (BOOL)parse_X_WATCH_WALLPAPER_IMAGE_DATA;
- (BOOL)valueIsEmpty:(id)empty;
- (CNVCardParser)initWithData:(id)data;
- (CNVCardParser)initWithData:(id)data options:(id)options;
- (id)fallbackLabelForProperty:(id)property;
- (id)firstCustomLabelForProperty:(id)property types:(id)types;
- (id)firstParameterWithName:(id)name;
- (id)firstValueForKey:(id)key inExtension:(id)extension;
- (id)firstValueForKey:(id)key inExtensionGroup:(id)group;
- (id)firstValueForParameterWithName:(id)name;
- (id)genericLabelForProperty:(id)property;
- (id)makeLineWithLabel:(id)label value:(id)value;
- (id)makeLineWithValue:(id)value forProperty:(id)property;
- (id)nextParameterInCurrentLine;
- (id)nextResultWithFactory:(id)factory progressLength:(int64_t *)length;
- (id)parameterValuesForName:(id)name;
- (id)parseArrayValue;
- (id)parseParameterValues;
- (id)parseParameters;
- (id)parseRemainingLine;
- (id)parseStringValue;
- (id)parseUnknownValueStartingAtPosition:(unint64_t)position;
- (id)phoneLabel;
- (id)pool_nextResultWithFactory:(id)factory progressLength:(int64_t *)length;
- (id)resultsWithFactory:(id)factory;
- (id)typeParameters;
- (void)cleanUpCardState;
- (void)parameter_CHARSET:(id)t;
- (void)parameter_ENCODING:(id)g;
- (void)parseLine;
- (void)processExtensionValues;
- (void)reportMultiValueLines:(id)lines forProperty:(id)property;
- (void)reportValue:(id)value forProperty:(id)property;
- (void)reportValues;
@end

@implementation CNVCardParser

+ (id)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    +[CNVCardParser os_log];
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

uint64_t __23__CNVCardParser_os_log__block_invoke()
{
  os_log_cn_once_object_1 = os_log_create("com.apple.contacts.vcard", "CNVCardParser");

  return MEMORY[0x2821F96F8]();
}

+ (unint64_t)countOfCardsInData:(id)data
{
  v3 = [CNVCardRangeFinder allRangesInData:data];
  left = [v3 left];
  v5 = [left count];

  return v5;
}

+ (BOOL)parseFirstResultInData:(id)data resultBuilder:(id)builder
{
  builderCopy = builder;
  dataCopy = data;
  v8 = [[self alloc] initWithData:dataCopy];

  LOBYTE(dataCopy) = [v8 parseNextResultUsingResultBuilder:builderCopy];
  return dataCopy;
}

+ (id)newParsingSelectorMap
{
  v2 = objc_alloc_init(CNVCardSelectorMap);
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_ADD forString:@"ADD"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_ADR forString:@"ADR"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_BDAY forString:@"BDAY"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_CALURI forString:@"CALURI"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_EMAIL forString:@"EMAIL"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_FN forString:@"FN"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_IMPP forString:@"IMPP"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_N forString:@"N"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_NICKNAME forString:@"NICKNAME"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_NOTE forString:@"NOTE"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_ORG forString:@"ORG"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_PHONETIC_ORG forString:@"X-PHONETIC-ORG"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_PHOTO forString:@"PHOTO"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_PRODID forString:@"PRODID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_REV forString:@"REV"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_TEL forString:@"TEL"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_TITLE forString:@"TITLE"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_UID forString:@"UID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_URL forString:@"URL"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_VERSION forString:@"VERSION"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ABADR forString:@"X-ABADR"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ABDATE forString:@"X-ABDATE"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ABLABEL forString:@"X-ABLABEL"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ABORDER forString:@"X-ABORDER"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ABPHOTO forString:@"X-ABPHOTO"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_AIM forString:@"X-AIM"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_AIM_ID forString:@"X-AIM-ID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ABRELATEDNAMES forString:@"X-ABRELATEDNAMES"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ABSHOWAS forString:@"X-ABSHOWAS"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ABUID forString:@"X-ABUID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ACTIVITY_ALERT forString:@"X-ACTIVITY-ALERT"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ALTBDAY forString:@"X-ALTBDAY"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_APPLE_SUBADMINISTRATIVEAREA forString:@"X-APPLE-SUBADMINISTRATIVEAREA"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_APPLE_SUBLOCALITY forString:@"X-APPLE-SUBLOCALITY"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_GOOGLE_ID forString:@"X-GOOGLE-ID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_GOOGLE_TALK forString:@"X-GOOGLE-TALK"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_GTALK forString:@"X-GTALK"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ICQ forString:@"X-ICQ"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ICQ_ID forString:@"X-ICQ-ID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_IMAGEHASH forString:@"X-IMAGEHASH"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_IMAGETYPE forString:@"X-IMAGETYPE"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_WALLPAPER forString:@"X-WALLPAPER"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_WATCH_WALLPAPER_IMAGE_DATA forString:@"X-WATCH-WALLPAPER-IMAGE-DATA"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_JABBER forString:@"X-JABBER"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_JABBER_ID forString:@"X-JABBER-ID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_MAIDENNAME forString:@"X-MAIDENNAME"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_MSN forString:@"X-MSN"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_MSN_ID forString:@"X-MSN-ID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_PHONETIC_FIRST_NAME forString:@"X-PHONETIC-FIRST-NAME"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_PHONETIC_LAST_NAME forString:@"X-PHONETIC-LAST-NAME"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_PHONETIC_MIDDLE_NAME forString:@"X-PHONETIC-MIDDLE-NAME"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_PRONUNCIATION_FIRST_NAME forString:@"X-PRONUNCIATION-FIRST-NAME"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_PRONUNCIATION_LAST_NAME forString:@"X-PRONUNCIATION-LAST-NAME"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_QQ forString:@"X-QQ"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_QQ_ID forString:@"X-QQ-ID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_SKYPE forString:@"X-SKYPE"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_SKYPE_ID forString:@"X-SKYPE-ID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_SKYPE_USERNAME forString:@"X-SKYPE-USERNAME"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_SOCIALPROFILE forString:@"X-SOCIALPROFILE"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_YAHOO forString:@"X-YAHOO"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_YAHOO_ID forString:@"X-YAHOO-ID"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ADDRESSBOOKSERVER_PHONEME_DATA forString:@"X-ADDRESSBOOKSERVER-PHONEME-DATA"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_APPLE_LIKENESS_SERVICE_IDENTIFIER forString:@"X-APPLE-LIKENESS-SERVICE-IDENTIFIER"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_APPLE_LIKENESS_SOURCE forString:@"X-APPLE-LIKENESS-SOURCE"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_APPLE_GUARDIAN_WHITELISTED forString:@"X-APPLE-GUARDIAN-WHITELISTED"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_ADDRESSING_GRAMMAR forString:@"X-ADDRESSING-GRAMMAR"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_SHARED_PHOTO_DISPLAY_PREF forString:@"X-SHARED-PHOTO-DISPLAY-PREF"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_X_IMAGE_BACKGROUND_COLORS_DATA forString:@"X-IMAGE-BACKGROUND-COLORS-DATA"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_VND_63_POSTER_IDENTIFIER forString:@"VND-63-POSTER-IDENTIFIER"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parse_VND_63_SENSITIVE_CONTENT_CONFIG forString:@"VND-63-SENSITIVE-CONTENT-CONFIG"];
  return v2;
}

+ (id)newParameterSelectorMap
{
  v2 = objc_alloc_init(CNVCardSelectorMap);
  [(CNVCardSelectorMap *)v2 setSelector:sel_parameter_QUOTED_PRINTABLE_ forString:@"QUOTED-PRINTABLE"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parameter_BASE64_ forString:@"BASE64"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parameter_CHARSET_ forString:@"CHARSET"];
  [(CNVCardSelectorMap *)v2 setSelector:sel_parameter_ENCODING_ forString:@"ENCODING"];
  return v2;
}

- (CNVCardParser)initWithData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(CNVCardReadingOptions);
  v6 = [(CNVCardParser *)self initWithData:dataCopy options:v5];

  return v6;
}

- (CNVCardParser)initWithData:(id)data options:(id)options
{
  dataCopy = data;
  optionsCopy = options;
  v28.receiver = self;
  v28.super_class = CNVCardParser;
  v9 = [(CNVCardParser *)&v28 init];
  v10 = v9;
  v11 = 0;
  if (dataCopy && v9)
  {
    if ([dataCopy length] && (v12 = -[CNVCardLexer initWithData:]([CNVCardLexer alloc], "initWithData:", dataCopy), lexer = v10->_lexer, v10->_lexer = v12, lexer, v10->_lexer))
    {
      objc_storeStrong(&v10->_data, data);
      objc_storeStrong(&v10->_options, options);
      propertiesToFetch = [optionsCopy propertiesToFetch];
      v15 = [_TtC5vCard19CNVCardTagInclusion policyWithTags:propertiesToFetch];
      tagInclusionPolicy = v10->_tagInclusionPolicy;
      v10->_tagInclusionPolicy = v15;

      v10->_defaultEncoding = [objc_opt_class() inferredStringEncodingFromData:dataCopy];
      v17 = objc_alloc_init(CNVCardMutableNameComponents);
      nameComponents = v10->_nameComponents;
      v10->_nameComponents = v17;

      v10->_fullNameHasZeroLength = 1;
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      unknowns = v10->_unknowns;
      v10->_unknowns = v19;

      v21 = objc_alloc_init(CNVCardDateComponentsParser);
      dateComponentsParser = v10->_dateComponentsParser;
      v10->_dateComponentsParser = v21;

      newParsingSelectorMap = [objc_opt_class() newParsingSelectorMap];
      parsingSelectorMap = v10->_parsingSelectorMap;
      v10->_parsingSelectorMap = newParsingSelectorMap;

      newParameterSelectorMap = [objc_opt_class() newParameterSelectorMap];
      parameterSelectorMap = v10->_parameterSelectorMap;
      v10->_parameterSelectorMap = newParameterSelectorMap;

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)parseData:(id)data resultFactory:(id)factory
{
  factoryCopy = factory;
  dataCopy = data;
  v8 = objc_alloc_init(CNVCardReadingOptions);
  v9 = [self parseData:dataCopy options:v8 resultFactory:factoryCopy];

  return v9;
}

+ (id)parseData:(id)data options:(id)options resultFactory:(id)factory
{
  factoryCopy = factory;
  optionsCopy = options;
  dataCopy = data;
  v10 = [CNVCardParsingConcurrencyStrategy strategyForOptions:optionsCopy];
  v11 = [v10 parseData:dataCopy options:optionsCopy resultFactory:factoryCopy];

  return v11;
}

- (id)resultsWithFactory:(id)factory
{
  factoryCopy = factory;
  array = [MEMORY[0x277CBEB18] array];
  if (![(CNVCardParser *)self atEOF])
  {
    do
    {
      v6 = [array count];
      options = [(CNVCardParser *)self options];
      contactLimit = [options contactLimit];

      if (v6 >= contactLimit)
      {
        break;
      }

      v9 = [(CNVCardParser *)self nextResultWithFactory:factoryCopy progressLength:0];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      [array addObject:v9];
    }

    while (![(CNVCardParser *)self atEOF]);
  }

  return array;
}

- (id)nextResultWithFactory:(id)factory progressLength:(int64_t *)length
{
  factoryCopy = factory;
  v4 = factoryCopy;
  v5 = CNResultWithAutoreleasePool();

  return v5;
}

- (id)pool_nextResultWithFactory:(id)factory progressLength:(int64_t *)length
{
  factoryCopy = factory;
  if (![(CNVCardParser *)self atEOF])
  {
    makeBuilder = [factoryCopy makeBuilder];
    currentPosition = [(CNVCardParser *)self currentPosition];
    v10 = [(CNVCardParser *)self parseNextResultUsingResultBuilder:makeBuilder];
    self->_hasImportErrors = !v10;
    if (length)
    {
      *length = [(CNVCardParser *)self currentPosition]- currentPosition;
      if (self->_hasImportErrors)
      {
LABEL_6:
        build = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else if (!v10)
    {
      goto LABEL_6;
    }

    build = [makeBuilder build];
    goto LABEL_9;
  }

  build = 0;
  if (length)
  {
    *length = 0;
  }

LABEL_10:

  return build;
}

- (BOOL)parseNextResultUsingResultBuilder:(id)builder
{
  builderCopy = builder;
  objc_storeStrong(&self->_resultBuilder, builder);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  extensions = self->_extensions;
  self->_extensions = v6;

  [(CNVCardLexer *)self->_lexer advanceToString];
  readNextToken = [(CNVCardLexer *)self->_lexer readNextToken];
  if ((readNextToken - 32769) <= 1)
  {
    do
    {
      readNextToken = [(CNVCardLexer *)self->_lexer readNextToken];
    }

    while ((readNextToken - 32769) < 2);
  }

  if (readNextToken != 5)
  {
    if (readNextToken != 65537)
    {
      v9 = +[CNVCardLogging vCard];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CNVCardParser parseNextResultUsingResultBuilder:];
      }

      [(CNVCardLexer *)self->_lexer advanceToToken:7 throughTypes:0x4000];
      [(CNVCardLexer *)self->_lexer advancePastEOL];
    }

    goto LABEL_25;
  }

  if (![(CNVCardLexer *)self->_lexer advanceToToken:8193 throughTypes:0x4000])
  {
    v12 = +[CNVCardLogging vCard];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNVCardParser parseNextResultUsingResultBuilder:];
    }

    goto LABEL_24;
  }

  if (![(CNVCardLexer *)self->_lexer advanceToToken:6 throughTypes:0x4000])
  {
    v12 = +[CNVCardLogging vCard];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNVCardParser parseNextResultUsingResultBuilder:];
    }

    goto LABEL_24;
  }

  if (![(CNVCardLexer *)self->_lexer advanceToEOL])
  {
    v12 = +[CNVCardLogging vCard];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNVCardParser parseNextResultUsingResultBuilder:];
    }

    goto LABEL_24;
  }

  if (![(CNVCardLexer *)self->_lexer advancePastEOL])
  {
    v12 = +[CNVCardLogging vCard];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNVCardParser parseNextResultUsingResultBuilder:];
    }

LABEL_24:

LABEL_25:
    [(CNVCardParser *)self cleanUpCardState];
    resultBuilder = self->_resultBuilder;
    self->_resultBuilder = 0;

    v11 = 0;
    goto LABEL_26;
  }

    ;
  }

  [(CNVCardParser *)self reportValues];
  if (![(CNVCardLexer *)self->_lexer advanceToToken:8193 throughTypes:0x4000]|| ![(CNVCardLexer *)self->_lexer advanceToToken:6 throughTypes:0x4000])
  {
    goto LABEL_25;
  }

  [(CNVCardLexer *)self->_lexer advancePastEOL];
  [(CNVCardParser *)self cleanUpCardState];
  v10 = self->_resultBuilder;
  self->_resultBuilder = 0;

  v11 = 1;
LABEL_26:

  return v11;
}

- (void)cleanUpCardState
{
  v3 = objc_alloc_init(CNVCardMutableNameComponents);
  nameComponents = self->_nameComponents;
  self->_nameComponents = v3;

  bday = self->_bday;
  self->_bday = 0;

  altBday = self->_altBday;
  self->_altBday = 0;

  self->_fullNameHasZeroLength = 1;
  resultBuilder = self->_resultBuilder;
  self->_resultBuilder = 0;

  carddavUID = self->_carddavUID;
  self->_carddavUID = 0;

  emails = self->_emails;
  self->_emails = 0;

  urls = self->_urls;
  self->_urls = 0;

  calendarURIs = self->_calendarURIs;
  self->_calendarURIs = 0;

  relatedNames = self->_relatedNames;
  self->_relatedNames = 0;

  dateComponents = self->_dateComponents;
  self->_dateComponents = 0;

  phones = self->_phones;
  self->_phones = 0;

  addresses = self->_addresses;
  self->_addresses = 0;

  instantMessagingAddresses = self->_instantMessagingAddresses;
  self->_instantMessagingAddresses = 0;

  socialProfiles = self->_socialProfiles;
  self->_socialProfiles = 0;

  activityAlerts = self->_activityAlerts;
  self->_activityAlerts = 0;

  notes = self->_notes;
  self->_notes = 0;

  extensions = self->_extensions;
  self->_extensions = 0;

  imageData = self->_imageData;
  self->_imageData = 0;

  uid = self->_uid;
  self->_uid = 0;

  addressingGrammars = self->_addressingGrammars;
  self->_addressingGrammars = 0;

  unknowns = self->_unknowns;

  [(NSMutableArray *)unknowns removeAllObjects];
}

+ (unint64_t)inferredStringEncodingFromData:(id)data
{
  v3 = [CNVCardDataAnalyzer analyzeData:data];
  if (v3)
  {
    if (v3 == 2483028224)
    {
      return 2415919360;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v5 = +[CNVCardUserDefaults vCard21Encoding];
    v6 = v5;
    if (!v5 || (v7 = CFStringConvertIANACharSetNameToEncoding(v5), v4 = CFStringConvertEncodingToNSStringEncoding(v7), v4 == 0xFFFFFFFF))
    {
      v4 = 30;
    }
  }

  return v4;
}

- (BOOL)parseLine
{
  self->_startingPositionOfCurrentProperty = [(CNVCardParser *)self currentPosition];
  defaultEncoding = self->_defaultEncoding;
  *&self->_quotedPrintable = 0;
  grouping = self->_grouping;
  self->_grouping = 0;
  self->_encoding = defaultEncoding;

  v5 = [(CNVCardLexer *)self->_lexer nextArraySeperatedByToken:256 stoppingAt:46080 inEncoding:1 maximumValueLength:[(CNVCardReadingOptions *)self->_options maximumValueLength]];
  v6 = [v5 count];
  if (!v6)
  {
    lastObject = 0;
LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  lastObject = [v5 lastObject];
  if (v7 == 2)
  {
    v9 = [v5 objectAtIndex:0];
    v10 = [v9 copy];
    v11 = self->_grouping;
    self->_grouping = v10;
  }

  if (!lastObject || ([lastObject _cn_caseInsensitiveIsEqual:@"END"] & 1) != 0)
  {
    goto LABEL_23;
  }

  if ([(CNVCardTagInclusionPolicy *)self->_tagInclusionPolicy shouldParseTag:lastObject]&& (v12 = [(CNVCardParser *)self parsingSelectorForTag:lastObject]) != 0 && (v13 = v12, (objc_opt_respondsToSelector() & 1) != 0))
  {
    parseParameters = [(CNVCardParser *)self parseParameters];
    v15 = [parseParameters copy];
    itemParameters = self->_itemParameters;
    self->_itemParameters = v15;

    if (![(CNVCardParser *)self parseValueUsingSelector:v13])
    {
      v17 = +[CNVCardLogging vCard];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CNVCardParser parseLine];
      }

LABEL_19:
    }
  }

  else if ([(CNVCardTagInclusionPolicy *)self->_tagInclusionPolicy shouldCaptureUnknownTags])
  {
    v17 = [(CNVCardParser *)self parseUnknownValueStartingAtPosition:self->_startingPositionOfCurrentProperty];
    if ([objc_opt_class() isTagSyntacticallyValid:lastObject])
    {
      v18 = objc_alloc_init(CNVCardUnknownPropertyDescription);
      [(CNVCardUnknownPropertyDescription *)v18 setPropertyName:lastObject];
      [(CNVCardUnknownPropertyDescription *)v18 setOriginalLine:v17];
      [(NSMutableArray *)self->_unknowns addObject:v18];
    }

    else
    {
      v18 = +[CNVCardLogging vCard];
      if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
      {
        [CNVCardParser parseLine];
      }
    }

    goto LABEL_19;
  }

  if (![(CNVCardLexer *)self->_lexer advanceToEOL]|| ![(CNVCardLexer *)self->_lexer advancePastEOL])
  {
    goto LABEL_23;
  }

  v19 = 1;
LABEL_24:

  return v19;
}

+ (BOOL)isTagSyntacticallyValid:(id)valid
{
  v3 = isTagSyntacticallyValid__cn_once_token_9;
  validCopy = valid;
  if (v3 != -1)
  {
    +[CNVCardParser isTagSyntacticallyValid:];
  }

  v5 = [validCopy _cn_containsCharacterInSet:isTagSyntacticallyValid__cn_once_object_9];

  return v5 ^ 1;
}

void __41__CNVCardParser_isTagSyntacticallyValid___block_invoke()
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-."];
  v0 = [v2 invertedSet];
  v1 = isTagSyntacticallyValid__cn_once_object_9;
  isTagSyntacticallyValid__cn_once_object_9 = v0;
}

- (BOOL)parseValueUsingSelector:(SEL)selector
{
  v5 = [(CNVCardParser *)self methodForSelector:?];

  return v5(self, selector);
}

- (BOOL)parse_ADR
{
  v3 = [CNVCardADRParser valueWithParser:self];
  if ([v3 count])
  {
    v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"Address"];
    addresses = self->_addresses;
    if (!addresses)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_addresses;
      self->_addresses = v6;

      addresses = self->_addresses;
    }

    [(NSMutableArray *)addresses addObject:v4];
  }

  return 1;
}

- (BOOL)parse_BDAY
{
  v3 = [(CNVCardDateComponentsParser *)self->_dateComponentsParser gregorianDateComponentsWithParser:self];
  bday = self->_bday;
  self->_bday = v3;

  return 1;
}

- (BOOL)parse_CALURI
{
  v3 = [CNVCardURLParser valueWithParser:self];
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"URLs"];
    calendarURIs = self->_calendarURIs;
    if (!calendarURIs)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_calendarURIs;
      self->_calendarURIs = v6;

      calendarURIs = self->_calendarURIs;
    }

    [(NSMutableArray *)calendarURIs addObject:v4];
  }

  return 1;
}

- (BOOL)parse_EMAIL
{
  parseRemainingLine = [(CNVCardParser *)self parseRemainingLine];
  v4 = [(CNVCardParser *)self makeLineWithValue:parseRemainingLine forProperty:@"Email"];
  emails = self->_emails;
  if (!emails)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_emails;
    self->_emails = v6;

    emails = self->_emails;
  }

  [(NSMutableArray *)emails addObject:v4];
  [(CNVCardParser *)self advancePastSemicolon];

  return 1;
}

- (BOOL)parse_FN
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setFormattedName:parseStringValue];

  return 1;
}

- (BOOL)parse_IMPP
{
  selfCopy = self;
  v3 = [(NSArray *)self->_itemParameters _cn_firstObjectPassingTest:&__block_literal_global_402];
  values = [v3 values];
  firstObject = [values firstObject];

  v6 = [CNVCardInstantMessageParser serviceForString:firstObject];
  LOBYTE(selfCopy) = [(CNVCardParser *)selfCopy parseInstantMessageValueWithService:v6];

  return selfCopy;
}

uint64_t __27__CNVCardParser_parse_IMPP__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 uppercaseString];

  if ([v3 isEqualToString:@"X-SERVICE-TYPE"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SERVICE-TYPE"];
  }

  return v4;
}

- (BOOL)parse_N
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setLastName:parseStringValue];

  [(CNVCardParser *)self advancePastSemicolon];
  parseStringValue2 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setFirstName:parseStringValue2];

  [(CNVCardParser *)self advancePastSemicolon];
  parseStringValue3 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setMiddleName:parseStringValue3];

  [(CNVCardParser *)self advancePastSemicolon];
  parseStringValue4 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setTitle:parseStringValue4];

  [(CNVCardParser *)self advancePastSemicolon];
  parseStringValue5 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setSuffix:parseStringValue5];

  v8 = *MEMORY[0x277CFBD30];
  lastName = [(CNVCardNameComponents *)self->_nameComponents lastName];
  if ((*(v8 + 16))(v8, lastName))
  {
    firstName = [(CNVCardNameComponents *)self->_nameComponents firstName];
    if ((*(v8 + 16))(v8, firstName))
    {
      middleName = [(CNVCardNameComponents *)self->_nameComponents middleName];
      if ((*(v8 + 16))(v8, middleName))
      {
        title = [(CNVCardNameComponents *)self->_nameComponents title];
        if ((*(v8 + 16))(v8, title))
        {
          suffix = [(CNVCardNameComponents *)self->_nameComponents suffix];
          self->_fullNameHasZeroLength = (*(v8 + 16))(v8, suffix);
        }

        else
        {
          self->_fullNameHasZeroLength = 0;
        }
      }

      else
      {
        self->_fullNameHasZeroLength = 0;
      }
    }

    else
    {
      self->_fullNameHasZeroLength = 0;
    }
  }

  else
  {
    self->_fullNameHasZeroLength = 0;
  }

  return 1;
}

- (BOOL)parse_NICKNAME
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:parseStringValue forProperty:@"Nickname"];

  return 1;
}

- (BOOL)parse_NOTE
{
  parseRemainingLine = [(CNVCardParser *)self parseRemainingLine];
  v4 = [parseRemainingLine mutableCopy];
  notes = self->_notes;
  self->_notes = v4;

  return 1;
}

- (BOOL)parse_ORG
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setCompanyName:parseStringValue];

  [(CNVCardParser *)self advancePastSemicolon];
  parseStringValue2 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardParser *)self reportValue:parseStringValue2 forProperty:@"ABDepartment"];

  return 1;
}

- (BOOL)parse_X_PHONETIC_ORG
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"OrganizationPhonetic"];

  return selfCopy;
}

void __28__CNVCardParser_parse_PHOTO__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  [v9 setImageData:v13];
  v14 = [*(a1 + 32) resultBuilder];
  [v14 setValue:v10 forProperty:@"memojiMetadata"];

  v15 = [*(a1 + 32) resultBuilder];
  [v15 setImageData:v13 forReference:v12 clipRects:v11];
}

- (BOOL)parse_X_WALLPAPER
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:parseStringValue options:0];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:v4 forProperty:@"wallpaper"];

  return selfCopy;
}

- (BOOL)parse_X_WATCH_WALLPAPER_IMAGE_DATA
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:parseStringValue options:0];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:v4 forProperty:@"watchWallpaperImageData"];

  return selfCopy;
}

- (BOOL)parse_X_IMAGE_BACKGROUND_COLORS_DATA
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:parseStringValue options:0];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:v4 forProperty:@"imageBackgroundColorsData"];

  return selfCopy;
}

- (BOOL)parse_TEL
{
  parseRemainingLine = [(CNVCardParser *)self parseRemainingLine];
  v4 = [(CNVCardParser *)self makeLineWithValue:parseRemainingLine forProperty:@"Phone"];
  phones = self->_phones;
  if (!phones)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_phones;
    self->_phones = v6;

    phones = self->_phones;
  }

  [(NSMutableArray *)phones addObject:v4];

  return 1;
}

- (BOOL)parse_TITLE
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = (*(*MEMORY[0x277CFBD30] + 16))();
  if ((v4 & 1) == 0)
  {
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:parseStringValue forProperty:@"JobTitle"];
  }

  return v4 ^ 1;
}

- (BOOL)parse_UID
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = [parseStringValue copy];
  carddavUID = self->_carddavUID;
  self->_carddavUID = v4;

  if ([(CNVCardLexer *)self->_lexer peekAtNextToken]== 4097)
  {
    [(CNVCardLexer *)self->_lexer advanceToPeekPoint];
    parseStringValue2 = [(CNVCardParser *)self parseStringValue];
    v7 = parseStringValue2;
    if (parseStringValue2 && [parseStringValue2 length])
    {
      [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:v7 forProperty:@"externalUUID"];
    }

    if ([(CNVCardLexer *)self->_lexer peekAtNextToken]== 4097)
    {
      [(CNVCardLexer *)self->_lexer advanceToPeekPoint];
    }
  }

  return 1;
}

- (BOOL)parse_URL
{
  v3 = [CNVCardURLParser valueWithParser:self];
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"URLs"];
    urls = self->_urls;
    if (!urls)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_urls;
      self->_urls = v6;

      urls = self->_urls;
    }

    [(NSMutableArray *)urls addObject:v4];
  }

  return 1;
}

- (BOOL)parse_VERSION
{
  parseRemainingLine = [(CNVCardParser *)self parseRemainingLine];
  v4 = (*(*MEMORY[0x277CFBD30] + 16))();
  if ((v4 & 1) == 0)
  {
    self->_30vCard = [parseRemainingLine _cn_caseInsensitiveIsEqual:@"3.0"];
  }

  return v4 ^ 1;
}

- (BOOL)parse_X_ABDATE
{
  v3 = [(CNVCardDateComponentsParser *)self->_dateComponentsParser gregorianDateComponentsWithParser:self];
  if (v3)
  {
    v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"ABDateComponents"];
    dateComponents = self->_dateComponents;
    if (!dateComponents)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_dateComponents;
      self->_dateComponents = v6;

      dateComponents = self->_dateComponents;
    }

    [(NSMutableArray *)dateComponents addObject:v4];
  }

  return 1;
}

- (BOOL)parse_X_ABORDER
{
  v3 = [(CNVCardLexer *)self->_lexer nextArraySeperatedByToken:4096 stoppingAt:0x8000 inEncoding:self->_encoding maximumValueLength:[(CNVCardReadingOptions *)self->_options maximumValueLength]];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [(CNVCardParsedResultBuilder *)self->_resultBuilder valueForProperty:@"ABPersonFlags"];
    integerValue = [v5 integerValue];

    v7 = +[CNVCardUserDefaults defaultNameOrdering];
    v8 = [v3 objectAtIndex:0];
    v9 = v8;
    if (v7 == 32)
    {
      v10 = [v8 compare:@"LAST" options:1];

      v11 = integerValue & 0xFFFFFFFFFFFFFFC7 | 0x10;
    }

    else
    {
      v10 = [v8 compare:@"FIRST" options:1];

      v11 = integerValue & 0xFFFFFFFFFFFFFFC7 | 0x20;
    }

    if (v10)
    {
      v12 = integerValue;
    }

    else
    {
      v12 = v11;
    }

    resultBuilder = self->_resultBuilder;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    [(CNVCardParsedResultBuilder *)resultBuilder setValue:v14 forProperty:@"ABPersonFlags"];
  }

  return v4 != 0;
}

- (BOOL)parse_X_ABPHOTO
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = [CNVCardXABPHOTOParser valueWithName:parseStringValue];
  if (v4)
  {
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setImageData:v4 forReference:&stru_288651EC0 clipRects:MEMORY[0x277CBEBF8]];
  }

  return v4 != 0;
}

- (BOOL)parse_X_ABRELATEDNAMES
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v4 = [(CNVCardParser *)self makeLineWithValue:parseStringValue forProperty:@"ABRelatedNames"];
    relatedNames = self->_relatedNames;
    if (!relatedNames)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_relatedNames;
      self->_relatedNames = v6;

      relatedNames = self->_relatedNames;
    }

    [(NSMutableArray *)relatedNames addObject:v4];
  }

  return 1;
}

- (BOOL)parse_X_ABSHOWAS
{
  v3 = [(CNVCardLexer *)self->_lexer nextArraySeperatedByToken:4096 stoppingAt:0x8000 inEncoding:self->_encoding maximumValueLength:[(CNVCardReadingOptions *)self->_options maximumValueLength]];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [v3 objectAtIndex:0];
    v6 = [v5 compare:@"COMPANY" options:1];

    if (!v6)
    {
      v7 = [(CNVCardParsedResultBuilder *)self->_resultBuilder valueForProperty:@"ABPersonFlags"];
      integerValue = [v7 integerValue];

      resultBuilder = self->_resultBuilder;
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue & 0xFFFFFFFFFFFFFFF8 | 1];
      [(CNVCardParsedResultBuilder *)resultBuilder setValue:v10 forProperty:@"ABPersonFlags"];
    }
  }

  return v4 != 0;
}

- (BOOL)parse_X_ABUID
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = [parseStringValue copy];
  uid = self->_uid;
  self->_uid = v4;

  v6 = self->_uid;
  return (*(*MEMORY[0x277CFBD30] + 16))() ^ 1;
}

- (BOOL)parse_X_ACTIVITY_ALERT
{
  v3 = [CNVCardXACTIVITYALERTParser valueWithParser:self];
  if (v3)
  {
    activityAlerts = self->_activityAlerts;
    if (!activityAlerts)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = self->_activityAlerts;
      self->_activityAlerts = v5;

      activityAlerts = self->_activityAlerts;
    }

    [(NSMutableDictionary *)activityAlerts addEntriesFromDictionary:v3];
  }

  return 1;
}

- (BOOL)parse_X_ALTBDAY
{
  v3 = [(CNVCardDateComponentsParser *)self->_dateComponentsParser dateComponentsWithParser:self];
  altBday = self->_altBday;
  self->_altBday = v3;

  return 1;
}

- (BOOL)parse_X_IMAGEHASH
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:parseStringValue options:0];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:v4 forProperty:@"imageHash"];

  return selfCopy;
}

- (BOOL)parse_X_IMAGETYPE
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"imageType"];

  return selfCopy;
}

- (BOOL)parse_X_MAIDENNAME
{
  selfCopy = self;
  parseRemainingLine = [(CNVCardParser *)self parseRemainingLine];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseRemainingLine forProperty:@"MaidenName"];

  return selfCopy;
}

- (BOOL)parse_X_PHONETIC_FIRST_NAME
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"FirstPhonetic"];

  return selfCopy;
}

- (BOOL)parse_X_PHONETIC_LAST_NAME
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"LastPhonetic"];

  return selfCopy;
}

- (BOOL)parse_X_PHONETIC_MIDDLE_NAME
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"MiddlePhonetic"];

  return selfCopy;
}

- (BOOL)parse_X_PRONUNCIATION_FIRST_NAME
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"FirstPronunciation"];

  return selfCopy;
}

- (BOOL)parse_X_PRONUNCIATION_LAST_NAME
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"LastPronunciation"];

  return selfCopy;
}

- (BOOL)parse_X_ADDRESSING_GRAMMAR
{
  parseRemainingLine = [(CNVCardParser *)self parseRemainingLine];
  v4 = [(CNVCardParser *)self makeLineWithValue:parseRemainingLine forProperty:@"AddressingGrammar"];
  addressingGrammars = self->_addressingGrammars;
  if (!addressingGrammars)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_addressingGrammars;
    self->_addressingGrammars = v6;

    addressingGrammars = self->_addressingGrammars;
  }

  [(NSMutableArray *)addressingGrammars addObject:v4];

  return 1;
}

- (BOOL)parse_X_SOCIALPROFILE
{
  v3 = [CNVCardXSOCIALPROFILEParser valueWithParser:self];
  if (((*(*MEMORY[0x277CFBD08] + 16))() & 1) == 0)
  {
    v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"SocialProfile"];
    socialProfiles = self->_socialProfiles;
    if (!socialProfiles)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_socialProfiles;
      self->_socialProfiles = v6;

      socialProfiles = self->_socialProfiles;
    }

    [(NSMutableArray *)socialProfiles addObject:v4];
  }

  return 1;
}

- (BOOL)parse_X_ADDRESSBOOKSERVER_PHONEME_DATA
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"PhonemeData"];

  return selfCopy;
}

- (BOOL)parse_X_APPLE_LIKENESS_SOURCE
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"PreferredLikenessSource"];

  return selfCopy;
}

- (BOOL)parse_X_APPLE_LIKENESS_SERVICE_IDENTIFIER
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"PreferredApplePersonaIdentifier"];

  return selfCopy;
}

- (BOOL)parse_X_APPLE_GUARDIAN_WHITELISTED
{
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  if ([parseStringValue isEqualToString:@"false"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:parseStringValue forProperty:@"GuardianWhitelisted"];
  }

  return v4;
}

- (BOOL)parse_X_SHARED_PHOTO_DISPLAY_PREF
{
  v3 = [(CNVCardLexer *)self->_lexer nextArraySeperatedByToken:4096 stoppingAt:0x8000 inEncoding:self->_encoding maximumValueLength:[(CNVCardReadingOptions *)self->_options maximumValueLength]];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [(CNVCardParsedResultBuilder *)self->_resultBuilder valueForProperty:@"ABPersonFlags"];
    integerValue = [v5 integerValue];

    v7 = [v3 objectAtIndex:0];
    v8 = [v7 compare:@"AUTOUPDATE" options:1];

    if (v8)
    {
      v9 = [v3 objectAtIndex:0];
      v10 = [v9 compare:@"ALWAYS_ASK" options:1];

      if (v10)
      {
        v11 = [v3 objectAtIndex:0];
        v12 = [v11 compare:@"IMPLICIT_AUTOUPDATE" options:1];

        if (v12)
        {
          v13 = integerValue & 0xFFFFFFFFFFFFFF3FLL;
        }

        else
        {
          v13 = integerValue | 0xC0;
        }
      }

      else
      {
        v13 = integerValue & 0xFFFFFFFFFFFFFF3FLL | 0x80;
      }
    }

    else
    {
      v13 = integerValue & 0xFFFFFFFFFFFFFF3FLL | 0x40;
    }

    resultBuilder = self->_resultBuilder;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [(CNVCardParsedResultBuilder *)resultBuilder setValue:v15 forProperty:@"ABPersonFlags"];
  }

  return v4 != 0;
}

- (BOOL)parse_VND_63_POSTER_IDENTIFIER
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:parseStringValue forProperty:@"posterIdentifier"];

  return selfCopy;
}

- (BOOL)parse_VND_63_SENSITIVE_CONTENT_CONFIG
{
  selfCopy = self;
  parseStringValue = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:parseStringValue options:0];
  LOBYTE(selfCopy) = [(CNVCardParsedResultBuilder *)selfCopy->_resultBuilder setValue:v4 forProperty:@"sensitiveContentConfiguration"];

  return selfCopy;
}

- (BOOL)parseInstantMessageValueWithService:(id)service
{
  v4 = [CNVCardInstantMessageParser valueWithService:service existingHandles:self->_instantMessagingAddresses parser:self];
  if (v4)
  {
    v5 = [(CNVCardParser *)self makeLineWithValue:v4 forProperty:@"InstantMessage"];
    instantMessagingAddresses = self->_instantMessagingAddresses;
    if (!instantMessagingAddresses)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = self->_instantMessagingAddresses;
      self->_instantMessagingAddresses = v7;

      instantMessagingAddresses = self->_instantMessagingAddresses;
    }

    [(NSMutableArray *)instantMessagingAddresses addObject:v5];
  }

  return 1;
}

- (BOOL)parseExtension:(id)extension
{
  extensionCopy = extension;
  parseArrayValue = [(CNVCardParser *)self parseArrayValue];
  if (parseArrayValue)
  {
    grouping = self->_grouping;
    if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
    {
      dictionary = [(NSMutableDictionary *)self->_extensions objectForKey:self->_grouping];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [(NSMutableDictionary *)self->_extensions setObject:dictionary forKey:self->_grouping];
      }

      [dictionary setObject:parseArrayValue forKey:extensionCopy];
    }
  }

  return 1;
}

- (id)firstValueForKey:(id)key inExtensionGroup:(id)group
{
  keyCopy = key;
  groupCopy = group;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v8 = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_extensions objectForKey:groupCopy];
    v8 = [(CNVCardParser *)self firstValueForKey:keyCopy inExtension:v9];
  }

  return v8;
}

- (id)firstValueForKey:(id)key inExtension:(id)extension
{
  v4 = [extension objectForKey:key];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)firstParameterWithName:(id)name
{
  nameCopy = name;
  itemParameters = self->_itemParameters;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CNVCardParser_firstParameterWithName___block_invoke;
  v9[3] = &unk_27A710C78;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [(NSArray *)itemParameters _cn_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __40__CNVCardParser_firstParameterWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 _cn_caseInsensitiveIsEqual:*(a1 + 32)];

  return v4;
}

- (id)firstValueForParameterWithName:(id)name
{
  v3 = [(CNVCardParser *)self firstParameterWithName:name];
  v4 = v3;
  if (v3)
  {
    values = [v3 values];
    firstObject = [values firstObject];

    if ((*(*MEMORY[0x277CFBD30] + 16))())
    {
      v7 = 0;
    }

    else
    {
      v7 = firstObject;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)typeParameters
{
  if (self->_30vCard)
  {
    [(CNVCardParser *)self parameterValuesForName:@"TYPE"];
  }

  else
  {
    [(NSArray *)self->_itemParameters _cn_map:&__block_literal_global_453];
  }
  v2 = ;

  return v2;
}

- (id)parameterValuesForName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_itemParameters;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name _cn_caseInsensitiveIsEqual:nameCopy];

        if (v13)
        {
          values = [v11 values];
          [array addObjectsFromArray:values];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)makeLineWithValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  v7 = [(CNVCardParser *)self genericLabelForProperty:property];
  v8 = [(CNVCardParser *)self makeLineWithLabel:v7 value:valueCopy];

  return v8;
}

- (id)makeLineWithLabel:(id)label value:(id)value
{
  valueCopy = value;
  labelCopy = label;
  v8 = [[CNVCardParsedLine alloc] initWithName:labelCopy];

  [(CNVCardParsedLine *)v8 setValue:valueCopy];
  [(CNVCardParsedLine *)v8 setParameters:self->_itemParameters];
  [(CNVCardParsedLine *)v8 setGrouping:self->_grouping];
  [(CNVCardParsedLine *)v8 setIsPrimary:[(NSArray *)self->_itemParameters _cn_any:&__block_literal_global_456]];

  return v8;
}

- (id)parseParameters
{
  array = [MEMORY[0x277CBEB18] array];
  readNextToken = [(CNVCardLexer *)self->_lexer readNextToken];
  if (readNextToken == 8193)
  {
LABEL_15:
    v12 = array;
  }

  else
  {
    readNextToken2 = readNextToken;
    while ([(CNVCardLexer *)self->_lexer errorCount]<= 10)
    {
      if (readNextToken2 == 4097)
      {
        nextParameterInCurrentLine = [(CNVCardParser *)self nextParameterInCurrentLine];
        [array addObject:nextParameterInCurrentLine];
        name = [nextParameterInCurrentLine name];
        v8 = [(CNVCardParser *)self handlerSelectorForParameterName:name];

        if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          values = [nextParameterInCurrentLine values];
          firstObject = [values firstObject];

          v11 = [(CNVCardParser *)self methodForSelector:v8];
          if (v11)
          {
            v11(self, v8, firstObject);
          }
        }
      }

      else if (readNextToken2 == 32769 || readNextToken2 == 65537)
      {
        goto LABEL_15;
      }

      readNextToken2 = [(CNVCardLexer *)self->_lexer readNextToken];
      if (readNextToken2 == 8193)
      {
        goto LABEL_15;
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)nextParameterInCurrentLine
{
  v3 = [(CNVCardLexer *)self->_lexer nextStringInEncoding:1 quotedPrintable:0 stopTokens:46080 trim:1 maximumValueLength:[(CNVCardReadingOptions *)self->_options maximumValueLength]];
  if (([(__CFString *)v3 _cn_caseInsensitiveIsEqual:@"QUOTED-PRINTABLE"]& 1) != 0)
  {
    parseParameterValues = &unk_28865B680;
  }

  else
  {
    if (![(__CFString *)v3 _cn_caseInsensitiveIsEqual:@"BASE64"])
    {
      parseParameterValues = 0;
      v5 = 1;
      goto LABEL_7;
    }

    parseParameterValues = &unk_28865B698;
  }

  v5 = 0;
  v3 = @"ENCODING";
LABEL_7:
  peekAtNextToken = [(CNVCardLexer *)self->_lexer peekAtNextToken];
  if (v5 && peekAtNextToken == 1025)
  {
    parseParameterValues = [(CNVCardParser *)self parseParameterValues];
  }

  if (parseParameterValues)
  {
    v7 = parseParameterValues;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [CNVCardParsedParameter parameterWithName:v3 values:v7];

  return v8;
}

- (id)parseParameterValues
{
  [(CNVCardLexer *)self->_lexer advanceToPeekPoint];
  if (self->_quotedPrintable)
  {
    v3 = 46080;
  }

  else
  {
    v3 = 45056;
  }

  v4 = [(CNVCardLexer *)self->_lexer nextArraySeperatedByToken:128 stoppingAt:v3 inEncoding:4 maximumValueLength:[(CNVCardReadingOptions *)self->_options maximumValueLength]];
  v5 = [v4 _cn_map:&__block_literal_global];

  return v5;
}

- (void)parameter_CHARSET:(id)t
{
  tCopy = t;
  v5 = tCopy;
  if (!tCopy)
  {
    v6 = 4;
    goto LABEL_7;
  }

  if ([(__CFString *)tCopy _cn_caseInsensitiveIsEqual:@"UTF-7"])
  {
    v6 = 4000100;
LABEL_7:
    self->_encoding = v6;
    goto LABEL_8;
  }

  if ([(__CFString *)v5 _cn_caseInsensitiveIsEqual:@"shift_jis"])
  {
    v6 = 8;
    goto LABEL_7;
  }

  v7 = CFStringConvertIANACharSetNameToEncoding(v5);
  self->_encoding = v7;
  if (v7 == -1)
  {
    v8 = +[CNVCardLogging vCard];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNVCardParser parameter_CHARSET:];
    }
  }

  else
  {
    self->_encoding = CFStringConvertEncodingToNSStringEncoding(v7);
  }

LABEL_8:
}

- (void)parameter_ENCODING:(id)g
{
  gCopy = g;
  if ([gCopy _cn_caseInsensitiveIsEqual:@"QUOTED-PRINTABLE"])
  {
    v4 = 312;
LABEL_5:
    *(&self->super.isa + v4) = 1;
    goto LABEL_6;
  }

  if ([gCopy _cn_caseInsensitiveIsEqual:@"b"])
  {
    v4 = 313;
    goto LABEL_5;
  }

  if ([gCopy _cn_caseInsensitiveIsEqual:@"BASE64"])
  {
    v4 = 313;
    goto LABEL_5;
  }

LABEL_6:

  MEMORY[0x2821F96F8]();
}

- (void)reportValues
{
  v3 = *MEMORY[0x277CFBD30];
  if (((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], self->_uid) & 1) == 0)
  {
    [(CNVCardParser *)self reportValue:self->_uid forProperty:@"UID"];
  }

  [(CNVCardParser *)self processNameValues];
  [(CNVCardParser *)self processExtensionValues];
  firstName = [(CNVCardNameComponents *)self->_nameComponents firstName];
  [(CNVCardParser *)self reportValue:firstName forProperty:@"First"];

  lastName = [(CNVCardNameComponents *)self->_nameComponents lastName];
  [(CNVCardParser *)self reportValue:lastName forProperty:@"Last"];

  middleName = [(CNVCardNameComponents *)self->_nameComponents middleName];
  [(CNVCardParser *)self reportValue:middleName forProperty:@"Middle"];

  title = [(CNVCardNameComponents *)self->_nameComponents title];
  [(CNVCardParser *)self reportValue:title forProperty:@"Title"];

  suffix = [(CNVCardNameComponents *)self->_nameComponents suffix];
  [(CNVCardParser *)self reportValue:suffix forProperty:@"Suffix"];

  companyName = [(CNVCardNameComponents *)self->_nameComponents companyName];
  [(CNVCardParser *)self reportValue:companyName forProperty:@"Organization"];

  companyName2 = [(CNVCardNameComponents *)self->_nameComponents companyName];
  if ((*(v3 + 16))(v3, companyName2))
  {
    goto LABEL_6;
  }

  fullNameHasZeroLength = self->_fullNameHasZeroLength;

  if (fullNameHasZeroLength)
  {
    companyName2 = [(CNVCardParsedResultBuilder *)self->_resultBuilder valueForProperty:@"ABPersonFlags"];
    integerValue = [companyName2 integerValue];
    resultBuilder = self->_resultBuilder;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue & 0xFFFFFFFFFFFFFFF8 | 1];
    [(CNVCardParsedResultBuilder *)resultBuilder setValue:v14 forProperty:@"ABPersonFlags"];

LABEL_6:
  }

  [(CNVCardParser *)self reportValue:self->_bday forProperty:@"BirthdayComponents"];
  [(CNVCardParser *)self reportValue:self->_altBday forProperty:@"AlternateBirthdayComponents"];
  [(CNVCardParser *)self reportValue:self->_notes forProperty:@"Note"];
  [(CNVCardParser *)self reportMultiValueLines:self->_emails forProperty:@"Email"];
  [(CNVCardParser *)self reportMultiValueLines:self->_phones forProperty:@"Phone"];
  [(CNVCardParser *)self reportMultiValueLines:self->_addresses forProperty:@"Address"];
  [(CNVCardParser *)self reportMultiValueLines:self->_instantMessagingAddresses forProperty:@"InstantMessage"];
  [(CNVCardParser *)self reportMultiValueLines:self->_socialProfiles forProperty:@"SocialProfile"];
  [(CNVCardParser *)self reportMultiValueLines:self->_dateComponents forProperty:@"ABDateComponents"];
  [(CNVCardParser *)self reportMultiValueLines:self->_relatedNames forProperty:@"ABRelatedNames"];
  [(CNVCardParser *)self reportMultiValueLines:self->_urls forProperty:@"URLs"];
  [(CNVCardParser *)self reportMultiValueLines:self->_calendarURIs forProperty:@"calendarURIs"];
  [(CNVCardParser *)self reportMultiValueLines:self->_addressingGrammars forProperty:@"AddressingGrammar"];
  [(CNVCardParser *)self reportValue:self->_activityAlerts forProperty:@"ActivityAlert"];
  if (((*(v3 + 16))(v3, self->_carddavUID) & 1) == 0 && [(CNVCardParsedResultBuilder *)self->_resultBuilder canSetValueForProperty:@"externalUUID"])
  {
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:self->_carddavUID forProperty:@"externalUUID"];
  }

  if ([(NSMutableArray *)self->_unknowns count])
  {
    v15 = self->_resultBuilder;
    unknowns = self->_unknowns;

    [(CNVCardParsedResultBuilder *)v15 setUnknownProperties:unknowns];
  }
}

- (void)processExtensionValues
{
  addresses = self->_addresses;
  validCountryCodes = [(CNVCardParser *)self validCountryCodes];
  [CNVCardADRParser processExtensionValuesForLines:addresses validCountryCodes:validCountryCodes parser:self];

  socialProfiles = self->_socialProfiles;

  [CNVCardXSOCIALPROFILEParser processExtensionValuesForLines:socialProfiles parser:self];
}

- (void)reportValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  if (![(CNVCardParser *)self valueIsEmpty:valueCopy])
  {
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:valueCopy forProperty:propertyCopy];
  }
}

- (void)reportMultiValueLines:(id)lines forProperty:(id)property
{
  v34 = *MEMORY[0x277D85DE8];
  linesCopy = lines;
  propertyCopy = property;
  if ([linesCopy count])
  {
    v24 = propertyCopy;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = linesCopy;
    obj = linesCopy;
    v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      v11 = *MEMORY[0x277CFBD30];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          value = [v13 value];
          if (![(CNVCardParser *)self valueIsEmpty:value])
          {
            grouping = [v13 grouping];
            v16 = [(CNVCardParser *)self firstValueForKey:@"X-ABLabel" inExtensionGroup:grouping];

            if ((*(v11 + 16))(v11, v16))
            {
              name = [v13 name];

              v16 = name;
            }

            if ([(CNVCardParser *)self valueIsEmpty:v16])
            {
              v18 = [(CNVCardParser *)self fallbackLabelForProperty:v24];

              v16 = v18;
            }

            null = [MEMORY[0x277CBEB68] null];
            [array _cn_addObject:value orPlaceholder:null];

            null2 = [MEMORY[0x277CBEB68] null];
            [array2 _cn_addObject:v16 orPlaceholder:null2];

            if ([v13 isPrimary])
            {
              v21 = MEMORY[0x277CBEC38];
            }

            else
            {
              v21 = MEMORY[0x277CBEC28];
            }

            [array3 addObject:v21];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }

    propertyCopy = v24;
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setValues:array labels:array2 isPrimaries:array3 forProperty:v24];

    linesCopy = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)valueIsEmpty:(id)empty
{
  emptyCopy = empty;
  v6 = 1;
  if (emptyCopy)
  {
    null = [MEMORY[0x277CBEB68] null];

    if (null != emptyCopy && *MEMORY[0x277CBEEE8] != emptyCopy)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0 || ((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (id)genericLabelForProperty:(id)property
{
  v23 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"Phone"])
  {
    phoneLabel = [(CNVCardParser *)self phoneLabel];
  }

  else
  {
    [(CNVCardParser *)self typeParameters];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      selfCopy = self;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if ([v11 _cn_caseInsensitiveIsEqual:@"HOME"])
        {
          break;
        }

        if ([v11 _cn_caseInsensitiveIsEqual:@"WORK"])
        {
          v14 = CNVCardLabelWork;
          goto LABEL_22;
        }

        if ([v11 _cn_caseInsensitiveIsEqual:@"MOBILEME"])
        {
          v14 = CNVCardLabelMobileMe;
          goto LABEL_22;
        }

        if ([v11 _cn_caseInsensitiveIsEqual:@"OTHER"])
        {
          v14 = CNVCardLabelOther;
          goto LABEL_22;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
          self = selfCopy;
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }
      }

      v14 = CNVCardLabelHome;
LABEL_22:
      phoneLabel = *v14;
      v12 = v6;
      goto LABEL_23;
    }

LABEL_14:

    v12 = [(CNVCardParser *)self firstCustomLabelForProperty:propertyCopy types:v6];
    if ((*(*MEMORY[0x277CFBD30] + 16))())
    {
      v13 = [(CNVCardParser *)self fallbackLabelForProperty:propertyCopy];
    }

    else
    {
      v13 = v12;
      v12 = v13;
    }

    phoneLabel = v13;
LABEL_23:
  }

  v15 = *MEMORY[0x277D85DE8];

  return phoneLabel;
}

- (id)fallbackLabelForProperty:(id)property
{
  v3 = [property isEqual:@"URLs"];
  v4 = CNVCardLabelURLHomePage;
  if (!v3)
  {
    v4 = CNVCardLabelUnknown;
  }

  v5 = *v4;

  return v5;
}

- (id)phoneLabel
{
  v25 = *MEMORY[0x277D85DE8];
  [(CNVCardParser *)self typeParameters];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v4)
  {

LABEL_18:
    v14 = [(CNVCardParser *)self firstCustomLabelForProperty:@"Phone" types:v3];
    if ((*(*MEMORY[0x277CFBD30] + 16))())
    {
      v15 = [(CNVCardParser *)self fallbackLabelForProperty:@"Phone"];
    }

    else
    {
      v15 = v14;
    }

    v17 = v15;

    goto LABEL_28;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v21;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      if ([v12 _cn_caseInsensitiveIsEqual:@"IPHONE"])
      {
        v16 = CNVCardLabelPhoneiPhone;
        goto LABEL_27;
      }

      if ([v12 _cn_caseInsensitiveIsEqual:@"APPLEWATCH"])
      {
        v16 = CNVCardLabelPhoneAppleWatch;
        goto LABEL_27;
      }

      if ([v12 _cn_caseInsensitiveIsEqual:@"MAIN"])
      {
        v16 = CNVCardLabelPhoneMain;
        goto LABEL_27;
      }

      if ([v12 _cn_caseInsensitiveIsEqual:@"CELL"] & 1) != 0 || (objc_msgSend(v12, "_cn_caseInsensitiveIsEqual:", @"MOBILE"))
      {
        v16 = CNVCardLabelPhoneMobile;
LABEL_27:
        v17 = *v16;

        goto LABEL_28;
      }

      if ([v12 _cn_caseInsensitiveIsEqual:@"PAGER"])
      {
        v16 = CNVCardLabelPager;
        goto LABEL_27;
      }

      v9 |= [v12 _cn_caseInsensitiveIsEqual:@"HOME"];
      v8 |= [v12 _cn_caseInsensitiveIsEqual:@"WORK"];
      v6 |= [v12 _cn_caseInsensitiveIsEqual:@"OTHER"];
      v7 |= [v12 _cn_caseInsensitiveIsEqual:@"FAX"];
    }

    v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (v9)
  {
    if (v7)
    {
      v13 = CNVCardLabelPhoneHomeFAX;
    }

    else
    {
      v13 = CNVCardLabelPhoneHome;
    }

    goto LABEL_41;
  }

  if (v8)
  {
    if ((v7 & 1) == 0)
    {
      v13 = CNVCardLabelPhoneWork;
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if ((v6 & 1) == 0)
  {
    if (v7)
    {
LABEL_39:
      v13 = CNVCardLabelPhoneWorkFAX;
      goto LABEL_41;
    }

    goto LABEL_18;
  }

  if (v7)
  {
    v13 = CNVCardLabelPhoneOtherFAX;
  }

  else
  {
    v13 = CNVCardLabelPhoneOther;
  }

LABEL_41:
  v17 = *v13;
LABEL_28:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)firstCustomLabelForProperty:(id)property types:(id)types
{
  propertyCopy = property;
  typesCopy = types;
  if ([propertyCopy isEqualToString:@"SocialProfile"])
  {
    firstObject = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_28865B6B0];
    if ([propertyCopy isEqualToString:@"Email"])
    {
      [v8 addObject:@"INTERNET"];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__CNVCardParser_firstCustomLabelForProperty_types___block_invoke;
    v12[3] = &unk_27A710D20;
    v13 = v8;
    v9 = v8;
    v10 = [typesCopy _cn_filter:v12];
    firstObject = [v10 firstObject];
  }

  return firstObject;
}

uint64_t __51__CNVCardParser_firstCustomLabelForProperty_types___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CNVCardParser_firstCustomLabelForProperty_types___block_invoke_2;
  v7[3] = &unk_27A710D20;
  v8 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 _cn_any:v7];

  return v4 ^ 1;
}

- (id)parseStringValue
{
  encoding = self->_encoding;
  quotedPrintable = self->_quotedPrintable;
  lexer = self->_lexer;
  maximumValueLength = [(CNVCardReadingOptions *)self->_options maximumValueLength];

  return [(CNVCardLexer *)lexer nextStringInEncoding:encoding quotedPrintable:quotedPrintable stopTokens:36864 trim:1 maximumValueLength:maximumValueLength];
}

- (BOOL)advancePastSemicolon
{
  peekAtNextToken = [(CNVCardLexer *)self->_lexer peekAtNextToken];
  if (peekAtNextToken == 4097)
  {
    [(CNVCardLexer *)self->_lexer advanceToPeekPoint];
  }

  return peekAtNextToken == 4097;
}

- (id)parseRemainingLine
{
  v3 = [(CNVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:0x8000 trim:1 maximumValueLength:[(CNVCardReadingOptions *)self->_options maximumValueLength]];
  [(CNVCardParser *)self advancePastSemicolon];

  return v3;
}

- (id)parseArrayValue
{
  encoding = self->_encoding;
  lexer = self->_lexer;
  maximumValueLength = [(CNVCardReadingOptions *)self->_options maximumValueLength];

  return [(CNVCardLexer *)lexer nextArraySeperatedByToken:4096 stoppingAt:0x8000 inEncoding:encoding maximumValueLength:maximumValueLength];
}

- (id)parseUnknownValueStartingAtPosition:(unint64_t)position
{
  parseRemainingLine = [(CNVCardParser *)self parseRemainingLine];
  currentPosition = [(CNVCardParser *)self currentPosition];
  v7 = currentPosition - position;
  v8 = [(CNVCardLexer *)self->_lexer stringWithRange:position encoding:currentPosition - position, self->_encoding];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    newlineCharacterSet = [(CNVCardLexer *)self->_lexer dataWithRange:position, v7];
    v10 = [newlineCharacterSet base64EncodedStringWithOptions:0];

    v11 = v10;
    v8 = v11;
  }

  else
  {
    newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
    v11 = [v8 stringByTrimmingCharactersInSet:newlineCharacterSet];
  }

  v12 = v11;

  return v12;
}

- (void)parseNextResultUsingResultBuilder:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)parseNextResultUsingResultBuilder:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)parseNextResultUsingResultBuilder:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)parseNextResultUsingResultBuilder:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)parseNextResultUsingResultBuilder:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)parseLine
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parameter_CHARSET:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end