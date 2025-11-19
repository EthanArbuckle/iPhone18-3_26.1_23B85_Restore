@interface AssessmentPayloadRecord
- (AssessmentPayloadRecord)initWithObject:(id)a3;
@end

@implementation AssessmentPayloadRecord

- (AssessmentPayloadRecord)initWithObject:(id)a3
{
  v4 = a3;
  v78.receiver = self;
  v78.super_class = AssessmentPayloadRecord;
  v5 = [(AssessmentPayloadRecord *)&v78 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = [v4 workflowID];
  if (v6)
  {
    v7 = [v4 createdAt];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 assessment];
      if (v9)
      {
        v10 = v9;
        v11 = [v4 trainingData];
        if (v11)
        {
          v12 = v11;
          v13 = [v4 trainingSignalID];
          if (v13)
          {
            v14 = v13;
            v15 = [v4 assessmentGUID];
            if (v15)
            {
              v16 = v15;
              v17 = [v4 assessmentGUIDSeeds];
              if (v17)
              {
                v18 = v17;
                v19 = [v4 trainingData];
                if (v19)
                {
                  v20 = v19;
                  v21 = [v4 trainingGUIDSeeds];
                  if (v21)
                  {
                    v77 = v21;
                    v22 = [v4 digestIndex];
                    if (v22)
                    {
                      v76 = v22;
                      v23 = [v4 bindings];
                      if (v23)
                      {
                        v74 = v23;
                        v24 = [v4 bindingsToCompare];
                        if (v24)
                        {
                          v73 = v24;
                          v25 = [v4 encryptedTSID];
                          if (v25)
                          {
                            v72 = v25;
                            v26 = [v4 encryptedAGUID];
                            v75 = v26 != 0;

                            v25 = v72;
                          }

                          else
                          {
                            v75 = 0;
                          }

                          v24 = v73;
                        }

                        else
                        {
                          v75 = 0;
                        }

                        v23 = v74;
                      }

                      else
                      {
                        v75 = 0;
                      }

                      if (v75)
                      {
                        v28 = [v4 workflowID];
                        workflowID = v5->_workflowID;
                        v5->_workflowID = v28;

                        v30 = [v4 createdAt];
                        createdAt = v5->_createdAt;
                        v5->_createdAt = v30;

                        v32 = [v4 assessment];
                        assessment = v5->_assessment;
                        v5->_assessment = v32;

                        v34 = [v4 trainingData];
                        trainingData = v5->_trainingData;
                        v5->_trainingData = v34;

                        v36 = [v4 trainingSignalID];
                        trainingSignalID = v5->_trainingSignalID;
                        v5->_trainingSignalID = v36;

                        v38 = [v4 assessmentGUID];
                        assessmentGUID = v5->_assessmentGUID;
                        v5->_assessmentGUID = v38;

                        v40 = [v4 assessmentGUIDSeeds];
                        assessmentGUIDSeeds = v5->_assessmentGUIDSeeds;
                        v5->_assessmentGUIDSeeds = v40;

                        v42 = [v4 trainingGUID];
                        trainingGUID = v5->_trainingGUID;
                        v5->_trainingGUID = v42;

                        v44 = [v4 trainingGUIDSeeds];
                        trainingGUIDSeeds = v5->_trainingGUIDSeeds;
                        v5->_trainingGUIDSeeds = v44;

                        v46 = [v4 digestIndex];
                        digestIndex = v5->_digestIndex;
                        v5->_digestIndex = v46;

                        v48 = [v4 bindings];
                        bindingsRecords = v5->_bindingsRecords;
                        v5->_bindingsRecords = v48;

                        v50 = [v4 bindingsToCompare];
                        bindingsToCompare = v5->_bindingsToCompare;
                        v5->_bindingsToCompare = v50;

                        v52 = [v4 refreshTTL];
                        refreshTTL = v5->_refreshTTL;
                        v5->_refreshTTL = v52;

                        v54 = [v4 encryptedTSID];
                        encryptedTSID = v5->_encryptedTSID;
                        v5->_encryptedTSID = v54;

                        v56 = [v4 encryptedAGUID];
                        encryptedAGUID = v5->_encryptedAGUID;
                        v5->_encryptedAGUID = v56;

                        v5->_shouldSendOTD = [v4 shouldSendOTD];
                        v58 = [v4 otdDestinationHost];
                        otdDestinationHost = v5->_otdDestinationHost;
                        v5->_otdDestinationHost = v58;

                        v60 = [v4 profileID];
                        profileID = v5->_profileID;
                        v5->_profileID = v60;

                        v62 = [v4 orderedProfileBagId];
                        orderedProfileBagId = v5->_orderedProfileBagId;
                        v5->_orderedProfileBagId = v62;

                        v64 = [v4 profileBagSetId];
                        profileBagSetId = v5->_profileBagSetId;
                        v5->_profileBagSetId = v64;

                        v66 = [v4 profileSetBagName];
                        profileSetBagName = v5->_profileSetBagName;
                        v5->_profileSetBagName = v66;

                        v68 = [v4 profileSetId];
                        profileSetId = v5->_profileSetId;
                        v5->_profileSetId = v68;

                        v70 = [v4 assessmentConfigId];
                        assessmentConfigId = v5->_assessmentConfigId;
                        v5->_assessmentConfigId = v70;

                        v6 = v5;
                        goto LABEL_26;
                      }

                      goto LABEL_25;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_25:
    v6 = 0;
  }

LABEL_26:

  return v6;
}

@end