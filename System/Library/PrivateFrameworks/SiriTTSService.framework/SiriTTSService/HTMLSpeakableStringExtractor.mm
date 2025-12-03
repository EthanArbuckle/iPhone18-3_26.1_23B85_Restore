@interface HTMLSpeakableStringExtractor
- (void)parser:(id)parser didEndElement:(id)element;
- (void)parser:(id)parser didStartElement:(id)element attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation HTMLSpeakableStringExtractor

- (void)parser:(id)parser didStartElement:(id)element attributes:(id)attributes
{
  v7 = sub_1B1C2CB58();
  v9 = v8;
  sub_1B1C2CA98();
  parserCopy = parser;
  selfCopy = self;
  sub_1B1B1CE18(selfCopy, v7, v9);
}

- (void)parser:(id)parser didEndElement:(id)element
{
  sub_1B1C2CB58();
  parserCopy = parser;
  selfCopy = self;
  sub_1B1B1CF5C();
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  v6 = sub_1B1C2CB58();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_1B1B1D08C(selfCopy, v6, v8);
}

@end