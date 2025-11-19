@interface CNVCardParser
+ (BOOL)isTagSyntacticallyValid:(id)a3;
+ (BOOL)parseFirstResultInData:(id)a3 resultBuilder:(id)a4;
+ (id)newParameterSelectorMap;
+ (id)newParsingSelectorMap;
+ (id)os_log;
+ (id)parseData:(id)a3 options:(id)a4 resultFactory:(id)a5;
+ (id)parseData:(id)a3 resultFactory:(id)a4;
+ (unint64_t)countOfCardsInData:(id)a3;
+ (unint64_t)inferredStringEncodingFromData:(id)a3;
- (BOOL)advancePastSemicolon;
- (BOOL)parseExtension:(id)a3;
- (BOOL)parseInstantMessageValueWithService:(id)a3;
- (BOOL)parseLine;
- (BOOL)parseNextResultUsingResultBuilder:(id)a3;
- (BOOL)parseValueUsingSelector:(SEL)a3;
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
- (BOOL)valueIsEmpty:(id)a3;
- (CNVCardParser)initWithData:(id)a3;
- (CNVCardParser)initWithData:(id)a3 options:(id)a4;
- (id)fallbackLabelForProperty:(id)a3;
- (id)firstCustomLabelForProperty:(id)a3 types:(id)a4;
- (id)firstParameterWithName:(id)a3;
- (id)firstValueForKey:(id)a3 inExtension:(id)a4;
- (id)firstValueForKey:(id)a3 inExtensionGroup:(id)a4;
- (id)firstValueForParameterWithName:(id)a3;
- (id)genericLabelForProperty:(id)a3;
- (id)makeLineWithLabel:(id)a3 value:(id)a4;
- (id)makeLineWithValue:(id)a3 forProperty:(id)a4;
- (id)nextParameterInCurrentLine;
- (id)nextResultWithFactory:(id)a3 progressLength:(int64_t *)a4;
- (id)parameterValuesForName:(id)a3;
- (id)parseArrayValue;
- (id)parseParameterValues;
- (id)parseParameters;
- (id)parseRemainingLine;
- (id)parseStringValue;
- (id)parseUnknownValueStartingAtPosition:(unint64_t)a3;
- (id)phoneLabel;
- (id)pool_nextResultWithFactory:(id)a3 progressLength:(int64_t *)a4;
- (id)resultsWithFactory:(id)a3;
- (id)typeParameters;
- (void)cleanUpCardState;
- (void)parameter_CHARSET:(id)a3;
- (void)parameter_ENCODING:(id)a3;
- (void)parseLine;
- (void)processExtensionValues;
- (void)reportMultiValueLines:(id)a3 forProperty:(id)a4;
- (void)reportValue:(id)a3 forProperty:(id)a4;
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

+ (unint64_t)countOfCardsInData:(id)a3
{
  v3 = [CNVCardRangeFinder allRangesInData:a3];
  v4 = [v3 left];
  v5 = [v4 count];

  return v5;
}

+ (BOOL)parseFirstResultInData:(id)a3 resultBuilder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithData:v7];

  LOBYTE(v7) = [v8 parseNextResultUsingResultBuilder:v6];
  return v7;
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

- (CNVCardParser)initWithData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNVCardReadingOptions);
  v6 = [(CNVCardParser *)self initWithData:v4 options:v5];

  return v6;
}

- (CNVCardParser)initWithData:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = CNVCardParser;
  v9 = [(CNVCardParser *)&v28 init];
  v10 = v9;
  v11 = 0;
  if (v7 && v9)
  {
    if ([v7 length] && (v12 = -[CNVCardLexer initWithData:]([CNVCardLexer alloc], "initWithData:", v7), lexer = v10->_lexer, v10->_lexer = v12, lexer, v10->_lexer))
    {
      objc_storeStrong(&v10->_data, a3);
      objc_storeStrong(&v10->_options, a4);
      v14 = [v8 propertiesToFetch];
      v15 = [_TtC5vCard19CNVCardTagInclusion policyWithTags:v14];
      tagInclusionPolicy = v10->_tagInclusionPolicy;
      v10->_tagInclusionPolicy = v15;

      v10->_defaultEncoding = [objc_opt_class() inferredStringEncodingFromData:v7];
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

      v23 = [objc_opt_class() newParsingSelectorMap];
      parsingSelectorMap = v10->_parsingSelectorMap;
      v10->_parsingSelectorMap = v23;

      v25 = [objc_opt_class() newParameterSelectorMap];
      parameterSelectorMap = v10->_parameterSelectorMap;
      v10->_parameterSelectorMap = v25;

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)parseData:(id)a3 resultFactory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CNVCardReadingOptions);
  v9 = [a1 parseData:v7 options:v8 resultFactory:v6];

  return v9;
}

