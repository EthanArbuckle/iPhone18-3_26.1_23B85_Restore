@interface SiriAnalyticsTagShim
- (NSString)description;
- (SiriAnalyticsTagShim)initWithConditionType:(int)type componentId:(id)id componentName:(int)name joined:(BOOL)joined;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriAnalyticsTagShim

- (SiriAnalyticsTagShim)initWithConditionType:(int)type componentId:(id)id componentName:(int)name joined:(BOOL)joined
{
  v9 = sub_1D992AE84();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  return TagShim.init(conditionType:componentId:componentName:joined:)(type, v12, name, joined);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1D990FC38(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1D9910620();

  v3 = sub_1D992B614();

  return v3;
}

@end