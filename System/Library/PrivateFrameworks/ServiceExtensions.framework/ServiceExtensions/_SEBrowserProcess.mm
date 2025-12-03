@interface _SEBrowserProcess
+ ($115C4C562B26FF47E01F9F4EA65B5887)_currentAuditToken;
+ (BOOL)checkBrowserEngineEntitlementForAuditToken:(id *)token;
+ (BOOL)checkBrowserEngineEntitlementForCurrentProcess;
- (_SEBrowserProcess)init;
@end

@implementation _SEBrowserProcess

+ ($115C4C562B26FF47E01F9F4EA65B5887)_currentAuditToken
{
  v4 = sub_265750048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265750038();
  v9 = sub_265750028();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = HIDWORD(v9);
  v18 = HIDWORD(v11);
  v22 = HIDWORD(v13);
  v23 = HIDWORD(v15);
  result = (*(v5 + 8))(v8, v4);
  retstr->var0[0] = v10;
  retstr->var0[1] = v17;
  retstr->var0[2] = v12;
  retstr->var0[3] = v18;
  v21 = v22;
  v20 = v23;
  retstr->var0[4] = v14;
  retstr->var0[5] = v21;
  retstr->var0[6] = v16;
  retstr->var0[7] = v20;
  return result;
}

- (_SEBrowserProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (BOOL)checkBrowserEngineEntitlementForCurrentProcess
{
  v2 = sub_265750068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265750048();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  sub_265750038();
  (*(v3 + 104))(v6, *MEMORY[0x277D4D3A8], v2);
  v16 = sub_265750008();
  (*(v3 + 8))(v6, v2);
  if (v16)
  {
    (*(v8 + 32))(v15, v11, v7);
    v17 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v17 = 1;
  }

  v18 = type metadata accessor for _BrowserProcess(0);
  (*(*(v18 - 8) + 56))(v15, v17, 1, v18);
  sub_265747058(v15);
  return v16 & 1;
}

+ (BOOL)checkBrowserEngineEntitlementForAuditToken:(id *)token
{
  v3 = *token->var0;
  v4 = *&token->var0[2];
  v5 = *&token->var0[4];
  v6 = *&token->var0[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13[-v9];
  _BrowserProcess.init(auditToken:)(v5, v6, &v13[-v9]);
  v11 = type metadata accessor for _BrowserProcess(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_265747058(v10);
  return 1;
}

@end