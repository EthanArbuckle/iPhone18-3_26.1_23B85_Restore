@interface PFTTMLParser
- (BOOL)isDescriptor;
- (PFTTMLParser)initWithContentsOfURL:(id)l delegate:(id)delegate;
- (PFTTMLParser)initWithData:(id)data delegate:(id)delegate;
- (PFTTMLParser)initWithStream:(id)stream delegate:(id)delegate;
- (PFTTMLParserDelegate)delegate;
- (double)timeForElementAttribute:(int64_t)attribute;
- (id)stringForElementAttribute:(int64_t)attribute;
- (int64_t)unitForCurrentSpan;
- (void)abortParsing;
- (void)parse;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parser:(id)parser validationErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidStartDocument:(id)document;
@end

@implementation PFTTMLParser

- (PFTTMLParser)initWithData:(id)data delegate:(id)delegate
{
  dataCopy = data;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PFTTMLParser;
  v8 = [(PFTTMLParser *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:dataCopy];
    parser = v9->_parser;
    v9->_parser = v10;
  }

  return v9;
}

- (PFTTMLParser)initWithStream:(id)stream delegate:(id)delegate
{
  streamCopy = stream;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PFTTMLParser;
  v8 = [(PFTTMLParser *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithStream:streamCopy];
    parser = v9->_parser;
    v9->_parser = v10;
  }

  return v9;
}

- (PFTTMLParser)initWithContentsOfURL:(id)l delegate:(id)delegate
{
  lCopy = l;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PFTTMLParser;
  v8 = [(PFTTMLParser *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithContentsOfURL:lCopy];
    parser = v9->_parser;
    v9->_parser = v10;
  }

  return v9;
}

- (void)parse
{
  parser = [(PFTTMLParser *)self parser];
  [parser setDelegate:self];

  parser2 = [(PFTTMLParser *)self parser];
  [parser2 parse];
}

- (void)abortParsing
{
  parser = [(PFTTMLParser *)self parser];
  [parser abortParsing];
}

- (int64_t)unitForCurrentSpan
{
  v2 = [(NSDictionary *)self->_currentElementAttributes objectForKeyedSubscript:@"podcasts:unit"];
  if ([v2 isEqualToString:@"sentence"])
  {
    v3 = 0;
  }

  else if ([v2 isEqualToString:@"word"])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (BOOL)isDescriptor
{
  v2 = [(NSDictionary *)self->_currentElementAttributes objectForKeyedSubscript:@"podcasts:descriptor"];
  v3 = [v2 isEqualToString:@"true"];

  return v3;
}

- (id)stringForElementAttribute:(int64_t)attribute
{
  currentElementAttributes = self->_currentElementAttributes;
  v4 = PFTTMLDictionaryKeyForStringAttribute(attribute);
  v5 = [(NSDictionary *)currentElementAttributes objectForKeyedSubscript:v4];

  return v5;
}

- (double)timeForElementAttribute:(int64_t)attribute
{
  currentElementAttributes = self->_currentElementAttributes;
  v4 = PFTTMLDictionaryKeyForTimeAttribute(attribute);
  v5 = [(NSDictionary *)currentElementAttributes objectForKeyedSubscript:v4];
  [v5 intervalFromTimecode];
  v7 = v6;

  return v7;
}

- (void)parserDidStartDocument:(id)document
{
  delegate = [(PFTTMLParser *)self delegate];
  [delegate parserDidStartDocument:self];
}

- (void)parserDidEndDocument:(id)document
{
  delegate = [(PFTTMLParser *)self delegate];
  [delegate parserDidEndDocument:self];
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  [(PFTTMLParser *)self setCurrentElementAttributes:attributes];
  v10 = PFTTMLTypeForName(elementCopy);

  delegate = [(PFTTMLParser *)self delegate];
  [delegate parser:self didStartElementType:v10];

  [(PFTTMLParser *)self setCurrentElementAttributes:0];
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  v7 = PFTTMLTypeForName(element);
  delegate = [(PFTTMLParser *)self delegate];
  [delegate parser:self didEndElementType:v7];
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  delegate = [(PFTTMLParser *)self delegate];
  [delegate parser:self foundCharacters:charactersCopy];
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  occurredCopy = occurred;
  delegate = [(PFTTMLParser *)self delegate];
  [delegate parser:self parseErrorOccurred:occurredCopy];
}

- (void)parser:(id)parser validationErrorOccurred:(id)occurred
{
  occurredCopy = occurred;
  delegate = [(PFTTMLParser *)self delegate];
  [delegate parser:self validationErrorOccurred:occurredCopy];
}

- (PFTTMLParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end