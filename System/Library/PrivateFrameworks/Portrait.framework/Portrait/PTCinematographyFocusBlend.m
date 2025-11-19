@interface PTCinematographyFocusBlend
- (BOOL)isEqual:(id)a3;
- (PTCinematographyFocusBlend)initWithPrimaryDetection:(id)a3 secondaryDetection:(id)a4 primaryCoefficient:(float)a5;
- (id)_asCinematographyDictionary;
- (id)_asCoefficientsDictionary;
- (id)_initWithDetections:(id)a3 cinematographyDictionary:(id)a4;
- (id)_initWithDetections:(id)a3 coefficients:(id)a4;
- (id)_initWithDetections:(id)a3 coefficientsDictionary:(id)a4;
- (id)description;
- (id)initFocusedBetweenDetection:(id)a3 detection:(id)a4 coefficient:(float)a5;
- (id)initFocusedOnDetection:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setFocusBetweenDetection:(id)a3 detection:(id)a4 coefficient:(float)a5;
- (void)_setFocusOnDetection:(id)a3;
- (void)_setFocusOnPrimaryDetection:(id)a3 secondaryDetection:(id)a4 primaryCoefficient:(float)a5;
@end

@implementation PTCinematographyFocusBlend

- (id)initFocusedOnDetection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PTCinematographyFocusBlend;
  v5 = [(PTCinematographyFocusBlend *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PTCinematographyFocusBlend *)v5 _setFocusOnDetection:v4];
  }

  return v6;
}

- (id)initFocusedBetweenDetection:(id)a3 detection:(id)a4 coefficient:(float)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PTCinematographyFocusBlend;
  v10 = [(PTCinematographyFocusBlend *)&v14 init];
  v12 = v10;
  if (v10)
  {
    *&v11 = a5;
    [(PTCinematographyFocusBlend *)v10 _setFocusBetweenDetection:v8 detection:v9 coefficient:v11];
  }

  return v12;
}

