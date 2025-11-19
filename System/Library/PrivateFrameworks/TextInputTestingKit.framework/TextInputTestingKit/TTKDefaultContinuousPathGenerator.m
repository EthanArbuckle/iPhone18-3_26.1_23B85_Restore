@interface TTKDefaultContinuousPathGenerator
+ (id)pathGeneratorWithAttributes:(id)a3;
- (CGPoint)addPoint:(CGPoint)a3 andPoint:(CGPoint)a4;
- (CGPoint)scalarMultiplyPoint:(CGPoint)a3 by:(double)a4;
- (CGPoint)subtractPoint:(CGPoint)a3 byPoint:(CGPoint)a4;
- (CGPoint)targetDeviatedNormallyFromPoint:(CGPoint)a3 withKeyWidth:(double)a4;
- (TTKDefaultContinuousPathGenerator)initWithParams:(id)a3;
- (double)randomNumberFromNormalDistribution;
- (id)boxPoint:(CGPoint)a3;
- (id)generateAngularTiming:(id)a3;
- (id)generateEquidistantTiming:(id)a3;
- (id)generateInflections:(id)a3;
- (id)generateKeyCentersFromKeys:(id)a3 string:(id)a4 layout:(id)a5;
- (id)generateKeysFromString:(id)a3 layout:(id)a4;
- (id)generatePathFromString:(id)a3 layout:(id)a4;
- (id)generatePathFromString:(id)a3 timestamp:(double)a4 duration:(double)a5 layout:(id)a6;
- (id)generatePathFromString:(id)a3 timestamp:(double)a4 layout:(id)a5;
- (id)generateTimingArray:(id)a3;
- (void)dealloc;
- (void)setRandomNumberSeed:(unsigned int)a3;
@end

@implementation TTKDefaultContinuousPathGenerator

- (id)generateEquidistantTiming:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 objectAtIndexedSubscript:0];
  [v6 getValue:&v20];

  v7 = [MEMORY[0x277CBEB18] array];
  [v7 addObject:&unk_287ED49E8];
  for (i = 1; i < [v4 count]; ++i)
  {
    v9 = [v4 objectAtIndexedSubscript:i];
    [v9 getValue:&v19];

    [(TTKDefaultContinuousPathGenerator *)self distanceBetween:v20 andPoint:v19];
    v11 = fmax(ceil(v10 / (self->_timeDelta * self->_velocity)), 4.0) + -1.0;
    v12 = v11;
    if (v11 >= 1)
    {
      v13 = 1;
      v14 = 1.0 / v11;
      do
      {
        v15 = v14 * v13;
        *&v15 = v15;
        v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
        [v7 addObject:v16];

        ++v13;
        --v12;
      }

      while (v12);
    }

    v17 = [v7 copy];
    [v5 addObject:v17];

    [v7 removeAllObjects];
    v20 = v19;
  }

  return v5;
}

