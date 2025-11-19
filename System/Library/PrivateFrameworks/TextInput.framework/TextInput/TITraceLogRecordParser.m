@interface TITraceLogRecordParser
+ (void)parseRecord:(id)a3;
@end

@implementation TITraceLogRecordParser

+ (void)parseRecord:(id)a3
{
  v3 = a3;
  if (![v3 parsingStatus])
  {
    v4 = v3;
    v5 = [v4 logText];
    if (([v5 hasPrefix:@"Typed String:"] & 1) == 0)
    {

      v14 = 1;
LABEL_17:
      [v4 setParsingStatus:v14];
      goto LABEL_18;
    }

    v6 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v5];
    v63 = 0;
    [v6 scanUpToString:@"\n" intoString:&v63];
    v7 = v63;
    v71[0] = 0;
    v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"Typed String: (.+)  Lookup Type: (.+)" options:0 error:v71];
    v55 = v71[0];
    v9 = [v8 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
    v10 = [v9 firstObject];
    v11 = v10;
    if (v10 && [v10 numberOfRanges] != 2)
    {
      v12 = 1;
      v15 = [v11 rangeAtIndex:1];
      [v7 substringWithRange:{v15, v16}];
      v53 = v4;
      v17 = v5;
      v19 = v18 = v6;
      v20 = [v11 rangeAtIndex:2];
      v22 = [v7 substringWithRange:{v20, v21}];
      LOBYTE(v64[0]) = 1;
      v23 = v19;
      v6 = v18;
      v5 = v17;
      v4 = v53;
      v58 = v23;
      v64[1] = v23;
      v57 = v22;
      v64[2] = v57;
      v64[3] = 0;
      v13 = _recordTypeForEventRecordHeader(v64);
    }

    else
    {
      v12 = 0;
      v57 = 0;
      v58 = 0;
      v13 = 0;
    }

    if (v12)
    {
      [v4 setTypedString:v58];
      v59[0] = v12;
      v60 = v58;
      v24 = v57;
      v61 = v57;
      v62 = v13;
      v25 = _recordTypeForEventRecordHeader(v59);
      if (v25 == 3)
      {
        v56 = v7;
        v41 = MEMORY[0x1E696AE88];
        v42 = v4;
        v43 = v5;
        v44 = [[v41 alloc] initWithString:v43];

        [v44 scanUpToString:@"[" intoString:0];
        v64[0] = 0;
        [v44 scanUpToString:@"\n\n" intoString:v64];
        v45 = v64[0];
        v46 = _parseRawCandidateGroupsFromString(v45);
        [v42 setRawPredictionCandidates:v46];
        [v44 scanUpToString:@"\n[" intoString:0];
        v71[0] = v45;
        [v44 scanUpToString:@"==============================\n" intoString:v71];
        v47 = v71[0];

        _parseFinalCandidatesGroupFromString(v47);
        v49 = v48 = v6;

        [v42 setFinalPredictionCandidates:v49];
        v40 = @"predictions";
        [v42 addParsedSection:@"predictions"];

        v6 = v48;
        v24 = v57;
      }

      else
      {
        if (v25 != 1)
        {
          v14 = 1;
          goto LABEL_16;
        }

        v56 = v7;
        v26 = MEMORY[0x1E696AE88];
        v27 = v4;
        v28 = v5;
        v29 = [[v26 alloc] initWithString:v28];

        [v29 scanUpToString:@"[" intoString:0];
        v64[0] = 0;
        [v29 scanUpToString:@"\n\n" intoString:v64];
        v30 = v64[0];
        v51 = _parseRawCandidateGroupsFromString(v30);
        [v27 setRawCompletionCandidates:v51];
        v71[0] = v30;
        [v29 scanUpToString:@"\n\n" intoString:v71];
        v31 = v71[0];

        v52 = _parseRemovedCandidatesGroupFromString(v31);
        [v27 setRemovedCompletionCandidates:v52];
        [v29 scanUpToString:@"\n[" intoString:0];
        v70 = v31;
        [v29 scanUpToString:@"==============================\n" intoString:&v70];
        v32 = v70;

        v54 = _parseFinalCandidatesGroupFromString(v32);
        [v27 setFinalCompletionCandidates:v54];
        [v27 addParsedSection:@"completions"];
        v69 = v32;
        [v29 scanUpToString:@"\n" intoString:&v69];
        v33 = v69;

        v68 = v33;
        [v29 scanUpToString:@"\n" intoString:&v68];
        v34 = v68;

        [v29 scanUpToString:@"\n[" intoString:0];
        v67 = v34;
        [v29 scanUpToString:@"\n\n" intoString:&v67];
        v35 = v67;

        v50 = _parseRawCandidateGroupsFromString(v35);

        [v27 setRawAutocorrectionCandidates:v50];
        v66 = v35;
        [v29 scanUpToString:@"\n\n" intoString:&v66];
        v36 = v66;

        v37 = _parseRemovedCandidatesGroupFromString(v36);

        [v27 setRemovedAutocorrectionCandidates:v37];
        [v29 scanUpToString:@"\n[" intoString:0];
        v65 = v36;
        [v29 scanUpToString:@"==============================\n" intoString:&v65];
        v38 = v65;

        v39 = _parseFinalCandidatesGroupFromString(v38);

        [v27 setFinalAutocorrectionCandidates:v39];
        [v27 addParsedSection:@"autocorrection"];

        v40 = @"autocorrections";
      }

      [v4 setRecordType:{v40, v50}];
      v14 = 2;
      v7 = v56;
    }

    else
    {
      v14 = 1;
      v24 = v57;
    }

LABEL_16:

    goto LABEL_17;
  }

LABEL_18:
}

@end