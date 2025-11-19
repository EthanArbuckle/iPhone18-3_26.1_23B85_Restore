@interface DiagnosticExtensionFileFinder
- (_TtC28SiriPrivateLearningAnalytics29DiagnosticExtensionFileFinder)init;
- (id)getFileList;
@end

@implementation DiagnosticExtensionFileFinder

- (id)getFileList
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05260;
  v4 = qword_280CB4CB0;
  v5 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_280CB4CC0;
  *(inited + 32) = qword_280CB4CB8;
  *(inited + 40) = v6;
  v7 = qword_280CB4C80;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_280CB4C90;
  *(inited + 48) = qword_280CB4C88;
  *(inited + 56) = v8;

  v9 = sub_222AFCB80(inited);

  swift_setDeallocating();
  swift_arrayDestroy();

  return v9;
}

- (_TtC28SiriPrivateLearningAnalytics29DiagnosticExtensionFileFinder)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiagnosticExtensionFileFinder();
  return [(DiagnosticExtensionFileFinder *)&v3 init];
}

@end