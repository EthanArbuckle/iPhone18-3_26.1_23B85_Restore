@interface SCUIAnalytics
+ (id)getAnalyticsUIContextByIdentifierWithIdentifier:(id)a3;
+ (id)getAnalyticsUIContextWith:(id)a3;
+ (void)contextMenuButtonTappedWithContentType:(int64_t)a3 subContentType:(int64_t)a4 direction:(int64_t)a5 options:(int64_t)a6 isBlurred:(BOOL)a7 identifier:(id)a8;
+ (void)deleteAnalyticsUIContextWithContextKey:(id)a3;
+ (void)insertNewAnalyticsUIContextWithContextKey:(id)a3 analyticsContextWrapper:(id)a4;
+ (void)insertNewOptionsToContextMenuWith:(id)a3 value:(id)a4;
+ (void)obscuredViewRemovedWithIdentifier:(id)a3;
+ (void)obscuredViewShownWithContentType:(int64_t)a3 subcontentType:(int64_t)a4 identifier:(id)a5;
+ (void)waysToGetHelpTappedWithContentType:(int64_t)a3 isBlurred:(BOOL)a4;
- (SCUIAnalytics)init;
@end

@implementation SCUIAnalytics

+ (void)obscuredViewShownWithContentType:(int64_t)a3 subcontentType:(int64_t)a4 identifier:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v12 = sub_1BC75BE10();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_1BC75BDE0();
  swift_unknownObjectRetain_n();
  v13 = sub_1BC75BDD0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = ObjCClassMetadata;
  v14[5] = a3;
  v14[6] = a5;
  sub_1BC652910(0, 0, v10, &unk_1BC75F7F0, v14);

  swift_unknownObjectRelease();
}

+ (void)obscuredViewRemovedWithIdentifier:(id)a3
{
  swift_unknownObjectRetain();
  sub_1BC65D5BC();

  swift_unknownObjectRelease();
}

+ (void)contextMenuButtonTappedWithContentType:(int64_t)a3 subContentType:(int64_t)a4 direction:(int64_t)a5 options:(int64_t)a6 isBlurred:(BOOL)a7 identifier:(id)a8
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v19 = sub_1BC75BE10();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_1BC75BDE0();
  swift_unknownObjectRetain_n();
  v20 = sub_1BC75BDD0();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = ObjCClassMetadata;
  *(v21 + 40) = a3;
  *(v21 + 48) = a4;
  *(v21 + 56) = a5;
  *(v21 + 64) = a6;
  *(v21 + 72) = a7;
  *(v21 + 80) = a8;
  sub_1BC652910(0, 0, v17, &unk_1BC75F7E8, v21);

  swift_unknownObjectRelease();
}

+ (void)waysToGetHelpTappedWithContentType:(int64_t)a3 isBlurred:(BOOL)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_1BC75BE10();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1BC75BDE0();
  v11 = sub_1BC75BDD0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  sub_1BC652910(0, 0, v9, &unk_1BC75F7E0, v12);
}

- (SCUIAnalytics)init
{
  v3.receiver = self;
  v3.super_class = SCUIAnalytics;
  return [(SCUIAnalytics *)&v3 init];
}

+ (void)insertNewOptionsToContextMenuWith:(id)a3 value:(id)a4
{
  v5 = sub_1BC75BB60();
  v7 = v6;
  v8 = qword_1EBCDF9C0;
  v9 = a4;
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = qword_1EBCDF9C8;
  qword_1EBCDF9C8 = 0x8000000000000000;
  sub_1BC65C27C(v10, v5, v7, isUniquelyReferenced_nonNull_native);

  qword_1EBCDF9C8 = v12;
  swift_endAccess();
}

+ (id)getAnalyticsUIContextWith:(id)a3
{
  if (a3)
  {
    v3 = sub_1BC75BA40();
  }

  else
  {
    v3 = 0;
  }

  v4 = _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE21getAnalyticsUIContext4withAC0G14ContextWrapperCSgSDys11AnyHashableVypGSg_tFZ_0(v3);

  return v4;
}

+ (void)insertNewAnalyticsUIContextWithContextKey:(id)a3 analyticsContextWrapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE27insertNewAnalyticsUIContext4With23analyticsContextWrapperySo8NSObjectCSg_AC0hlM0CSgtFZ_0(a3, a4);
}

+ (void)deleteAnalyticsUIContextWithContextKey:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  if (a3)
  {
    v8 = qword_1EBCDF9B0;
    v9 = a3;
    if (v8 != -1)
    {
      swift_once();
    }

    sub_1BC75C7B0();
    v10 = (*(*v11[0] + 104))(v11);
    sub_1BC65B838(v9, v7);
    sub_1BC66008C(v7, &qword_1EBCDBC50, &qword_1BC762D70);
    v10(v11, 0);
  }
}

+ (id)getAnalyticsUIContextByIdentifierWithIdentifier:(id)a3
{
  swift_unknownObjectRetain();
  v3 = _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE33getAnalyticsUIContextByIdentifier10identifierAC0G14ContextWrapperCSgSo9NSCopying_So14NSSecureCodingSo8NSObjectp_tFZ_0();
  swift_unknownObjectRelease();

  return v3;
}

@end