+ (id)parseData:(id)a3 options:(id)a4 resultFactory:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [CNVCardParsingConcurrencyStrategy strategyForOptions:v8];
  v11 = [v10 parseData:v9 options:v8 resultFactory:v7];

  return v11;
}

- (id)resultsWithFactory:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if (![(CNVCardParser *)self atEOF])
  {
    do
    {
      v6 = [v5 count];
      v7 = [(CNVCardParser *)self options];
      v8 = [v7 contactLimit];

      if (v6 >= v8)
      {
        break;
      }

      v9 = [(CNVCardParser *)self nextResultWithFactory:v4 progressLength:0];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      [v5 addObject:v9];
    }

    while (![(CNVCardParser *)self atEOF]);
  }

  return v5;
}

- (id)nextResultWithFactory:(id)a3 progressLength:(int64_t *)a4
{
  v7 = a3;
  v4 = v7;
  v5 = CNResultWithAutoreleasePool();

  return v5;
}

- (id)pool_nextResultWithFactory:(id)a3 progressLength:(int64_t *)a4
{
  v6 = a3;
  if (![(CNVCardParser *)self atEOF])
  {
    v8 = [v6 makeBuilder];
    v9 = [(CNVCardParser *)self currentPosition];
    v10 = [(CNVCardParser *)self parseNextResultUsingResultBuilder:v8];
    self->_hasImportErrors = !v10;
    if (a4)
    {
      *a4 = [(CNVCardParser *)self currentPosition]- v9;
      if (self->_hasImportErrors)
      {
LABEL_6:
        v7 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else if (!v10)
    {
      goto LABEL_6;
    }

    v7 = [v8 build];
    goto LABEL_9;
  }

  v7 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_10:

  return v7;
}

- (BOOL)parseNextResultUsingResultBuilder:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_resultBuilder, a3);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  extensions = self->_extensions;
  self->_extensions = v6;

  [(CNVCardLexer *)self->_lexer advanceToString];
  v8 = [(CNVCardLexer *)self->_lexer readNextToken];
  if ((v8 - 32769) <= 1)
  {
    do
    {
      v8 = [(CNVCardLexer *)self->_lexer readNextToken];
    }

    while ((v8 - 32769) < 2);
  }

  if (v8 != 5)
  {
    if (v8 != 65537)
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

+ (unint64_t)inferredStringEncodingFromData:(id)a3
{
  v3 = [CNVCardDataAnalyzer analyzeData:a3];
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
    v8 = 0;
LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [v5 lastObject];
  if (v7 == 2)
  {
    v9 = [v5 objectAtIndex:0];
    v10 = [v9 copy];
    v11 = self->_grouping;
    self->_grouping = v10;
  }

  if (!v8 || ([v8 _cn_caseInsensitiveIsEqual:@"END"] & 1) != 0)
  {
    goto LABEL_23;
  }

  if ([(CNVCardTagInclusionPolicy *)self->_tagInclusionPolicy shouldParseTag:v8]&& (v12 = [(CNVCardParser *)self parsingSelectorForTag:v8]) != 0 && (v13 = v12, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v14 = [(CNVCardParser *)self parseParameters];
    v15 = [v14 copy];
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
    if ([objc_opt_class() isTagSyntacticallyValid:v8])
    {
      v18 = objc_alloc_init(CNVCardUnknownPropertyDescription);
      [(CNVCardUnknownPropertyDescription *)v18 setPropertyName:v8];
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

+ (BOOL)isTagSyntacticallyValid:(id)a3
{
  v3 = isTagSyntacticallyValid__cn_once_token_9;
  v4 = a3;
  if (v3 != -1)
  {
    +[CNVCardParser isTagSyntacticallyValid:];
  }

  v5 = [v4 _cn_containsCharacterInSet:isTagSyntacticallyValid__cn_once_object_9];

  return v5 ^ 1;
}

void __41__CNVCardParser_isTagSyntacticallyValid___block_invoke()
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-."];
  v0 = [v2 invertedSet];
  v1 = isTagSyntacticallyValid__cn_once_object_9;
  isTagSyntacticallyValid__cn_once_object_9 = v0;
}

- (BOOL)parseValueUsingSelector:(SEL)a3
{
  v5 = [(CNVCardParser *)self methodForSelector:?];

  return v5(self, a3);
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
  v3 = [(CNVCardParser *)self parseRemainingLine];
  v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"Email"];
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
  v3 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setFormattedName:v3];

  return 1;
}

- (BOOL)parse_IMPP
{
  v2 = self;
  v3 = [(NSArray *)self->_itemParameters _cn_firstObjectPassingTest:&__block_literal_global_402];
  v4 = [v3 values];
  v5 = [v4 firstObject];

  v6 = [CNVCardInstantMessageParser serviceForString:v5];
  LOBYTE(v2) = [(CNVCardParser *)v2 parseInstantMessageValueWithService:v6];

  return v2;
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
  v3 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setLastName:v3];

  [(CNVCardParser *)self advancePastSemicolon];
  v4 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setFirstName:v4];

  [(CNVCardParser *)self advancePastSemicolon];
  v5 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setMiddleName:v5];

  [(CNVCardParser *)self advancePastSemicolon];
  v6 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setTitle:v6];

  [(CNVCardParser *)self advancePastSemicolon];
  v7 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setSuffix:v7];

  v8 = *MEMORY[0x277CFBD30];
  v9 = [(CNVCardNameComponents *)self->_nameComponents lastName];
  if ((*(v8 + 16))(v8, v9))
  {
    v10 = [(CNVCardNameComponents *)self->_nameComponents firstName];
    if ((*(v8 + 16))(v8, v10))
    {
      v11 = [(CNVCardNameComponents *)self->_nameComponents middleName];
      if ((*(v8 + 16))(v8, v11))
      {
        v12 = [(CNVCardNameComponents *)self->_nameComponents title];
        if ((*(v8 + 16))(v8, v12))
        {
          v13 = [(CNVCardNameComponents *)self->_nameComponents suffix];
          self->_fullNameHasZeroLength = (*(v8 + 16))(v8, v13);
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
  v3 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:v3 forProperty:@"Nickname"];

  return 1;
}

- (BOOL)parse_NOTE
{
  v3 = [(CNVCardParser *)self parseRemainingLine];
  v4 = [v3 mutableCopy];
  notes = self->_notes;
  self->_notes = v4;

  return 1;
}

- (BOOL)parse_ORG
{
  v3 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardMutableNameComponents *)self->_nameComponents setCompanyName:v3];

  [(CNVCardParser *)self advancePastSemicolon];
  v4 = [(CNVCardParser *)self parseStringValue];
  [(CNVCardParser *)self reportValue:v4 forProperty:@"ABDepartment"];

  return 1;
}

