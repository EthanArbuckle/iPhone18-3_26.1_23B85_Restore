@interface PredictionCluster
- (BOOL)isEqual:(id)equal;
@end

@implementation PredictionCluster

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_8;
  }

  [equalCopy visitProbability];
  v7 = v6;
  [(PredictionCluster *)self visitProbability];
  if (v7 - v8 >= 0.0001)
  {
    goto LABEL_8;
  }

  [v5 visitEntryTime];
  v10 = v9;
  [(PredictionCluster *)self visitEntryTime];
  if (v10 - v11 >= 0.0001)
  {
    goto LABEL_8;
  }

  [v5 visitEntryUnc];
  v13 = v12;
  [(PredictionCluster *)self visitEntryUnc];
  if (v13 - v14 >= 0.0001)
  {
    goto LABEL_8;
  }

  [v5 visitExitTime];
  v16 = v15;
  [(PredictionCluster *)self visitExitTime];
  if (v16 - v17 < 0.0001 && ([v5 visitExitUnc], v19 = v18, -[PredictionCluster visitExitUnc](self, "visitExitUnc"), v19 - v20 < 0.0001) && (v21 = objc_msgSend(v5, "visitLoiIdx"), v21 <= -[PredictionCluster visitLoiIdx](self, "visitLoiIdx")))
  {
    visitLoiString = [v5 visitLoiString];
    visitLoiString2 = [(PredictionCluster *)self visitLoiString];
    v22 = visitLoiString == visitLoiString2;
  }

  else
  {
LABEL_8:
    v22 = 0;
  }

  return v22;
}

@end