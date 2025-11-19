@interface WiFiPickerConfiguration_Swift
- (NSString)accessoryName;
- (NSString)description;
- (WiFiPickerConfiguration_Swift)init;
- (WiFiPickerConfiguration_Swift)initWithNetworks:(id)a3 currentNetwork:(id)a4;
- (WiFiPickerConfiguration_Swift)initWithNetworksInfo:(id)a3 currentNetwork:(id)a4;
- (int64_t)displayOption;
- (int64_t)interactionStyle;
- (int64_t)presentationStyle;
- (void)setAccessoryName:(id)a3;
- (void)setDisplayOption:(int64_t)a3;
- (void)setInteractionStyle:(int64_t)a3;
- (void)setPresentationStyle:(int64_t)a3;
@end

@implementation WiFiPickerConfiguration_Swift

- (int64_t)presentationStyle
{
  v3 = OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentationStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)interactionStyle
{
  v3 = OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInteractionStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)displayOption
{
  v3 = OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDisplayOption:(int64_t)a3
{
  v5 = OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)accessoryName
{
  v2 = (self + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_2741C7E3C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccessoryName:(id)a3
{
  if (a3)
  {
    v4 = sub_2741C7E7C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (WiFiPickerConfiguration_Swift)initWithNetworksInfo:(id)a3 currentNetwork:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
  v5 = sub_2741C7FEC();
  if (a4)
  {
    v6 = v5;
    v7 = sub_2741C7D6C();
    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  return WiFiPickerConfiguration.init(networks:currentNetwork:)(v5, v7);
}

- (WiFiPickerConfiguration_Swift)initWithNetworks:(id)a3 currentNetwork:(id)a4
{
  type metadata accessor for WiFiNetwork();
  v6 = sub_2741C7FEC();
  *(self + OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle) = 0;
  *(self + OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle) = 0;
  *(self + OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption) = 3;
  v7 = (self + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
  *v7 = 0;
  v7[1] = 0;
  *(self + OBJC_IVAR___WiFiPickerConfiguration_Swift_networks) = v6;
  *(self + OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork) = a4;
  v10.receiver = self;
  v10.super_class = type metadata accessor for WiFiPickerConfiguration();
  v8 = a4;
  return [(WiFiPickerConfiguration_Swift *)&v10 init];
}

- (NSString)description
{
  v2 = self;
  sub_2740CA1C4();

  v3 = sub_2741C7E3C();

  return v3;
}

- (WiFiPickerConfiguration_Swift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end