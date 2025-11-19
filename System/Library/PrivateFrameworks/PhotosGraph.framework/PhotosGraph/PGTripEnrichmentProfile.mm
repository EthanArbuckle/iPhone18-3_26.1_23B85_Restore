@interface PGTripEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4;
- (double)promotionScoreWithHighlightInfo:(id)a3;
- (id)titleWithHighlightInfo:(id)a3 sharingFilter:(unsigned __int16)a4 curatedAssets:(id)a5 keyAsset:(id)a6 createVerboseTitle:(BOOL)a7 error:(id *)a8;
@end

@implementation PGTripEnrichmentProfile

- (double)promotionScoreWithHighlightInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 highlightNode];
  v5 = [v3 numberOfExtendedAssets];
  v6 = [v3 highlightTailorContext];

  v7 = [v6 neighborScoreComputer];
  [PGGraphHighlightNode promotionScoreWithHighlightNode:v4 enrichmentState:4 numberOfExtendedAssets:v5 neighborScoreComputer:v7];
  v9 = v8;

  return v9;
}

- (id)titleWithHighlightInfo:(id)a3 sharingFilter:(unsigned __int16)a4 curatedAssets:(id)a5 keyAsset:(id)a6 createVerboseTitle:(BOOL)a7 error:(id *)a8
{
  v9 = a3;
  v10 = [v9 highlightNode];
  v11 = [v9 highlightTailorContext];

  v12 = [v11 titleGenerationContext];
  v13 = [v12 locationHelper];
  v19 = 0;
  v14 = [PGTripTitleGenerator titleTupleForDayHighlightGroupNode:v10 locationHelper:v13 error:&v19];
  v15 = v19;

  if (v14)
  {
    v16 = v14;
  }

  else if (a8)
  {
    v17 = v15;
    *a8 = v15;
  }

  return v14;
}

- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4
{
  [a3 type];

  JUMPOUT(0x231902050);
}

@end