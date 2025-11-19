@interface TestFlightCoreUI
+ (id)generateFeedbackViewWithDelegate:(id)a3;
+ (id)generateWhatToTestViewWithDelegate:(id)a3;
- (_TtC14TestFlightCore16TestFlightCoreUI)init;
@end

@implementation TestFlightCoreUI

+ (id)generateWhatToTestViewWithDelegate:(id)a3
{
  type metadata accessor for WhatToTestViewModel();
  v3 = swift_unknownObjectRetain_n();
  sub_26D3074E4(v3);
  sub_26D3048E4(&v7);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A48));

  v5 = sub_26D30FAB8();

  swift_unknownObjectRelease();

  return v5;
}

+ (id)generateFeedbackViewWithDelegate:(id)a3
{
  v3 = type metadata accessor for FeedbackView();
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v17[-1] - v9);
  v11 = type metadata accessor for FeedbackViewModel();
  v12 = swift_unknownObjectRetain_n();
  sub_26D2F5D8C(v12);
  sub_26D2EA374(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A50);
  sub_26D2F1CD0(v10, v7);
  v13 = sub_26D2E96EC();
  v17[3] = v11;
  v17[4] = &off_287EAAC28;
  v17[0] = v13;
  v14 = sub_26D2E7A0C(v7, v17);
  swift_unknownObjectRelease();
  sub_26D3092D4(v10);

  return v14;
}

- (_TtC14TestFlightCore16TestFlightCoreUI)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TestFlightCoreUI();
  return [(TestFlightCoreUI *)&v3 init];
}

@end