- (BOOL)parse_X_PHONETIC_ORG
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"OrganizationPhonetic"];

  return v2;
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
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v4 forProperty:@"wallpaper"];

  return v2;
}

- (BOOL)parse_X_WATCH_WALLPAPER_IMAGE_DATA
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v4 forProperty:@"watchWallpaperImageData"];

  return v2;
}

- (BOOL)parse_X_IMAGE_BACKGROUND_COLORS_DATA
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v4 forProperty:@"imageBackgroundColorsData"];

  return v2;
}

- (BOOL)parse_TEL
{
  v3 = [(CNVCardParser *)self parseRemainingLine];
  v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"Phone"];
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
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = (*(*MEMORY[0x277CFBD30] + 16))();
  if ((v4 & 1) == 0)
  {
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:v3 forProperty:@"JobTitle"];
  }

  return v4 ^ 1;
}

- (BOOL)parse_UID
{
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = [v3 copy];
  carddavUID = self->_carddavUID;
  self->_carddavUID = v4;

  if ([(CNVCardLexer *)self->_lexer peekAtNextToken]== 4097)
  {
    [(CNVCardLexer *)self->_lexer advanceToPeekPoint];
    v6 = [(CNVCardParser *)self parseStringValue];
    v7 = v6;
    if (v6 && [v6 length])
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
  v3 = [(CNVCardParser *)self parseRemainingLine];
  v4 = (*(*MEMORY[0x277CFBD30] + 16))();
  if ((v4 & 1) == 0)
  {
    self->_30vCard = [v3 _cn_caseInsensitiveIsEqual:@"3.0"];
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
    v6 = [v5 integerValue];

    v7 = +[CNVCardUserDefaults defaultNameOrdering];
    v8 = [v3 objectAtIndex:0];
    v9 = v8;
    if (v7 == 32)
    {
      v10 = [v8 compare:@"LAST" options:1];

      v11 = v6 & 0xFFFFFFFFFFFFFFC7 | 0x10;
    }

    else
    {
      v10 = [v8 compare:@"FIRST" options:1];

      v11 = v6 & 0xFFFFFFFFFFFFFFC7 | 0x20;
    }

    if (v10)
    {
      v12 = v6;
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
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = [CNVCardXABPHOTOParser valueWithName:v3];
  if (v4)
  {
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setImageData:v4 forReference:&stru_288651EC0 clipRects:MEMORY[0x277CBEBF8]];
  }

  return v4 != 0;
}

- (BOOL)parse_X_ABRELATEDNAMES
{
  v3 = [(CNVCardParser *)self parseStringValue];
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"ABRelatedNames"];
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
      v8 = [v7 integerValue];

      resultBuilder = self->_resultBuilder;
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8 & 0xFFFFFFFFFFFFFFF8 | 1];
      [(CNVCardParsedResultBuilder *)resultBuilder setValue:v10 forProperty:@"ABPersonFlags"];
    }
  }

  return v4 != 0;
}

