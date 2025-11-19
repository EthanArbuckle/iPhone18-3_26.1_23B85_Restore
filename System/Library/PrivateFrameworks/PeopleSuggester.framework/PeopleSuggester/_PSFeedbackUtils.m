@interface _PSFeedbackUtils
+ (id)feedbackPayloadWithIndex:(id)a3 reasonType:(id)a4 reason:(id)a5 sourceBundleId:(id)a6 transportBundleId:(id)a7 numberOfVisibleSuggestions:(id)a8 sessionId:(id)a9 delay:(id)a10 testEvent:(id)a11 iCloudFamilyInvocation:(id)a12 engagementType:(int64_t)a13 trialID:(id)a14;
@end

@implementation _PSFeedbackUtils

+ (id)feedbackPayloadWithIndex:(id)a3 reasonType:(id)a4 reason:(id)a5 sourceBundleId:(id)a6 transportBundleId:(id)a7 numberOfVisibleSuggestions:(id)a8 sessionId:(id)a9 delay:(id)a10 testEvent:(id)a11 iCloudFamilyInvocation:(id)a12 engagementType:(int64_t)a13 trialID:(id)a14
{
  v19 = a3;
  v56 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v53 = a8;
  v55 = a9;
  v23 = a10;
  v24 = MEMORY[0x1E695DF90];
  v25 = a14;
  v51 = a12;
  v26 = v19;
  v27 = a11;
  v28 = [v24 dictionary];
  v54 = v26;
  v29 = v20;
  if ([v26 integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
    [v28 setObject:v30 forKeyedSubscript:@"indexSelected"];
  }

  else
  {
    [v28 setObject:v26 forKeyedSubscript:@"indexSelected"];
  }

  v31 = [v28 objectForKeyedSubscript:{@"indexSelected", v51}];
  v32 = [MEMORY[0x1E695DFB0] null];

  if (v31 == v32)
  {
    v33 = v29;
    if (([v56 containsString:@"PS Rewrite"] & 1) != 0 || objc_msgSend(v56, "containsString:", @"PS Legacy"))
    {
      v34 = v21;
      if (v56)
      {
        [v28 setObject:v56 forKeyedSubscript:@"reasonType"];
      }

      else
      {
        v38 = [MEMORY[0x1E695DFB0] null];
        [v28 setObject:v38 forKeyedSubscript:@"reasonType"];
      }

      v36 = v22;
      v39 = v53;
      if (v33)
      {
        [v28 setObject:v33 forKeyedSubscript:@"reason"];
        if (v34)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v40 = [MEMORY[0x1E695DFB0] null];
        [v28 setObject:v40 forKeyedSubscript:@"reason"];

        if (v34)
        {
          goto LABEL_25;
        }
      }

LABEL_20:
      v41 = [MEMORY[0x1E695DFB0] null];
      [v28 setObject:v41 forKeyedSubscript:@"sourceBundleID"];

      if (v36)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    v44 = [MEMORY[0x1E695DFB0] null];
    [v28 setObject:v44 forKeyedSubscript:@"reason"];

    v45 = [MEMORY[0x1E695DFB0] null];
    [v28 setObject:v45 forKeyedSubscript:@"reasonType"];

    v34 = v21;
    v36 = v22;
  }

  else
  {
    v33 = v29;
    if (v56)
    {
      [v28 setObject:v56 forKeyedSubscript:@"reasonType"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v28 setObject:v35 forKeyedSubscript:@"reasonType"];
    }

    v34 = v21;
    v36 = v22;
    if (v33)
    {
      [v28 setObject:v33 forKeyedSubscript:@"reason"];
    }

    else
    {
      v37 = [MEMORY[0x1E695DFB0] null];
      [v28 setObject:v37 forKeyedSubscript:@"reason"];
    }
  }

  v39 = v53;
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_25:
  [v28 setObject:v34 forKeyedSubscript:@"sourceBundleID"];
  if (v36)
  {
LABEL_26:
    [v28 setObject:v36 forKeyedSubscript:@"transportBundleID"];
    if (v39)
    {
      goto LABEL_27;
    }

LABEL_22:
    v43 = [MEMORY[0x1E695DFB0] null];
    [v28 setObject:v43 forKeyedSubscript:@"numberOfVisibleSuggestions"];

    goto LABEL_28;
  }

LABEL_21:
  v42 = [MEMORY[0x1E695DFB0] null];
  [v28 setObject:v42 forKeyedSubscript:@"transportBundleID"];

  if (!v39)
  {
    goto LABEL_22;
  }

LABEL_27:
  [v28 setObject:v39 forKeyedSubscript:@"numberOfVisibleSuggestions"];
LABEL_28:
  if (v55)
  {
    [v28 setObject:v55 forKeyedSubscript:@"sessionID"];
    if (v23)
    {
LABEL_30:
      [v28 setObject:v23 forKeyedSubscript:@"delay"];
      goto LABEL_33;
    }
  }

  else
  {
    v46 = [MEMORY[0x1E695DFB0] null];
    [v28 setObject:v46 forKeyedSubscript:@"sessionID"];

    if (v23)
    {
      goto LABEL_30;
    }
  }

  v47 = [MEMORY[0x1E695DFB0] null];
  [v28 setObject:v47 forKeyedSubscript:@"delay"];

LABEL_33:
  [v28 setObject:v27 forKeyedSubscript:@"testEvent"];

  [v28 setObject:v52 forKeyedSubscript:@"iCloudFamilyInvocation"];
  v48 = [MEMORY[0x1E696AD98] numberWithInteger:a13];
  [v28 setObject:v48 forKeyedSubscript:@"engagementType"];

  [v28 setObject:v25 forKeyedSubscript:@"trackingID"];
  [v28 setObject:v25 forKeyedSubscript:@"trialSessionID"];
  LODWORD(v48) = [v25 isEqualToString:@"null"];

  if (v48)
  {
    v49 = MEMORY[0x1E695E110];
  }

  else
  {
    v49 = MEMORY[0x1E695E118];
  }

  [v28 setObject:v49 forKeyedSubscript:@"inTrialSession"];

  return v28;
}

@end