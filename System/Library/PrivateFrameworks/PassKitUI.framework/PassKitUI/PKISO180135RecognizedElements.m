@interface PKISO180135RecognizedElements
- (BOOL)isDisplayOnly;
- (NSSet)dataElements;
- (PKISO180135RecognizedElements)init;
- (PKISO180135RecognizedElements)initWithDocumentType:(id)a3 documentElements:(id)a4;
@end

@implementation PKISO180135RecognizedElements

- (NSSet)dataElements
{
  sub_1BD0E5E8C(0, &qword_1EBD406D0);
  sub_1BD538E04();
  sub_1BE048C84();
  v2 = sub_1BE052A24();

  return v2;
}

- (BOOL)isDisplayOnly
{
  v2 = self;
  v3 = PKISO180135RecognizedElements.isDisplayOnly.getter();

  return v3;
}

- (PKISO180135RecognizedElements)initWithDocumentType:(id)a3 documentElements:(id)a4
{
  v4 = sub_1BE052434();
  v6 = v5;
  sub_1BD0E5E8C(0, &qword_1EBD406D0);
  sub_1BD538E04();
  v7 = sub_1BE052A34();
  return PKISO180135RecognizedElements.init(documentType:documentElements:)(v4, v6, v7);
}

- (PKISO180135RecognizedElements)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end