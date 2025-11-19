@interface SiriAnalyticsTagShim
- (NSString)description;
- (SiriAnalyticsTagShim)initWithConditionType:(int)a3 componentId:(id)a4 componentName:(int)a5 joined:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriAnalyticsTagShim

- (SiriAnalyticsTagShim)initWithConditionType:(int)a3 componentId:(id)a4 componentName:(int)a5 joined:(BOOL)a6
{
  v9 = sub_1D992AE84();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  return TagShim.init(conditionType:componentId:componentName:joined:)(a3, v12, a5, a6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D990FC38(v4);
}

- (NSString)description
{
  v2 = self;
  sub_1D9910620();

  v3 = sub_1D992B614();

  return v3;
}

@end