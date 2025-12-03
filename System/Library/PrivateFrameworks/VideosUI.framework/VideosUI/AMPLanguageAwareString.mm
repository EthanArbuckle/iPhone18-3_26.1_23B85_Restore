@interface AMPLanguageAwareString
+ (AMPLanguageAwareString)AMPLanguageAwareStringEmpty;
+ (AMPLanguageAwareStringPreprocessor)delegate;
- (AMPLanguageAwareString)initWithAttributedString:(id)string baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components;
- (AMPLanguageAwareString)initWithLanguageAwareString:(id)string attributes:(id)attributes keepStatisticsOnLanguageComponents:(BOOL)components;
- (AMPLanguageAwareString)initWithString:(id)string attributes:(id)attributes baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components;
- (AMPLanguageAwareString)initWithString:(id)string baseParagraphStyle:(id)style generateAttributedString:(BOOL)attributedString keepStatisticsOnLanguageComponents:(BOOL)components;
- (AMPLanguageAwareString)localizedLowercase;
- (AMPLanguageAwareString)localizedUppercase;
- (AMPLanguageAwareString)newlinesCollapsedToSpace;
- (AMPLanguageAwareString)trimmed;
- (NSArray)numbers;
- (NSAttributedString)attributedString;
- (NSString)string;
- (_NSRange)fullRange;
- (id)writingDirectionsQuantities;
- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)location;
- (int64_t)length;
- (int64_t)numberOfCharacters;
- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info;
- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info lineNumberReported:(int64_t *)reported;
- (void)setAttributedString:(id)string;
- (void)setLocalizedLowercase:(id)lowercase;
- (void)setLocalizedUppercase:(id)uppercase;
- (void)setNewlinesCollapsedToSpace:(id)space;
- (void)setTrimmed:(id)trimmed;
@end

@implementation AMPLanguageAwareString

- (NSAttributedString)attributedString
{
  selfCopy = self;
  v3 = LanguageAwareString.attributedString.getter();

  return v3;
}

- (void)setAttributedString:(id)string
{
  stringCopy = string;
  selfCopy = self;
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
  selfCopy = self;
  v3 = LanguageAwareString.localizedLowercase.getter();

  return v3;
}

- (void)setLocalizedLowercase:(id)lowercase
{
  lowercaseCopy = lowercase;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_6_147();
  LanguageAwareString.localizedLowercase.setter(v6);
}

- (AMPLanguageAwareString)localizedUppercase
{
  selfCopy = self;
  v3 = LanguageAwareString.localizedUppercase.getter();

  return v3;
}

- (void)setLocalizedUppercase:(id)uppercase
{
  uppercaseCopy = uppercase;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_6_147();
  LanguageAwareString.localizedUppercase.setter(v6);
}

- (AMPLanguageAwareString)newlinesCollapsedToSpace
{
  selfCopy = self;
  v3 = LanguageAwareString.newlinesCollapsedToSpace.getter();

  return v3;
}

- (void)setNewlinesCollapsedToSpace:(id)space
{
  spaceCopy = space;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_6_147();
  LanguageAwareString.newlinesCollapsedToSpace.setter(v6);
}

- (AMPLanguageAwareString)trimmed
{
  selfCopy = self;
  v3 = LanguageAwareString.trimmed.getter();

  return v3;
}

- (void)setTrimmed:(id)trimmed
{
  trimmedCopy = trimmed;
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = LanguageAwareString.utf16Count.getter();

  return v3;
}

- (int64_t)numberOfCharacters
{
  selfCopy = self;
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

- (AMPLanguageAwareString)initWithAttributedString:(id)string baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components
{
  stringCopy = string;
  styleCopy = style;
  return LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(stringCopy, style, components);
}

- (AMPLanguageAwareString)initWithString:(id)string attributes:(id)attributes baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components
{
  sub_1E4205F14();
  if (attributes)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    OUTLINED_FUNCTION_146();
    attributes = sub_1E4205C64();
  }

  styleCopy = style;
  v10 = OUTLINED_FUNCTION_75();
  return LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v10, v11, attributes, style, components);
}

- (AMPLanguageAwareString)initWithString:(id)string baseParagraphStyle:(id)style generateAttributedString:(BOOL)attributedString keepStatisticsOnLanguageComponents:(BOOL)components
{
  if (string)
  {
    sub_1E4205F14();
  }

  styleCopy = style;
  v9 = OUTLINED_FUNCTION_75();
  return LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v9, v10, style, attributedString);
}

- (AMPLanguageAwareString)initWithLanguageAwareString:(id)string attributes:(id)attributes keepStatisticsOnLanguageComponents:(BOOL)components
{
  attributesCopy = attributes;
  if (attributes)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    OUTLINED_FUNCTION_75();
    attributesCopy = sub_1E4205C64();
  }

  return LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(string, attributesCopy, components);
}

- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)location
{
  selfCopy = self;
  OUTLINED_FUNCTION_50();
  v5 = LanguageAwareString.baseWritingDirection(forCharacterAt:)();

  return v5;
}

- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info
{
  infoCopy = info;
  selfCopy = self;
  v10 = OUTLINED_FUNCTION_74();
  v12 = LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:)(v10, v11, mode, infoCopy);

  return v12;
}

- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info lineNumberReported:(int64_t *)reported
{
  selfCopy = self;
  v15 = LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:lineNumberReported:)(line, shown, mode, info, reported, width);

  return v15;
}

- (id)writingDirectionsQuantities
{
  v2 = LanguageAwareString.writingDirectionsQuantities()();

  return v2;
}

@end