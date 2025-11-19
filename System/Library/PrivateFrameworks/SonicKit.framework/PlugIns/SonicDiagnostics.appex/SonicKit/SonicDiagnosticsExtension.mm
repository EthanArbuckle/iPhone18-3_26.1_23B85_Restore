@interface SonicDiagnosticsExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation SonicDiagnosticsExtension

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_1000027FC();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = sub_1000013B0(v4);

  if (v6)
  {
    v7.super.isa = sub_10000283C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end