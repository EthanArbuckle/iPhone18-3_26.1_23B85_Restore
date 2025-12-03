@interface TSWPTextStatistics
- (id)copyWithZone:(_NSZone *)zone;
- (void)addTextStatistics:(id)statistics;
- (void)removeTextStatistics:(id)statistics;
- (void)resetStatistics;
- (void)setTextStatistics:(id)statistics;
@end

@implementation TSWPTextStatistics

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setWordCount:self->_wordCount];
  [v4 setCharactersNoWhiteSpace:self->_charactersNoWhiteSpace];
  [v4 setParagraphCount:self->_paragraphCount];
  [v4 setIsAccurate:self->_isAccurate];
  return v4;
}

- (void)resetStatistics
{
  [(TSWPTextStatistics *)self setWordCount:0];
  [(TSWPTextStatistics *)self setCharactersNoWhiteSpace:0];
  [(TSWPTextStatistics *)self setParagraphCount:0];

  [(TSWPTextStatistics *)self setIsAccurate:0];
}

- (void)setTextStatistics:(id)statistics
{
  -[TSWPTextStatistics setWordCount:](self, "setWordCount:", [statistics wordCount]);
  -[TSWPTextStatistics setCharactersNoWhiteSpace:](self, "setCharactersNoWhiteSpace:", [statistics charactersNoWhiteSpace]);
  paragraphCount = [statistics paragraphCount];

  [(TSWPTextStatistics *)self setParagraphCount:paragraphCount];
}

- (void)addTextStatistics:(id)statistics
{
  -[TSWPTextStatistics setWordCount:](self, "setWordCount:", [statistics wordCount] + -[TSWPTextStatistics wordCount](self, "wordCount"));
  -[TSWPTextStatistics setCharactersNoWhiteSpace:](self, "setCharactersNoWhiteSpace:", [statistics charactersNoWhiteSpace] + -[TSWPTextStatistics charactersNoWhiteSpace](self, "charactersNoWhiteSpace"));
  paragraphCount = [(TSWPTextStatistics *)self paragraphCount];
  v6 = [statistics paragraphCount] + paragraphCount;

  [(TSWPTextStatistics *)self setParagraphCount:v6];
}

- (void)removeTextStatistics:(id)statistics
{
  -[TSWPTextStatistics setWordCount:](self, "setWordCount:", -[TSWPTextStatistics wordCount](self, "wordCount") - [statistics wordCount]);
  -[TSWPTextStatistics setCharactersNoWhiteSpace:](self, "setCharactersNoWhiteSpace:", -[TSWPTextStatistics charactersNoWhiteSpace](self, "charactersNoWhiteSpace") - [statistics charactersNoWhiteSpace]);
  paragraphCount = [(TSWPTextStatistics *)self paragraphCount];
  v6 = paragraphCount - [statistics paragraphCount];

  [(TSWPTextStatistics *)self setParagraphCount:v6];
}

@end