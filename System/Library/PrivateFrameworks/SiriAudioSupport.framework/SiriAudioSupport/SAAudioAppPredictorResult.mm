@interface SAAudioAppPredictorResult
- (NSArray)disambiguateBundleIdentifiers;
- (NSString)requestId;
- (NSString)selectedBundleIdentifier;
- (SAAudioAppPredictorResult)init;
- (SAAudioAppPredictorResult)initWithRequestId:(id)id selectedBundleIdentifier:(id)identifier disambiguateBundleIdentifiers:(id)identifiers;
@end

@implementation SAAudioAppPredictorResult

- (NSString)requestId
{
  v2 = *(self + OBJC_IVAR___SAAudioAppPredictorResult_requestId);
  v3 = *(self + OBJC_IVAR___SAAudioAppPredictorResult_requestId + 8);

  v4 = sub_2664E02A8();

  return v4;
}

- (NSString)selectedBundleIdentifier
{
  if (*(self + OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier);
    v3 = *(self + OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier + 8);

    v4 = sub_2664E02A8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)disambiguateBundleIdentifiers
{
  if (*(self + OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers))
  {
    v2 = *(self + OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers);

    v3 = sub_2664E0488();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SAAudioAppPredictorResult)init
{
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

- (SAAudioAppPredictorResult)initWithRequestId:(id)id selectedBundleIdentifier:(id)identifier disambiguateBundleIdentifiers:(id)identifiers
{
  v8 = sub_2664E02C8();
  v10 = v9;
  if (!identifier)
  {
    v12 = 0;
    if (identifiers)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  identifier = sub_2664E02C8();
  v12 = v11;
  if (!identifiers)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_2664E04A8();
LABEL_6:
  v14 = (self + OBJC_IVAR___SAAudioAppPredictorResult_requestId);
  *v14 = v8;
  v14[1] = v10;
  v15 = (self + OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier);
  *v15 = identifier;
  v15[1] = v12;
  *(self + OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers) = v13;
  v17.receiver = self;
  v17.super_class = type metadata accessor for SiriAudioAppPredictorResult();
  return [(SAAudioAppPredictorResult *)&v17 init];
}

@end