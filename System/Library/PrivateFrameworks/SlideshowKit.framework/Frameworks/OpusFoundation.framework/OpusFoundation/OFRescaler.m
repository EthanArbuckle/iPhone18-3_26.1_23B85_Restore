@interface OFRescaler
- (OFRescaler)initWithSegments:(id)a3;
- (double)computeSegmentDurations:(double *)a3 forSpeedFactor:(double)a4;
- (double)computeSegmentDurations:(double *)a3 forTotalDuration:(double)a4;
- (void)dealloc;
@end

@implementation OFRescaler

- (OFRescaler)initWithSegments:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = OFRescaler;
  v4 = [(OFRescaler *)&v42 init];
  if (v4)
  {
    v4->_segments = [a3 copy];
    objc_opt_class();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v39;
      __asm { FMOV            V0.2D, #-1.0 }

      v37 = _Q0;
      do
      {
        v13 = 0;
        do
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v38 + 1) + 8 * v13);
          if (objc_opt_isKindOfClass())
          {
            v15 = v14[1];
            v16 = v14[2];
            v17 = v14[3];
            v18 = v14[4];
            v19 = v14[5];
          }

          else
          {
            [v14 defaultDuration];
            v15 = v20;
            [v14 minimumDuration];
            v16 = v21;
            [v14 maximumDuration];
            v17 = v22;
            [v14 compressibility];
            v18 = v23;
            [v14 expandability];
          }

          v24 = v16 + v4->_minimumDuration;
          v4->_defaultDuration = v15 + v4->_defaultDuration;
          v4->_minimumDuration = v24;
          v4->_maximumDuration = v17 + v4->_maximumDuration;
          if (v18 > 0.0)
          {
            sharedCompressibility1 = v4->_sharedCompressibility1;
            if (sharedCompressibility1 == 0.0)
            {
              v4->_sharedCompressibility1 = v18;
              v26 = v15 - v16;
LABEL_15:
              v4->_compressibility1Weight = v26;
              goto LABEL_16;
            }

            if (v18 == sharedCompressibility1)
            {
              v26 = v15 - v16 + v4->_compressibility1Weight;
              goto LABEL_15;
            }

            sharedCompressibility2 = v4->_sharedCompressibility2;
            if (sharedCompressibility2 == 0.0)
            {
              if (v18 == sharedCompressibility1 + sharedCompressibility1)
              {
                v4->_sharedCompressibility2 = v18;
                v30 = v15 - v16;
LABEL_32:
                v4->_compressibility2Weight = v30;
                goto LABEL_16;
              }

              if (v18 == sharedCompressibility1 * 0.5)
              {
                compressibility1Weight = v4->_compressibility1Weight;
                v4->_sharedCompressibility1 = v18;
                v4->_sharedCompressibility2 = sharedCompressibility1;
                v4->_compressibility1Weight = v15 - v16;
                v4->_compressibility2Weight = compressibility1Weight;
              }

              else
              {
                v4->_sharedCompressibility1 = -1.0;
                v4->_compressibility1Weight = -1.0;
              }
            }

            else
            {
              if (v18 == sharedCompressibility2)
              {
                v30 = v15 - v16 + v4->_compressibility2Weight;
                goto LABEL_32;
              }

              *&v4->_sharedCompressibility1 = v37;
              *&v4->_compressibility1Weight = v37;
            }
          }

LABEL_16:
          if (v19 <= 0.0)
          {
            goto LABEL_22;
          }

          sharedExpandability1 = v4->_sharedExpandability1;
          if (sharedExpandability1 == 0.0)
          {
            v4->_sharedExpandability1 = v19;
            v28 = v15 - v17;
LABEL_21:
            v4->_expandability1Weight = v28;
            goto LABEL_22;
          }

          if (v19 == sharedExpandability1)
          {
            v28 = v15 - v17 + v4->_expandability1Weight;
            goto LABEL_21;
          }

          sharedExpandability2 = v4->_sharedExpandability2;
          if (sharedExpandability2 == 0.0)
          {
            if (v19 == sharedExpandability1 + sharedExpandability1)
            {
              v4->_sharedExpandability2 = v19;
              v32 = v15 - v17;
LABEL_35:
              v4->_expandability2Weight = v32;
              goto LABEL_22;
            }

            if (v19 == sharedExpandability1 * 0.5)
            {
              expandability1Weight = v4->_expandability1Weight;
              v4->_sharedExpandability1 = v19;
              v4->_sharedExpandability2 = sharedExpandability1;
              v4->_expandability1Weight = v15 - v17;
              v4->_expandability2Weight = expandability1Weight;
            }

            else
            {
              v4->_sharedExpandability1 = -1.0;
              v4->_expandability1Weight = -1.0;
            }
          }

          else
          {
            if (v19 == sharedExpandability2)
            {
              v32 = v15 - v17 + v4->_expandability2Weight;
              goto LABEL_35;
            }

            *&v4->_sharedExpandability1 = v37;
            *&v4->_expandability1Weight = v37;
          }

LABEL_22:
          ++v13;
        }

        while (v6 != v13);
        v35 = [a3 countByEnumeratingWithState:&v38 objects:v43 count:16];
        v6 = v35;
      }

      while (v35);
    }
  }

  return v4;
}

