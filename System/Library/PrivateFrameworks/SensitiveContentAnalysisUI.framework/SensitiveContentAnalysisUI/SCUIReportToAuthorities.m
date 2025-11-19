@interface SCUIReportToAuthorities
+ (void)presentFlowFromController:(id)a3 authority:(id)a4 interventionType:(int64_t)a5 delegate:(id)a6 contextDictionary:(id)a7;
- (SCUIReportToAuthorities)init;
@end

@implementation SCUIReportToAuthorities

+ (void)presentFlowFromController:(id)a3 authority:(id)a4 interventionType:(int64_t)a5 delegate:(id)a6 contextDictionary:(id)a7
{
  if (!a6)
  {
    memset(v18, 0, sizeof(v18));
    v15 = a3;
    v16 = a4;
    v17 = a7;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v11 = a3;
  v12 = a4;
  v13 = a7;
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BC75BA40();

LABEL_6:
  sub_1BC709B58(a3, a4, a5, v18, v14);

  sub_1BC66008C(v18, &qword_1EBCDE440, &unk_1BC76A328);
}

- (SCUIReportToAuthorities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Report();
  return [(SCUIReportToAuthorities *)&v3 init];
}

@end