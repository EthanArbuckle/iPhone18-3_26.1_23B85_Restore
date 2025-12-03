@interface SISignalStore
- (BOOL)logWithData:(id)data signalType:(id)type intentId:(id)id timestamp:(id)timestamp error:(id *)error;
@end

@implementation SISignalStore

- (BOOL)logWithData:(id)data signalType:(id)type intentId:(id)id timestamp:(id)timestamp error:(id *)error
{
  errorCopy = error;
  v8 = sub_231585884();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &errorCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2315861A4();
  sub_2315861A4();
  sub_231585834();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_231564CB0();
  (*(v9 + 8))(v12, v8);

  swift_unknownObjectRelease();
  return 1;
}

@end