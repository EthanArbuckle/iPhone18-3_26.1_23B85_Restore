@interface PPSWStringDonation
- (PPSWStringDonation)initWithLabeledStrings:(id)a3 bundleId:(id)a4 groupId:(id)a5 documentId:(id)a6;
- (PPSource)source;
- (void)setSource:(id)a3;
@end

@implementation PPSWStringDonation

- (PPSource)source
{
  v2 = sub_232271DCC();

  return v2;
}

- (void)setSource:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232271E58(a3);
}

- (PPSWStringDonation)initWithLabeledStrings:(id)a3 bundleId:(id)a4 groupId:(id)a5 documentId:(id)a6
{
  v6 = sub_232401148();
  v7 = sub_232401178();
  v9 = v8;
  v10 = sub_232401178();
  v12 = v11;
  v13 = sub_232401178();
  return StringDonation.init(labeledStrings:bundleId:groupId:documentId:)(v6, v7, v9, v10, v12, v13, v14);
}

@end