- (id)generateAngularTiming:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  [(TTKDefaultContinuousPathGenerator *)self velocity];
  v50 = v6;
  timeDelta = self->_timeDelta;
  v8 = [v4 objectAtIndexedSubscript:0];
  [v8 getValue:v57];

  v9 = [MEMORY[0x277CBEB18] array];
  [v9 addObject:&unk_287ED49E8];
  v10 = ceil(2.0 / timeDelta);
  v11 = 1;
  v12 = 1.0;
  v13 = v10;
  while (v11 < [v4 count])
  {
    v14 = [v4 objectAtIndexedSubscript:v11];
    [v14 getValue:&v56];

    [(TTKDefaultContinuousPathGenerator *)self distanceBetween:*v57 andPoint:v56];
    v16 = v15;
    v18 = v10;
    if (v11 < [v4 count] - 1)
    {
      v19 = [v4 objectAtIndexedSubscript:v11 + 1];
      [v19 getValue:&v54];

      v20 = *&v56 - v57[0];
      v21 = *(&v56 + 1) - v57[1];
      v22 = v54 - *&v56;
      v23 = v55 - *(&v56 + 1);
      [(TTKDefaultContinuousPathGenerator *)self dotProduct:*&v56 - v57[0] andPoint:*(&v56 + 1) - v57[1], v54 - *&v56, v55 - *(&v56 + 1)];
      v25 = v24;
      [(TTKDefaultContinuousPathGenerator *)self dotProduct:v20 andPoint:v21, v20, v21];
      v27 = v26;
      [(TTKDefaultContinuousPathGenerator *)self dotProduct:v22 andPoint:v23, v22, v23];
      v29 = v25 / sqrt(v27 * v28);
      v17 = v50 * v29;
      if (v50 * v29 <= v10 || v29 <= 0.0)
      {
        v18 = v10;
      }

      else
      {
        v18 = v50 * v29;
      }

      v12 = 1.0;
    }

    v31 = 0;
    acceleration = self->_acceleration;
    v52 = v18 * 0.8;
    v33 = 0.0;
    while (1)
    {
      v33 = v33 + v13 * self->_timeDelta >= v16 ? v16 : v33 + v13 * self->_timeDelta;
      v34 = v33 / v16;
      *&v34 = v33 / v16;
      v35 = [MEMORY[0x277CCABB0] numberWithFloat:{v34, v17}];
      [v9 addObject:v35];

      if (vabdd_f64(v33, v16) < v12)
      {
        break;
      }

      if (v31)
      {
        if (acceleration * v13 <= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = acceleration * v13;
        }

        v31 = 1;
      }

      else
      {
        v36 = acceleration * v13;
        if (acceleration * v13 >= v50)
        {
          v36 = v50;
        }

        if (v13 < v50)
        {
          v13 = v36;
        }

        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __59__TTKDefaultContinuousPathGenerator_generateAngularTiming___block_invoke;
        v53[3] = &unk_279DA0D90;
        v53[4] = self;
        v37 = MEMORY[0x26D6C0D70](v53);
        v51 = v18;
        v38 = pow(v18 / v13, 0.2);
        v39 = self->_acceleration;
        if (v38 >= v39)
        {
          v38 = self->_acceleration;
        }

        v40 = v12 / v39;
        if (v38 <= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = v38;
        }

        v42 = v13 * self->_timeDelta;
        v43 = v42 * (1.0 - pow(v41, 6.0)) / (1.0 - v41);
        v31 = v43 >= v16 - v33;
        if (v43 >= v16 - v33)
        {
          acceleration = v37[2](v37, v16 - v33, v13, 5.0, v41);
          if (v13 * pow(acceleration, 5.0) < v52)
          {
            v44 = 5.0;
            do
            {
              v45 = self->_acceleration;
              if (acceleration >= v45 || acceleration <= 1.0 / v45)
              {
                break;
              }

              v44 = v44 + -1.0;
              acceleration = v37[2](v37, v16 - v33, v13, v44, v41);
              v46 = v13 * pow(acceleration, v44);
            }

            while (v44 > 2.0 && v46 < v52);
          }
        }

        v12 = 1.0;
        v18 = v51;
      }
    }

    v48 = [v9 copy];
    [v5 addObject:v48];

    [v9 removeAllObjects];
    *v57 = v56;
    ++v11;
  }

  return v5;
}

double __59__TTKDefaultContinuousPathGenerator_generateAngularTiming___block_invoke(uint64_t a1, double a2, double a3, double a4, long double a5)
{
  v5 = a5;
  v6 = a2 / (*(*(a1 + 32) + 112) * a3);
  v7 = 0.0;
  if (v6 > 1.0)
  {
    v8 = a4 + 1.0;
    v9 = (1.0 - pow(a5, a4 + 1.0)) / (1.0 - a5);
    v10 = v5;
    if (v9 > v6)
    {
      v10 = v5;
      do
      {
        v10 = v10 * 0.5;
      }

      while ((1.0 - pow(v10, v8)) / (1.0 - v10) > v6);
    }

    if (v9 < v6)
    {
      do
      {
        v5 = v5 + v5;
      }

      while ((1.0 - pow(v5, v8)) / (1.0 - v5) < v6);
    }

    while (1)
    {
      v7 = (v10 + v5) * 0.5;
      v11 = (1.0 - pow(v7, v8)) / (1.0 - v7);
      if (vabdd_f64(v6, v11) <= 0.0001)
      {
        break;
      }

      if (v11 > v6)
      {
        v5 = (v10 + v5) * 0.5;
      }

      else
      {
        v10 = (v10 + v5) * 0.5;
      }
    }
  }

  return v7;
}

- (id)generateTimingArray:(id)a3
{
  v4 = a3;
  if ([(NSString *)self->_touchTimingAlgorithm isEqualToString:@"ANGULAR"])
  {
    [(TTKDefaultContinuousPathGenerator *)self generateAngularTiming:v4];
  }

  else
  {
    [(TTKDefaultContinuousPathGenerator *)self generateEquidistantTiming:v4];
  }
  v5 = ;

  return v5;
}

