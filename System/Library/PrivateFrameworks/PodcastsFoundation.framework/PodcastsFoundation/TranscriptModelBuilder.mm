@interface TranscriptModelBuilder
- (void)parser:(id)parser didEndElementType:(int64_t)type;
- (void)parser:(id)parser didStartElementType:(int64_t)type;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parser:(id)parser validationErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidStartDocument:(id)document;
@end

@implementation TranscriptModelBuilder

- (void)parser:(id)parser didStartElementType:(int64_t)type
{
  parserCopy = parser;
  selfCopy = self;
  sub_1D9143A90(parserCopy, type);
}

- (void)parser:(id)parser didEndElementType:(int64_t)type
{
  parserCopy = parser;
  selfCopy = self;
  sub_1D9144B88(type);
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  v6 = sub_1D917820C();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_1D9144DE4(v6, v8);
}

- (void)parserDidStartDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1D9145044();
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1D9145358();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1D91456EC(occurredCopy);
}

- (void)parser:(id)parser validationErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1D9145B14(occurredCopy);
}

@end