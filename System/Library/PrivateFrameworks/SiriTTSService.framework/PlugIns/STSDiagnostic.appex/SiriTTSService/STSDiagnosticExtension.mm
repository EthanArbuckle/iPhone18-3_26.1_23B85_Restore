@interface STSDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation STSDiagnosticExtension

- (id)attachmentList
{
  selfCopy = self;
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

- (id)attachmentsForParameters:(id)parameters
{
  if (parameters)
  {
    sub_100005A60();
  }

  selfCopy = self;
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