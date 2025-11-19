@interface SiriSharedUISuggestion
- (NSString)displayText;
- (NSString)invocationText;
- (NSUUID)suggestionId;
@end

@implementation SiriSharedUISuggestion

- (NSString)displayText
{

  v2 = sub_21E4DCF68();

  return v2;
}

- (NSString)invocationText
{

  v2 = sub_21E4DCF68();

  return v2;
}

- (NSUUID)suggestionId
{
  v3 = sub_21E4DB698();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId, v3);
  v7 = sub_21E4DB658();
  (*(v4 + 8))(v6, v3);

  return v7;
}

@end