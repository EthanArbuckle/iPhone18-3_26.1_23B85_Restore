@interface OKPanGenerator
- (CGRect)_frameWithAspectRatio:(double)a3 forFittingMode:(unint64_t)a4 andAnchorPoint:(CGPoint)a5;
- (CGRect)_fullROI;
- (CGRect)referenceFrame;
- (OKPanGenerator)initWithAspectRatio:(double)a3;
- (id)_panStepWithRelativeFrame:(CGRect)a3 forFittingMode:(unint64_t)a4 anchorPoint:(CGPoint)a5 andExtraScale:(double)a6;
- (void)_updatePanSteps;
- (void)dealloc;
- (void)enumeratePanStepsWithBlock:(id)a3;
@end

@implementation OKPanGenerator

- (OKPanGenerator)initWithAspectRatio:(double)a3
{
  v5.receiver = self;
  v5.super_class = OKPanGenerator;
  result = [(OKPanGenerator *)&v5 init];
  if (result)
  {
    result->_mediaItemAspectRatio = a3;
  }

  return result;
}

- (void)dealloc
{
  mediaItemRegionsOfInterest = self->_mediaItemRegionsOfInterest;
  if (mediaItemRegionsOfInterest)
  {

    self->_mediaItemRegionsOfInterest = 0;
  }

  v4.receiver = self;
  v4.super_class = OKPanGenerator;
  [(OKPanGenerator *)&v4 dealloc];
}

