@interface VTKAntiAliasDetector
- (BOOL)isAntiAliasedAtPointHelper:(VTKPoint)helper leftContext:(id)context rightContext:(id)rightContext;
- (VTKAntiAliasDetector)initWithLeftContext:(id)context rightContext:(id)rightContext strategy:(id)strategy;
@end

@implementation VTKAntiAliasDetector

- (VTKAntiAliasDetector)initWithLeftContext:(id)context rightContext:(id)rightContext strategy:(id)strategy
{
  contextCopy = context;
  rightContextCopy = rightContext;
  strategyCopy = strategy;
  v15.receiver = self;
  v15.super_class = VTKAntiAliasDetector;
  v12 = [(VTKAntiAliasDetector *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_leftContext, context);
    objc_storeStrong(&v13->_rightContext, rightContext);
    objc_storeStrong(&v13->_strategy, strategy);
  }

  return v13;
}

- (BOOL)isAntiAliasedAtPointHelper:(VTKPoint)helper leftContext:(id)context rightContext:(id)rightContext
{
  var1 = helper.var1;
  var0 = helper.var0;
  contextCopy = context;
  rightContextCopy = rightContext;
  v11 = var0 - 1;
  pixelWidth = [contextCopy pixelWidth];
  if (var0 + 1 < (pixelWidth - 1))
  {
    v13 = (var0 + 1);
  }

  else
  {
    v13 = pixelWidth - 1;
  }

  v38 = contextCopy;
  pixelHeight = [contextCopy pixelHeight];
  if (var1 + 1 < (pixelHeight - 1))
  {
    v15 = (var1 + 1);
  }

  else
  {
    v15 = pixelHeight - 1;
  }

  v33 = v13;
  if (v11 > v13)
  {
    LOBYTE(v16) = rightContextCopy == 0;
    goto LABEL_50;
  }

  v40 = 0;
  v41 = 0;
  v34 = 0;
  v35 = rightContextCopy;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  *&v31[8] = 0;
  v32 = var1 - 1;
  v17 = 0.0;
  *v31 = rightContextCopy == 0;
  v18 = 0.0;
  while (1)
  {
    v19 = v32;
    if (v32 <= v15)
    {
      break;
    }

LABEL_40:
    if (++v11 > v33)
    {
      rightContextCopy = v35;
      if (v35)
      {
        LOBYTE(v16) = v31[0];
        if (v34 && *&v31[4])
        {
          if ([(VTKAntiAliasDetector *)self isAntiAliasedAtPointHelper:v40 leftContext:v39 rightContext:v38, 0]|| [(VTKAntiAliasDetector *)self isAntiAliasedAtPointHelper:v40 leftContext:v39 rightContext:v35, 0])
          {
            if ([(VTKAntiAliasDetector *)self isAntiAliasedAtPointHelper:v37 leftContext:v36 rightContext:v38, 0])
            {
              LOBYTE(v16) = 0;
            }

            else
            {
              v16 = ![(VTKAntiAliasDetector *)self isAntiAliasedAtPointHelper:v37 leftContext:v36 rightContext:v35, 0];
            }
          }

          else
          {
            LOBYTE(v16) = 1;
          }
        }
      }

      else
      {
        LOBYTE(v16) = v31[0];
      }

      goto LABEL_50;
    }
  }

  v20 = 1;
  while (v11 == var0 && !v20)
  {
LABEL_39:
    ++v19;
    --v20;
    if (v19 > v15)
    {
      goto LABEL_40;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_49;
  }

  v21 = var1;
  v22 = [v38 colorAt:{objc_msgSend(v38, "dataAtPixel:", var0, var1)}];
  v23 = [v38 colorAt:{objc_msgSend(v38, "dataAtPixel:", v11, v19)}];
  [(VTKColorDifferenceStrategy *)self->_strategy antiAliasingDifferenceBetweenColor:v22 andColor:v23];
  if (v24 == 0.0)
  {
    v25 = v41 + 1;
  }

  else
  {
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        ++*&v31[4];
      }
    }

    else
    {
      ++v34;
    }

    v25 = v41;
  }

  if (v25 <= 2)
  {
    v41 = v25;
    if (v35)
    {
      if (v24 >= v17)
      {
        v26 = v39;
      }

      else
      {
        v26 = v19;
      }

      v27 = v40;
      if (v24 < v17)
      {
        v27 = v11;
      }

      v39 = v26;
      v40 = v27;
      if (v24 < v17)
      {
        v17 = v24;
      }

      if (v24 <= v18)
      {
        v28 = v36;
      }

      else
      {
        v28 = v19;
      }

      v29 = v37;
      if (v24 > v18)
      {
        v29 = v11;
      }

      v36 = v28;
      v37 = v29;
      if (v24 > v18)
      {
        v18 = v24;
      }
    }

    var1 = v21;
    goto LABEL_39;
  }

LABEL_49:
  LOBYTE(v16) = 0;
  rightContextCopy = v35;
LABEL_50:

  return v16;
}

@end