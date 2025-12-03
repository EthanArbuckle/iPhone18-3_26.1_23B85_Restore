@interface ATSLoggingProvider
+ (id)availableDataCategories:(void *)categories;
- (BOOL)collectToFile:(void *)file startDate:(id)date endDate:(id)endDate error:(id *)error;
- (BOOL)configureWithLogger:(id)logger machine:(void *)machine options:(id)options dataCategories:(id)categories error:(id *)error;
- (BOOL)shouldAmendWithFile:(void *)file error:(id *)error;
- (BOOL)shouldInitializeWithLogger:(id)logger machine:(void *)machine options:(id)options error:(id *)error;
- (BOOL)shouldStartTracingWithConfiguration:(void *)configuration error:(id *)error;
- (id)dataSourceName;
- (id)describeChunk:(void *)chunk;
- (void)configureWithSession:(void *)session;
- (void)didStopTracingToFile:(void *)file;
- (void)postprocessingCompleteWithFile:(void *)file;
- (void)willStartTracingToFile:(void *)file;
@end

@implementation ATSLoggingProvider

- (BOOL)shouldInitializeWithLogger:(id)logger machine:(void *)machine options:(id)options error:(id *)error
{
  v8 = sub_A008();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_5D38(logger, v8);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)shouldAmendWithFile:(void *)file error:(id *)error
{
  selfCopy = self;
  sub_1904(file);

  return 1;
}

- (BOOL)shouldStartTracingWithConfiguration:(void *)configuration error:(id *)error
{
  v4 = (self + OBJC_IVAR___ATSLoggingProvider_initializationError);
  v5 = self->streamFlags[OBJC_IVAR___ATSLoggingProvider_initializationError];
  if (v5 != 255)
  {
    v8 = *v4;
    v7 = v4[1];
    sub_633C();
    swift_allocError();
    *v9 = v8;
    *(v9 + 8) = v7;
    *(v9 + 16) = v5;
    swift_willThrow();
    sub_641C(v8, v7, v5);
    if (error)
    {
      v10 = sub_9ED8();

      v11 = v10;
      *error = v10;
    }

    else
    {
    }
  }

  return v5 == 255;
}

- (void)configureWithSession:(void *)session
{
  selfCopy = self;
  sub_2038();
}

- (void)willStartTracingToFile:(void *)file
{
  selfCopy = self;
  sub_6434();
}

- (void)didStopTracingToFile:(void *)file
{
  selfCopy = self;
  sub_6E74();
}

- (void)postprocessingCompleteWithFile:(void *)file
{
  selfCopy = self;
  sub_23AC(file);
}

- (id)describeChunk:(void *)chunk
{
  v3 = ktrace_chunk_tag();
  if (v3 == 32785 || v3 == 32786)
  {
    v4 = sub_A028();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)configureWithLogger:(id)logger machine:(void *)machine options:(id)options dataCategories:(id)categories error:(id *)error
{
  optionsCopy = options;
  if (options)
  {
    sub_62F4(&qword_14F58, &qword_B0F8);
    optionsCopy = sub_A008();
  }

  if (categories)
  {
    sub_62F4(&qword_14F50, &qword_B0F0);
    v11 = sub_A098();
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_6F60(logger, optionsCopy, v11);

  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)collectToFile:(void *)file startDate:(id)date endDate:(id)endDate error:(id *)error
{
  v28[1] = error;
  selfCopy = self;
  fileCopy = file;
  v31 = sub_9E68();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v31);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_9F68();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v28 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v28 - v20;
  __chkstk_darwin(v19);
  v23 = v28 - v22;
  sub_9F58();
  sub_9F58();
  v24 = v11[2];
  v24(v18, v23, v10);
  v24(v15, v21, v10);
  v25 = selfCopy;
  sub_9E48();
  sub_273C(fileCopy, v9);

  (*(v6 + 8))(v9, v31);
  v26 = v11[1];
  v26(v21, v10);
  v26(v23, v10);
  return 1;
}

+ (id)availableDataCategories:(void *)categories
{
  sub_7910(categories);
  sub_62F4(&qword_14F50, &qword_B0F0);
  v3.super.isa = sub_9FF8().super.isa;

  return v3.super.isa;
}

- (id)dataSourceName
{
  v2 = sub_A028();

  return v2;
}

@end