- (CGRect)_fullROI
{
  if ([(NSArray *)self->_mediaItemRegionsOfInterest count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x4010000000;
    v17 = &unk_269F7AC9A;
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *MEMORY[0x277CBF3A0];
    v19 = v3;
    mediaItemRegionsOfInterest = self->_mediaItemRegionsOfInterest;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __26__OKPanGenerator__fullROI__block_invoke;
    v13[3] = &unk_279C90DC8;
    v13[4] = &v14;
    [(NSArray *)mediaItemRegionsOfInterest enumerateObjectsUsingBlock:v13];
    v6 = v15[4];
    v5 = v15[5];
    v8 = v15[6];
    v7 = v15[7];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v5 = 0.0;
    v7 = 1.0;
    v8 = 1.0;
    v6 = 0.0;
  }

  v9 = v6;
  v10 = v5;
  v11 = v8;
  v12 = v7;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

void __26__OKPanGenerator__fullROI__block_invoke(uint64_t a1, NSString *a2)
{
  if (CGRectEqualToRect(*(*(*(a1 + 32) + 8) + 32), *MEMORY[0x277CBF3A0]))
  {
    v5 = CGRectFromString(a2);
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);
    v6 = CGRectFromString(a2);
    v5 = CGRectUnion(v4[1], v6);
  }

  *(*(*(a1 + 32) + 8) + 32) = v5;
}

- (CGRect)_frameWithAspectRatio:(double)a3 forFittingMode:(unint64_t)a4 andAnchorPoint:(CGPoint)a5
{
  width = self->_referenceFrame.size.width;
  height = self->_referenceFrame.size.height;
  v7 = width / height;
  if (a4 == 3)
  {
    if (v7 >= 1.0)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (a4 == 2)
  {
    if (v7 > a3)
    {
LABEL_7:
      v9 = height * a3;
      v8 = self->_referenceFrame.size.height;
      goto LABEL_10;
    }

LABEL_9:
    v9 = self->_referenceFrame.size.width;
    v8 = width / a3;
    goto LABEL_10;
  }

  v8 = self->_referenceFrame.size.height;
  v9 = self->_referenceFrame.size.width;
  if (a4 == 1)
  {
    if (v7 >= a3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_10:
  v10 = a5.x * (width - v9);
  v11 = a5.y * (height - v8);
  v12 = v9;
  result.size.height = v8;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)_panStepWithRelativeFrame:(CGRect)a3 forFittingMode:(unint64_t)a4 anchorPoint:(CGPoint)a5 andExtraScale:(double)a6
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21[2] = *MEMORY[0x277D85DE8];
  [(OKPanGenerator *)self _frameWithAspectRatio:a4 forFittingMode:a3.size.width * self->_mediaItemAspectRatio / a3.size.height andAnchorPoint:a5.x, a5.y];
  v11 = self->_referenceFrame.size.width;
  v13 = v12 / (width * v11) * a6;
  v17 = v15 + v16 * 0.5 - y * self->_referenceFrame.size.height;
  v20[0] = @"center";
  v20[1] = @"scale";
  v21[0] = [MEMORY[0x277CCAE60] valueWithCGPoint:{v14 + v12 * 0.5 - x * v11, v17}];
  *&v18 = v13;
  v21[1] = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
}

- (void)_updatePanSteps
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (!self->_panSteps)
  {
    panningType = self->_panningType;
    v4 = 1;
    if (panningType <= 8)
    {
      if (panningType <= 3)
      {
        if ((panningType - 1) >= 3)
        {
          return;
        }

        v63[0] = [(OKPanGenerator *)self _panStepWithRelativeFrame:0.0 forFittingMode:0.0 andAnchorPoint:1.0, 1.0, 0.5, 0.5];
        v16 = MEMORY[0x277CBEA60];
        v17 = v63;
      }

      else
      {
        if ((panningType - 4) >= 3)
        {
          if (panningType != 7)
          {
            if (panningType != 8)
            {
              return;
            }

            v4 = 2;
          }

          goto LABEL_31;
        }

        [(OKPanGenerator *)self _fullROI];
        v5 = self->_panningType - 1;
        if (v5 > 0x11)
        {
          v6 = 0;
        }

        else
        {
          v6 = qword_269F6B050[v5];
        }

        v62 = [OKPanGenerator _panStepWithRelativeFrame:"_panStepWithRelativeFrame:forFittingMode:andAnchorPoint:" forFittingMode:v6 andAnchorPoint:?];
        v16 = MEMORY[0x277CBEA60];
        v17 = &v62;
      }
    }

    else
    {
      if (panningType <= 13)
      {
        if (panningType > 11)
        {
          if (panningType == 12)
          {
            v4 = 2;
          }

          else
          {
            v4 = 3;
          }
        }

        else
        {
          if ((panningType - 9) < 2)
          {
            v4 = 3;
LABEL_31:
            v60[0] = [(OKPanGenerator *)self _panStepWithRelativeFrame:v4 forFittingMode:0.0 andAnchorPoint:0.0, 1.0, 1.0, 0.0, 0.0];
            v18 = self->_panningType - 1;
            if (v18 > 0x11)
            {
              v19 = 0;
            }

            else
            {
              v19 = qword_269F6B050[v18];
            }

            v60[1] = [(OKPanGenerator *)self _panStepWithRelativeFrame:v19 forFittingMode:0.0 andAnchorPoint:0.0, 1.0, 1.0, 1.0, 1.0];
            v16 = MEMORY[0x277CBEA60];
            v17 = v60;
LABEL_77:
            v20 = 2;
            goto LABEL_78;
          }

          if (panningType != 11)
          {
            return;
          }
        }

        v61[0] = [(OKPanGenerator *)self _panStepWithRelativeFrame:v4 forFittingMode:0.0 andAnchorPoint:0.0, 1.0, 1.0, 0.5, 0.5];
        [(OKPanGenerator *)self _fullROI];
        v43 = self->_panningType - 1;
        if (v43 > 0x11)
        {
          v44 = 0;
        }

        else
        {
          v44 = qword_269F6B050[v43];
        }

        v61[1] = [OKPanGenerator _panStepWithRelativeFrame:"_panStepWithRelativeFrame:forFittingMode:andAnchorPoint:" forFittingMode:v44 andAnchorPoint:?];
        v16 = MEMORY[0x277CBEA60];
        v17 = v61;
        goto LABEL_77;
      }

      if ((panningType - 15) < 3)
      {
        randomizer = self->_randomizer;
        if ((randomizer & 0x10000) != 0)
        {
          v8 = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        if ((randomizer & 0x20000) != 0)
        {
          v9 = 1.0;
        }

        else
        {
          v9 = 0.0;
        }

        v10 = vcvtd_n_f64_u64(self->_randomizer, 0xCuLL) + 1.0;
        v11 = vcvtd_n_f64_u64(BYTE1(randomizer), 0xAuLL) + 1.0;
        if ((randomizer & 0x40000) != 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        if ((randomizer & 0x40000) != 0)
        {
          v13 = v11;
        }

        else
        {
          v13 = v10;
        }

        v58[0] = [(OKPanGenerator *)self _panStepWithRelativeFrame:panningType - 14 forFittingMode:0.0 anchorPoint:0.0 andExtraScale:1.0, 1.0, v8, v9, v13];
        v14 = self->_panningType - 1;
        if (v14 > 0x11)
        {
          v15 = 0;
        }

        else
        {
          v15 = qword_269F6B050[v14];
        }

        v58[1] = [(OKPanGenerator *)self _panStepWithRelativeFrame:v15 forFittingMode:0.0 anchorPoint:0.0 andExtraScale:1.0, 1.0, 1.0 - v8, 1.0 - v9, v12];
        self->_panSteps = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
LABEL_45:
        if ([(NSArray *)self->_mediaItemRegionsOfInterest count])
        {
          width = self->_referenceFrame.size.width;
          height = self->_referenceFrame.size.height;
          mediaItemAspectRatio = self->_mediaItemAspectRatio;
          if (mediaItemAspectRatio >= width / height)
          {
            width = width * mediaItemAspectRatio;
          }

          else
          {
            height = width / mediaItemAspectRatio;
          }

          [(OKPanGenerator *)self _fullROI];
          v29 = width * v28;
          v30 = height * (1.0 - (v26 + v27));
          v32 = self->_referenceFrame.size.width;
          v33 = self->_referenceFrame.size.height;
          v34 = (width - v32) * 0.5;
          v35 = (height - v33) * 0.5;
          v36 = v34 - (v29 - (v32 - width * v31) * 0.5);
          v37 = v35 - (v30 - (v33 - height * v27) * 0.5);
          if (v34 >= 0.0)
          {
            v38 = (width - v32) * 0.5;
          }

          else
          {
            v38 = 0.0;
          }

          if (v36 > v38 || (v38 = -v38, v36 < v38))
          {
            v36 = v38;
          }

          if (v35 < 0.0)
          {
            v35 = 0.0;
          }

          if (v37 > v35 || (v35 = -v35, v37 < v35))
          {
            v37 = v35;
          }

          v39 = v36 + v32 * 0.5;
          v40 = v37 + v33 * 0.5;
          v55[0] = @"center";
          v55[1] = @"scale";
          v56[0] = [MEMORY[0x277CCAE60] valueWithCGPoint:{v39, v40}];
          HIDWORD(v41) = HIDWORD(kOKPanningDefaultFromScale);
          *&v41 = *&kOKPanningDefaultFromScale;
          v56[1] = [MEMORY[0x277CCABB0] numberWithFloat:v41];
          v57[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
          v53[0] = @"center";
          v53[1] = @"scale";
          v54[0] = [MEMORY[0x277CCAE60] valueWithCGPoint:{v39, v40}];
          HIDWORD(v42) = HIDWORD(kOKPanningDefaultToScale);
          *&v42 = *&kOKPanningDefaultToScale;
          v54[1] = [MEMORY[0x277CCABB0] numberWithFloat:v42];
          v57[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
          v16 = MEMORY[0x277CBEA60];
          v17 = v57;
        }

        else
        {
          v24 = self->_panningType - 1;
          if (v24 > 0x11)
          {
            v25 = 0;
          }

          else
          {
            v25 = qword_269F6B050[v24];
          }

          v52[0] = [(OKPanGenerator *)self _panStepWithRelativeFrame:v25 forFittingMode:0.0 anchorPoint:0.0 andExtraScale:1.0, 1.0, 0.5, 0.5, *&kOKPanningDefaultFromScale];
          v47 = self->_panningType - 1;
          if (v47 > 0x11)
          {
            v48 = 0;
          }

          else
          {
            v48 = qword_269F6B050[v47];
          }

          v52[1] = [(OKPanGenerator *)self _panStepWithRelativeFrame:v48 forFittingMode:0.0 anchorPoint:0.0 andExtraScale:1.0, 1.0, 0.5, 0.5, *&kOKPanningDefaultToScale];
          v16 = MEMORY[0x277CBEA60];
          v17 = v52;
        }

        goto LABEL_77;
      }

      if (panningType != 14)
      {
        if (panningType != 18)
        {
          return;
        }

        goto LABEL_45;
      }

      if ([(NSArray *)self->_mediaItemRegionsOfInterest count])
      {
        v45 = [MEMORY[0x277CBEB18] array];
        mediaItemRegionsOfInterest = self->_mediaItemRegionsOfInterest;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __33__OKPanGenerator__updatePanSteps__block_invoke;
        v51[3] = &unk_279C90DF0;
        v51[4] = v45;
        v51[5] = self;
        [(NSArray *)mediaItemRegionsOfInterest enumerateObjectsUsingBlock:v51];
LABEL_79:
        self->_panSteps = v45;
        return;
      }

      v49 = self->_panningType - 1;
      if (v49 > 0x11)
      {
        v50 = 0;
      }

      else
      {
        v50 = qword_269F6B050[v49];
      }

      v59 = [(OKPanGenerator *)self _panStepWithRelativeFrame:v50 forFittingMode:0.0 andAnchorPoint:0.0, 1.0, 1.0, 0.5, 0.5];
      v16 = MEMORY[0x277CBEA60];
      v17 = &v59;
    }

    v20 = 1;
LABEL_78:
    v45 = [v16 arrayWithObjects:v17 count:v20];
    goto LABEL_79;
  }
}

uint64_t __33__OKPanGenerator__updatePanSteps__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [a2 CGRectValue];
  v5 = *(*(a1 + 40) + 40) - 1;
  if (v5 > 0x11)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_269F6B050[v5];
  }

  v7 = [v4 _panStepWithRelativeFrame:v6 forFittingMode:? andAnchorPoint:?];

  return [v3 addObject:v7];
}

- (void)enumeratePanStepsWithBlock:(id)a3
{
  [(OKPanGenerator *)self _updatePanSteps];
  panSteps = self->_panSteps;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__OKPanGenerator_enumeratePanStepsWithBlock___block_invoke;
  v13[3] = &unk_279C90E18;
  v13[4] = a3;
  [(NSArray *)panSteps enumerateObjectsUsingBlock:v13];
  if (self->_loops && [(NSArray *)self->_panSteps count]>= 2)
  {
    v6 = [(NSArray *)self->_panSteps firstObject];
    v7 = [(NSArray *)self->_panSteps count];
    [objc_msgSend(v6 objectForKeyedSubscript:{@"center", "CGPointValue"}];
    v9 = v8;
    v11 = v10;
    [objc_msgSend(v6 objectForKeyedSubscript:{@"scale", "floatValue"}];
    (*(a3 + 2))(a3, v7, v9, v11, v12);
  }
}

uint64_t __45__OKPanGenerator_enumeratePanStepsWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  [objc_msgSend(a2 objectForKeyedSubscript:{@"center", "CGPointValue"}];
  v7 = v6;
  v9 = v8;
  [objc_msgSend(a2 objectForKeyedSubscript:{@"scale", "floatValue"}];
  v10 = *(v5 + 16);
  v11.n128_f64[0] = v12.n128_f32[0];
  v12.n128_u64[0] = v7;
  v13.n128_u64[0] = v9;

  return v10(v5, a3, v12, v13, v11);
}

- (CGRect)referenceFrame
{
  x = self->_referenceFrame.origin.x;
  y = self->_referenceFrame.origin.y;
  width = self->_referenceFrame.size.width;
  height = self->_referenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end