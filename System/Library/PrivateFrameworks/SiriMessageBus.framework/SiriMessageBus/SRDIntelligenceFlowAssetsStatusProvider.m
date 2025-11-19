@interface SRDIntelligenceFlowAssetsStatusProvider
- (SRDIntelligenceFlowAssetsStatusProvider)initWithDelegate:(id)a3 locale:(id)a4;
@end

@implementation SRDIntelligenceFlowAssetsStatusProvider

- (SRDIntelligenceFlowAssetsStatusProvider)initWithDelegate:(id)a3 locale:(id)a4
{
  v4 = sub_2237B415C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237B414C();
  v8 = swift_unknownObjectRetain();
  return sub_223785488(v8, v7);
}

@end