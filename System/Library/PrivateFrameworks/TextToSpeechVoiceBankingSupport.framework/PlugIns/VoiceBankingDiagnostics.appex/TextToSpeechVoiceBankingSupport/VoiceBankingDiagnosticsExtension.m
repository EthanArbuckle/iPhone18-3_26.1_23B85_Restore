@interface VoiceBankingDiagnosticsExtension
- (VoiceBankingDiagnosticsExtension)init;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation VoiceBankingDiagnosticsExtension

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_100015C74();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = _s23VoiceBankingDiagnostics0abC9ExtensionC11attachments13forParametersSayypGSgSDys11AnyHashableVypGSg_tF_0(v4);

  if (v6)
  {
    v7.super.isa = sub_100015D64().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (VoiceBankingDiagnosticsExtension)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(VoiceBankingDiagnosticsExtension *)&v3 init];
}

@end