- (id)generateInflections:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 objectAtIndex:0];
  [v6 frame];
  v64 = v7;
  [v6 frame];
  v63 = v8;
  [v6 center];
  [TTKDefaultContinuousPathGenerator targetDeviatedNormallyFromPoint:"targetDeviatedNormallyFromPoint:withKeyWidth:" withKeyWidth:?];
  v10 = v9;
  v12 = v11;
  v13 = [(TTKDefaultContinuousPathGenerator *)self boxPoint:?];
  [v5 addObject:v13];

  v14 = [v4 count];
  v15 = v14;
  if (v14 >= 2)
  {
    v16 = v14 - 1;
    v17 = 1;
    while (1)
    {
      v18 = [v4 objectAtIndex:v17];
      [v18 center];
      v20 = v19;
      v22 = v21;
      v23 = [v4 objectAtIndex:v17 - 1];
      [v23 center];
      v25 = v24;
      v27 = v26;

      if (v20 != v25 || v22 != v27)
      {
        break;
      }

      if ([(TTKDefaultContinuousPathGenerator *)self canHandleDoubleLetter])
      {
        v61 = [v5 lastObject];
        [v5 addObject:v61];
LABEL_28:
      }

      if (++v17 >= v15)
      {
        goto LABEL_30;
      }
    }

    v29 = v17 + 1;
    if (v17 + 1 < v15)
    {
      v30 = [v4 objectAtIndex:v17 + 1];
      [v30 center];
      v32 = v31;
      v34 = v33;

      if (v22 == v27 && v22 == v34 && (v25 < v20 && v20 < v32 || v25 > v20 && v20 > v32))
      {
        v35 = [v4 objectAtIndex:v17 + 1];

        [v35 center];
        v18 = v35;
        v17 = v29;
      }
    }

    [v18 center];
    [(TTKDefaultContinuousPathGenerator *)self distanceBetween:v10 andPoint:v12, v36, v37];
    v39 = v38;
    v40 = v64 * self->_fingerKeyWdithMultiple;
    if (v40 > 0.0)
    {
      [v18 frame];
      v38 = v39 + v40 + v41 * -0.5;
    }

    if (v17 == v16)
    {
      v42 = v39 + v40 * 0.75;
    }

    else
    {
      v42 = v38;
    }

    [v18 center];
    v44 = v43;
    [v18 center];
    [(TTKDefaultContinuousPathGenerator *)self targetDeviatedNormallyFromPoint:v10 + v42 * (v44 - v10) / v39 withKeyWidth:v12 + v42 * (v45 - v12) / v39, v64];
    v47 = v46;
    v49 = v48;
    if (self->_genMidPoint && v42 > v64 * self->_midPointKeyWidthMultiple)
    {
      [(TTKDefaultContinuousPathGenerator *)self randomNumberFromBetaDistribution];
      v51 = v50;
      midPointDevKeyHeightMultiple = self->_midPointDevKeyHeightMultiple;
      [(TTKDefaultContinuousPathGenerator *)self randomNumberFromBetaDistribution];
      v54 = sqrt((v47 - v10) * (v47 - v10) + (v49 - v12) * (v49 - v12));
      v55 = (v47 - v10) / v54;
      v56 = (v49 - v12) / v54;
      v57 = v63 * (midPointDevKeyHeightMultiple + midPointDevKeyHeightMultiple);
      v58 = (v49 * v56 + v55 * v47 - (v12 * v56 + v55 * v10)) * v51;
      v59 = fabs(v58);
      if (v57 >= v59)
      {
        v57 = v59;
      }

      v60 = [(TTKDefaultContinuousPathGenerator *)self boxPoint:v10 + (v57 * -0.5 + v57 * v53) * -v56 + v55 * v58, v12 + v55 * (v57 * -0.5 + v57 * v53) + v56 * v58];
      [v5 addObject:v60];
    }

    v61 = [(TTKDefaultContinuousPathGenerator *)self boxPoint:v47, v49];
    [v5 addObject:v61];
    v12 = v49;
    v10 = v47;
    goto LABEL_28;
  }

LABEL_30:

  return v5;
}

