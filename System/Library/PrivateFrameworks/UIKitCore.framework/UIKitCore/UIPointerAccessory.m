@interface UIPointerAccessory
+ (UIPointerAccessory)accessoryWithShape:(UIPointerShape *)shape position:(UIPointerAccessoryPosition)position;
+ (UIPointerAccessory)arrowAccessoryWithPosition:(UIPointerAccessoryPosition)position;
- (BOOL)isEqual:(id)a3;
- (UIPointerAccessoryPosition)position;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation UIPointerAccessory

+ (UIPointerAccessory)accessoryWithShape:(UIPointerShape *)shape position:(UIPointerAccessoryPosition)position
{
  angle = position.angle;
  offset = position.offset;
  v6 = shape;
  v7 = objc_opt_new();
  [v7 setShape:v6];

  [v7 setPosition:{fmax(offset, 0.0), angle}];

  return v7;
}

+ (UIPointerAccessory)arrowAccessoryWithPosition:(UIPointerAccessoryPosition)position
{
  angle = position.angle;
  offset = position.offset;
  if (_MergedGlobals_981 != -1)
  {
    dispatch_once(&_MergedGlobals_981, &__block_literal_global_22);
  }

  v5 = [UIPointerAccessory accessoryWithShape:qword_1ED49C728 position:offset, angle];
  [v5 setOrientationMatchesAngle:1];
  v5[8] = 1;

  return v5;
}

void __49__UIPointerAccessory_arrowAccessoryWithPosition___block_invoke()
{
  v0 = [UIPointerShape _shapeWithSymbol:@"arrowtriangle.up.fill" pointSize:11.0];
  v1 = qword_1ED49C728;
  qword_1ED49C728 = v0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIPointerAccessory *)self shape];
  [v4 setShape:v5];

  [(UIPointerAccessory *)self position];
  [v4 setPosition:?];
  v4[8] = [(UIPointerAccessory *)self _isArrowAccessory];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIPointerAccessory *)self shape];
      v7 = [(UIPointerAccessory *)v5 shape];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if (!v8 || !v9)
        {

          goto LABEL_17;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_17;
        }
      }

      [(UIPointerAccessory *)self position];
      v14 = v13;
      v16 = v15;
      [(UIPointerAccessory *)v5 position];
      v19 = vabdd_f64(v16, v18);
      if (vabdd_f64(v14, v17) <= 2.22044605e-16 && v19 <= 2.22044605e-16)
      {
        v21 = [(UIPointerAccessory *)self orientationMatchesAngle:2.22044605e-16];
        v12 = v21 ^ [(UIPointerAccessory *)v5 orientationMatchesAngle]^ 1;
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:
      LOBYTE(v12) = 0;
      goto LABEL_18;
    }

    LOBYTE(v12) = 0;
  }

LABEL_19:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(UIPointerAccessory *)self shape];
  v4 = [v3 hash];
  [(UIPointerAccessory *)self position];
  v6 = v5;
  [(UIPointerAccessory *)self position];
  v8 = v7;
  v9 = v4 ^ [(UIPointerAccessory *)self orientationMatchesAngle]^ v6;

  return v9 ^ v8;
}

- (UIPointerAccessoryPosition)position
{
  offset = self->_position.offset;
  angle = self->_position.angle;
  result.angle = angle;
  result.offset = offset;
  return result;
}

@end