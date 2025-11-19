@interface MROrigamiAnimationPath
- (MROrigamiAnimationPath)initWithControlPoints:(double *)(a3 keyTimes:values:length:;
- (MROrigamiAnimationPath)initWithSwingType:(int)a3;
- (float)valueAtTime:(float)a3;
- (void)dealloc;
@end

@implementation MROrigamiAnimationPath

- (MROrigamiAnimationPath)initWithSwingType:(int)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return v3;
      }

      v16 = xmmword_163AB0;
      v17 = unk_163AC0;
      v18 = xmmword_163AD0;
      v19 = unk_163AE0;
      v14 = xmmword_163A90;
      v15 = unk_163AA0;
      v5 = &xmmword_163AF0;
    }

    else
    {
      v16 = xmmword_163AB0;
      v17 = unk_163AC0;
      v18 = xmmword_163AD0;
      v19 = unk_163AE0;
      v14 = xmmword_163A90;
      v15 = unk_163AA0;
      v5 = &xmmword_163A70;
    }

    v7 = v5[1];
    v12 = *v5;
    v13 = v7;
    v4 = &xmmword_163B10;
    goto LABEL_13;
  }

  switch(a3)
  {
    case 2:
      v16 = xmmword_163B50;
      v17 = unk_163B60;
      v18 = xmmword_163B70;
      v19 = unk_163B80;
      v14 = xmmword_163B30;
      v15 = unk_163B40;
      v12 = xmmword_163B90;
      *&v13 = 0x3FF0000000000000;
      v10 = xmmword_163BA8;
      *&v11 = 0x3FE921FB54442B65;
      v6 = 3;
      return [(MROrigamiAnimationPath *)self initWithControlPoints:&v14 keyTimes:&v12 values:&v10 length:v6, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19];
    case 3:
      v14 = xmmword_163BC0;
      v15 = unk_163BD0;
      v12 = xmmword_163C80;
      v10 = xmmword_163C90;
      v6 = 2;
      return [(MROrigamiAnimationPath *)self initWithControlPoints:&v14 keyTimes:&v12 values:&v10 length:v6, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19];
    case 4:
      v16 = xmmword_163C00;
      v17 = unk_163C10;
      v18 = xmmword_163C20;
      v19 = unk_163C30;
      v14 = xmmword_163BE0;
      v15 = unk_163BF0;
      v12 = xmmword_163C40;
      v13 = unk_163C50;
      v4 = &xmmword_163C60;
LABEL_13:
      v8 = v4[1];
      v10 = *v4;
      v11 = v8;
      v6 = 4;
      return [(MROrigamiAnimationPath *)self initWithControlPoints:&v14 keyTimes:&v12 values:&v10 length:v6, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19];
  }

  return v3;
}

- (MROrigamiAnimationPath)initWithControlPoints:(double *)(a3 keyTimes:values:length:
{
  v34.receiver = self;
  v34.super_class = MROrigamiAnimationPath;
  v10 = [(MROrigamiAnimationPath *)&v34 init];
  v11 = v10;
  if (v10)
  {
    v10->_length = a6;
    v10->_curves = malloc_type_malloc(8 * a6 - 8, 0x80040B8603338uLL);
    length = v11->_length;
    if (length > 1)
    {
      v13 = 0;
      do
      {
        v11->_curves[v13++] = [[MRCAMLBezierData alloc] initWithControlPoints:a3];
        length = v11->_length;
        ++a3;
      }

      while (length - 1 > v13);
    }

    v14 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
    v11->_keyTimes = v14;
    v15 = v11->_length;
    if (v15 >= 1)
    {
      v16 = v11->_length;
      do
      {
        v17 = *a4++;
        *v14++ = v17;
        --v16;
      }

      while (v16);
    }

    v18 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
    v11->_values = v18;
    v19 = v11->_length;
    if (v19 >= 1)
    {
      v20 = *a5;
      v21 = v11->_length;
      v22 = v18;
      do
      {
        v23 = *a5++;
        *v22++ = v23 - v20;
        --v21;
      }

      while (v21);
    }

    v24 = 0;
    v25 = v18[v19 - 1];
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v26 = v19 - 1;
    while (v26 != v24)
    {
      v27 = v24 + 1;
      v28 = v18[++v24];
      if (v28 > v25)
      {
        v29 = &v11->_keyTimes[v27];
        v30 = *(v29 - 1);
        v31 = *v29;
        [v11->_curves[v27 - 1] evaluate_inverseAtTime:(v25 - v18[v27 - 1]) / (v28 - v18[v27 - 1])];
        *&v32 = v30 + v32 * (v31 - v30);
        v11->_timeFirstAtRestValue = *&v32;
        return v11;
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  if (self->_length >= 2)
  {
    v3 = 0;
    do
    {
    }

    while (self->_length - 1 > v3);
  }

  free(self->_curves);
  free(self->_keyTimes);
  free(self->_values);
  v4.receiver = self;
  v4.super_class = MROrigamiAnimationPath;
  [(MROrigamiAnimationPath *)&v4 dealloc];
}

- (float)valueAtTime:(float)a3
{
  if (a3 >= 1.0)
  {
    return self->_values[self->_length - 1];
  }

  else
  {
    ValueFromBezierPath(self->_curves, self->_keyTimes, self->_values, self->_length, 0.0, 1.0, a3);
  }

  return v3;
}

@end