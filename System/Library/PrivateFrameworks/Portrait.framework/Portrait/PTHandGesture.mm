@interface PTHandGesture
+ (id)gestureTypeToString:(unsigned int)a3;
- (CGRect)boundingBox;
- (PTHandGesture)initWithType:(unsigned int)a3 chirality:(unsigned int)a4 boundingBox:(CGRect)a5 confidence:(id)a6 personID:(id)a7 handID:(id)a8;
- (PTHandGesture)initWithVCPHandObservation:(id)a3;
@end

@implementation PTHandGesture

- (PTHandGesture)initWithVCPHandObservation:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PTHandGesture;
  v5 = [(PTHandGesture *)&v25 init];
  if (v5)
  {
    [v4 bounds];
    v5->_boundingBox.origin.x = v6;
    v5->_boundingBox.origin.y = v7;
    v5->_boundingBox.size.width = v8;
    v5->_boundingBox.size.height = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "groupID")}];
    personID = v5->_personID;
    v5->_personID = v10;

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "handID")}];
    handID = v5->_handID;
    v5->_handID = v12;

    v14 = MEMORY[0x277CCABB0];
    [v4 gestureConfidence];
    v15 = [v14 numberWithFloat:?];
    confidence = v5->_confidence;
    v5->_confidence = v15;

    v17 = [v4 keypoints];
    handKeypoints = v5->_handKeypoints;
    v5->_handKeypoints = v17;

    v5->_type = 0;
    v19 = [v4 gestureType] - 2;
    if (v19 <= 0xF && ((0xBCE1u >> v19) & 1) != 0)
    {
      v5->_type = dword_2244C5FA8[v19];
    }

    v20 = [v4 chirality] + 1;
    if (v20 <= 2)
    {
      v5->_handChirality = dword_2244C5FE8[v20];
    }

    v21 = [v4 mitigationType];
    if (v21 > 15)
    {
      if (v21 <= 63)
      {
        if (v21 == 16)
        {
          v22 = 5;
          goto LABEL_30;
        }

        if (v21 == 32)
        {
          v22 = 6;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v21)
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

    else if (v21 <= 1)
    {
      if (!v21)
      {
        v22 = 0;
        goto LABEL_30;
      }

      if (v21 == 1)
      {
        v22 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      switch(v21)
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

- (PTHandGesture)initWithType:(unsigned int)a3 chirality:(unsigned int)a4 boundingBox:(CGRect)a5 confidence:(id)a6 personID:(id)a7 handID:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = PTHandGesture;
  v20 = [(PTHandGesture *)&v24 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = 0;
    v20->_handChirality = a4;
    objc_storeStrong(&v20->_confidence, a6);
    v21->_boundingBox.origin.x = x;
    v21->_boundingBox.origin.y = y;
    v21->_boundingBox.size.width = width;
    v21->_boundingBox.size.height = height;
    objc_storeStrong(&v21->_personID, a7);
    objc_storeStrong(&v21->_handID, a8);
    v22 = v21;
  }

  return v21;
}

+ (id)gestureTypeToString:(unsigned int)a3
{
  if (a3 > 9)
  {
    return @"Undefined";
  }

  else
  {
    return off_2785236C0[a3];
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