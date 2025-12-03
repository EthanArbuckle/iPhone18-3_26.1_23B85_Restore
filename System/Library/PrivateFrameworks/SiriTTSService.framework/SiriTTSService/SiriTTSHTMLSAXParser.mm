@interface SiriTTSHTMLSAXParser
- (SiriTTSHTMLSAXParserDelegate)delegate;
- (void)parse:(id)parse;
@end

@implementation SiriTTSHTMLSAXParser

- (SiriTTSHTMLSAXParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)parse:(id)parse
{
  v6.reference = 0;
  v6.startDocument = SiriTTSHTMLSAXParserHandleDocumentStart;
  v6.endDocument = SiriTTSHTMLSAXParserHandleDocumentEnd;
  v6.startElement = SiriTTSHTMLSAXParserHandleElementStart;
  v6.endElement = SiriTTSHTMLSAXParserHandleElementEnd;
  v6.characters = SiriTTSHTMLSAXParserHandleCharacters;
  parseCopy = parse;
  htmlSAXParseDoc([parse UTF8String], "utf-8", &v6, self);
}

@end