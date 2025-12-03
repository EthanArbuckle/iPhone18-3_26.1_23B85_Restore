@interface VCUIBadgedTextSegmentModel
- (BOOL)isWhiteSpace;
- (NSAttributedString)displayedText;
- (NSAttributedString)label;
- (NSAttributedString)representedText;
- (NSAttributedString)text;
- (_NSRange)nsRange;
- (int64_t)labelNumber;
- (void)setIsWhiteSpace:(BOOL)space;
- (void)setLabel:(id)label;
- (void)setLabelNumber:(int64_t)number;
- (void)setText:(id)text;
@end

@implementation VCUIBadgedTextSegmentModel

- (NSAttributedString)text
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setText:(id)text
{
  v5 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = text;
  textCopy = text;
}

- (NSAttributedString)label
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLabel:(id)label
{
  v5 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = label;
  labelCopy = label;
}

- (int64_t)labelNumber
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLabelNumber:(int64_t)number
{
  v5 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
  swift_beginAccess();
  *(&self->super.isa + v5) = number;
}

- (BOOL)isWhiteSpace
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_isWhiteSpace;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsWhiteSpace:(BOOL)space
{
  v5 = OBJC_IVAR___VCUIBadgedTextSegmentModel_isWhiteSpace;
  swift_beginAccess();
  *(&self->super.isa + v5) = space;
}

- (_NSRange)nsRange
{
  swift_beginAccess();
  selfCopy = self;
  text = [(VCUIBadgedTextSegmentModel *)selfCopy text];
  string = [(NSAttributedString *)text string];

  sub_272434930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896200);
  sub_2724103BC();
  sub_27240A1B8();
  v6 = sub_272434BC0();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (NSAttributedString)representedText
{
  selfCopy = self;
  text = [(VCUIBadgedTextSegmentModel *)selfCopy text];
  nsRange = [(VCUIBadgedTextSegmentModel *)selfCopy nsRange];
  v6 = [(NSAttributedString *)text attributedSubstringFromRange:nsRange, v5];

  return v6;
}

- (NSAttributedString)displayedText
{
  selfCopy = self;
  v3 = VCUIBadgedTextSegmentModel.displayedText.getter();

  return v3;
}

@end