- (PTCinematographyFocusBlend)initWithPrimaryDetection:(id)a3 secondaryDetection:(id)a4 primaryCoefficient:(float)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PTCinematographyFocusBlend;
  v10 = [(PTCinematographyFocusBlend *)&v14 init];
  v12 = v10;
  if (v10)
  {
    *&v11 = a5;
    [(PTCinematographyFocusBlend *)v10 _setFocusOnPrimaryDetection:v8 secondaryDetection:v9 primaryCoefficient:v11];
  }

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PTCinematographyFocusBlend);
  if (v4)
  {
    v5 = [(PTCinematographyFocusBlend *)self primaryFocusDetection];
    primaryFocusDetection = v4->_primaryFocusDetection;
    v4->_primaryFocusDetection = v5;

    v7 = [(PTCinematographyFocusBlend *)self secondaryFocusDetection];
    secondaryFocusDetection = v4->_secondaryFocusDetection;
    v4->_secondaryFocusDetection = v7;

    [(PTCinematographyFocusBlend *)self primaryFocusCoefficient];
    v4->_primaryFocusCoefficient = v9;
    [(PTCinematographyFocusBlend *)self secondaryFocusCoefficient];
    v4->_secondaryFocusCoefficient = v10;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(PTCinematographyFocusBlend *)self primaryFocusCoefficient];
      v10 = v9;
      [(PTCinematographyFocusBlend *)v8 primaryFocusCoefficient];
      if (v10 != v11)
      {
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v12 = [(PTCinematographyFocusBlend *)self primaryFocusDetection];
      if (v12 || ([(PTCinematographyFocusBlend *)v8 primaryFocusDetection], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v4 = [(PTCinematographyFocusBlend *)self primaryFocusDetection];
        v5 = [(PTCinematographyFocusBlend *)v8 primaryFocusDetection];
        if (([v4 isEqual:v5] & 1) == 0)
        {

          v14 = 0;
          goto LABEL_21;
        }

        LODWORD(v13) = 1;
      }

      else
      {
        LODWORD(v13) = 0;
      }

      [(PTCinematographyFocusBlend *)self secondaryFocusCoefficient];
      v16 = v15;
      [(PTCinematographyFocusBlend *)v8 secondaryFocusCoefficient];
      if (v16 == v17)
      {
        v18 = [(PTCinematographyFocusBlend *)self secondaryFocusDetection];
        if (v18 || ([(PTCinematographyFocusBlend *)v8 secondaryFocusDetection], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v25 = v13;
          v13 = v3;
          v19 = [(PTCinematographyFocusBlend *)self secondaryFocusDetection];
          v20 = [(PTCinematographyFocusBlend *)v8 secondaryFocusDetection];
          v14 = [v19 isEqual:v20];

          if (v18)
          {

            v3 = v13;
            if ((v25 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          v3 = v13;
          LOBYTE(v13) = v25;
          v22 = v24;
        }

        else
        {
          v22 = 0;
          v14 = 1;
        }

        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:

        goto LABEL_21;
      }

      v14 = 0;
      if (v13)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (!v12)
      {
      }

      goto LABEL_24;
    }

    v14 = 0;
  }

LABEL_25:

  return v14;
}

- (unint64_t)hash
{
  [(PTCinematographyFocusBlend *)self primaryFocusCoefficient];
  v4 = v3;
  v5 = [(PTCinematographyFocusBlend *)self primaryFocusDetection];
  v6 = [v5 hash];
  [(PTCinematographyFocusBlend *)self secondaryFocusCoefficient];
  v8 = v7;
  v9 = [(PTCinematographyFocusBlend *)self secondaryFocusDetection];
  v10 = (((v8 * [v9 hash]) + (v4 * v6)) * 1000.0);

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PTCinematographyFocusBlend *)self primaryFocusDetection];
  v5 = [v4 focusIdentifier];
  v6 = MEMORY[0x277CCABB0];
  [(PTCinematographyFocusBlend *)self primaryFocusCoefficient];
  v7 = [v6 numberWithFloat:?];
  v8 = [(PTCinematographyFocusBlend *)self secondaryFocusDetection];
  v9 = [v8 focusIdentifier];
  v10 = MEMORY[0x277CCABB0];
  [(PTCinematographyFocusBlend *)self secondaryFocusCoefficient];
  v11 = [v10 numberWithFloat:?];
  v12 = [v3 stringWithFormat:@"FocusBlend(%@: %@ %@: %@)", v5, v7, v9, v11];;

  return v12;
}

- (id)_initWithDetections:(id)a3 coefficients:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = PTCinematographyFocusBlend;
  v8 = [(PTCinematographyFocusBlend *)&v19 init];
  if (v8 && [v6 count])
  {
    v9 = 0;
    p_primaryFocusCoefficient = &v8->_primaryFocusCoefficient;
    p_secondaryFocusCoefficient = &v8->_secondaryFocusCoefficient;
    while (1)
    {
      v12 = [v6 objectAtIndexedSubscript:v9];
      v13 = [v7 objectAtIndexedSubscript:v9];
      [v13 floatValue];
      v15 = v14;

      if (v15 > *p_primaryFocusCoefficient)
      {
        break;
      }

      v16 = &v8->_secondaryFocusCoefficient;
      p_secondaryFocusDetection = &v8->_secondaryFocusDetection;
      if (v15 > *p_secondaryFocusCoefficient)
      {
        goto LABEL_7;
      }

LABEL_8:

      if (++v9 >= [v6 count])
      {
        goto LABEL_9;
      }
    }

    *p_secondaryFocusCoefficient = *p_primaryFocusCoefficient;
    objc_storeStrong(&v8->_secondaryFocusDetection, v8->_primaryFocusDetection);
    v16 = &v8->_primaryFocusCoefficient;
    p_secondaryFocusDetection = &v8->_primaryFocusDetection;
LABEL_7:
    *v16 = v15;
    objc_storeStrong(p_secondaryFocusDetection, v12);
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

- (void)_setFocusOnDetection:(id)a3
{
  objc_storeStrong(&self->_primaryFocusDetection, a3);
  v5 = a3;
  self->_primaryFocusCoefficient = 1.0;
  secondaryFocusDetection = self->_secondaryFocusDetection;
  self->_secondaryFocusDetection = 0;

  self->_secondaryFocusCoefficient = 0.0;
}

- (void)_setFocusBetweenDetection:(id)a3 detection:(id)a4 coefficient:(float)a5
{
  v9 = 1.0 - a5;
  if ((1.0 - a5) > a5)
  {
    v10 = a4;
  }

  else
  {
    v10 = a3;
  }

  if ((1.0 - a5) > a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 1.0 - a5;
  }

  objc_storeStrong(&self->_primaryFocusDetection, v10);
  v12 = a4;
  v13 = a3;
  v14 = v13;
  if (v9 > a5)
  {
    v15 = 1.0 - a5;
  }

  else
  {
    v15 = a5;
  }

  self->_primaryFocusCoefficient = v15;
  if (v9 > a5)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  objc_storeStrong(&self->_secondaryFocusDetection, v16);

  self->_secondaryFocusCoefficient = v11;
}

- (void)_setFocusOnPrimaryDetection:(id)a3 secondaryDetection:(id)a4 primaryCoefficient:(float)a5
{
  v10 = a3;
  v9 = a4;
  objc_storeStrong(&self->_primaryFocusDetection, a3);
  self->_primaryFocusCoefficient = a5;
  if (a5 < 1.0)
  {
    objc_storeStrong(&self->_secondaryFocusDetection, a4);
    self->_secondaryFocusCoefficient = 1.0 - a5;
  }
}

- (id)_initWithDetections:(id)a3 cinematographyDictionary:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v36 = a4;
  v38 = [v36 objectForKeyedSubscript:@"primary"];
  if (!v38)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v44;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v44 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v43 + 1) + 8 * i);
      v13 = [v12 trackNumber];
      if ([v13 isEqual:v38])
      {
      }

      else
      {
        v14 = [v12 focusIdentifier];
        v15 = [v14 isEqual:v38];

        if (!v15)
        {
          continue;
        }
      }

      v16 = v12;

      v9 = v16;
    }

    v8 = [v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
  }

  while (v8);
