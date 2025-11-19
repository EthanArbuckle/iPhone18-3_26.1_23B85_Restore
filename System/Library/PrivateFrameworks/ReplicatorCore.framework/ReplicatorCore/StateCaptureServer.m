@interface StateCaptureServer
- (_TtC14ReplicatorCore18StateCaptureServer)init;
- (id)dataPathAndReturnError:(id *)a3;
- (id)stateFor:(id)a3 error:(id *)a4;
@end

@implementation StateCaptureServer

- (_TtC14ReplicatorCore18StateCaptureServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)stateFor:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = sub_2304A5D24();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = self;
  sub_230494F18(v5, v7);

  v9 = sub_2304A5D14();

  return v9;
}

- (id)dataPathAndReturnError:(id *)a3
{
  v3 = sub_2304A3FC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23048BD04(v7);
  sub_2304A3F84();
  (*(v4 + 8))(v7, v3);
  v8 = sub_2304A5D14();

  return v8;
}

@end