- (id)generatePathFromString:(id)a3 timestamp:(double)a4 duration:(double)a5 layout:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(TTKDefaultContinuousPathGenerator *)self generateKeysFromString:v10 layout:v11];
  if (v12)
  {
    v13 = [(TTKDefaultContinuousPathGenerator *)self generateKeyCentersFromKeys:v12 string:v10 layout:v11];
    if ([v13 count])
    {
      v14 = [(TTKDefaultContinuousPathGenerator *)self generateInflections:v12];
      v15 = [(TTKDefaultContinuousPathGenerator *)self generateTimingArray:v14];
      if (a5 == -1.0)
      {
        [(TTKDefaultContinuousPathGenerator *)self generatePathFromInflectionPoints:v14 timestamp:v15 segmentTiming:v12 keys:v10 string:v11 layout:a4];
      }

      else
      {
        [(TTKDefaultContinuousPathGenerator *)self generatePathFromInflectionPoints:v14 timestamp:v15 duration:v12 segmentTiming:v10 keys:v11 string:a4 layout:a5];
      }
      v16 = ;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)generatePathFromString:(id)a3 timestamp:(double)a4 layout:(id)a5
{
  v5 = [(TTKDefaultContinuousPathGenerator *)self generatePathFromString:a3 timestamp:a5 duration:a4 layout:-1.0];

  return v5;
}

- (id)generatePathFromString:(id)a3 layout:(id)a4
{
  v4 = [(TTKDefaultContinuousPathGenerator *)self generatePathFromString:a3 timestamp:a4 layout:0.0];

  return v4;
}

- (id)generateKeyCentersFromKeys:(id)a3 string:(id)a4 layout:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * i) center];
        v12 = [(TTKDefaultContinuousPathGenerator *)self boxPoint:?];
        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)generateKeysFromString:(id)a3 layout:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    if (v7)
    {
      v10 = 0;
      v11 = v7;
      do
      {
        v24 = [v5 characterAtIndex:v10];
        v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&v24 length:1];
        [v9 addObject:v12];

        ++v10;
      }

      while (v11 != v10);
    }

    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = *v21;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [v6 findKey:*(*(&v20 + 1) + 8 * i)];
          if (!v18)
          {

            v8 = 0;
            goto LABEL_16;
          }

          [v13 addObject:v18];
        }

        v15 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v8 = v13;
LABEL_16:
  }

  return v8;
}

