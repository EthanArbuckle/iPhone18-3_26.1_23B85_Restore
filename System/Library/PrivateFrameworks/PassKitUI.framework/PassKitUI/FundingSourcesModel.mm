@interface FundingSourcesModel
- (void)dealloc;
- (void)didUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier;
@end

@implementation FundingSourcesModel

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_accountService);
  if (v3)
  {
    [v3 unregisterObserver_];
  }

  else
  {
    selfCopy = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for FundingSourcesModel(0);
  [(FundingSourcesModel *)&v5 dealloc];
}

- (void)didUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier
{
  sourcesCopy = sources;
  if (sources)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4E090);
    sourcesCopy = sub_1BE052744();
  }

  if (identifier)
  {
    identifier = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  sub_1BD648238(sourcesCopy, identifier, v8);
}

@end