- (void)dealloc
{
  segments = self->_segments;
  if (segments)
  {

    self->_segments = 0;
  }

  v4.receiver = self;
  v4.super_class = OFRescaler;
  [(OFRescaler *)&v4 dealloc];
}

- (double)computeSegmentDurations:(double *)a3 forTotalDuration:(double)a4
{
  minimumDuration = self->_minimumDuration;
  if (minimumDuration <= a4)
  {
    minimumDuration = a4;
    if (self->_maximumDuration < a4)
    {
      minimumDuration = self->_maximumDuration;
    }
  }

  defaultDuration = self->_defaultDuration;
  if (minimumDuration == defaultDuration)
  {
    segments = self->_segments;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__OFRescaler_computeSegmentDurations_forTotalDuration___block_invoke_3;
    v17[3] = &__block_descriptor_40_e38_v32__0___OFRescalableSegment__8Q16_B24l;
    v17[4] = a3;
    [(NSArray *)segments enumerateObjectsUsingBlock:v17];
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = minimumDuration - defaultDuration;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = self->_segments;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__OFRescaler_computeSegmentDurations_forTotalDuration___block_invoke;
    v25[3] = &unk_279C89DB8;
    v26 = minimumDuration > defaultDuration;
    v25[5] = &v27;
    v25[6] = a3;
    v25[4] = &v31;
    [(NSArray *)v8 enumerateObjectsUsingBlock:v25];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    do
    {
      if (v28[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v9 = [(NSArray *)self->_segments objectAtIndexedSubscript:?];
      if (minimumDuration <= defaultDuration)
      {
        [v9 compressibility];
      }

      else
      {
        [v9 expandability];
      }

      v11 = v10 * v36[3];
      v12 = v32[3];
      v28[3] = 0x7FFFFFFFFFFFFFFFLL;
      v13 = *(v22 + 24);
      *(v22 + 24) = 1;
      v14 = self->_segments;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __55__OFRescaler_computeSegmentDurations_forTotalDuration___block_invoke_2;
      v18[3] = &unk_279C89DE0;
      v19 = minimumDuration > defaultDuration;
      *&v18[9] = v11 / v12;
      *&v18[10] = v10;
      v18[4] = &v35;
      v18[5] = &v31;
      v18[6] = &v21;
      v20 = v13;
      v18[7] = &v27;
      v18[8] = a3;
      [(NSArray *)v14 enumerateObjectsUsingBlock:v18];
    }

    while ((v13 & 1) == 0);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
  }

  return minimumDuration;
}

uint64_t __55__OFRescaler_computeSegmentDurations_forTotalDuration___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 defaultDuration];
  v7 = v6;
  if (*(a1 + 56) == 1)
  {
    result = [a2 maximumDuration];
    v10 = v9 <= v7;
    v11 = -1.0;
    if (v10)
    {
      v11 = v7;
    }

    *(*(a1 + 48) + 8 * a3) = v11;
    if (!v10)
    {
LABEL_12:
      if (*(a1 + 56) == 1)
      {
        result = [a2 expandability];
      }

      else
      {
        result = [a2 compressibility];
      }

      *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + v15 * v7;
      v16 = *(*(a1 + 40) + 8);
      if (*(v16 + 24) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v16 + 24) = a3;
      }
    }
  }

  else
  {
    result = [a2 minimumDuration];
    v13 = v12 < v7;
    v14 = -1.0;
    if (!v13)
    {
      v14 = v7;
    }

    *(*(a1 + 48) + 8 * a3) = v14;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t __55__OFRescaler_computeSegmentDurations_forTotalDuration___block_invoke_2(uint64_t result, void *a2, uint64_t a3)
{
  if (*(*(result + 64) + 8 * a3) < 0.0)
  {
    v5 = result;
    v6 = *(result + 72);
    if (*(result + 88) == 1)
    {
      [a2 expandability];
    }

    else
    {
      [a2 compressibility];
    }

    v8 = v6 * v7 / *(v5 + 80);
    [a2 defaultDuration];
    v10 = v9 * (v8 + 1.0);
    if (*(v5 + 88) == 1)
    {
      result = [a2 maximumDuration];
      if (v10 > v11)
      {
        v12 = v11;
        [a2 defaultDuration];
        v14 = v13;
        *(*(v5 + 64) + 8 * a3) = v12;
        *(*(*(v5 + 32) + 8) + 24) = *(*(*(v5 + 32) + 8) + 24) - (v12 - v13);
        result = [a2 expandability];
LABEL_10:
        *(*(*(v5 + 40) + 8) + 24) = *(*(*(v5 + 40) + 8) + 24) - v15 * v14;
        *(*(*(v5 + 48) + 8) + 24) = 0;
        return result;
      }
    }

    else
    {
      result = [a2 minimumDuration];
      if (v10 < v16)
      {
        v17 = v16;
        [a2 defaultDuration];
        v14 = v18;
        *(*(v5 + 64) + 8 * a3) = v17;
        *(*(*(v5 + 32) + 8) + 24) = *(*(*(v5 + 32) + 8) + 24) - (v17 - v18);
        result = [a2 compressibility];
        goto LABEL_10;
      }
    }

    if (*(v5 + 89) == 1)
    {
      *(*(v5 + 64) + 8 * a3) = v10;
    }

    else
    {
      v19 = *(*(v5 + 56) + 8);
      if (*(v19 + 24) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v19 + 24) = a3;
      }
    }
  }

  return result;
}

uint64_t __55__OFRescaler_computeSegmentDurations_forTotalDuration___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 defaultDuration];
  *(*(a1 + 32) + 8 * a3) = v6;
  return result;
}

- (double)computeSegmentDurations:(double *)a3 forSpeedFactor:(double)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  segments = self->_segments;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__OFRescaler_computeSegmentDurations_forSpeedFactor___block_invoke;
  v7[3] = &unk_279C89E28;
  *&v7[5] = a4;
  v7[6] = a3;
  v7[4] = &v8;
  [(NSArray *)segments enumerateObjectsUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

double __53__OFRescaler_computeSegmentDurations_forSpeedFactor___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  [a2 defaultDuration];
  v8 = v7 * *(a1 + 40);
  if (v6 >= 1.0)
  {
    [a2 maximumDuration];
    if (v8 <= v9)
    {
      v9 = v8;
    }
  }

  else
  {
    [a2 minimumDuration];
    if (v8 >= v9)
    {
      v9 = v8;
    }
  }

  *(*(a1 + 48) + 8 * a3) = v9;
  v10 = *(*(a1 + 32) + 8);
  result = v9 + *(v10 + 24);
  *(v10 + 24) = result;
  return result;
}

@end