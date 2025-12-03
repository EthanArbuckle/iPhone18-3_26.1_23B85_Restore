@interface PTHandGesture
+ (id)gestureTypeToString:(unsigned int)string;
- (CGRect)boundingBox;
- (PTHandGesture)initWithType:(unsigned int)type chirality:(unsigned int)chirality boundingBox:(CGRect)box confidence:(id)confidence personID:(id)d handID:(id)iD;
- (PTHandGesture)initWithVCPHandObservation:(id)observation;
@end

@implementation PTHandGesture

- (PTHandGesture)initWithVCPHandObservation:(id)observation
{
  observationCopy = observation;
  v25.receiver = self;
  v25.super_class = PTHandGesture;
  v5 = [(PTHandGesture *)&v25 init];
  if (v5)
  {
    [observationCopy bounds];
    v5->_boundingBox.origin.x = v6;
    v5->_boundingBox.origin.y = v7;
    v5->_boundingBox.size.width = v8;
    v5->_boundingBox.size.height = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(observationCopy, "groupID")}];
    personID = v5->_personID;
    v5->_personID = v10;

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(observationCopy, "handID")}];
    handID = v5->_handID;
    v5->_handID = v12;

    v14 = MEMORY[0x277CCABB0];
    [observationCopy gestureConfidence];
    v15 = [v14 numberWithFloat:?];
    confidence = v5->_confidence;
    v5->_confidence = v15;

    keypoints = [observationCopy keypoints];
    handKeypoints = v5->_handKeypoints;
    v5->_handKeypoints = keypoints;

    v5->_type = 0;
    v19 = [observationCopy gestureType] - 2;
    if (v19 <= 0xF && ((0xBCE1u >> v19) & 1) != 0)
    {
      v5->_type = dword_2244C5FA8[v19];
    }

    v20 = [observationCopy chirality] + 1;
    if (v20 <= 2)
    {
      v5->_handChirality = dword_2244C5FE8[v20];
    }

    mitigationType = [observationCopy mitigationType];
    if (mitigationType > 15)
    {
      if (mitigationType <= 63)
      {
        if (mitigationType == 16)
        {
          v22 = 5;
          goto LABEL_30;
        }

        if (mitigationType == 32)
        {
          v22 = 6;
          goto LABEL_30;
        }
      }

      else
      {
        switch(mitigationType)
        {
          case 0x40:
            v22 = 7;
            goto LABEL_30;
          case 0x80:
            v22 = 8;
            goto LABEL_30;
          case 0x4000:
            v22 = 9;
            goto LABEL_30;
        }
      }
    }

    else if (mitigationType <= 1)
    {
      if (!mitigationType)
      {
        v22 = 0;
        goto LABEL_30;
      }

      if (mitigationType == 1)
      {
        v22 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      switch(mitigationType)
      {
        case 2:
          v22 = 2;
          goto LABEL_30;
        case 4:
          v22 = 3;
          goto LABEL_30;
        case 8:
          v22 = 4;
LABEL_30:
          v5->_fpMitigation = v22;
          break;
      }
    }

    v23 = v5;
  }

  return v5;
}

- (PTHandGesture)initWithType:(unsigned int)type chirality:(unsigned int)chirality boundingBox:(CGRect)box confidence:(id)confidence personID:(id)d handID:(id)iD
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  confidenceCopy = confidence;
  dCopy = d;
  iDCopy = iD;
  v24.receiver = self;
  v24.super_class = PTHandGesture;
  v20 = [(PTHandGesture *)&v24 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = 0;
    v20->_handChirality = chirality;
    objc_storeStrong(&v20->_confidence, confidence);
    v21->_boundingBox.origin.x = x;
    v21->_boundingBox.origin.y = y;
    v21->_boundingBox.size.width = width;
    v21->_boundingBox.size.height = height;
    objc_storeStrong(&v21->_personID, d);
    objc_storeStrong(&v21->_handID, iD);
    v22 = v21;
  }

  return v21;
}

+ (id)gestureTypeToString:(unsigned int)string
{
  if (string > 9)
  {
    return @"Undefined";
  }

  else
  {
    return off_2785236C0[string];
  }
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end