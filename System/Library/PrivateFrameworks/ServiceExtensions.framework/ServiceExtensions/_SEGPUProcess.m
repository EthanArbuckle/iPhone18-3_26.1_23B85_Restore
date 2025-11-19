@interface _SEGPUProcess
- (_SEGPUProcess)init;
- (id)createVisibilityPropagationInteraction;
@end

@implementation _SEGPUProcess

- (id)createVisibilityPropagationInteraction
{
  v3 = type metadata accessor for _GPUProcess(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &atoken - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747104(self + OBJC_IVAR____SEGPUProcess_inner, v6, type metadata accessor for _GPUProcess);
  v7 = self;
  *atoken.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  atoken.val[2] = v8;
  atoken.val[3] = v9;
  atoken.val[4] = v10;
  atoken.val[5] = v11;
  atoken.val[6] = v12;
  atoken.val[7] = v13;
  v14 = audit_token_to_pid(&atoken);
  v15 = sub_2657501B8();
  v16 = [objc_opt_self() interactionWithPID:v14 environmentIdentifier:v15];

  sub_26574716C(v6, type metadata accessor for _GPUProcess);

  return v16;
}

- (_SEGPUProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end