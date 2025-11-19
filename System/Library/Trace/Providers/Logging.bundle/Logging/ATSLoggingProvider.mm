@interface ATSLoggingProvider
+ (id)availableDataCategories:(void *)a3;
- (BOOL)collectToFile:(void *)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6;
- (BOOL)configureWithLogger:(id)a3 machine:(void *)a4 options:(id)a5 dataCategories:(id)a6 error:(id *)a7;
- (BOOL)shouldAmendWithFile:(void *)a3 error:(id *)a4;
- (BOOL)shouldInitializeWithLogger:(id)a3 machine:(void *)a4 options:(id)a5 error:(id *)a6;
- (BOOL)shouldStartTracingWithConfiguration:(void *)a3 error:(id *)a4;
- (id)dataSourceName;
- (id)describeChunk:(void *)a3;
- (void)configureWithSession:(void *)a3;
- (void)didStopTracingToFile:(void *)a3;
- (void)postprocessingCompleteWithFile:(void *)a3;
- (void)willStartTracingToFile:(void *)a3;
@end

@implementation ATSLoggingProvider

- (BOOL)shouldInitializeWithLogger:(id)a3 machine:(void *)a4 options:(id)a5 error:(id *)a6
{
  v8 = sub_A008();
  swift_unknownObjectRetain();
  v9 = self;
  sub_5D38(a3, v8);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)shouldAmendWithFile:(void *)a3 error:(id *)a4
{
  v5 = self;
  sub_1904(a3);

  return 1;
}

- (BOOL)shouldStartTracingWithConfiguration:(void *)a3 error:(id *)a4
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
    if (a4)
    {
      v10 = sub_9ED8();

      v11 = v10;
      *a4 = v10;
    }

    else
    {
    }
  }

  return v5 == 255;
}

- (void)configureWithSession:(void *)a3
{
  v3 = self;
  sub_2038();
}

- (void)willStartTracingToFile:(void *)a3
{
  v3 = self;
  sub_6434();
}

- (void)didStopTracingToFile:(void *)a3
{
  v3 = self;
  sub_6E74();
}

- (void)postprocessingCompleteWithFile:(void *)a3
{
  v4 = self;
  sub_23AC(a3);
}

- (id)describeChunk:(void *)a3
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

- (BOOL)configureWithLogger:(id)a3 machine:(void *)a4 options:(id)a5 dataCategories:(id)a6 error:(id *)a7
{
  v8 = a5;
  if (a5)
  {
    sub_62F4(&qword_14F58, &qword_B0F8);
    v8 = sub_A008();
  }

  if (a6)
  {
    sub_62F4(&qword_14F50, &qword_B0F0);
    v11 = sub_A098();
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectRetain();
  v12 = self;
  sub_6F60(a3, v8, v11);

  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)collectToFile:(void *)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6
{
  v28[1] = a6;
  v29 = self;
  v30 = a3;
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
  v25 = v29;
  sub_9E48();
  sub_273C(v30, v9);

  (*(v6 + 8))(v9, v31);
  v26 = v11[1];
  v26(v21, v10);
  v26(v23, v10);
  return 1;
}

+ (id)availableDataCategories:(void *)a3
{
  sub_7910(a3);
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