- (BOOL)parse_X_ABUID
{
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = [v3 copy];
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
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v4 forProperty:@"imageHash"];

  return v2;
}

- (BOOL)parse_X_IMAGETYPE
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"imageType"];

  return v2;
}

- (BOOL)parse_X_MAIDENNAME
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseRemainingLine];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"MaidenName"];

  return v2;
}

- (BOOL)parse_X_PHONETIC_FIRST_NAME
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"FirstPhonetic"];

  return v2;
}

- (BOOL)parse_X_PHONETIC_LAST_NAME
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"LastPhonetic"];

  return v2;
}

- (BOOL)parse_X_PHONETIC_MIDDLE_NAME
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"MiddlePhonetic"];

  return v2;
}

- (BOOL)parse_X_PRONUNCIATION_FIRST_NAME
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"FirstPronunciation"];

  return v2;
}

- (BOOL)parse_X_PRONUNCIATION_LAST_NAME
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"LastPronunciation"];

  return v2;
}

- (BOOL)parse_X_ADDRESSING_GRAMMAR
{
  v3 = [(CNVCardParser *)self parseRemainingLine];
  v4 = [(CNVCardParser *)self makeLineWithValue:v3 forProperty:@"AddressingGrammar"];
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
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"PhonemeData"];

  return v2;
}

- (BOOL)parse_X_APPLE_LIKENESS_SOURCE
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"PreferredLikenessSource"];

  return v2;
}

- (BOOL)parse_X_APPLE_LIKENESS_SERVICE_IDENTIFIER
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"PreferredApplePersonaIdentifier"];

  return v2;
}

- (BOOL)parse_X_APPLE_GUARDIAN_WHITELISTED
{
  v3 = [(CNVCardParser *)self parseStringValue];
  if ([v3 isEqualToString:@"false"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:v3 forProperty:@"GuardianWhitelisted"];
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
    v6 = [v5 integerValue];

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
          v13 = v6 & 0xFFFFFFFFFFFFFF3FLL;
        }

        else
        {
          v13 = v6 | 0xC0;
        }
      }

      else
      {
        v13 = v6 & 0xFFFFFFFFFFFFFF3FLL | 0x80;
      }
    }

    else
    {
      v13 = v6 & 0xFFFFFFFFFFFFFF3FLL | 0x40;
    }

    resultBuilder = self->_resultBuilder;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [(CNVCardParsedResultBuilder *)resultBuilder setValue:v15 forProperty:@"ABPersonFlags"];
  }

  return v4 != 0;
}

