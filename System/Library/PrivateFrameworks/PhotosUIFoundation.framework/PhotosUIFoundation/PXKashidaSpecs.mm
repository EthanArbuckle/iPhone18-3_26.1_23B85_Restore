@interface PXKashidaSpecs
+ (PXKashidaSpecs)defaultSpecs;
- (PXKashidaSpecs)init;
- (double)maximumWidthForTitle:(id)a3 containerSize:(CGSize)a4;
- (id)_init;
@end

@implementation PXKashidaSpecs

- (double)maximumWidthForTitle:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = [v6 length];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__PXKashidaSpecs_maximumWidthForTitle_containerSize___block_invoke;
  v17[3] = &unk_1E7BB5E58;
  v17[4] = &v22;
  [v6 enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v17}];
  v8 = [v6 length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__PXKashidaSpecs_maximumWidthForTitle_containerSize___block_invoke_2;
  v16[3] = &unk_1E7BB5E58;
  v16[4] = &v18;
  [v6 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v16}];
  v9 = v23[3];
  v10 = -1.0;
  if (v9 >= 1)
  {
    v11 = v19[3];
    if (v11 >= 1)
    {
      if (width <= height)
      {
        if (v9 == 2)
        {
          v10 = 0.6;
          if (v11 <= 7)
          {
            v10 = 0.5;
          }
        }

        else if (v9 == 1)
        {
          v12 = v11 > 5;
          v13 = &unk_1B4074E90;
          goto LABEL_10;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0.4;
        if (v11 > 9)
        {
          v10 = 0.5;
        }
      }

      else if (v9 == 1)
      {
        v12 = v11 > 5;
        v13 = &unk_1B4074EA0;
LABEL_10:
        v10 = v13[v12];
      }
    }
  }

  v14 = width * v10;
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PXKashidaSpecs;
  result = [(PXKashidaSpecs *)&v3 init];
  if (result)
  {
    *(result + 8) = xmmword_1B4074EB0;
  }

  return result;
}

- (PXKashidaSpecs)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXKashidaSpecs.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXKashidaSpecs init]"}];

  abort();
}

+ (PXKashidaSpecs)defaultSpecs
{
  if (defaultSpecs_onceToken != -1)
  {
    dispatch_once(&defaultSpecs_onceToken, &__block_literal_global_5263);
  }

  v3 = defaultSpecs_defaultSpecs;

  return v3;
}

uint64_t __30__PXKashidaSpecs_defaultSpecs__block_invoke()
{
  v0 = [[PXKashidaSpecs alloc] _init];
  v1 = defaultSpecs_defaultSpecs;
  defaultSpecs_defaultSpecs = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end