- (double)randomNumberFromNormalDistribution
{
  m_normal_distribution = self->m_normal_distribution;
  if (*(m_normal_distribution + 24))
  {
    *(m_normal_distribution + 24) = 0;
    v3 = *(m_normal_distribution + 2);
  }

  else
  {
    m_generator = self->m_generator;
    do
    {
      do
      {
        v5 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(m_generator);
        v6 = (v5 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(m_generator) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v7 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(m_generator);
        v8 = (v7 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(m_generator) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v9 = v8 * v8 + v6 * v6;
      }

      while (v9 > 1.0);
    }

    while (v9 == 0.0);
    v10 = sqrt(log(v8 * v8 + v6 * v6) * -2.0 / v9);
    *(m_normal_distribution + 2) = v8 * v10;
    *(m_normal_distribution + 24) = 1;
    v3 = v6 * v10;
  }

  return *m_normal_distribution + v3 * *(m_normal_distribution + 1);
}

- (void)setRandomNumberSeed:(unsigned int)a3
{
  m_generator = self->m_generator;
  *m_generator = a3;
  for (i = 1; i != 624; ++i)
  {
    a3 = i + 1812433253 * (a3 ^ (a3 >> 30));
    m_generator[i] = a3;
  }

  *(m_generator + 312) = 0;
  [(TTKDefaultContinuousPathGenerator *)self reset];
}

- (void)dealloc
{
  m_generator = self->m_generator;
  if (m_generator)
  {
    MEMORY[0x26D6C07C0](m_generator, 0x1000C407BAC9B3ELL);
  }

  m_gamma_distribution = self->m_gamma_distribution;
  if (m_gamma_distribution)
  {
    MEMORY[0x26D6C07C0](m_gamma_distribution, 0x1000C40451B5BE8);
  }

  m_normal_distribution = self->m_normal_distribution;
  if (m_normal_distribution)
  {
    MEMORY[0x26D6C07C0](m_normal_distribution, 0x1000C4024AC2F66);
  }

  v6.receiver = self;
  v6.super_class = TTKDefaultContinuousPathGenerator;
  [(TTKDefaultContinuousPathGenerator *)&v6 dealloc];
}

- (TTKDefaultContinuousPathGenerator)initWithParams:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v47.receiver = self;
  v47.super_class = TTKDefaultContinuousPathGenerator;
  v6 = [(TTKDefaultContinuousPathGenerator *)&v47 init];
  if (v6)
  {
    v7 = [v5 objectForKey:@"GENERATE_MIDDLE_POINT"];
    v8 = v7;
    if (!v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
    }

    v6->_genMidPoint = [v8 BOOLValue];
    if (!v7)
    {
    }

    v9 = [v5 objectForKey:@"FINGER_KEY_WIDTH_MULTIPLE"];
    v10 = v9;
    if (!v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    }

    [v10 floatValue];
    v6->_fingerKeyWdithMultiple = v11;
    if (!v9)
    {
    }

    v12 = [v5 objectForKey:@"MID_POINT_KEY_WIDTH_MULTIPLE"];
    v14 = v12;
    if (!v12)
    {
      LODWORD(v13) = 3.5;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    }

    [v14 floatValue];
    v6->_midPointKeyWidthMultiple = v15;
    if (!v12)
    {
    }

    v16 = [v5 objectForKey:@"MID_POINT_DEV_KEY_HEIGHT_MULTIPLE"];
    v18 = v16;
    if (!v16)
    {
      LODWORD(v17) = 3.5;
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    }

    [v18 floatValue];
    v6->_midPointDevKeyHeightMultiple = v19;
    if (!v16)
    {
    }

    v20 = [v5 objectForKey:@"PATH_BETA_PARAMETER"];
    v22 = v20;
    if (!v20)
    {
      LODWORD(v21) = 4.0;
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    }

    [v22 floatValue];
    v6->_betaParam = v23;
    if (!v20)
    {
    }

    v24 = [v5 objectForKey:@"PATH_NORMAL_KEY_WIDTH_MULTIPLE"];
    v25 = v24;
    if (!v24)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    }

    [v25 floatValue];
    v6->_normalKeyWidthMultiple = v26;
    if (!v24)
    {
    }

    v27 = [v5 objectForKey:@"CPPATHGEN_TIME_INTERVAL"];
    v29 = v27;
    if (!v27)
    {
      LODWORD(v28) = 1034594987;
      v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    }

    [v29 floatValue];
    v6->_timeDelta = v30;
    if (!v27)
    {
    }

    v31 = [v5 objectForKey:@"CPPATHGEN_FORCE"];
    v33 = v31;
    if (!v31)
    {
      LODWORD(v32) = 1.0;
      v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
    }

    [v33 floatValue];
    v6->_force = v34;
    if (!v31)
    {
    }

    v35 = [v5 objectForKey:@"CPPATHGEN_VELOCITY"];
    v37 = v35;
    if (!v35)
    {
      LODWORD(v36) = 1129840640;
      v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    }

    [v37 floatValue];
    v6->_velocity = v38;
    if (!v35)
    {
    }

    v39 = [v5 objectForKey:@"CPPATHGEN_TIMING_ALGORITHM"];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = @"EQUIDISTANT";
    }

    objc_storeStrong(&v6->_touchTimingAlgorithm, v41);

    v42 = [v5 objectForKey:@"CPPATHGEN_ACCELERATION"];
    v44 = v42;
    if (!v42)
    {
      LODWORD(v43) = 1070386381;
      v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
    }

    [v44 floatValue];
    v6->_acceleration = v45;
    if (!v42)
    {
    }

    operator new();
  }

  return 0;
}

- (id)boxPoint:(CGPoint)a3
{
  v5 = a3;
  v3 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGPoint=dd}"];

  return v3;
}

- (CGPoint)targetDeviatedNormallyFromPoint:(CGPoint)a3 withKeyWidth:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(TTKDefaultContinuousPathGenerator *)self randomNumberFromNormalDistribution];
  v9 = v8 * a4 * self->_normalKeyWidthMultiple;
  [(TTKDefaultContinuousPathGenerator *)self randomNumberFromNormalDistribution];
  v11 = v10 * a4 * self->_normalKeyWidthMultiple;
  v12 = x + v9;
  v13 = y + v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)scalarMultiplyPoint:(CGPoint)a3 by:(double)a4
{
  v4 = a3.x * a4;
  v5 = a3.y * a4;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)addPoint:(CGPoint)a3 andPoint:(CGPoint)a4
{
  v4 = a3.x + a4.x;
  v5 = a3.y + a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)subtractPoint:(CGPoint)a3 byPoint:(CGPoint)a4
{
  v4 = a3.x - a4.x;
  v5 = a3.y - a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (id)pathGeneratorWithAttributes:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = [v4 objectForKey:@"CONTINUOUS_PATH_GENERATOR"];
  v6 = [v5 isEqualToString:@"TYPIST"];

  v7 = &off_279DA0170;
  if (!v6)
  {
    v7 = off_279DA0138;
  }

  v8 = [objc_alloc(*v7) initWithParams:v4];

  return v8;
}

@end