- (BOOL)parse_VND_63_POSTER_IDENTIFIER
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v3 forProperty:@"posterIdentifier"];

  return v2;
}

- (BOOL)parse_VND_63_SENSITIVE_CONTENT_CONFIG
{
  v2 = self;
  v3 = [(CNVCardParser *)self parseStringValue];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  LOBYTE(v2) = [(CNVCardParsedResultBuilder *)v2->_resultBuilder setValue:v4 forProperty:@"sensitiveContentConfiguration"];

  return v2;
}

- (BOOL)parseInstantMessageValueWithService:(id)a3
{
  v4 = [CNVCardInstantMessageParser valueWithService:a3 existingHandles:self->_instantMessagingAddresses parser:self];
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

- (BOOL)parseExtension:(id)a3
{
  v4 = a3;
  v5 = [(CNVCardParser *)self parseArrayValue];
  if (v5)
  {
    grouping = self->_grouping;
    if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
    {
      v7 = [(NSMutableDictionary *)self->_extensions objectForKey:self->_grouping];
      if (!v7)
      {
        v7 = [MEMORY[0x277CBEB38] dictionary];
        [(NSMutableDictionary *)self->_extensions setObject:v7 forKey:self->_grouping];
      }

      [v7 setObject:v5 forKey:v4];
    }
  }

  return 1;
}

- (id)firstValueForKey:(id)a3 inExtensionGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v8 = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_extensions objectForKey:v7];
    v8 = [(CNVCardParser *)self firstValueForKey:v6 inExtension:v9];
  }

  return v8;
}

- (id)firstValueForKey:(id)a3 inExtension:(id)a4
{
  v4 = [a4 objectForKey:a3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)firstParameterWithName:(id)a3
{
  v4 = a3;
  itemParameters = self->_itemParameters;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CNVCardParser_firstParameterWithName___block_invoke;
  v9[3] = &unk_27A710C78;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)itemParameters _cn_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __40__CNVCardParser_firstParameterWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 _cn_caseInsensitiveIsEqual:*(a1 + 32)];

  return v4;
}

- (id)firstValueForParameterWithName:(id)a3
{
  v3 = [(CNVCardParser *)self firstParameterWithName:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 values];
    v6 = [v5 firstObject];

    if ((*(*MEMORY[0x277CFBD30] + 16))())
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
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

- (id)parameterValuesForName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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
        v12 = [v11 name];
        v13 = [v12 _cn_caseInsensitiveIsEqual:v4];

        if (v13)
        {
          v14 = [v11 values];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)makeLineWithValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = [(CNVCardParser *)self genericLabelForProperty:a4];
  v8 = [(CNVCardParser *)self makeLineWithLabel:v7 value:v6];

  return v8;
}

- (id)makeLineWithLabel:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CNVCardParsedLine alloc] initWithName:v7];

  [(CNVCardParsedLine *)v8 setValue:v6];
  [(CNVCardParsedLine *)v8 setParameters:self->_itemParameters];
  [(CNVCardParsedLine *)v8 setGrouping:self->_grouping];
  [(CNVCardParsedLine *)v8 setIsPrimary:[(NSArray *)self->_itemParameters _cn_any:&__block_literal_global_456]];

  return v8;
}

