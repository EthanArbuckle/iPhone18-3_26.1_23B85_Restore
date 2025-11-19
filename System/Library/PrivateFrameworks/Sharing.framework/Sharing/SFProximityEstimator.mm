@interface SFProximityEstimator
+ (SFProximityEstimator)proximityEstimatorWithProximityInfo:(id)a3;
- (SFProximityEstimator)initWithProximityInfo:(id)a3;
- (id)description;
- (id)descriptionParams;
- (unsigned)updateWithSFBLEDevice:(id)a3;
@end

@implementation SFProximityEstimator

+ (SFProximityEstimator)proximityEstimatorWithProximityInfo:(id)a3
{
  v3 = a3;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v5 = off_1E78895B0;
  v6 = off_1E78895A8;
  if (Int64Ranged != 7)
  {
    v6 = off_1E78895A0;
  }

  if (Int64Ranged != 6)
  {
    v5 = v6;
  }

  v7 = [objc_alloc(*v5) initWithProximityInfo:v3];

  return v7;
}

- (SFProximityEstimator)initWithProximityInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFProximityEstimator;
  v5 = [(SFProximityEstimator *)&v8 init];
  if (v5)
  {
    v5->_rssiEnter = CFDictionaryGetInt64Ranged();
    v5->_rssiExit = CFDictionaryGetInt64Ranged();
    v5->_rssiImmediate = CFDictionaryGetInt64Ranged();
    v5->_rssiNear = CFDictionaryGetInt64Ranged();
    v5->_rssiFar = CFDictionaryGetInt64Ranged();
    v6 = v5;
  }

  return v5;
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

  return v3;
}

- (id)descriptionParams
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F1D30528];
  v4 = v3;
  if (self->_rssiEnter)
  {
    v16 = v3;
    rssiEnter = self->_rssiEnter;
    NSAppendPrintF();
    v5 = v16;

    v4 = v5;
  }

  if (self->_rssiExit)
  {
    rssiExit = self->_rssiExit;
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  if (self->_rssiImmediate)
  {
    rssiImmediate = self->_rssiImmediate;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  if (self->_rssiNear)
  {
    rssiNear = self->_rssiNear;
    NSAppendPrintF();
    v8 = v4;

    v4 = v8;
  }

  if (self->_rssiFar)
  {
    rssiFar = self->_rssiFar;
    NSAppendPrintF();
    v9 = v4;

    v4 = v9;
  }

  return v4;
}

- (unsigned)updateWithSFBLEDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 closeProximityEstimatorMedium];

  v6 = [v4 closeProximityEstimatorSmall];

  v7 = [(SFProximityEstimator *)self _estimateRSSIForSFBLEDevice:v4];
  if ((v7 & 0x80000000) == 0 && !SFDeviceIsVirtualMachine())
  {
    v8 = 0;
    goto LABEL_62;
  }

  if (v7 == [v4 rssiEstimate])
  {
    v8 = 0;
  }

  else
  {
    [v4 setRssiEstimate:v7];
    v8 = 4;
  }

  p_rssiEnter = &self->_rssiEnter;
  rssiEnter = self->_rssiEnter;
  IsVirtualMachine = SFDeviceIsVirtualMachine();
  v12 = v7 >= rssiEnter || IsVirtualMachine;
  [v4 setTriggered:v12];
  if (v12 == 1)
  {
    if (v6 == self)
    {
      if (([v4 insideSmallBubble] & 1) == 0)
      {
        [v4 setInsideSmallBubble:1];
        v8 |= 0x10u;
        if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_39;
        }
      }
    }

    else if (v5 == self)
    {
      if (([v4 insideMediumBubble] & 1) == 0)
      {
        [v4 setInsideMediumBubble:1];
        v8 |= 0x10u;
        if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_39;
        }
      }
    }

    else if (([v4 insideBubble] & 1) == 0)
    {
      [v4 setInsideBubble:1];
      v8 |= 0x10u;
      if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
      {
LABEL_39:
        v19 = *p_rssiEnter;
        v20 = v4;
        LogPrintF();
      }
    }
  }

  else
  {
    p_rssiEnter = &self->_rssiExit;
    if (v7 >= self->_rssiExit)
    {
      goto LABEL_40;
    }

    if (v6 == self)
    {
      if ([v4 insideSmallBubble])
      {
        [v4 setInsideSmallBubble:0];
        v8 |= 0x10u;
        if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_39;
        }
      }
    }

    else if (v5 == self)
    {
      if ([v4 insideMediumBubble])
      {
        [v4 setInsideMediumBubble:0];
        v8 |= 0x10u;
        if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_39;
        }
      }
    }

    else if ([v4 insideBubble])
    {
      [v4 setInsideBubble:0];
      v8 |= 0x10u;
      if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  v13 = [v4 distance];
  if (v13 != 60)
  {
    if (v13 == 20)
    {
      if (v7 < self->_rssiImmediate)
      {
        v14 = v7 <= self->_rssiFar;
        v15 = 60;
        v16 = 20;
LABEL_51:
        if (v14)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        goto LABEL_56;
      }

LABEL_54:
      v17 = 10;
      goto LABEL_56;
    }

    if (v13 == 10)
    {
      if (v7 <= self->_rssiFar)
      {
        v17 = 60;
        goto LABEL_56;
      }

      v14 = v7 <= self->_rssiNear;
      v15 = 20;
      v16 = 10;
      goto LABEL_51;
    }
  }

  if (v7 >= self->_rssiImmediate)
  {
    goto LABEL_54;
  }

  if (v7 >= self->_rssiNear)
  {
    v17 = 20;
  }

  else
  {
    v17 = 60;
  }

LABEL_56:
  if (v17 != v13)
  {
    [v4 setDistance:v17];
    if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v8 |= 2u;
  }

LABEL_62:

  return v8;
}

@end