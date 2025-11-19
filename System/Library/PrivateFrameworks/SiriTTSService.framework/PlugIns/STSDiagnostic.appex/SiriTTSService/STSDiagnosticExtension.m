@interface STSDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation STSDiagnosticExtension

- (id)attachmentList
{
  v2 = self;
  v3 = sub_10000107C();

  if (v3)
  {
    v4.super.isa = sub_100005AA0().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    sub_100005A60();
  }

  v4 = self;
  v5 = sub_100005614();

  if (v5)
  {
    v6.super.isa = sub_100005AA0().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

@end