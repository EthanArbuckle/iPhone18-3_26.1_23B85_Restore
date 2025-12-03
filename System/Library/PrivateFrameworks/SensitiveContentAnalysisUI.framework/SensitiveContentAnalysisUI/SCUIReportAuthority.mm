@interface SCUIReportAuthority
- (SCUIReportAuthority)init;
- (SCUIReportAuthority)initWithLocale:(id)locale moreHelpMenuOptions:(int64_t)options interventionType:(int64_t)type;
- (unint64_t)kind;
@end

@implementation SCUIReportAuthority

- (unint64_t)kind
{
  v3 = type metadata accessor for Report.Authority(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(self + OBJC_IVAR___SCUIReportAuthority_authority, v6, type metadata accessor for Report.Authority);
  v7 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v8 = 1;
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    sub_1BC68164C(v6, type metadata accessor for Report.Authority);
    return 0;
  }

  return v8;
}

- (SCUIReportAuthority)initWithLocale:(id)locale moreHelpMenuOptions:(int64_t)options interventionType:(int64_t)type
{
  optionsCopy = options;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6E8, &qword_1BC761EF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  v11 = sub_1BC7599C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  sub_1BC759960();
  ObjectType = swift_getObjectType();
  (*(v12 + 16))(v16, v18, v11);
  sub_1BC681900(v16, optionsCopy, v10);
  v20 = (*(ObjectType + 96))(v10);
  (*(v12 + 8))(v18, v11);
  v21 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v22 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v20;
}

- (SCUIReportAuthority)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end