LABEL_16:

LABEL_17:
  v17 = [v36 objectForKeyedSubscript:@"secondary"];
  if (v17)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = v5;
    obj = v5;
    v18 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (!v18)
    {
      v20 = 0;
      goto LABEL_32;
    }

    v19 = v18;
    v20 = 0;
    v21 = *v40;
    while (1)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v39 + 1) + 8 * j);
        v24 = [v23 trackNumber];
        if ([v24 isEqual:v17])
        {
        }

        else
        {
          v25 = [v23 focusIdentifier];
          v26 = [v25 isEqual:v17];

          if (!v26)
          {
            continue;
          }
        }

        v27 = v23;

        v20 = v27;
      }

      v19 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (!v19)
      {
LABEL_32:

        v5 = v34;
        goto LABEL_33;
      }
    }
  }

  v20 = 0;
LABEL_33:
  v28 = [v36 objectForKeyedSubscript:@"coefficient"];
  [v28 floatValue];
  v30 = v29;

  LODWORD(v31) = v30;
  v32 = [(PTCinematographyFocusBlend *)self initWithPrimaryDetection:v9 secondaryDetection:v20 primaryCoefficient:v31];

  return v32;
}

- (id)_asCinematographyDictionary
{
  v3 = objc_opt_new();
  v4 = [(PTCinematographyDetection *)self->_primaryFocusDetection trackNumber];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"primary"];
  }

  else
  {
    v5 = [(PTCinematographyDetection *)self->_primaryFocusDetection focusIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"primary"];
  }

  v6 = [(PTCinematographyDetection *)self->_secondaryFocusDetection trackNumber];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"secondary"];
  }

  else
  {
    v7 = [(PTCinematographyDetection *)self->_secondaryFocusDetection focusIdentifier];
    [v3 setObject:v7 forKeyedSubscript:@"secondary"];
  }

  *&v8 = self->_primaryFocusCoefficient;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v3 setObject:v9 forKeyedSubscript:@"coefficient"];

  v10 = [v3 copy];

  return v10;
}

- (id)_initWithDetections:(id)a3 coefficientsDictionary:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) focusIdentifier];
        v15 = [v7 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = &unk_2837F36E8;
        }

        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = [(PTCinematographyFocusBlend *)self _initWithDetections:v9 coefficients:v8];
  return v18;
}

- (id)_asCoefficientsDictionary
{
  v3 = objc_opt_new();
  v4 = [(PTCinematographyDetection *)self->_primaryFocusDetection focusIdentifier];

  if (v4)
  {
    *&v5 = self->_primaryFocusCoefficient;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v7 = [(PTCinematographyDetection *)self->_primaryFocusDetection focusIdentifier];
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [(PTCinematographyDetection *)self->_secondaryFocusDetection focusIdentifier];

  if (v8)
  {
    *&v9 = self->_secondaryFocusCoefficient;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v11 = [(PTCinematographyDetection *)self->_secondaryFocusDetection focusIdentifier];
    [v3 setObject:v10 forKeyedSubscript:v11];
  }

  v12 = [v3 copy];

  return v12;
}

@end