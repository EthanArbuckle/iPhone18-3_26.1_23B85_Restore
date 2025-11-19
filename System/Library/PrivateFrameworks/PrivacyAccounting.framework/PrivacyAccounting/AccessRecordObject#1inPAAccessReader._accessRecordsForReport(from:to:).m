@interface AccessRecordObject#1inPAAccessReader._accessRecordsForReport(from:to:)
- (NSNumber)accessCount;
- (NSString)accessorBundleID;
- (NSString)identifier;
- (_TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject)init;
- (int64_t)timing;
@end

@implementation AccessRecordObject#1inPAAccessReader._accessRecordsForReport(from:to:)

- (NSString)identifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record);
  v3 = *&self->record[OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record];

  v4 = sub_1DF27BB08();

  return v4;
}

- (NSString)accessorBundleID
{
  v2 = *&self->record[OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record + 8];
  v3 = *&self->record[OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record + 16];

  v4 = sub_1DF27BB08();

  return v4;
}

- (int64_t)timing
{
  v3 = type metadata accessor for AccessRecord.Timing(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record;
  v9 = type metadata accessor for AccessRecord(0);
  sub_1DF27AB94(&v8[*(v9 + 28)], v7, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1DF27AA08(v7, type metadata accessor for AccessRecord.Timing);
      return 2;
    }

    else
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
      v13 = sub_1DF27BA98();
      v14 = *(*(v13 - 8) + 8);
      v14(&v7[v12], v13);
      v14(v7, v13);
      return 3;
    }
  }

  else
  {
    sub_1DF27AA08(v7, type metadata accessor for AccessRecord.Timing);
    return 1;
  }
}

- (NSNumber)accessCount
{
  v2 = self + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record;
  v3 = type metadata accessor for AccessRecord(0);
  v4 = 0;
  v5 = &v2[*(v3 + 32)];
  if ((v5[8] & 1) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  }

  return v4;
}

- (_TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end