- (id)parseParameters
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(CNVCardLexer *)self->_lexer readNextToken];
  if (v4 == 8193)
  {
LABEL_15:
    v12 = v3;
  }

  else
  {
    v5 = v4;
    while ([(CNVCardLexer *)self->_lexer errorCount]<= 10)
    {
      if (v5 == 4097)
      {
        v6 = [(CNVCardParser *)self nextParameterInCurrentLine];
        [v3 addObject:v6];
        v7 = [v6 name];
        v8 = [(CNVCardParser *)self handlerSelectorForParameterName:v7];

        if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v9 = [v6 values];
          v10 = [v9 firstObject];

          v11 = [(CNVCardParser *)self methodForSelector:v8];
          if (v11)
          {
            v11(self, v8, v10);
          }
        }
      }

      else if (v5 == 32769 || v5 == 65537)
      {
        goto LABEL_15;
      }

      v5 = [(CNVCardLexer *)self->_lexer readNextToken];
      if (v5 == 8193)
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
    v4 = &unk_28865B680;
  }

  else
  {
    if (![(__CFString *)v3 _cn_caseInsensitiveIsEqual:@"BASE64"])
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_7;
    }

    v4 = &unk_28865B698;
  }

  v5 = 0;
  v3 = @"ENCODING";
LABEL_7:
  v6 = [(CNVCardLexer *)self->_lexer peekAtNextToken];
  if (v5 && v6 == 1025)
  {
    v4 = [(CNVCardParser *)self parseParameterValues];
  }

  if (v4)
  {
    v7 = v4;
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

- (void)parameter_CHARSET:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = 4;
    goto LABEL_7;
  }

  if ([(__CFString *)v4 _cn_caseInsensitiveIsEqual:@"UTF-7"])
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

- (void)parameter_ENCODING:(id)a3
{
  v5 = a3;
  if ([v5 _cn_caseInsensitiveIsEqual:@"QUOTED-PRINTABLE"])
  {
    v4 = 312;
LABEL_5:
    *(&self->super.isa + v4) = 1;
    goto LABEL_6;
  }

  if ([v5 _cn_caseInsensitiveIsEqual:@"b"])
  {
    v4 = 313;
    goto LABEL_5;
  }

  if ([v5 _cn_caseInsensitiveIsEqual:@"BASE64"])
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
  v4 = [(CNVCardNameComponents *)self->_nameComponents firstName];
  [(CNVCardParser *)self reportValue:v4 forProperty:@"First"];

  v5 = [(CNVCardNameComponents *)self->_nameComponents lastName];
  [(CNVCardParser *)self reportValue:v5 forProperty:@"Last"];

  v6 = [(CNVCardNameComponents *)self->_nameComponents middleName];
  [(CNVCardParser *)self reportValue:v6 forProperty:@"Middle"];

  v7 = [(CNVCardNameComponents *)self->_nameComponents title];
  [(CNVCardParser *)self reportValue:v7 forProperty:@"Title"];

  v8 = [(CNVCardNameComponents *)self->_nameComponents suffix];
  [(CNVCardParser *)self reportValue:v8 forProperty:@"Suffix"];

  v9 = [(CNVCardNameComponents *)self->_nameComponents companyName];
  [(CNVCardParser *)self reportValue:v9 forProperty:@"Organization"];

  v10 = [(CNVCardNameComponents *)self->_nameComponents companyName];
  if ((*(v3 + 16))(v3, v10))
  {
    goto LABEL_6;
  }

  fullNameHasZeroLength = self->_fullNameHasZeroLength;

  if (fullNameHasZeroLength)
  {
    v10 = [(CNVCardParsedResultBuilder *)self->_resultBuilder valueForProperty:@"ABPersonFlags"];
    v12 = [v10 integerValue];
    resultBuilder = self->_resultBuilder;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v12 & 0xFFFFFFFFFFFFFFF8 | 1];
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
  v4 = [(CNVCardParser *)self validCountryCodes];
  [CNVCardADRParser processExtensionValuesForLines:addresses validCountryCodes:v4 parser:self];

  socialProfiles = self->_socialProfiles;

  [CNVCardXSOCIALPROFILEParser processExtensionValuesForLines:socialProfiles parser:self];
}

- (void)reportValue:(id)a3 forProperty:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (![(CNVCardParser *)self valueIsEmpty:v7])
  {
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setValue:v7 forProperty:v6];
  }
}

