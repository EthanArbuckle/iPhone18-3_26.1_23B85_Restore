@interface VANRDelegateBridge
- (void)keywordSpotterDidDetectKeywordWithEvent:(id)a3;
- (void)keywordSpotterDidStopWithSummaryWithJson:(id)a3 uuid:(id)a4 perfLogs:(id)a5;
- (void)speechResultsWithResult:(id)a3;
@end

@implementation VANRDelegateBridge

- (void)keywordSpotterDidDetectKeywordWithEvent:(id)a3
{
  v3 = a3;

  sub_2722ED2F0(v3);
}

- (void)keywordSpotterDidStopWithSummaryWithJson:(id)a3 uuid:(id)a4 perfLogs:(id)a5
{
  v7 = sub_272376E5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27237782C();
  v14 = v13;
  sub_272376E3C();
  if (a5)
  {
    v15 = sub_272377AFC();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(self->super.isa + 19);

  if (v16(v17))
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(v12, v14, v11, v15, ObjectType, v19);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
}

- (void)speechResultsWithResult:(id)a3
{
  v3 = a3;

  sub_2723013BC(v3);
}

@end