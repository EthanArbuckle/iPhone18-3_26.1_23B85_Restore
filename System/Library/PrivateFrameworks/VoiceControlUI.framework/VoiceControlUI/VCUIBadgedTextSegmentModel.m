@interface VCUIBadgedTextSegmentModel
- (BOOL)isWhiteSpace;
- (NSAttributedString)displayedText;
- (NSAttributedString)label;
- (NSAttributedString)representedText;
- (NSAttributedString)text;
- (_NSRange)nsRange;
- (int64_t)labelNumber;
- (void)setIsWhiteSpace:(BOOL)a3;
- (void)setLabel:(id)a3;
- (void)setLabelNumber:(int64_t)a3;
- (void)setText:(id)a3;
@end

@implementation VCUIBadgedTextSegmentModel

- (NSAttributedString)text
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setText:(id)a3
{
  v5 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSAttributedString)label
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLabel:(id)a3
{
  v5 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (int64_t)labelNumber
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLabelNumber:(int64_t)a3
{
  v5 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isWhiteSpace
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_isWhiteSpace;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsWhiteSpace:(BOOL)a3
{
  v5 = OBJC_IVAR___VCUIBadgedTextSegmentModel_isWhiteSpace;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_NSRange)nsRange
{
  swift_beginAccess();
  v3 = self;
  v4 = [(VCUIBadgedTextSegmentModel *)v3 text];
  v5 = [(NSAttributedString *)v4 string];

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
  v2 = self;
  v3 = [(VCUIBadgedTextSegmentModel *)v2 text];
  v4 = [(VCUIBadgedTextSegmentModel *)v2 nsRange];
  v6 = [(NSAttributedString *)v3 attributedSubstringFromRange:v4, v5];

  return v6;
}

- (NSAttributedString)displayedText
{
  v2 = self;
  v3 = VCUIBadgedTextSegmentModel.displayedText.getter();

  return v3;
}

@end