- (void)reportMultiValueLines:(id)a3 forProperty:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v24 = v7;
    v27 = [MEMORY[0x277CBEB18] array];
    v26 = [MEMORY[0x277CBEB18] array];
    v25 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v6;
    obj = v6;
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
          v14 = [v13 value];
          if (![(CNVCardParser *)self valueIsEmpty:v14])
          {
            v15 = [v13 grouping];
            v16 = [(CNVCardParser *)self firstValueForKey:@"X-ABLabel" inExtensionGroup:v15];

            if ((*(v11 + 16))(v11, v16))
            {
              v17 = [v13 name];

              v16 = v17;
            }

            if ([(CNVCardParser *)self valueIsEmpty:v16])
            {
              v18 = [(CNVCardParser *)self fallbackLabelForProperty:v24];

              v16 = v18;
            }

            v19 = [MEMORY[0x277CBEB68] null];
            [v27 _cn_addObject:v14 orPlaceholder:v19];

            v20 = [MEMORY[0x277CBEB68] null];
            [v26 _cn_addObject:v16 orPlaceholder:v20];

            if ([v13 isPrimary])
            {
              v21 = MEMORY[0x277CBEC38];
            }

            else
            {
              v21 = MEMORY[0x277CBEC28];
            }

            [v25 addObject:v21];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }

    v7 = v24;
    [(CNVCardParsedResultBuilder *)self->_resultBuilder setValues:v27 labels:v26 isPrimaries:v25 forProperty:v24];

    v6 = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)valueIsEmpty:(id)a3
{
  v3 = a3;
  v6 = 1;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];

    if (v4 != v3 && *MEMORY[0x277CBEEE8] != v3)
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

- (id)genericLabelForProperty:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"Phone"])
  {
    v5 = [(CNVCardParser *)self phoneLabel];
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
      v17 = self;
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
          self = v17;
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }
      }

      v14 = CNVCardLabelHome;
LABEL_22:
      v5 = *v14;
      v12 = v6;
      goto LABEL_23;
    }

LABEL_14:

    v12 = [(CNVCardParser *)self firstCustomLabelForProperty:v4 types:v6];
    if ((*(*MEMORY[0x277CFBD30] + 16))())
    {
      v13 = [(CNVCardParser *)self fallbackLabelForProperty:v4];
    }

    else
    {
      v13 = v12;
      v12 = v13;
    }

    v5 = v13;
LABEL_23:
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fallbackLabelForProperty:(id)a3
{
  v3 = [a3 isEqual:@"URLs"];
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

- (id)firstCustomLabelForProperty:(id)a3 types:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"SocialProfile"])
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_28865B6B0];
    if ([v5 isEqualToString:@"Email"])
    {
      [v8 addObject:@"INTERNET"];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__CNVCardParser_firstCustomLabelForProperty_types___block_invoke;
    v12[3] = &unk_27A710D20;
    v13 = v8;
    v9 = v8;
    v10 = [v6 _cn_filter:v12];
    v7 = [v10 firstObject];
  }

  return v7;
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
  v5 = [(CNVCardReadingOptions *)self->_options maximumValueLength];

  return [(CNVCardLexer *)lexer nextStringInEncoding:encoding quotedPrintable:quotedPrintable stopTokens:36864 trim:1 maximumValueLength:v5];
}

- (BOOL)advancePastSemicolon
{
  v3 = [(CNVCardLexer *)self->_lexer peekAtNextToken];
  if (v3 == 4097)
  {
    [(CNVCardLexer *)self->_lexer advanceToPeekPoint];
  }

  return v3 == 4097;
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
  v4 = [(CNVCardReadingOptions *)self->_options maximumValueLength];

  return [(CNVCardLexer *)lexer nextArraySeperatedByToken:4096 stoppingAt:0x8000 inEncoding:encoding maximumValueLength:v4];
}

- (id)parseUnknownValueStartingAtPosition:(unint64_t)a3
{
  v5 = [(CNVCardParser *)self parseRemainingLine];
  v6 = [(CNVCardParser *)self currentPosition];
  v7 = v6 - a3;
  v8 = [(CNVCardLexer *)self->_lexer stringWithRange:a3 encoding:v6 - a3, self->_encoding];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v9 = [(CNVCardLexer *)self->_lexer dataWithRange:a3, v7];
    v10 = [v9 base64EncodedStringWithOptions:0];

    v11 = v10;
    v8 = v11;
  }

  else
  {
    v9 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v11 = [v8 stringByTrimmingCharactersInSet:v9];
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