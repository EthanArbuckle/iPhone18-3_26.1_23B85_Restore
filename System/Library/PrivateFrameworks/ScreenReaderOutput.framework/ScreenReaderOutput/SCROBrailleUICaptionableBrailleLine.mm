@interface SCROBrailleUICaptionableBrailleLine
- (NSString)braille;
- (NSString)caption;
- (NSString)mathML;
- (SCROBrailleUICaptionableBrailleLine)init;
- (SCROBrailleUICaptionableBrailleLine)initWithBraille:(id)a3 selection:(_NSRange)a4;
- (_NSRange)selection;
- (void)setManualCaption:(id)a3;
- (void)setMathML:(id)a3;
@end

@implementation SCROBrailleUICaptionableBrailleLine

- (NSString)mathML
{
  v2 = (self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_mathML);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_264982774();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMathML:(id)a3
{
  if (a3)
  {
    v4 = sub_264982784();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_mathML);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (SCROBrailleUICaptionableBrailleLine)initWithBraille:(id)a3 selection:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = sub_264982784();
  v8 = (self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_translatedCaption);
  *v8 = 0;
  v8[1] = 0;
  v9 = (self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption);
  *v9 = 0;
  v9[1] = 0;
  v10 = (self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_mathML);
  *v10 = 0;
  v10[1] = 0;
  v11 = (self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__braille);
  *v11 = v7;
  v11[1] = v12;
  v13 = (self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__selection);
  *v13 = location;
  v13[1] = length;
  v15.receiver = self;
  v15.super_class = SCROBrailleUICaptionableBrailleLine;
  return [(SCROBrailleUICaptionableBrailleLine *)&v15 init];
}

- (NSString)braille
{
  v2 = *(self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__braille);
  v3 = *(self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__braille + 8);

  v4 = sub_264982774();

  return v4;
}

- (_NSRange)selection
{
  v2 = self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__selection;
  v3 = *(self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__selection);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (NSString)caption
{
  v2 = self;
  SCROBrailleUICaptionableBrailleLine.caption.getter();

  v3 = sub_264982774();

  return v3;
}

- (void)setManualCaption:(id)a3
{
  v4 = sub_264982784();
  v5 = (self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption);
  v6 = *(self + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (SCROBrailleUICaptionableBrailleLine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end