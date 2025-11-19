@interface SFProximityEstimatorChannelMedian
- (id)description;
- (int)_estimateRSSIForSFBLEDevice:(id)a3;
@end

@implementation SFProximityEstimatorChannelMedian

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  v4 = [(SFProximityEstimator *)self descriptionParams];
  if (v4)
  {
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  return v3;
}

- (int)_estimateRSSIForSFBLEDevice:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 rssi];
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v6 = v5;
  v7 = [v4 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v9 = self->_channels + 8 * (Int64Ranged & 3) - (Int64Ranged & 3);
  *v9 = Int64Ranged;
  v10 = v9[4];
  v9[v10 + 1] = v6;
  if ((v10 + 1) <= 2u)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  v9[4] = v11;
  v12 = v9[5];
  if (v12 < 3)
  {
    v9[5] = v12 + 1;
  }

  v13 = &self->_channels[0].rssiValues[2];
  v14 = 0x80;
  v15 = 4;
  do
  {
    if (v13[2] >= 3u)
    {
      v16 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;
      if (v18 <= v16)
      {
        v19 = *(v13 - 2);
      }

      else
      {
        v19 = *v13;
      }

      if (v17 < v18)
      {
        v19 = *(v13 - 1);
      }

      if (v18 >= v16)
      {
        v20 = *(v13 - 2);
      }

      else
      {
        v20 = *v13;
      }

      if (v17 <= v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = *(v13 - 1);
      }

      if (v16 > v17)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      v13[3] = v22;
      if (v22 > v14)
      {
        v14 = v22;
      }
    }

    v13 += 7;
    --v15;
  }

  while (v15);
  if (v14 != 128)
  {
    v23 = v14;
    if (gLogCategory_SFProximityEstimator <= 9 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
    {
      v41 = v23;
      v26 = 0;
      rssiValues = self->_channels[0].rssiValues;
      do
      {
        v28 = &self->_channels[0].channel + 8 * v26 - v26;
        if (v28[5])
        {
          v29 = "; ";
          if (!v26)
          {
            v29 = "";
          }

          v34 = *v28;
          v35 = v28[6];
          v33 = v29;
          SNPrintF_Add();
          if (v28[5])
          {
            v30 = 0;
            do
            {
              if (v30)
              {
                v31 = ", ";
              }

              else
              {
                v31 = "";
              }

              v33 = v31;
              v34 = rssiValues[v30];
              SNPrintF_Add();
              ++v30;
            }

            while (v30 < v28[5]);
          }

          SNPrintF_Add();
        }

        ++v26;
        rssiValues += 7;
      }

      while (v26 != 4);
      v23 = v41;
      if (gLogCategory_SFProximityEstimator < 51 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
      {
        v32 = [v4 identifier];
        rssiFar = self->super._rssiFar;
        rssiImmediate = self->super._rssiImmediate;
        rssiNear = self->super._rssiNear;
        rssiEnter = self->super._rssiEnter;
        rssiExit = self->super._rssiExit;
        LogPrintF();
      }
    }
  }

  else
  {
LABEL_27:
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

@end