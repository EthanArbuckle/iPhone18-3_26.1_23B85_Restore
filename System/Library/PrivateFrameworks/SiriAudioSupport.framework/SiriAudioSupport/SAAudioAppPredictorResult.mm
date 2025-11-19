@interface SAAudioAppPredictorResult
- (NSArray)disambiguateBundleIdentifiers;
- (NSString)requestId;
- (NSString)selectedBundleIdentifier;
- (SAAudioAppPredictorResult)init;
- (SAAudioAppPredictorResult)initWithRequestId:(id)a3 selectedBundleIdentifier:(id)a4 disambiguateBundleIdentifiers:(id)a5;
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

- (SAAudioAppPredictorResult)initWithRequestId:(id)a3 selectedBundleIdentifier:(id)a4 disambiguateBundleIdentifiers:(id)a5
{
  v8 = sub_2664E02C8();
  v10 = v9;
  if (!a4)
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  a4 = sub_2664E02C8();
  v12 = v11;
  if (!a5)
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
  *v15 = a4;
  v15[1] = v12;
  *(self + OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers) = v13;
  v17.receiver = self;
  v17.super_class = type metadata accessor for SiriAudioAppPredictorResult();
  return [(SAAudioAppPredictorResult *)&v17 init];
}

@end