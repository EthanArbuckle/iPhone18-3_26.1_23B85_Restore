@interface KTOptIOLogState
- (id)description;
@end

@implementation KTOptIOLogState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(KTOptIOLogState *)self uri];
  smtTimestamp = [(KTOptIOLogState *)self smtTimestamp];
  v6 = [v3 stringWithFormat:@"<KTOptIOLogState: %@ smtTimestamp: %@ state: %d>", v4, smtTimestamp, -[KTOptIOLogState optIn](self, "optIn")];

  return v6;
}

@end