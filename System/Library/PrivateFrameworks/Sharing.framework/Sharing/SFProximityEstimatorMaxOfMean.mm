@interface SFProximityEstimatorMaxOfMean
- (SFProximityEstimatorMaxOfMean)initWithProximityInfo:(id)a3;
- (id)description;
- (int)_estimateRSSIForSFBLEDevice:(id)a3;
- (void)dealloc;
@end

@implementation SFProximityEstimatorMaxOfMean

- (void)dealloc
{
  channelNumberArray = self->_channelNumberArray;
  if (channelNumberArray)
  {
    free(channelNumberArray);
    self->_channelNumberArray = 0;
  }

  rssiArray = self->_rssiArray;
  if (rssiArray)
  {
    free(rssiArray);
    self->_rssiArray = 0;
  }

  v5.receiver = self;
  v5.super_class = SFProximityEstimatorMaxOfMean;
  [(SFProximityEstimatorMaxOfMean *)&v5 dealloc];
}

- (SFProximityEstimatorMaxOfMean)initWithProximityInfo:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFProximityEstimatorMaxOfMean;
  v5 = [(SFProximityEstimator *)&v16 initWithProximityInfo:v4];
  if (!v5)
  {
    goto LABEL_10;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v5->_rssiMinCount = Int64Ranged;
  if (Int64Ranged)
  {
    if (Int64Ranged < 0x41)
    {
      goto LABEL_7;
    }

    Int64Ranged = 64;
    v7 = 64;
  }

  else
  {
    v7 = 16;
    Int64Ranged = 16;
  }

  v5->_rssiMinCount = v7;
LABEL_7:
  v8 = malloc_type_calloc(Int64Ranged, 1uLL, 0x100004077774924uLL);
  v5->_channelNumberArray = v8;
  if (v8)
  {
    v9 = malloc_type_calloc(v5->_rssiMinCount, 1uLL, 0x100004077774924uLL);
    v5->_rssiArray = v9;
    if (v9)
    {
      v10 = v5;
LABEL_10:

      return v5;
    }
  }

  else
  {
    rssiMinCount = v5->_rssiMinCount;
    FatalErrorF();
  }

  v15 = v5->_rssiMinCount;
  v12 = FatalErrorF();
  return [(SFProximityEstimatorMaxOfMean *)v12 description];
}

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

  if (self->_rssiMinCount)
  {
    rssiMinCount = self->_rssiMinCount;
    NSAppendPrintF();
    v6 = v3;

    v3 = v6;
  }

  return v3;
}

- (int)_estimateRSSIForSFBLEDevice:(id)a3
{
  v57[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 rssi];
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  v6 = v5;
  rssiIndex = self->_rssiIndex;
  v8 = [v4 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  self->_channelNumberArray[rssiIndex] = Int64Ranged;
  self->_rssiArray[rssiIndex] = v6;
  if ((rssiIndex + 1) < self->_rssiMinCount)
  {
    v10 = rssiIndex + 1;
  }

  else
  {
    v10 = 0;
  }

  self->_rssiIndex = v10;
  LODWORD(v11) = self->_rssiCount;
  rssiMinCount = self->_rssiMinCount;
  if (v11 < rssiMinCount)
  {
    LODWORD(v11) = v11 + 1;
    self->_rssiCount = v11;
    rssiMinCount = self->_rssiMinCount;
  }

  if (v11 < rssiMinCount)
  {
    goto LABEL_17;
  }

  v57[0] = 0;
  v57[1] = 0;
  v56[0] = 0;
  v56[1] = 0;
  v39 = -1;
  if (v11)
  {
    channelNumberArray = self->_channelNumberArray;
    rssiArray = self->_rssiArray;
    v11 = v11;
    do
    {
      v16 = *channelNumberArray++;
      v15 = v16;
      v17 = v16 & 3;
      v18 = *rssiArray++;
      *(v57 + v17) += v18;
      ++*(v56 + v17);
      *(&v39 | v15 & 3) = v15;
      --v11;
    }

    while (v11);
  }

  v19 = 0;
  v20 = 0x80;
  do
  {
    v21 = *(v56 + v19);
    if (v21)
    {
      v22 = *(v57 + v19) / v21;
      *(v57 + v19) = v22;
      if (v22 > v20)
      {
        v20 = v22;
      }
    }

    v19 += 4;
  }

  while (v19 != 16);
  if (v20 != 128)
  {
    v23 = v20;
    if (gLogCategory_SFProximityEstimator <= 9 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
    {
      v38 = v4;
      v26 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      do
      {
        v27 = *(&v39 + v26);
        if (v27 != 255)
        {
          v31 = *(&v39 + v26);
          v32 = *(v57 + v26);
          SNPrintF_Add();
          rssiCount = self->_rssiCount;
          if (rssiCount)
          {
            for (i = 0; i < rssiCount; ++i)
            {
              if (self->_channelNumberArray[i] == v27)
              {
                v31 = self->_rssiArray[i];
                SNPrintF_Add();
                rssiCount = self->_rssiCount;
              }
            }
          }

          SNPrintF_Add();
        }

        ++v26;
      }

      while (v26 != 4);
      v4 = v38;
      if (gLogCategory_SFProximityEstimator < 51 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
      {
        v30 = [v38 identifier];
        rssiNear = self->super._rssiNear;
        rssiFar = self->super._rssiFar;
        rssiExit = self->super._rssiExit;
        rssiImmediate = self->super._rssiImmediate;
        rssiEnter = self->super._rssiEnter;
        LogPrintF();
      }
    }
  }

  else
  {
LABEL_17:
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

@end