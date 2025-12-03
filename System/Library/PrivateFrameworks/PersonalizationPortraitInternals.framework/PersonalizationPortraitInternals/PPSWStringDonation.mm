@interface PPSWStringDonation
- (PPSWStringDonation)initWithLabeledStrings:(id)strings bundleId:(id)id groupId:(id)groupId documentId:(id)documentId;
- (PPSource)source;
- (void)setSource:(id)source;
@end

@implementation PPSWStringDonation

- (PPSource)source
{
  v2 = sub_232271DCC();

  return v2;
}

- (void)setSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_232271E58(source);
}

- (PPSWStringDonation)initWithLabeledStrings:(id)strings bundleId:(id)id groupId:(id)groupId documentId:(id)documentId
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