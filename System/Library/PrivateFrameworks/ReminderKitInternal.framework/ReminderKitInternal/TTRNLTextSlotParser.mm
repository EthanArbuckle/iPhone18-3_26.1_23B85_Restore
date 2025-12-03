@interface TTRNLTextSlotParser
- (TTRNLTextSlotParser)initWithLocale:(id)locale now:(id)now;
- (id)parseString:(id)string referenceTimeZone:(id)zone;
- (void)dealloc;
@end

@implementation TTRNLTextSlotParser

- (TTRNLTextSlotParser)initWithLocale:(id)locale now:(id)now
{
  localeCopy = locale;
  nowCopy = now;
  v15.receiver = self;
  v15.super_class = TTRNLTextSlotParser;
  v9 = [(TTRNLTextSlotParser *)&v15 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:localeCopy forKeyedSubscript:*MEMORY[0x277D2B850]];
  if (nowCopy)
  {
    [dictionary setObject:nowCopy forKeyedSubscript:*MEMORY[0x277D2B828]];
  }

  v14 = 0;
  v11 = NLTextSlotParserCreate();
  if (v11)
  {
    objc_storeStrong(&v9->_locale, locale);
    v9->_parser = v11;

LABEL_6:
    v12 = v9;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [TTRNLTextSlotParser initWithLocale:localeCopy now:?];
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (void)dealloc
{
  CFRelease(self->_parser);
  v3.receiver = self;
  v3.super_class = TTRNLTextSlotParser;
  [(TTRNLTextSlotParser *)&v3 dealloc];
}

- (id)parseString:(id)string referenceTimeZone:(id)zone
{
  zoneCopy = zone;
  stringCopy = string;
  [(TTRNLTextSlotParser *)self parser];
  StructuredEvent = NLTextSlotParserCreateStructuredEvent();

  if (StructuredEvent)
  {
    v9 = [[TTRNLTextStructuredEvent alloc] initWithStructuredEvent:StructuredEvent];
    CFRelease(StructuredEvent);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithLocale:(uint64_t *)a1 now:(uint64_t)a2 .cold.1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_230044000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create NLTextSlotParser {error: %@, locale: %@}", &v3, 0x16u);
}

@end