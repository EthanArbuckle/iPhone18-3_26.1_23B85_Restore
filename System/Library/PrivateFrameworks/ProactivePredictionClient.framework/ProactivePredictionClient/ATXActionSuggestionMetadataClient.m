@interface ATXActionSuggestionMetadataClient
+ (ATXActionSuggestionMetadataClient)shared;
- (ATXActionSuggestionMetadataClient)init;
- (id)fetchFormattedTitleForEncodedTool:(id)a3 summary:(id)a4 error:(id *)a5;
- (id)fetchFormattedTitlesForActions:(id)a3 error:(id *)a4;
@end

@implementation ATXActionSuggestionMetadataClient

+ (ATXActionSuggestionMetadataClient)shared
{
  if (qword_27FE4F980 != -1)
  {
    swift_once();
  }

  v3 = qword_27FE4FD58;

  return v3;
}

- (id)fetchFormattedTitlesForActions:(id)a3 error:(id *)a4
{
  v5 = sub_260DF5AB4();
  v6 = self;
  sub_260DDDE88(v5);

  sub_260DDE814(0, &qword_27FE4FD88, 0x277D4C598);
  v7 = sub_260DF5A94();

  return v7;
}

- (id)fetchFormattedTitleForEncodedTool:(id)a3 summary:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_260DF53B4();
  v12 = v11;

  v13 = sub_260DF53B4();
  v15 = v14;

  v16 = sub_260DDE034(v10, v12, v13, v15);
  sub_260DD2994(v13, v15);
  sub_260DD2994(v10, v12);

  return v16;
}

- (ATXActionSuggestionMetadataClient)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActionSuggestionMetadataClient();
  return [(ATXActionSuggestionMetadataClient *)&v3 init];
}

@end