@interface AssessmentPayloadRecord
- (AssessmentPayloadRecord)initWithObject:(id)object;
@end

@implementation AssessmentPayloadRecord

- (AssessmentPayloadRecord)initWithObject:(id)object
{
  objectCopy = object;
  v78.receiver = self;
  v78.super_class = AssessmentPayloadRecord;
  v5 = [(AssessmentPayloadRecord *)&v78 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  workflowID = [objectCopy workflowID];
  if (workflowID)
  {
    createdAt = [objectCopy createdAt];
    if (createdAt)
    {
      v8 = createdAt;
      assessment = [objectCopy assessment];
      if (assessment)
      {
        v10 = assessment;
        trainingData = [objectCopy trainingData];
        if (trainingData)
        {
          v12 = trainingData;
          trainingSignalID = [objectCopy trainingSignalID];
          if (trainingSignalID)
          {
            v14 = trainingSignalID;
            assessmentGUID = [objectCopy assessmentGUID];
            if (assessmentGUID)
            {
              v16 = assessmentGUID;
              assessmentGUIDSeeds = [objectCopy assessmentGUIDSeeds];
              if (assessmentGUIDSeeds)
              {
                v18 = assessmentGUIDSeeds;
                trainingData2 = [objectCopy trainingData];
                if (trainingData2)
                {
                  v20 = trainingData2;
                  trainingGUIDSeeds = [objectCopy trainingGUIDSeeds];
                  if (trainingGUIDSeeds)
                  {
                    v77 = trainingGUIDSeeds;
                    digestIndex = [objectCopy digestIndex];
                    if (digestIndex)
                    {
                      v76 = digestIndex;
                      bindings = [objectCopy bindings];
                      if (bindings)
                      {
                        v74 = bindings;
                        bindingsToCompare = [objectCopy bindingsToCompare];
                        if (bindingsToCompare)
                        {
                          v73 = bindingsToCompare;
                          encryptedTSID = [objectCopy encryptedTSID];
                          if (encryptedTSID)
                          {
                            v72 = encryptedTSID;
                            encryptedAGUID = [objectCopy encryptedAGUID];
                            v75 = encryptedAGUID != 0;

                            encryptedTSID = v72;
                          }

                          else
                          {
                            v75 = 0;
                          }

                          bindingsToCompare = v73;
                        }

                        else
                        {
                          v75 = 0;
                        }

                        bindings = v74;
                      }

                      else
                      {
                        v75 = 0;
                      }

                      if (v75)
                      {
                        workflowID2 = [objectCopy workflowID];
                        workflowID = v5->_workflowID;
                        v5->_workflowID = workflowID2;

                        createdAt2 = [objectCopy createdAt];
                        createdAt = v5->_createdAt;
                        v5->_createdAt = createdAt2;

                        assessment2 = [objectCopy assessment];
                        assessment = v5->_assessment;
                        v5->_assessment = assessment2;

                        trainingData3 = [objectCopy trainingData];
                        trainingData = v5->_trainingData;
                        v5->_trainingData = trainingData3;

                        trainingSignalID2 = [objectCopy trainingSignalID];
                        trainingSignalID = v5->_trainingSignalID;
                        v5->_trainingSignalID = trainingSignalID2;

                        assessmentGUID2 = [objectCopy assessmentGUID];
                        assessmentGUID = v5->_assessmentGUID;
                        v5->_assessmentGUID = assessmentGUID2;

                        assessmentGUIDSeeds2 = [objectCopy assessmentGUIDSeeds];
                        assessmentGUIDSeeds = v5->_assessmentGUIDSeeds;
                        v5->_assessmentGUIDSeeds = assessmentGUIDSeeds2;

                        trainingGUID = [objectCopy trainingGUID];
                        trainingGUID = v5->_trainingGUID;
                        v5->_trainingGUID = trainingGUID;

                        trainingGUIDSeeds2 = [objectCopy trainingGUIDSeeds];
                        trainingGUIDSeeds = v5->_trainingGUIDSeeds;
                        v5->_trainingGUIDSeeds = trainingGUIDSeeds2;

                        digestIndex2 = [objectCopy digestIndex];
                        digestIndex = v5->_digestIndex;
                        v5->_digestIndex = digestIndex2;

                        bindings2 = [objectCopy bindings];
                        bindingsRecords = v5->_bindingsRecords;
                        v5->_bindingsRecords = bindings2;

                        bindingsToCompare2 = [objectCopy bindingsToCompare];
                        bindingsToCompare = v5->_bindingsToCompare;
                        v5->_bindingsToCompare = bindingsToCompare2;

                        refreshTTL = [objectCopy refreshTTL];
                        refreshTTL = v5->_refreshTTL;
                        v5->_refreshTTL = refreshTTL;

                        encryptedTSID2 = [objectCopy encryptedTSID];
                        encryptedTSID = v5->_encryptedTSID;
                        v5->_encryptedTSID = encryptedTSID2;

                        encryptedAGUID2 = [objectCopy encryptedAGUID];
                        encryptedAGUID = v5->_encryptedAGUID;
                        v5->_encryptedAGUID = encryptedAGUID2;

                        v5->_shouldSendOTD = [objectCopy shouldSendOTD];
                        otdDestinationHost = [objectCopy otdDestinationHost];
                        otdDestinationHost = v5->_otdDestinationHost;
                        v5->_otdDestinationHost = otdDestinationHost;

                        profileID = [objectCopy profileID];
                        profileID = v5->_profileID;
                        v5->_profileID = profileID;

                        orderedProfileBagId = [objectCopy orderedProfileBagId];
                        orderedProfileBagId = v5->_orderedProfileBagId;
                        v5->_orderedProfileBagId = orderedProfileBagId;

                        profileBagSetId = [objectCopy profileBagSetId];
                        profileBagSetId = v5->_profileBagSetId;
                        v5->_profileBagSetId = profileBagSetId;

                        profileSetBagName = [objectCopy profileSetBagName];
                        profileSetBagName = v5->_profileSetBagName;
                        v5->_profileSetBagName = profileSetBagName;

                        profileSetId = [objectCopy profileSetId];
                        profileSetId = v5->_profileSetId;
                        v5->_profileSetId = profileSetId;

                        assessmentConfigId = [objectCopy assessmentConfigId];
                        assessmentConfigId = v5->_assessmentConfigId;
                        v5->_assessmentConfigId = assessmentConfigId;

                        workflowID = v5;
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
    workflowID = 0;
  }

LABEL_26:

  return workflowID;
}

@end