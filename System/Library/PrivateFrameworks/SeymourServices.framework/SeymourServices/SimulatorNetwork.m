@interface SimulatorNetwork
- (_TtC15SeymourServices16SimulatorNetwork)init;
- (id)fetch:(id)a3;
@end

@implementation SimulatorNetwork

- (id)fetch:(id)a3
{
  sub_226E99364(0, &qword_27D7B92A8, 0x277CD4640);
  v4 = a3;
  v5 = sub_22766CB50();
  v6 = sub_22766CB60();

  return v6;
}

- (_TtC15SeymourServices16SimulatorNetwork)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SimulatorNetwork();
  return [(SimulatorNetwork *)&v3 init];
}

@end