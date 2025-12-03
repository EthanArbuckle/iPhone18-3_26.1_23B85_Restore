@interface SCUIReportToAuthorities
+ (void)presentFlowFromController:(id)controller authority:(id)authority interventionType:(int64_t)type delegate:(id)delegate contextDictionary:(id)dictionary;
- (SCUIReportToAuthorities)init;
@end

@implementation SCUIReportToAuthorities

+ (void)presentFlowFromController:(id)controller authority:(id)authority interventionType:(int64_t)type delegate:(id)delegate contextDictionary:(id)dictionary
{
  if (!delegate)
  {
    memset(v18, 0, sizeof(v18));
    controllerCopy = controller;
    authorityCopy = authority;
    dictionaryCopy = dictionary;
    if (dictionary)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  controllerCopy2 = controller;
  authorityCopy2 = authority;
  dictionaryCopy2 = dictionary;
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  if (!dictionary)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BC75BA40();

LABEL_6:
  sub_1BC709B58(controller, authority, type, v18, v14);

  sub_1BC66008C(v18, &qword_1EBCDE440, &unk_1BC76A328);
}

- (SCUIReportToAuthorities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Report();
  return [(SCUIReportToAuthorities *)&v3 init];
}

@end