@interface TSWPTextStatistics
- (id)copyWithZone:(_NSZone *)a3;
- (void)addTextStatistics:(id)a3;
- (void)removeTextStatistics:(id)a3;
- (void)resetStatistics;
- (void)setTextStatistics:(id)a3;
@end

@implementation TSWPTextStatistics

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)setTextStatistics:(id)a3
{
  -[TSWPTextStatistics setWordCount:](self, "setWordCount:", [a3 wordCount]);
  -[TSWPTextStatistics setCharactersNoWhiteSpace:](self, "setCharactersNoWhiteSpace:", [a3 charactersNoWhiteSpace]);
  v5 = [a3 paragraphCount];

  [(TSWPTextStatistics *)self setParagraphCount:v5];
}

- (void)addTextStatistics:(id)a3
{
  -[TSWPTextStatistics setWordCount:](self, "setWordCount:", [a3 wordCount] + -[TSWPTextStatistics wordCount](self, "wordCount"));
  -[TSWPTextStatistics setCharactersNoWhiteSpace:](self, "setCharactersNoWhiteSpace:", [a3 charactersNoWhiteSpace] + -[TSWPTextStatistics charactersNoWhiteSpace](self, "charactersNoWhiteSpace"));
  v5 = [(TSWPTextStatistics *)self paragraphCount];
  v6 = [a3 paragraphCount] + v5;

  [(TSWPTextStatistics *)self setParagraphCount:v6];
}

- (void)removeTextStatistics:(id)a3
{
  -[TSWPTextStatistics setWordCount:](self, "setWordCount:", -[TSWPTextStatistics wordCount](self, "wordCount") - [a3 wordCount]);
  -[TSWPTextStatistics setCharactersNoWhiteSpace:](self, "setCharactersNoWhiteSpace:", -[TSWPTextStatistics charactersNoWhiteSpace](self, "charactersNoWhiteSpace") - [a3 charactersNoWhiteSpace]);
  v5 = [(TSWPTextStatistics *)self paragraphCount];
  v6 = v5 - [a3 paragraphCount];

  [(TSWPTextStatistics *)self setParagraphCount:v6];
}

@end