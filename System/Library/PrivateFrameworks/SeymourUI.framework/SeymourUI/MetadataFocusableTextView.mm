@interface MetadataFocusableTextView
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
@end

@implementation MetadataFocusableTextView

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BC1AA08();
}

@end