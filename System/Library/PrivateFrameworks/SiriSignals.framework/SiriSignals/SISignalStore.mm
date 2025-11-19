@interface SISignalStore
- (BOOL)logWithData:(id)a3 signalType:(id)a4 intentId:(id)a5 timestamp:(id)a6 error:(id *)a7;
@end

@implementation SISignalStore

- (BOOL)logWithData:(id)a3 signalType:(id)a4 intentId:(id)a5 timestamp:(id)a6 error:(id *)a7
{
  v15 = a7;
  v8 = sub_231585884();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2315861A4();
  sub_2315861A4();
  sub_231585834();
  swift_unknownObjectRetain();
  v13 = self;
  sub_231564CB0();
  (*(v9 + 8))(v12, v8);

  swift_unknownObjectRelease();
  return 1;
}

@end