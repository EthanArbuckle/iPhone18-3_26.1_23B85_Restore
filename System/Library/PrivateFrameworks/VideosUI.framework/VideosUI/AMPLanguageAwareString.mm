@interface AMPLanguageAwareString
+ (AMPLanguageAwareString)AMPLanguageAwareStringEmpty;
+ (AMPLanguageAwareStringPreprocessor)delegate;
- (AMPLanguageAwareString)initWithAttributedString:(id)a3 baseParagraphStyle:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5;
- (AMPLanguageAwareString)initWithLanguageAwareString:(id)a3 attributes:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5;
- (AMPLanguageAwareString)initWithString:(id)a3 attributes:(id)a4 baseParagraphStyle:(id)a5 keepStatisticsOnLanguageComponents:(BOOL)a6;
- (AMPLanguageAwareString)initWithString:(id)a3 baseParagraphStyle:(id)a4 generateAttributedString:(BOOL)a5 keepStatisticsOnLanguageComponents:(BOOL)a6;
- (AMPLanguageAwareString)localizedLowercase;
- (AMPLanguageAwareString)localizedUppercase;
- (AMPLanguageAwareString)newlinesCollapsedToSpace;
- (AMPLanguageAwareString)trimmed;
- (NSArray)numbers;
- (NSAttributedString)attributedString;
- (NSString)string;
- (_NSRange)fullRange;
- (id)writingDirectionsQuantities;
- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)a3;
- (int64_t)length;
- (int64_t)numberOfCharacters;
- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7;
- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7 lineNumberReported:(int64_t *)a8;
- (void)setAttributedString:(id)a3;
- (void)setLocalizedLowercase:(id)a3;
- (void)setLocalizedUppercase:(id)a3;
- (void)setNewlinesCollapsedToSpace:(id)a3;
- (void)setTrimmed:(id)a3;
@end

@implementation AMPLanguageAwareString

- (NSAttributedString)attributedString
{
  v2 = self;
  v3 = LanguageAwareString.attributedString.getter();

  return v3;
}

- (void)setAttributedString:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_6_147();
  LanguageAwareString.attributedString.setter(v6);
}

- (NSString)string
{
  LanguageAwareString.string.getter();
  sub_1E4205ED4();
  OUTLINED_FUNCTION_50();

  return self;
}

- (AMPLanguageAwareString)localizedLowercase
{
  v2 = self;
  v3 = LanguageAwareString.localizedLowercase.getter();

  return v3;
}

- (void)setLocalizedLowercase:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_6_147();
  LanguageAwareString.localizedLowercase.setter(v6);
}

- (AMPLanguageAwareString)localizedUppercase
{
  v2 = self;
  v3 = LanguageAwareString.localizedUppercase.getter();

  return v3;
}

- (void)setLocalizedUppercase:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_6_147();
  LanguageAwareString.localizedUppercase.setter(v6);
}

- (AMPLanguageAwareString)newlinesCollapsedToSpace
{
  v2 = self;
  v3 = LanguageAwareString.newlinesCollapsedToSpace.getter();

  return v3;
}

- (void)setNewlinesCollapsedToSpace:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_6_147();
  LanguageAwareString.newlinesCollapsedToSpace.setter(v6);
}

- (AMPLanguageAwareString)trimmed
{
  v2 = self;
  v3 = LanguageAwareString.trimmed.getter();

  return v3;
}

- (void)setTrimmed:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_6_147();
  LanguageAwareString.trimmed.setter(v6);
}

- (NSArray)numbers
{
  LanguageAwareString.numbers.getter();
  type metadata accessor for _NSRange();
  OUTLINED_FUNCTION_19_3();
  sub_1E42062A4();
  OUTLINED_FUNCTION_50();

  return self;
}

- (_NSRange)fullRange
{
  v2 = self;
  v3 = LanguageAwareString.fullRange.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (int64_t)length
{
  v2 = self;
  v3 = LanguageAwareString.utf16Count.getter();

  return v3;
}

- (int64_t)numberOfCharacters
{
  v2 = self;
  v3 = LanguageAwareString.characterCount.getter();

  return v3;
}

+ (AMPLanguageAwareStringPreprocessor)delegate
{
  v2 = static LanguageAwareString.delegate.getter();

  return v2;
}

+ (AMPLanguageAwareString)AMPLanguageAwareStringEmpty
{
  v2 = static LanguageAwareString.empty.getter();

  return v2;
}

- (AMPLanguageAwareString)initWithAttributedString:(id)a3 baseParagraphStyle:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  return LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v7, a4, a5);
}

- (AMPLanguageAwareString)initWithString:(id)a3 attributes:(id)a4 baseParagraphStyle:(id)a5 keepStatisticsOnLanguageComponents:(BOOL)a6
{
  sub_1E4205F14();
  if (a4)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    OUTLINED_FUNCTION_146();
    a4 = sub_1E4205C64();
  }

  v9 = a5;
  v10 = OUTLINED_FUNCTION_75();
  return LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v10, v11, a4, a5, a6);
}

- (AMPLanguageAwareString)initWithString:(id)a3 baseParagraphStyle:(id)a4 generateAttributedString:(BOOL)a5 keepStatisticsOnLanguageComponents:(BOOL)a6
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v8 = a4;
  v9 = OUTLINED_FUNCTION_75();
  return LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v9, v10, a4, a5);
}

- (AMPLanguageAwareString)initWithLanguageAwareString:(id)a3 attributes:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5
{
  v6 = a4;
  if (a4)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    OUTLINED_FUNCTION_75();
    v6 = sub_1E4205C64();
  }

  return LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(a3, v6, a5);
}

- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)a3
{
  v4 = self;
  OUTLINED_FUNCTION_50();
  v5 = LanguageAwareString.baseWritingDirection(forCharacterAt:)();

  return v5;
}

- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7
{
  v7 = a7;
  v9 = self;
  v10 = OUTLINED_FUNCTION_74();
  v12 = LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:)(v10, v11, a6, v7);

  return v12;
}

- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7 lineNumberReported:(int64_t *)a8
{
  v14 = self;
  v15 = LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:lineNumberReported:)(a3, a4, a6, a7, a8, a5);

  return v15;
}

- (id)writingDirectionsQuantities
{
  v2 = LanguageAwareString.writingDirectionsQuantities()();

  return v2;
}

@end