@interface _PSFeedbackUtils
+ (id)feedbackPayloadWithIndex:(id)index reasonType:(id)type reason:(id)reason sourceBundleId:(id)id transportBundleId:(id)bundleId numberOfVisibleSuggestions:(id)suggestions sessionId:(id)sessionId delay:(id)self0 testEvent:(id)self1 iCloudFamilyInvocation:(id)self2 engagementType:(int64_t)self3 trialID:(id)self4;
@end

@implementation _PSFeedbackUtils

+ (id)feedbackPayloadWithIndex:(id)index reasonType:(id)type reason:(id)reason sourceBundleId:(id)id transportBundleId:(id)bundleId numberOfVisibleSuggestions:(id)suggestions sessionId:(id)sessionId delay:(id)self0 testEvent:(id)self1 iCloudFamilyInvocation:(id)self2 engagementType:(int64_t)self3 trialID:(id)self4
{
  indexCopy = index;
  typeCopy = type;
  reasonCopy = reason;
  idCopy = id;
  bundleIdCopy = bundleId;
  suggestionsCopy = suggestions;
  sessionIdCopy = sessionId;
  delayCopy = delay;
  v24 = MEMORY[0x1E695DF90];
  dCopy = d;
  invocationCopy = invocation;
  v26 = indexCopy;
  eventCopy = event;
  dictionary = [v24 dictionary];
  v54 = v26;
  v29 = reasonCopy;
  if ([v26 integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {
    null = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null forKeyedSubscript:@"indexSelected"];
  }

  else
  {
    [dictionary setObject:v26 forKeyedSubscript:@"indexSelected"];
  }

  v31 = [dictionary objectForKeyedSubscript:{@"indexSelected", invocationCopy}];
  null2 = [MEMORY[0x1E695DFB0] null];

  if (v31 == null2)
  {
    v33 = v29;
    if (([typeCopy containsString:@"PS Rewrite"] & 1) != 0 || objc_msgSend(typeCopy, "containsString:", @"PS Legacy"))
    {
      v34 = idCopy;
      if (typeCopy)
      {
        [dictionary setObject:typeCopy forKeyedSubscript:@"reasonType"];
      }

      else
      {
        null3 = [MEMORY[0x1E695DFB0] null];
        [dictionary setObject:null3 forKeyedSubscript:@"reasonType"];
      }

      v36 = bundleIdCopy;
      v39 = suggestionsCopy;
      if (v33)
      {
        [dictionary setObject:v33 forKeyedSubscript:@"reason"];
        if (v34)
        {
          goto LABEL_25;
        }
      }

      else
      {
        null4 = [MEMORY[0x1E695DFB0] null];
        [dictionary setObject:null4 forKeyedSubscript:@"reason"];

        if (v34)
        {
          goto LABEL_25;
        }
      }

LABEL_20:
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"sourceBundleID"];

      if (v36)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    null6 = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null6 forKeyedSubscript:@"reason"];

    null7 = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null7 forKeyedSubscript:@"reasonType"];

    v34 = idCopy;
    v36 = bundleIdCopy;
  }

  else
  {
    v33 = v29;
    if (typeCopy)
    {
      [dictionary setObject:typeCopy forKeyedSubscript:@"reasonType"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"reasonType"];
    }

    v34 = idCopy;
    v36 = bundleIdCopy;
    if (v33)
    {
      [dictionary setObject:v33 forKeyedSubscript:@"reason"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"reason"];
    }
  }

  v39 = suggestionsCopy;
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_25:
  [dictionary setObject:v34 forKeyedSubscript:@"sourceBundleID"];
  if (v36)
  {
LABEL_26:
    [dictionary setObject:v36 forKeyedSubscript:@"transportBundleID"];
    if (v39)
    {
      goto LABEL_27;
    }

LABEL_22:
    null10 = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null10 forKeyedSubscript:@"numberOfVisibleSuggestions"];

    goto LABEL_28;
  }

LABEL_21:
  null11 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null11 forKeyedSubscript:@"transportBundleID"];

  if (!v39)
  {
    goto LABEL_22;
  }

LABEL_27:
  [dictionary setObject:v39 forKeyedSubscript:@"numberOfVisibleSuggestions"];
LABEL_28:
  if (sessionIdCopy)
  {
    [dictionary setObject:sessionIdCopy forKeyedSubscript:@"sessionID"];
    if (delayCopy)
    {
LABEL_30:
      [dictionary setObject:delayCopy forKeyedSubscript:@"delay"];
      goto LABEL_33;
    }
  }

  else
  {
    null12 = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null12 forKeyedSubscript:@"sessionID"];

    if (delayCopy)
    {
      goto LABEL_30;
    }
  }

  null13 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null13 forKeyedSubscript:@"delay"];

LABEL_33:
  [dictionary setObject:eventCopy forKeyedSubscript:@"testEvent"];

  [dictionary setObject:v52 forKeyedSubscript:@"iCloudFamilyInvocation"];
  v48 = [MEMORY[0x1E696AD98] numberWithInteger:engagementType];
  [dictionary setObject:v48 forKeyedSubscript:@"engagementType"];

  [dictionary setObject:dCopy forKeyedSubscript:@"trackingID"];
  [dictionary setObject:dCopy forKeyedSubscript:@"trialSessionID"];
  LODWORD(v48) = [dCopy isEqualToString:@"null"];

  if (v48)
  {
    v49 = MEMORY[0x1E695E110];
  }

  else
  {
    v49 = MEMORY[0x1E695E118];
  }

  [dictionary setObject:v49 forKeyedSubscript:@"inTrialSession"];

  return dictionary;
}

@end